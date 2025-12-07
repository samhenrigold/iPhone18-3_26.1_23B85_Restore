id closure #1 in static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(unint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAUIDecoratedText) init];
  v5 = specialized DisambiguationItemProtocol.toDisplayString()();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v5, v6, v4);
  v7 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  result = outlined bridged method (pb) of @objc INIntent.identifier.getter(v4, &selRef_text);
  if (v9)
  {
    v10 = static OutputUtils.machineUtteranceForDisambiguationItemIndex(index:fallbackString:)(a1, result);
    v12 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_216850;
    *(inited + 32) = v10;
    *(inited + 40) = v12;
    v14 = static OutputUtils.makeSendCommandsFromUtterance(utterances:)(inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_216010;
    *(v15 + 32) = v14;
    swift_unknownObjectRetain();
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v15, v7);
    v16 = [objc_allocWithZone(SASTColumnDataListItem) init];
    [v16 setTitle:v4];
    [v16 setAction:v7];
    v17 = *(a2 + 32);
    if (v17)
    {
      v18 = v17;
      v19 = static OutputUtils.buildNanoImage(from:)(v18);
      [v16 setImageResource:v19];
    }

    swift_unknownObjectRelease();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(uint64_t a1, void *a2)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SFAbstractCommand, SFAbstractCommand_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

void outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

uint64_t outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(void *a1, SEL *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined bridged method (pb) of @objc SAUIConfirmationOptions.allConfirmationOptions.getter(void *a1)
{
  v1 = [a1 allConfirmationOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SAAceView.speakableText.getter(void *a1)
{
  v2 = [a1 speakableText];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of (offset: Int, element: CustomIntentDisambiguationItem)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemV7elementtMd, _sSi6offset_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemV7elementtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentButton(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CustomIntentButton(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_6_36()
{
}

id OUTLINED_FUNCTION_12_31(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id ParsedMeasurement.toLNValue(unitType:parameterMetadata:valueType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGSgMd, &_s10Foundation11MeasurementVySo6NSUnitCGSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v24 - v15;
  ParsedMeasurement.toMeasurement(unitType:parameterMetadata:)(a1, a5, a6 & 1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of Measurement<NSUnit>?(v12);
    v26 = ParsedMeasurement.toDouble()();
    if (v17)
    {
      return 0;
    }

    else
    {
      v25 = &type metadata for Double;
      v24[0] = *&v26.is_nil;
      v21 = [objc_opt_self() doubleValueType];
      v22 = objc_allocWithZone(LNValue);
      return @nonobjc LNValue.init(_:valueType:)(v24, v21);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v25 = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v14 + 16))(boxed_opaque_existential_1, v16, v13);
    v20 = objc_allocWithZone(LNValue);
    v18 = @nonobjc LNValue.init(_:valueType:)(v24, a3);
    (*(v14 + 8))(v16, v13);
  }

  return v18;
}

NSMeasurement __swiftcall ParsedMeasurement.toNSMeasurement(defaultUnit:)(NSUnit defaultUnit)
{
  symbol = defaultUnit._symbol;
  if (v2)
  {
    isa = v1;
  }

  else
  {
    isa = defaultUnit.super.isa;
  }

  v5 = objc_allocWithZone(NSMeasurement);

  v6 = [v5 initWithDoubleValue:isa unit:*&symbol];
  result._doubleValue = v8;
  result._unit = v7;
  result.super.isa = v6;
  return result;
}

uint64_t ParsedMeasurement.toMeasurement(unitType:parameterMetadata:)@<X0>(uint64_t a1@<X0>, void *a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    LNActionParameterMetadata.measurementDefaultUnitSymbol.getter();
    if (!v8)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
      v12 = a5;
      v13 = 1;
      goto LABEL_12;
    }

    v9 = String._bridgeToObjectiveC()();

    v10 = LNMeasurementUnitTypeToUnit();

LABEL_6:
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSUnit, NSUnit_ptr);
    Measurement.init(value:unit:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
    v12 = a5;
    v13 = 0;
LABEL_12:

    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }

  v7 = a3;
  if (LNMeasurementUnitTypeOfUnit() == a1)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.voiceCommands);
  v15 = v7;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_1_65();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v18 = 136315394;
    LNMeasurementUnitTypeOfUnit();
    type metadata accessor for LNMeasurementUnitType(0);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_0, v16, v17, "#ParsedMeasurement: Measurement unit type %s does not match requested %s.", v18, 0x16u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_1_65();
  }

  else
  {

    OUTLINED_FUNCTION_1_65();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
  return __swift_storeEnumTagSinglePayload(a5, 1, 1, v26);
}

uint64_t outlined destroy of Measurement<NSUnit>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGSgMd, &_s10Foundation11MeasurementVySo6NSUnitCGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Double_optional __swiftcall ParsedMeasurement.toDouble()()
{
  if (v0)
  {
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
      _os_log_impl(&dword_0, v2, v3, "#ParsedMeasurement: has a unit, should be Measurement not Double", v4, 2u);
    }

    v6 = 0;
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

BOOL static ParsedMeasurement.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) != 0 && *&a1 == *&a4)
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a6 & 1) == 0 && *&a1 == *&a4;
  }
}

uint64_t getEnumTagSinglePayload for ParsedMeasurement(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for ParsedMeasurement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void OUTLINED_FUNCTION_1_65()
{

  outlined consume of ParsedMeasurement(v0, v1, 1);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.__allocating_init(deviceState:)(void *a1)
{
  v2 = swift_allocObject();
  CustomIntentUnsupportedValueFlowStrategy.init(deviceState:)(a1);
  return v2;
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.init(deviceState:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CATOption();
  __chkstk_darwin(v4 - 8);
  outlined init with copy of DeviceState(a1, v1 + 16);
  outlined init with copy of DeviceState(a1, v14);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v6 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v7 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v8 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_9_23();
  v9 = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v10 = type metadata accessor for AppNameResolver();
  v11 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v12 = swift_allocObject();
  *(v12 + 136) = v10;
  *(v12 + 144) = &protocol witness table for AppNameResolver;
  *(v12 + 112) = v11;
  *(v12 + 56) = v5;
  outlined init with take of Output(v14, v12 + 16);
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 80) = v6;
  *(v12 + 88) = v7;
  *(v12 + 96) = v8;
  *(v12 + 104) = v9;
  *(v2 + 56) = v12;
  return v2;
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[6] = v1;
  v2 = type metadata accessor for ParameterIdentifier();
  v0[7] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v0[8] = v3;
  v0[9] = OUTLINED_FUNCTION_28();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v0[10] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v0[11] = v5;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  v43 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.voiceCommands);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  if (v10)
  {
    v39 = *(v0 + 72);
    v40 = *(v0 + 64);
    v41 = *(v0 + 56);
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = ParameterResolutionRecord.intent.getter();
    v17 = [v16 typeName];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v9;
    v20 = v19;

    v21 = *(v14 + 8);
    v21(v11, v13);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v42);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    ParameterResolutionRecord.parameter.getter();
    v23 = ParameterIdentifier.name.getter();
    v25 = v24;
    (*(v40 + 8))(v39, v41);
    v21(v12, v13);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v42);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_0, v8, v38, "CustomIntentUnsupportedValueFlowStrategy removing parameter value for %s:%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v27 = *(v14 + 8);
    v27(v12, v13);
    v27(v11, v13);
  }

  v28 = *(v0 + 72);
  v29 = *(v0 + 56);
  v30 = *(v0 + 64);
  v31 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v32 = ParameterIdentifier.name.getter();
  v34 = v33;
  (*(v30 + 8))(v28, v29);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v35 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v31, v32, v34, v0 + 16, 0, 1);

  outlined destroy of String?(v0 + 16, &_sypSgMd, &_sypSgMR);

  v36 = *(v0 + 8);

  return v36(v35);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for DialogPhase();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for ParameterIdentifier();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[15] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

{

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "CustomIntentUnsupportedValueFlowStrategy: Starting unsupported slot value", v18, 2u);
  }

  v20 = v14[16];
  v19 = v14[17];
  v21 = v14[15];

  (*(v20 + 104))(v19, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v21);
  v22 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v20 + 8))(v19, v21);
  if (v22)
  {
    v24 = v14[13];
    v23 = v14[14];
    v45 = v14[12];
    v25 = v14[4];
    type metadata accessor for WFDialogState();
    v14[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
    ParameterResolutionRecord.app.getter();
    v26 = App.appIdentifier.getter();
    v28 = v27;

    HIDWORD(a11) = static WFDialogState.isAppFirstRun(appId:)(v26, v28);

    v29 = *(v25 + 56);
    OUTLINED_FUNCTION_10_38();
    v14[19] = ParameterResolutionRecord.app.getter();
    ParameterResolutionRecord.parameter.getter();
    ParameterIdentifier.name.getter();
    v14[20] = v30;
    (*(v24 + 8))(v23, v45);
    OUTLINED_FUNCTION_10_38();
    v14[21] = ParameterResolutionRecord.result.getter();
    v14[22] = ParameterResolutionRecord.intent.getter();
    v44 = (*v29 + 304);
    v46 = *v44 + **v44;
    v31 = swift_task_alloc();
    v14[23] = v31;
    *v31 = v14;
    v31[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
    OUTLINED_FUNCTION_6_1();

    return v38(v32, v33, v34, v35, v36, v37, v38, v39, v44, v46, a11, a12, a13, a14);
  }

  else
  {
    v42 = swift_task_alloc();
    v14[29] = v42;
    *v42 = v14;
    v42[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
    OUTLINED_FUNCTION_6_1();

    return CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:)();
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[25];
  v16 = v14[7];
  v17 = v14[8];
  v19 = v14[5];
  v18 = v14[6];
  v34 = v14[3];
  static DialogPhase.clarification.getter();
  v20 = [v15 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v18 + 16))(v16, v17, v19);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v18 + 8))(v17, v19);
  v21 = ParameterResolutionRecord.intent.getter();
  INIntent.isRestricted()();

  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v14[26] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  v14[27] = v22;
  *(v22 + 16) = xmmword_216010;
  *(v22 + 32) = v15;
  v35 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v23 = v15;
  v24 = swift_task_alloc();
  v14[28] = v24;
  *v24 = v14;
  v24[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
  OUTLINED_FUNCTION_6_1();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, a12, a13, a14);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 192) = v1;

  v7 = *(v4 + 176);
  v8 = *(v4 + 168);
  if (v1)
  {

    v9 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {

    *(v5 + 200) = a1;
    v9 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return _swift_task_switch(v9);
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[10] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for ParameterIdentifier();
  v1[11] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v1[14] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {

    v5 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:);
  }

  else
  {

    v5 = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:);
  }

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[12];
  v15 = v14[13];
  v35 = v14[11];
  v17 = v14[9];
  type metadata accessor for WFDialogState();
  v14[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v18 = App.appIdentifier.getter();
  v20 = v19;

  HIDWORD(a11) = static WFDialogState.isAppFirstRun(appId:)(v18, v20);

  v21 = *(v17 + 56);
  OUTLINED_FUNCTION_10_38();
  v14[18] = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  v14[19] = v22;
  (*(v16 + 8))(v15, v35);
  OUTLINED_FUNCTION_10_38();
  v14[20] = ParameterResolutionRecord.result.getter();
  v14[21] = ParameterResolutionRecord.intent.getter();
  v34 = (*v21 + 312);
  v36 = *v34 + **v34;
  v23 = swift_task_alloc();
  v14[22] = v23;
  *v23 = v14;
  v23[1] = CustomIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput_rfv1(resolveRecord:);
  OUTLINED_FUNCTION_6_1();

  return v31(v24, v25, v26, v27, v28, v29, v30, v31, v34, v36, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 128);
  v16 = *(v14 + 120);
  v32 = *(v14 + 112);
  v33 = *(v14 + 104);
  v18 = *(v14 + 72);
  v17 = *(v14 + 80);
  v19 = *(v14 + 56);
  v20 = ParameterResolutionRecord.intent.getter();
  INIntent.isRestricted()();

  __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v21 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v21);
  v22 = type metadata accessor for AceOutput();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v14 + 16) = 0u;
  v19[3] = v22;
  v19[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v19);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v14 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v17, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v16 + 8))(v15, v32);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v14 + 16, v32, v33, a12, a13, a14);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 104) + **(**v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = AutoShortcutCATsSimple.userDenied();

  return v6(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance CustomIntentUnsupportedValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentUnsupportedValueFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v9, a4);
}

void *ShortcutsLinkDisambiguationFlowStrategy.__allocating_init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  v14 = swift_allocObject();
  v16 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = specialized ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(a1, a2, a3, a4, v20, a6, a7, a8, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v22;
}

void *ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __int128 *a6, __int128 *a7, __int128 *a8)
{
  v16 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = specialized ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(a1, a2, a3, a4, v20, a6, a7, a8, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v22;
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_13_1();
  v58 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v62 = v11;
  v63 = v10;
  v12 = __chkstk_darwin(v10);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v56 - v14;
  v15 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v23 = OUTLINED_FUNCTION_14(v22);
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  v26 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
  OUTLINED_FUNCTION_27_6();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.voiceCommands);
  v29 = *(v17 + 16);
  v64 = a1;
  v29(v21, a1, v15);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v4;
    v34 = v33;
    v65 = v33;
    *v32 = 136315138;
    v35 = Input.description.getter();
    v56 = v9;
    v37 = v36;
    (*(v17 + 8))(v21, v15);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v65);
    v9 = v56;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "#ShortcutsLinkDisambiguationFlowStrategy actionForInput: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    v39 = v34;
    v4 = v57;
    OUTLINED_FUNCTION_15_0(v39);
    OUTLINED_FUNCTION_17();
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  v40 = v61;
  Input.parse.getter();
  v41 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v40);
  v42 = *(v62 + 8);
  v43 = OUTLINED_FUNCTION_62();
  v42(v43);
  switch(v41)
  {
    case 2:

      return static ActionForInput.ignore()();
    case 3:
      goto LABEL_8;
    default:
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v44)
      {
        return static ActionForInput.ignore()();
      }

LABEL_8:
      v45 = v59;
      Input.parse.getter();
      v46 = OUTLINED_FUNCTION_62();
      v48 = v47(v46);
      if (v48 == enum case for Parse.NLv3IntentOnly(_:))
      {
        goto LABEL_9;
      }

      if (v48 != enum case for Parse.directInvocation(_:))
      {
        if (v48 != enum case for Parse.uso(_:))
        {
          static ActionForInput.ignore()();
          goto LABEL_10;
        }

LABEL_9:
        static ActionForInput.handle()();
LABEL_10:
        v49 = OUTLINED_FUNCTION_62();
        return (v42)(v49);
      }

      v51 = OUTLINED_FUNCTION_62();
      v52(v51);
      (*(v58 + 32))(v9, v45, v4);
      if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000043 && 0x800000000022FEE0 == v53)
      {
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v55 & 1) == 0)
        {
          static ActionForInput.ignore()();
          return (*(v58 + 8))(v9, v4);
        }
      }

      static ActionForInput.handle()();
      return (*(v58 + 8))(v9, v4);
  }
}

uint64_t closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v4, v5, "#ShortcutsLinkDisambiguationFlowStrategy submitting empty output to clear screen and prevent double-taps");
    OUTLINED_FUNCTION_17();
  }

  v6 = v0[12];

  outlined init with copy of DeviceState(v6 + 168, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v9;
  *v9 = v10;
  v9[1] = closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#ShortcutsLinkDisambiguationFlowStrategy failed to submit empty output to clear screen", v3, 2u);
    OUTLINED_FUNCTION_15_0(v3);
  }

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = type metadata accessor for USOParse();
  v1[17] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for Parse.DirectInvocation();
  v1[20] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[21] = v8;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = type metadata accessor for NLIntent();
  v1[24] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Parse();
  v1[27] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[28] = v12;
  v1[29] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[16];
  v2 = [*(v1 + 160) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[30] = v3;

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[31] = v4;
  *v4 = v5;
  v4[1] = ShortcutsLinkDisambiguationFlowStrategy.parseDisambiguationResponse(input:paginatedItems:);

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v1 + 40, v1 + 120, v3);
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

uint64_t ShortcutsLinkDisambiguationFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)(uint64_t a1)
{
  v77 = v1;
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  Input.parse.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v6 = *(v1 + 208);
    (*(*(v1 + 224) + 96))(*(v1 + 232), *(v1 + 216));
    v7 = OUTLINED_FUNCTION_62();
    v8(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMR);
    PaginatedItemContainer.items.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMR);
    OUTLINED_FUNCTION_27_6();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_26_25();
    v10 = (*(*v9 + 160))(v6);

    v11 = *(v10 + 16);
    if (v11)
    {
      v76 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v12 = 80;
      do
      {
        v13 = *(v10 + v12);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 += 56;
        --v11;
      }

      while (v11);

      v14 = v76;
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }

    v33 = *(v1 + 200);
    v32 = *(v1 + 208);
    v34 = *(v1 + 192);
    *(v1 + 96) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
LABEL_19:
    static DisambiguationResult.chosenItem(_:)();
    (*(v33 + 8))(v32, v34);

    goto LABEL_35;
  }

  if (v5 == enum case for Parse.directInvocation(_:))
  {
    v15 = *(v1 + 232);
    v16 = *(v1 + 184);
    v17 = *(v1 + 160);
    v18 = *(v1 + 168);
    (*(*(v1 + 224) + 96))(v15, *(v1 + 216));
    (*(v18 + 32))(v16, v15, v17);
    v19 = Parse.DirectInvocation.userData.getter();
    if (v19)
    {
      specialized Dictionary.subscript.getter(v19, (v1 + 16), 0x65756C6176, 0xE500000000000000);

      if (*(v1 + 40))
      {
        if (swift_dynamicCast())
        {
          v21 = *(v1 + 48);
          v20 = *(v1 + 56);
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
          v22 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
          v67 = v22;
          if (v22)
          {
            v68 = *(v1 + 184);
            v69 = *(v1 + 160);
            v70 = *(v1 + 168);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            OUTLINED_FUNCTION_27_6();
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_216010;
            *(v71 + 32) = v67;
            *(v1 + 88) = v71;
            v72 = v67;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
            static DisambiguationResult.chosenItem(_:)();
            outlined consume of Data._Representation(v21, v20);

            (*(v70 + 8))(v68, v69);
            goto LABEL_35;
          }

          outlined consume of Data._Representation(v21, v20);
        }

        goto LABEL_27;
      }
    }

    else
    {
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    outlined destroy of Any?(v1 + 16);
LABEL_27:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v43 = *(v1 + 176);
    v44 = *(v1 + 184);
    v45 = *(v1 + 160);
    v46 = *(v1 + 168);
    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.voiceCommands);
    (*(v46 + 16))(v43, v44, v45);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v1 + 176);
    if (v50)
    {
      v52 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      buf = v52;
      *v52 = 136315138;
      v75 = v49;
      if (!Parse.DirectInvocation.userData.getter())
      {
        Dictionary.init(dictionaryLiteral:)();
      }

      v54 = *(v1 + 168);
      v53 = *(v1 + 176);
      v55 = *(v1 + 160);
      v56 = Dictionary.description.getter();
      v58 = v57;

      v59 = *(v54 + 8);
      v59(v53, v55);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v76);

      *(buf + 4) = v60;
      _os_log_impl(&dword_0, v48, v75, "#ShortcutsLinkDisambiguationFlowStrategy could not get value from direct invocation. %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      OUTLINED_FUNCTION_15_0(v73);
      OUTLINED_FUNCTION_17();
    }

    else
    {
      v61 = *(v1 + 160);
      v62 = *(v1 + 168);

      v59 = *(v62 + 8);
      v59(v51, v61);
    }

    v63 = *(v1 + 184);
    v64 = *(v1 + 160);
    *(v1 + 80) = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
    static DisambiguationResult.chosenItem(_:)();
    v59(v63, v64);
    goto LABEL_35;
  }

  if (v5 == enum case for Parse.uso(_:))
  {
    v23 = *(v1 + 152);
    (*(*(v1 + 224) + 96))(*(v1 + 232), *(v1 + 216));
    v24 = OUTLINED_FUNCTION_62();
    v25(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMR);
    PaginatedItemContainer.items.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA09ShortcutsbG4ItemVGMR);
    OUTLINED_FUNCTION_27_6();
    swift_allocObject();
    v26 = OUTLINED_FUNCTION_26_25();
    v27 = (*(*v26 + 136))(v23);

    v28 = *(v27 + 16);
    if (v28)
    {
      v76 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v29 = 80;
      do
      {
        v30 = *(v27 + v29);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_23_19();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v29 += 56;
        --v28;
      }

      while (v28);

      v31 = v76;
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    v33 = *(v1 + 144);
    v32 = *(v1 + 152);
    v34 = *(v1 + 136);
    *(v1 + 72) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
    goto LABEL_19;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.voiceCommands);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v37))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v38, v39, "#ShortcutsLinkDisambiguationFlowStrategy unexpected input type");
    OUTLINED_FUNCTION_17();
  }

  v41 = *(v1 + 224);
  v40 = *(v1 + 232);
  v42 = *(v1 + 216);

  *(v1 + 64) = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7LNValueCGMd, &_sSaySo7LNValueCGMR);
  static DisambiguationResult.chosenItem(_:)();
  (*(v41 + 8))(v40, v42);
LABEL_35:

  OUTLINED_FUNCTION_6_0();

  return v65();
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v4);
  v1[11] = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  type metadata accessor for RunLinkActionCATsSimple(0);
  static CATOption.defaultMode.getter();
  v0[12] = CATWrapperSimple.__allocating_init(options:globals:)();
  v1 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v2 = ResponseFactory.init()();
  v0[5] = v1;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[13] = v3;
  *v3 = v4;
  v3[1] = ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:);

  return static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:)();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[26] = v5;
  v1[27] = v6;
  v1[25] = v7;
  v8 = type metadata accessor for SpeakableString();
  v1[32] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[33] = v9;
  v1[34] = OUTLINED_FUNCTION_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v1[35] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v11);
  v1[36] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for OutputGenerationManifest();
  v1[37] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[38] = v13;
  v1[39] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v14);
  v1[40] = OUTLINED_FUNCTION_28();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_12_0();
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
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#ShortcutsLinkDisambiguationFlowStrategy makePromptForDisambiguation - make prompt for disambiguation item", v4, 2u);
    OUTLINED_FUNCTION_17();
  }

  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin09Shortcutsg14DisambiguationE0VGMR);
  v0[42] = PaginatedItemContainer.items.getter();
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:);

  return Array<A>.toDisambiguationItemModels()();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *(v6 + 352) = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  v2 = *(v1 + 352);
  v3 = *(v1 + 264);
  v4 = *(v1 + 232);
  outlined init with copy of DeviceState(*(v1 + 216), v1 + 144);
  v5 = type metadata accessor for RunLinkActionCATs(0);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_10();
  v6 = CATWrapper.__allocating_init(options:globals:)();
  v7 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_15(v7);
  OUTLINED_FUNCTION_10();
  v8 = CATWrapper.__allocating_init(options:globals:)();
  v9 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_15(v9);
  OUTLINED_FUNCTION_10();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  v11 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15(v11);
  OUTLINED_FUNCTION_10();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v1 + 360) = inited;
  inited[14] = v0;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v12;
  outlined init with take of AceServiceInvokerAsync((v1 + 144), (inited + 2));
  inited[7] = v6;
  inited[8] = v4;
  inited[9] = v8;
  inited[10] = v10;
  type metadata accessor for ShortcutsLinkNLContextProvider();
  *(v1 + 368) = swift_initStackObject();
  v14 = specialized Array.count.getter(v2);
  v29 = v2 & 0xC000000000000001;
  v15 = v2 & 0xFFFFFFFFFFFFFF8;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v1 + 376) = v18;
    if (v14 == v17)
    {
      break;
    }

    if (v29)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    String.toSpeakableString.getter();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
      v18 = v23;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v18);
      v18 = v24;
    }

    v21 = *(v1 + 272);
    v22 = *(v1 + 256);
    v18[2] = v20 + 1;
    result = (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v21, v22);
    ++v17;
  }

  v25 = *(v1 + 280);
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  static TemplatingResult.getListenAfterSpeakingDisabled()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v26 = PaginatedItemContainer.items.getter();
  ShortcutsLinkNLContextProvider.makeContextForDisambiguation(disambiguationItems:)(v26);

  v27 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v27);
  OutputGenerationManifest.nlContextUpdate.setter();
  v28 = swift_task_alloc();
  *(v1 + 384) = v28;
  *v28 = v1;
  v28[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:);

  return LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v2 + 392) = v6;
  *(v2 + 400) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = v0[49];
  v2 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[51] = v4;
  *v4 = v5;
  v4[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:);
  v6 = v0[44];
  v7 = v0[39];
  v8 = v0[30];
  v9 = v0[27];
  v10 = v0[25];

  return static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)(v10, v9, v1, v8, v7, v6);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 416) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:deviceState:appBundleId:dialog:runLinkActionCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v13 = v12[49];
  v14 = v12[39];
  v15 = v12[37];
  v16 = v12[38];
  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  (*(v16 + 8))(v14, v15);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_19_20();

  (*(v14 + 8))(v12, v13);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();

  OUTLINED_FUNCTION_19_20();

  (*(v15 + 8))(v13, v14);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v7);
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = _swiftEmptyArrayStorage;
  *(v13 + 56) = _swiftEmptyArrayStorage;
  v16 = (v13 + 56);
  countAndFlagsBits = *(v13 + 80);
  if (countAndFlagsBits)
  {
    v18 = countAndFlagsBits;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v12 = *(&dword_10 + (*v16 & 0xFFFFFFFFFFFFFF8));
    if (v12 >= *(&dword_18 + (*v16 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = *v16;
  }

  *(v13 + 112) = v15;
  OUTLINED_FUNCTION_28_17(*(v13 + 72));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    OUTLINED_FUNCTION_28_17(*(v13 + 88));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v13 + 128) = v22;
    *v22 = v23;
    v22[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:);
    v24 = *(v13 + 96);
    v25 = *(v13 + 64);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v15, v24, v12, v14, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    if (countAndFlagsBits)
    {
      v26 = DialogExecutionResult.firstDialogFullPrint()();
      countAndFlagsBits = v26.value._countAndFlagsBits;
      object = v26.value._object;
    }

    else
    {
      object = 0;
    }

    v28 = *(v13 + 104);
    OUTLINED_FUNCTION_28_17(*(v13 + 88));
    *(v13 + 40) = type metadata accessor for WorkflowDataModels(0);
    *(v13 + 48) = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 16));
    *boxed_opaque_existential_1 = countAndFlagsBits;
    boxed_opaque_existential_1[1] = object;
    boxed_opaque_existential_1[2] = v28;
    swift_storeEnumTagMultiPayload();

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v13 + 120) = v32;
    *v32 = v33;
    v32[1] = static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:);
    v34 = *(v13 + 96);
    v35 = *(v13 + 64);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v35, v13 + 16, v15, v34, v12, v14, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:responseFactory:manifest:disambiguationItems:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_6_0();
  return v0();
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

uint64_t ShortcutsLinkDisambiguationFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  return v0;
}

uint64_t ShortcutsLinkDisambiguationFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkDisambiguationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkDisambiguationFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:)();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:) in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShortcutsLinkDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

void *specialized ShortcutsLinkDisambiguationFlowStrategy.init(appBundleId:actionMetadata:dialog:metadataProvider:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, __int128 *a8, void *a9, uint64_t a10, uint64_t a11)
{
  a9[13] = a10;
  a9[14] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9 + 10);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  a9[3] = a1;
  a9[4] = a2;
  a9[20] = a3;
  a9[2] = a4;
  outlined init with take of AceServiceInvokerAsync(a6, (a9 + 5));
  outlined init with take of AceServiceInvokerAsync(a7, (a9 + 15));
  outlined init with take of AceServiceInvokerAsync(a8, (a9 + 21));
  return a9;
}

uint64_t sub_1D0704()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkDisambiguationFlowStrategy.actionForInput(_:)(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_19_20()
{
}

void *OUTLINED_FUNCTION_26_25()
{

  return specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v0, 0);
}

id static SLFConfirmationItemConverter.toDirectInvocationCommand(confirmation:appBundleId:deviceState:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xE200000000000000;
      v6 = 28526;
    }

    else
    {
      v5 = 0xE600000000000000;
      v6 = 0x6C65636E6163;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7562617;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  strcpy((inited + 32), "confirmation");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  v8 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for SKIDirectInvocationPayload();
  v10 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD00000000000003DLL, 0x800000000022FD30, v9);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  v12 = v11;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v12, v10);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v13 = DeviceState.asInvocationContext.getter();
  [v13 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v14 = objc_opt_self();
  v15 = [v14 runSiriKitExecutorCommandWithContext:v13 payload:v10];
  v16 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v17 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setBundleId:v18];

  [v16 setRequestedApp:v17];
  [v15 setAppSelectionState:v16];

  v19 = [v14 wrapCommandInStartLocalRequest:v15];
  return v19;
}

uint64_t static SLFConfirmationItemConverter.toVoiceCommandConfirmation(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 3;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x616D7269666E6F63, 0xEC0000006E6F6974);
  if ((v3 & 1) == 0)
  {
    return 3;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  v4 = v9 == 7562617 && v10 == 0xE300000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_50(7562617, 0xE300000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v9 == 28526 && v10 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_50(28526, 0xE200000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (v9 == 0x6C65636E6163 && v10 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_50(0x6C65636E6163, 0xE600000000000000);

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

uint64_t OUTLINED_FUNCTION_0_50(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

SiriLinkFlowPlugin::RunLinkActionCATPatternsIdentifiers_optional __swiftcall RunLinkActionCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t RunLinkActionCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunLinkActionCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = RunLinkActionCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = RunLinkActionCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer (__swiftcall *RunLinkActionActionConfirmationParameters.verb.modify())(Swift::OpaquePointer items)
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for RunLinkActionActionConfirmationParameters(v0);
  return CustomIntentDisambiguationItemContainer.init(items:);
}

uint64_t RunLinkActionActionPerformedParameters.asKeyValuePairs()(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_216840;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  outlined init with copy of AppDisplayInfo?(v3, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    __swift_allocate_boxed_opaque_existential_1((v11 + 48));
    OUTLINED_FUNCTION_21_2();
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_15_27();
  *(v11 + 80) = v15;
  *(v11 + 88) = v14;
  a3(0);
  OUTLINED_FUNCTION_58_9();
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v16;
  return v11;
}

uint64_t RunLinkActionActionPerformedParameters.init(customDialog:executeSashGroupOnWatch:)@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(void)@<X2>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_53_8(a1, x8_0);
  result = a3(0);
  *(v5 + *(result + 20)) = v4;
  return result;
}

uint64_t RunLinkActionAutoShortcutAppEnabledParameters.device.getter()
{
  type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(0);
}

uint64_t RunLinkActionAutoShortcutAppEnabledParameters.device.setter()
{
  v2 = OUTLINED_FUNCTION_92();
  v3 = *(type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer (__swiftcall *RunLinkActionAutoShortcutAppEnabledParameters.device.modify())(Swift::OpaquePointer items)
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(v0);
  return CustomIntentDisambiguationItemContainer.init(items:);
}

uint64_t RunLinkActionAutoShortcutAppEnabledParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_48_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_31_17(v4, xmmword_21A520);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_42_14(v5);
  if (v6)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = &_s16SiriDialogEngine15SpeakableStringVSgMd;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_41_14();
    v7();
  }

  *(v4 + 80) = 0x656369766564;
  *(v4 + 88) = 0xE600000000000000;
  v8 = type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(0);
  v9 = *(v0 + v8[5]);
  if (v9)
  {
    v10 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v10 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v9;
  *(v4 + 120) = v10;
  *(v4 + 128) = 0xD000000000000017;
  *(v4 + 136) = 0x80000000002349D0;
  *(v4 + 144) = *(v0 + v8[6]);
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 176) = 0xD000000000000011;
  *(v4 + 184) = 0x8000000000233600;
  v11 = *(v0 + v8[7]);
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 192) = v11;

  return v4;
}

int *RunLinkActionAutoShortcutAppEnabledParameters.init(appName:device:executeSashGroupOnWatch:wasAlreadyEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with take of SpeakableString?(a1, a5);
  result = type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t RunLinkActionConfirmChangeEnablementParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_48_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_31_17(v4, xmmword_218630);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_42_14(v5);
  if (v6)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = &_s16SiriDialogEngine15SpeakableStringVSgMd;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_41_14();
    v7();
  }

  OUTLINED_FUNCTION_15_27();
  *(v4 + 80) = v9;
  *(v4 + 88) = v8;
  type metadata accessor for RunLinkActionConfirmChangeEnablementParameters(0);
  OUTLINED_FUNCTION_58_9();
  *(v4 + 96) = v10;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x696C62616E457369;
  *(v4 + 136) = 0xEA0000000000676ELL;
  v12 = *(v0 + *(v11 + 24));
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 144) = v12;
  return v4;
}

uint64_t RunLinkActionConfirmChangeEnablementParameters.init(appName:executeSashGroupOnWatch:isEnabling:)@<X0>(uint64_t a1@<X0>, char a3@<W2>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_53_8(a1, x8_0);
  result = type metadata accessor for RunLinkActionConfirmChangeEnablementParameters(0);
  *(v5 + *(result + 20)) = v4;
  *(v5 + *(result + 24)) = a3;
  return result;
}

uint64_t RunLinkActionActionConfirmationParameters.verb.setter()
{
  v2 = OUTLINED_FUNCTION_92();
  v4 = v1 + *(v3(v2) + 24);

  return outlined assign with take of SpeakableString?(v0, v4);
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer (__swiftcall *RunLinkActionParameterConfirmationParameters.parameterValue.modify())(Swift::OpaquePointer items)
{
  v0 = OUTLINED_FUNCTION_92();
  type metadata accessor for RunLinkActionParameterConfirmationParameters(v0);
  return CustomIntentDisambiguationItemContainer.init(items:);
}

uint64_t RunLinkActionActionConfirmationParameters.asKeyValuePairs()(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_14(v7);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_29_22(v14, xmmword_218630);
  outlined init with copy of AppDisplayInfo?(v15, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v16;
    __swift_allocate_boxed_opaque_existential_1((v14 + 48));
    OUTLINED_FUNCTION_21_2();
    (*(v17 + 32))();
  }

  OUTLINED_FUNCTION_15_27();
  *(v14 + 80) = v19;
  *(v14 + 88) = v18;
  a1(0);
  OUTLINED_FUNCTION_58_9();
  *(v14 + 96) = v20;
  *(v14 + 120) = &type metadata for Bool;
  *(v14 + 128) = a2;
  *(v14 + 136) = a3;
  outlined init with copy of AppDisplayInfo?(v3 + *(v21 + 24), v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v11, 1, v16) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
  }

  else
  {
    *(v14 + 168) = v16;
    __swift_allocate_boxed_opaque_existential_1((v14 + 144));
    OUTLINED_FUNCTION_21_2();
    (*(v22 + 32))();
  }

  return v14;
}

uint64_t RunLinkActionActionConfirmationParameters.init(customDialog:executeSashGroupOnWatch:verb:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  outlined init with take of SpeakableString?(a1, a5);
  v9 = a4(0);
  *(a5 + *(v9 + 20)) = a2;
  v10 = a5 + *(v9 + 24);

  return outlined init with take of SpeakableString?(a3, v10);
}

double RunLinkActionParameterValueDisambiguationParameters.items.getter()
{
  type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0);

  return result;
}

uint64_t RunLinkActionParameterValueDisambiguationParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_48_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_29_22(v4, xmmword_218630);
  OUTLINED_FUNCTION_41_14();
  outlined init with copy of AppDisplayInfo?(v5, v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_42_14(v8);
  if (v9)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = &_s16SiriDialogEngine15SpeakableStringVSgMd;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_41_14();
    v10();
  }

  OUTLINED_FUNCTION_15_27();
  *(v4 + 80) = v12;
  *(v4 + 88) = v11;
  type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0);
  OUTLINED_FUNCTION_58_9();
  *(v4 + 96) = v13;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0x736D657469;
  *(v4 + 136) = 0xE500000000000000;
  v15 = *(v0 + *(v14 + 24));
  *(v4 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v4 + 144) = v15;

  return v4;
}

uint64_t RunLinkActionParameterValueDisambiguationParameters.init(customDialog:executeSashGroupOnWatch:items:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_53_8(a1, x8_0);
  result = type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0);
  *(v5 + *(result + 20)) = v4;
  *(v5 + *(result + 24)) = a3;
  return result;
}

uint64_t RunLinkActionCATPatternsExecutor.actionConfirmation(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionActionConfirmationParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_41_3();
  v13 = v1;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_60_8();
  v2 = OUTLINED_FUNCTION_11_37();
  v5 = OUTLINED_FUNCTION_45_10(v2, v3, v4);
  v0(v5);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionActionConfirmationParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  v10 = OUTLINED_FUNCTION_17_32(32);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_23();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_23();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.actionPerformed(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionActionPerformedParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionActionPerformedParameters.asKeyValuePairs()(v4, v5);
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  OUTLINED_FUNCTION_33_13(29);
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_27_20();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_27_20();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t outlined destroy of RunLinkActionActionConfirmationParameters()
{
  v1 = OUTLINED_FUNCTION_92();
  v2(v1);
  OUTLINED_FUNCTION_21_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t RunLinkActionCATPatternsExecutor.actionPerformedUseSonicStatus(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionActionPerformedUseSonicStatusParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionActionPerformedUseSonicStatusParameters.asKeyValuePairs()(v4, v5);
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  OUTLINED_FUNCTION_33_13(43);
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_17();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_17();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.autoShortcutAppEnabled(executeSashGroupOnWatch:wasAlreadyEnabled:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v5 = OUTLINED_FUNCTION_51_11(v1, v2, v3, v4);
  v6 = type metadata accessor for RunLinkActionAutoShortcutAppEnabledParameters(v5);
  OUTLINED_FUNCTION_12_32(v6);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_41_3();
  v15 = v4;
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_54_11();
  OUTLINED_FUNCTION_3_62(v5);
  *(v0 + v6) = 0;
  *(v0 + *(v1 + 24)) = v3;
  v7 = OUTLINED_FUNCTION_44_16(*(v1 + 28));
  v2(v7);
  OUTLINED_FUNCTION_34_17();
  v8 = RunLinkActionAutoShortcutAppEnabledParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v8);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_85_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_1_66(v10);
  v12 = OUTLINED_FUNCTION_17_32(36);

  return v13(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_22_26();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_22_26();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.autoShortcutFirstRun(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  RunParameters = type metadata accessor for RunLinkActionAutoShortcutFirstRunParameters(v4);
  OUTLINED_FUNCTION_12_32(RunParameters);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  Run = RunLinkActionAutoShortcutFirstRunParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(Run);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_85_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_1_66(v6);
  OUTLINED_FUNCTION_33_13(34);
  OUTLINED_FUNCTION_87();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_26_26();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_26_26();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.confirmChangeEnablement(executeSashGroupOnWatch:isEnabling:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v5 = OUTLINED_FUNCTION_51_11(v1, v2, v3, v4);
  v6 = type metadata accessor for RunLinkActionConfirmChangeEnablementParameters(v5);
  OUTLINED_FUNCTION_12_32(v6);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_41_3();
  v15 = v4;
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_54_11();
  OUTLINED_FUNCTION_3_62(v5);
  *(v0 + v6) = v3;
  v7 = OUTLINED_FUNCTION_44_16(*(v1 + 24));
  v2(v7);
  OUTLINED_FUNCTION_34_17();
  v8 = RunLinkActionConfirmChangeEnablementParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v8);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_85_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_1_66(v10);
  v12 = OUTLINED_FUNCTION_17_32(37);

  return v13(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_23_20();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_23_20();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.continueInApp(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionContinueInAppParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_3_62(v1);
  v3 = OUTLINED_FUNCTION_44_16(v2);
  v0(v3);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionContinueInAppParameters.asKeyValuePairs()(v4, v5);
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  OUTLINED_FUNCTION_33_13(27);
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_24_24();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_24_24();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.parameterConfirmation(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for RunLinkActionParameterConfirmationParameters(v4);
  OUTLINED_FUNCTION_12_32(v5);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_41_3();
  v13 = v1;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_60_8();
  v2 = OUTLINED_FUNCTION_11_37();
  v5 = OUTLINED_FUNCTION_45_10(v2, v3, v4);
  v0(v5);
  OUTLINED_FUNCTION_34_17();
  v6 = RunLinkActionParameterConfirmationParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_56_3(v6);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_85_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_1_66(v8);
  v10 = OUTLINED_FUNCTION_17_32(35);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_20_20();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_20_20();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t RunLinkActionCATPatternsExecutor.parameterValueDisambiguation(executeSashGroupOnWatch:items:_:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 96) = v5;
  v6 = type metadata accessor for RunLinkActionParameterValueDisambiguationParameters(0);
  *(v1 + 48) = v6;
  OUTLINED_FUNCTION_14(v6);
  *(v1 + 56) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_41_3();
  v15 = v1;
  OUTLINED_FUNCTION_14_0();
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = *(v0 + 96);
  type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_11_37();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v2 + *(v3 + 20)) = v6;
  *(v2 + *(v3 + 24)) = v5;

  v4(v2);
  OUTLINED_FUNCTION_34_17();
  *(v0 + 64) = RunLinkActionParameterValueDisambiguationParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = RunLinkActionCATPatternsExecutor.parameterValueDisambiguation(executeSashGroupOnWatch:items:_:);
  v12 = OUTLINED_FUNCTION_17_32(42);

  return v13(v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_28_18();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_28_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RunLinkActionCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  outlined init with copy of AppDisplayInfo?(v3, &v13 - v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_41_14();
  v10();
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v11;
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATPatternsIdentifiers and conformance RunLinkActionCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.actionConfirmation(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor) + **(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.actionPerformed(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 8) + **(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 8));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.actionPerformedUseSonicStatus(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 16) + **(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.autoShortcutAppEnabled(executeSashGroupOnWatch:wasAlreadyEnabled:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 24) + **(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 24));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.autoShortcutFirstRun(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 32) + **(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 32));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.userDenied();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.confirmChangeEnablement(executeSashGroupOnWatch:isEnabling:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 40) + **(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 40));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.continueInApp(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 48) + **(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 48));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.parameterConfirmation(executeSashGroupOnWatch:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 56) + **(**v3 + class metadata base offset for RunLinkActionCATPatternsExecutor + 56));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RunLinkActionCATPatternsExecuting.parameterValueDisambiguation(executeSashGroupOnWatch:items:_:) in conformance RunLinkActionCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 64) + **(**v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 64));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for RunLinkActionCATPatternsIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x1D4B00);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for RunLinkActionActionPerformedParameters(uint64_t a1)
{
  OUTLINED_FUNCTION_19_21();
  type metadata accessor for SpeakableString?(319, v1, v2, &type metadata accessor for Optional);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D4C64()
{
  OUTLINED_FUNCTION_49_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_46_13();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_59_10();
    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }
}

void sub_1D4D1C()
{
  OUTLINED_FUNCTION_32_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_35_18();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

void type metadata completion function for RunLinkActionAutoShortcutAppEnabledParameters(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for RunLinkActionConfirmChangeEnablementParameters(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_49_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_46_13();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void __swift_store_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_32_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_35_18();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

void type metadata completion function for RunLinkActionActionConfirmationParameters(uint64_t a1)
{
  OUTLINED_FUNCTION_19_21();
  type metadata accessor for SpeakableString?(319, v1, v2, &type metadata accessor for Optional);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D51F4()
{
  OUTLINED_FUNCTION_49_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_46_13();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_59_10();
    return (v6 + 1);
  }
}

void sub_1D52A0()
{
  OUTLINED_FUNCTION_32_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_35_18();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

void type metadata completion function for RunLinkActionParameterValueDisambiguationParameters(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for [SpeakableString], &type metadata accessor for SpeakableString, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SpeakableString?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_20_20()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_21_23()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_22_26()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_23_20()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_24_24()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_25_17()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_26_26()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_27_20()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_28_18()
{

  return outlined destroy of RunLinkActionActionConfirmationParameters();
}

uint64_t OUTLINED_FUNCTION_29_22(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "customDialog");
  a1[2].n128_u8[13] = 0;
  a1[2].n128_u16[7] = -5120;
  return v2;
}

uint64_t OUTLINED_FUNCTION_30_16()
{

  return type metadata accessor for SpeakableString();
}

uint64_t OUTLINED_FUNCTION_31_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return outlined init with copy of AppDisplayInfo?(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_45_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v4);
  __swift_storeEnumTagSinglePayload(v3 + *(v5 + 24), 1, 1, v4);
  *(v3 + *(v5 + 20)) = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_51_11(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_53_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return outlined init with take of SpeakableString?(a1, a2);
}

uint64_t OUTLINED_FUNCTION_54_11()
{

  return type metadata accessor for SpeakableString();
}

uint64_t OUTLINED_FUNCTION_60_8()
{

  return type metadata accessor for SpeakableString();
}

void *WorkflowDataModels.LinkPromptForValueModel.init(linkModel:options:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = OUTLINED_FUNCTION_149_0(a1, a2);
  *(v3 + 80) = v2;
  return result;
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x58uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v3, v4);
}

uint64_t WorkflowDataModels.EnableTCCModel.asSnippetPluginModel()@<X0>(_OWORD *a2@<X8>)
{
  v3 = v2[1];
  v9 = *v2;
  v7 = v2[2];
  v4 = v7;
  v8 = v3;
  *a2 = v9;
  a2[1] = v3;
  a2[2] = v4;
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of String(&v9, v6);
  outlined init with copy of String(&v8, v6);
  return outlined init with copy of DeviceState?();
}

uint64_t WorkflowDataModels.LinkPromptForValueModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x58uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v3, v4);
}

uint64_t static WorkflowDataModels.modelForCustomIntentHandled(app:intent:intentResponse:doneButtonCommand:deviceState:shortcutName:title:image:doneButtonLabel:shouldShowDoneButton:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 160) = v15;
  *(v0 + 96) = v14;
  *(v0 + 64) = v12;
  *(v0 + 80) = v13;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  OUTLINED_FUNCTION_14(v7);
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  v8 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  *(v0 + 120) = v8;
  OUTLINED_FUNCTION_14(v8);
  *(v0 + 128) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v1 = *(v0 + 16);
    v2 = [*(v0 + 32) _title];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v1[3] = &type metadata for WorkflowDataModels.WatchModel;
    v1[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_116_0();
    v6 = swift_allocObject();
    *v1 = v6;
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;

    OUTLINED_FUNCTION_6_0();

    return v7();
  }

  else
  {
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v13 = v11;
    OUTLINED_FUNCTION_51_4();
    v14 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    *(v0 + 136) = v14;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v15 = v12;
    v22.value.super.isa = v11;
    isa = INInteraction.__allocating_init(intent:response:)(v15, v22).super.isa;
    *(v0 + 144) = isa;
    v17 = v14;
    CodableAceObject.init(wrappedValue:)();
    v18 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v19 = *(v10 + 24);
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = static WorkflowDataModels.modelForCustomIntentHandled(app:intent:intentResponse:doneButtonCommand:deviceState:shortcutName:title:image:doneButtonLabel:shouldShowDoneButton:);

    return INImage.convertToVisualProperty()(v9 + v19);
  }
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
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = (*(v0 + 128) + *(*(v0 + 120) + 28));
  *v4 = *(v0 + 64);
  v4[1] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  if (v3)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 48);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAStartLocalRequest, SAStartLocalRequest_ptr);

    v11 = v10;
    CodableAceObject.init(wrappedValue:)();

    outlined destroy of Any?(v8, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  }

  else
  {
  }

  v12 = *(v0 + 160);
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 16);
  v16 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  v15[3] = v16;
  v15[4] = &protocol witness table for WorkflowDataModels.CustomIntentHandledModel;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_1_67();
  OUTLINED_FUNCTION_51_4();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v18 = (boxed_opaque_existential_1 + *(v16 + 20));
  *v18 = v14;
  v18[1] = v13;
  outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  *(boxed_opaque_existential_1 + *(v16 + 28)) = v12;

  OUTLINED_FUNCTION_6_0();

  return v19();
}

uint64_t WorkflowDataModels.ConfirmActionModel.init(appBundleId:appDisplayName:confirmLabel:noLabel:archivedViewData:isDestructive:prompt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  return result;
}

uint64_t WorkflowDataModels.ConfirmActionModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x68uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.ConfirmActionModel(v3, v4);
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__allocating_init(title:subtitle:thumbnail:invocationCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

double WorkflowDataModels.DisambiguateItemsModel.asSnippetPluginModel()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  return WorkflowDataModels.DisambiguateItemsModel.asSnippetPluginModel()(a1, a2, a3, a5);
}

{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  type metadata accessor for WorkflowDataModels(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.init(openAppButtonLabel:appPunchOut:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 32);

  return v8(&a4[v6], a3);
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.asSnippetPluginModel()()
{
  return WorkflowDataModels.CustomIntentErrorModel.asSnippetPluginModel()();
}

{
  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
  type metadata accessor for WorkflowDataModels(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WorkflowDataModels.LinkActionModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.LinkActionModel(v3, v4);
}

uint64_t static WorkflowDataModels.modelForShowAlert(deviceState:shortcutName:confirmLabel:cancelLabel:title:message:)()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v12 = *(v0 + 32);
    v14 = *(v0 + 48);
    v3 = *(v0 + 16);
    v3[3] = &type metadata for WorkflowDataModels.WatchModel;
    v3[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_116_0();
    v4 = swift_allocObject();
    *v3 = v4;
    *(v4 + 16) = v12;
    *(v4 + 32) = v14;
    *(v4 + 48) = v2;
    *(v4 + 56) = v1;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    v13 = *(v0 + 48);
    v15 = *(v0 + 64);
    v9 = *(v0 + 16);
    v9[3] = &type metadata for WorkflowDataModels.ShowAlertModel;
    v9[4] = &protocol witness table for WorkflowDataModels.ShowAlertModel;
    v10 = swift_allocObject();
    *v9 = v10;
    *(v10 + 16) = v13;
    *(v10 + 32) = v15;
    *(v10 + 48) = v8;
    *(v10 + 56) = v6;
    *(v10 + 64) = v7;
    *(v10 + 72) = v5;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t static WorkflowDataModels.getThumbnail(imageData:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ImageElement.ImageStyle();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_29_17();
  v23 = type metadata accessor for ImageElement();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for ImageElement.AspectRatio();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  (*(v7 + 104))(v2, enum case for ImageElement.ImageStyle.default(_:), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v18 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_7_1();
  v20 = v19;
  OUTLINED_FUNCTION_83_5();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_216850;
  (*(v20 + 104))(v21 + v3, enum case for _ProtoIdiom.default(_:), v18);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v21);
  static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)();

  (*(v7 + 8))(v2, v5);
  outlined destroy of Any?(v4, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  ImageElement.convertToVisualProperty()();
  return (*(v12 + 8))(v16, v23);
}

void __swiftcall WorkflowDataModels.AutoShortcutFirstRunModel.init(viewModel:confirmLabel:cancelLabel:)(SiriLinkFlowPlugin::WorkflowDataModels::AutoShortcutFirstRunModel *__return_ptr retstr, SiriLinkFlowPlugin::AutoShortcutAppPhrasesViewModel *viewModel, Swift::String confirmLabel, Swift::String cancelLabel)
{
  object = cancelLabel._object;
  OUTLINED_FUNCTION_40_11();
  v9 = v8;
  memcpy(v8, v10, 0x50uLL);
  v9[10] = v6;
  v9[11] = v5;
  v9[12] = v4;
  v9[13] = object;
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x70uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.AutoShortcutFirstRunModel(v3, v4);
}

uint64_t static WorkflowDataModels.modelForCustomIntentConfirmation(app:intent:intentResponse:deviceState:confirmLabel:cancelLabel:title:image:)()
{
  v1 = *(v0 + 48);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v2 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  *(v0 + 112) = v2;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 16);
    v8 = [*(v0 + 32) _title];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v7[3] = &type metadata for WorkflowDataModels.WatchModel;
    v7[4] = &protocol witness table for WorkflowDataModels.WatchModel;
    OUTLINED_FUNCTION_116_0();
    v12 = swift_allocObject();
    *v7 = v12;

    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v12 + 32) = v6;
    *(v12 + 40) = v5;
    *(v12 + 48) = v4;
    *(v12 + 56) = v3;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    OUTLINED_FUNCTION_6_0();

    return v13();
  }

  else
  {
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 16);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v18 = v15;
    v19 = v16;
    v29.value.super.isa = v15;
    isa = INInteraction.__allocating_init(intent:response:)(v19, v29).super.isa;
    *(v0 + 120) = isa;
    v21 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    *(v0 + 128) = v21;
    v17[3] = v21;
    v17[4] = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    *(v0 + 136) = boxed_opaque_existential_1;
    v23 = v2;
    CodableAceObject.init(wrappedValue:)();
    v24 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    *(v0 + 144) = v24;
    v25 = isa;
    CodableINInteraction.init(wrappedValue:)();
    v26 = *(v24 + 24);
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    *v27 = v0;
    v27[1] = static WorkflowDataModels.modelForCustomIntentConfirmation(app:intent:intentResponse:deviceState:confirmLabel:cancelLabel:title:image:);

    return INImage.convertToVisualProperty()(boxed_opaque_existential_1 + v26);
  }
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
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v15 = *(v0 + 72);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  v10 = (v2 + *(v1 + 28));
  *v10 = v6;
  v10[1] = v5;
  v11 = (v2 + *(v3 + 20));
  *v11 = v9;
  v11[1] = v8;
  v12 = (v2 + *(v3 + 24));
  *v12 = v15;
  v12[1] = v7;
  OUTLINED_FUNCTION_6_0();
  v16 = v13;

  return v16();
}

void *WorkflowDataModels.LinkConfirmationModel.init(linkModel:confirmLabel:cancelLabel:isDestructive:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = memcpy(a7, __src, 0x50uLL);
  *(a7 + 80) = a2;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t WorkflowDataModels.LinkConfirmationModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x71uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_169();
  return outlined init with copy of WorkflowDataModels.LinkConfirmationModel(v3, v4);
}

uint64_t AutoShortcutAppPhrasesViewModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of AutoShortcutAppPhrasesViewModel(v3, v4);
}

uint64_t WorkflowDataModels.ShowAlertModel.asSnippetPluginModel()@<X0>(_OWORD *a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
  v4 = v2[3];
  a2[2] = v2[2];
  a2[3] = v4;
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.ShowAlertModel(v5, v6);
}

uint64_t WorkflowDataModels.ShowAlertModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.ShowAlertModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x4C6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x614C6C65636E6163;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.ShowAlertModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.ShowAlertModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.ShowAlertModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.ShowAlertModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ShowAlertModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ShowAlertModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.ShowAlertModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A3AD0, v3, v2);
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v4 = OUTLINED_FUNCTION_25_18();
  v5(v4);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void __swiftcall WorkflowDataModels.ShowAlertModel.init(confirmLabel:cancelLabel:title:message:)(SiriLinkFlowPlugin::WorkflowDataModels::ShowAlertModel *__return_ptr retstr, Swift::String confirmLabel, Swift::String cancelLabel, Swift::String_optional title, Swift::String message)
{
  retstr->confirmLabel = confirmLabel;
  retstr->cancelLabel = cancelLabel;
  retstr->title = title;
  retstr->message = message;
}

void WorkflowDataModels.ShowAlertModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14ShowAlertModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v31 = v30;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_53_9(v26, v26[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_113_0();
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v34;
    OUTLINED_FUNCTION_113_0();
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = v36;
    v44 = v35;
    LOBYTE(v52[0]) = 2;
    OUTLINED_FUNCTION_113_0();
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v37;
    OUTLINED_FUNCTION_113_0();
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v39;
    (*(v31 + 8))(v24, v29);
    *&v48 = v33;
    *(&v48 + 1) = v47;
    *&v49 = v44;
    *(&v49 + 1) = v46;
    *&v50 = v43;
    *(&v50 + 1) = v45;
    *&v51 = v38;
    *(&v51 + 1) = v40;
    outlined init with copy of WorkflowDataModels.ShowAlertModel(&v48, v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v52[0] = v33;
    v52[1] = v47;
    v52[2] = v44;
    v52[3] = v46;
    v52[4] = v43;
    v52[5] = v45;
    v52[6] = v38;
    v52[7] = v40;
    outlined destroy of WorkflowDataModels.ShowAlertModel(v52);
    v41 = v49;
    *v28 = v48;
    v28[1] = v41;
    v42 = v51;
    v28[2] = v50;
    v28[3] = v42;
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

double protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.ShowAlertModel@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  WorkflowDataModels.ShowAlertModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14), v15, v17, v18, v20, v21, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v16;
    result = *&v19;
    a9[2] = v19;
    a9[3] = v22;
  }

  return result;
}

uint64_t WorkflowDataModels.EnableTCCModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
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

uint64_t WorkflowDataModels.EnableTCCModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x4C6D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x614C6C65636E6163;
  }

  return 0x74706D6F7270;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.EnableTCCModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.EnableTCCModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.EnableTCCModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.EnableTCCModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.EnableTCCModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A3A40, v3, v2);
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = OUTLINED_FUNCTION_25_18();
  v5(v4);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.EnableTCCModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_74_6();
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO14EnableTCCModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_56_7();
  OUTLINED_FUNCTION_53_9(v21, v21[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v27;
    OUTLINED_FUNCTION_49_13();
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v28;
    OUTLINED_FUNCTION_91_2();
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = OUTLINED_FUNCTION_90_2();
    v32 = v31;
    v33(v30, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    *v23 = v26;
    v23[1] = v36;
    v23[2] = v34;
    v23[3] = v35;
    v23[4] = v29;
    v23[5] = v32;
  }

  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.WatchModel.viewType.getter()
{
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_154();
  outlined copy of WatchViewType(v0, v1);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_154();
}

uint64_t WorkflowDataModels.WatchModel.confirmLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WorkflowDataModels.WatchModel.cancelLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t WorkflowDataModels.WatchModel.asSnippetPluginModel()@<X0>(uint64_t a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_33_14(a1);
  memcpy(v1, v2, 0x50uLL);
  OUTLINED_FUNCTION_18_30();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_119_1();
  return outlined init with copy of WorkflowDataModels.WatchModel(v3, v4);
}

uint64_t WorkflowDataModels.WatchModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756374726F6873 && a2 == 0xEC000000656D614ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.WatchModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74756374726F6873;
  switch(a1)
  {
    case 1:
      result = 0x6570795477656976;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x614C6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.WatchModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.WatchModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.WatchModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.WatchModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.WatchModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A39B0, v3, v2);
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType();
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_9_31(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_31(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = OUTLINED_FUNCTION_25_18();
  v5(v4);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.WatchModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10WatchModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v31 = v30;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_53_9(v26, v26[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_130_0();
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v34;
    LOBYTE(v50[0]) = 1;
    lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType();
    OUTLINED_FUNCTION_59_11();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v48 = v52;
    v47 = v53;
    LOBYTE(v51[0]) = 2;
    OUTLINED_FUNCTION_130_0();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_130_0();
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v24;
    v38 = v37;
    (*(v31 + 8))(v36, v29);
    v50[0] = v33;
    v50[1] = v49;
    OUTLINED_FUNCTION_168();
    v50[2] = v40;
    v50[3] = v39;
    v50[4] = v52;
    v50[5] = v53;
    OUTLINED_FUNCTION_166();
    v50[6] = v42;
    v50[7] = v41;
    v50[8] = v35;
    v50[9] = v38;
    outlined init with copy of WorkflowDataModels.WatchModel(v50, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v51[0] = v33;
    v51[1] = v49;
    OUTLINED_FUNCTION_168();
    v52 = v44;
    v53 = v43;
    v54 = v48;
    v55 = v47;
    OUTLINED_FUNCTION_166();
    v56 = v46;
    v57 = v45;
    v58 = v35;
    v59 = v38;
    outlined destroy of WorkflowDataModels.WatchModel(v51);
    memcpy(v28, v50, 0x50uLL);
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.WatchModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.WatchModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

uint64_t WorkflowDataModels.CustomIntentModel.appPunchOut.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_22();

  return v1(v0);
}

uint64_t WorkflowDataModels.CustomIntentModel.interaction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkflowDataModels.CustomIntentModel(0) + 20);
  type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t WorkflowDataModels.CustomIntentModel.title.getter()
{
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_141_0();
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.CustomIntentModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.CustomIntentModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 0x656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A3920, v3, v2);
  v4 = OUTLINED_FUNCTION_76();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_21_24();
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v6);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_38_16();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v7 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    OUTLINED_FUNCTION_49_13();
    type metadata accessor for CodableINInteraction();
    OUTLINED_FUNCTION_73_7();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v8);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_91_2();
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v9);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_153(*(v7 + 28));
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v10 = OUTLINED_FUNCTION_25_18();
  v11(v10);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

uint64_t WorkflowDataModels.CustomIntentModel.init(appPunchOut:interaction:image:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_40_11();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7();
  v11 = OUTLINED_FUNCTION_1_31();
  v12(v11);
  v13 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v14 = *(v13 + 20);
  type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_7();
  (*(v15 + 32))(v10 + v14, v7);
  result = outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  v17 = (v10 + *(v13 + 28));
  *v17 = v6;
  v17[1] = a5;
  return result;
}

void WorkflowDataModels.CustomIntentModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_74_6();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v24);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_22_10();
  v53 = type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_7_1();
  v51 = v26;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_3();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7_1();
  v52 = v31;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_16_9();
  v54 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17CustomIntentModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_13_29();
  v35 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_3();
  v39 = v38 - v37;
  OUTLINED_FUNCTION_53_9(v23, v23[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    OUTLINED_FUNCTION_20_21();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v40);
    OUTLINED_FUNCTION_121_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 32))(v39, v54);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_73_7();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v41);
    OUTLINED_FUNCTION_172();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v51 + 32))(v39 + *(v35 + 20), v30, v53);
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v42);
    OUTLINED_FUNCTION_154();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    OUTLINED_FUNCTION_137();
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v50 = v44;
    v45 = v43;
    v46 = OUTLINED_FUNCTION_124();
    v47(v46);
    v48 = (v39 + *(v35 + 28));
    *v48 = v45;
    v48[1] = v50;
    OUTLINED_FUNCTION_68_12();
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_19_22();
    outlined destroy of WorkflowDataModels.CustomIntentModel(v39, v49);
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.cancelLabel.getter()
{
  type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  OUTLINED_FUNCTION_141_0();
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D746E65746E69 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
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

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4D746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x4C6D7269666E6F63;
  }

  return 0x614C6C65636E6163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentConfirmationModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A3890, v3, v2);
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_4_54();
  lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v4);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_23_21();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v5 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    OUTLINED_FUNCTION_153(*(v5 + 20));
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_153(*(v5 + 24));
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v6 = OUTLINED_FUNCTION_25_18();
  v7(v6);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.CustomIntentConfirmationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_74_6();
  v21 = v20;
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO29CustomIntentConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_29_17();
  v24 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  OUTLINED_FUNCTION_53_9(v21, v21[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v29);
    OUTLINED_FUNCTION_121_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_67();
    outlined init with take of WorkflowDataModels.CustomIntentModel();
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_113_0();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = (v28 + *(v24 + 20));
    *v31 = v30;
    v31[1] = v32;
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_113_0();
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v34;
    v35 = v33;
    v36 = OUTLINED_FUNCTION_82_9();
    v37(v36);
    v38 = (v28 + *(v24 + 24));
    *v38 = v35;
    v38[1] = v39;
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v28, type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel);
  }

  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.init(intentModel:confirmLabel:cancelLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_40_11();
  v9 = v8;
  OUTLINED_FUNCTION_1_67();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v10 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  result = OUTLINED_FUNCTION_158(v10);
  v13 = (v9 + v12);
  *v13 = v6;
  v13[1] = a5;
  return result;
}

uint64_t WorkflowDataModels.CustomIntentConfirmationModel.confirmLabel.getter(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_141_0();
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.CustomIntentHandledModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D746E65746E69 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74747542656E6F64 && a2 == 0xEF6C6562614C6E6FLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000235120 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x8000000000235140 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.CustomIntentHandledModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6F4D746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x74747542656E6F64;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentHandledModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentHandledModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v23 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A3800, v24, v23);
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_4_54();
  lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v25);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_23_21();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v21)
  {
    v26 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
    OUTLINED_FUNCTION_153(*(v26 + 20));
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_91_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
    OUTLINED_FUNCTION_21_24();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v27);
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v28 = OUTLINED_FUNCTION_52_11();
  v29(v28);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.CustomIntentHandledModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_74_6();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  OUTLINED_FUNCTION_14(v26);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_8_20();
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_3();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO24CustomIntentHandledModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v41 = v29;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_29_17();
  v31 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  OUTLINED_FUNCTION_53_9(v25, v25[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    OUTLINED_FUNCTION_4_54();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v33);
    OUTLINED_FUNCTION_121_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_1_67();
    outlined init with take of WorkflowDataModels.CustomIntentModel();
    OUTLINED_FUNCTION_49_13();
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = (v22 + *(v31 + 20));
    *v35 = v34;
    v35[1] = v36;
    v37 = OUTLINED_FUNCTION_76();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_20_21();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v39);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    OUTLINED_FUNCTION_137();
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v41 + 8))(v23, v42);
    *(v22 + *(v31 + 28)) = v40 & 1;
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v22, type metadata accessor for WorkflowDataModels.CustomIntentHandledModel);
  }

  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.CustomIntentHandledModel.init(intentModel:doneButtonLabel:doneButtonCommand:shouldShowDoneButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_40_11();
  v8 = v7;
  OUTLINED_FUNCTION_1_67();
  outlined init with take of WorkflowDataModels.CustomIntentModel();
  v9 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  OUTLINED_FUNCTION_158(v9);
  result = outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  *(v8 + *(v9 + 28)) = a5;
  return result;
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.appPunchOut.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000000235160 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t WorkflowDataModels.CustomIntentErrorModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x68636E7550707061;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CustomIntentErrorModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.CustomIntentErrorModel.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_74_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_3_63();
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_163();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
    OUTLINED_FUNCTION_49_13();
    v7 = OUTLINED_FUNCTION_76();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_21_24();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v9);
    OUTLINED_FUNCTION_172();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.CustomIntentErrorModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74_6();
  v26 = v25;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_7_1();
  v36 = v27;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_31_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO22CustomIntentErrorModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_29_17();
  v30 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  OUTLINED_FUNCTION_53_9(v26, v26[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    *v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v23[1] = v32;
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_20_21();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v33);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = OUTLINED_FUNCTION_127_0();
    v35(v34);
    (*(v36 + 32))(v23 + *(v30 + 20), v24, v37);
    outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    outlined destroy of WorkflowDataModels.CustomIntentModel(v23, type metadata accessor for WorkflowDataModels.CustomIntentErrorModel);
  }

  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.ConfirmActionModel.archivedViewData.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t WorkflowDataModels.ConfirmActionModel.archivedViewModel.getter@<X0>(uint64_t **a1@<X8>)
{
  v9 = v1[8];
  v8 = v1[9];
  if (v8 >> 60 == 15)
  {
    OUTLINED_FUNCTION_115_1();
  }

  else
  {
    v4 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v3 = v1[3];

    v1 = v9;
    v6 = v8;
  }

  result = outlined copy of Data?(v9, v8);
  *a1 = v1;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v5;
  a1[5] = v3;
  return result;
}

uint64_t WorkflowDataModels.ConfirmActionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000000235180 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7572747365447369 && a2 == 0xED00006576697463;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.ConfirmActionModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x6C70736944707061;
      break;
    case 2:
      result = 0x4C6D7269666E6F63;
      break;
    case 3:
      result = 0x6C6562614C6F6ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7572747365447369;
      break;
    case 6:
      result = 0x74706D6F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.ConfirmActionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.ConfirmActionModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ConfirmActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.ConfirmActionModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v3 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A36E0, v4, v3);
  OUTLINED_FUNCTION_12_33();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_31(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_31(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_31(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v7 = *(v1 + 64);
    outlined init with copy of DeviceState?();
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_48_13();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v7, *(&v7 + 1));
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_31(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v5 = OUTLINED_FUNCTION_25_18();
  v6(v5);
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.ConfirmActionModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO18ConfirmActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v31 = v30;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_53_9(v26, v26[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    LOBYTE(v54) = 0;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v34;
    OUTLINED_FUNCTION_30_17(1);
    v50 = KeyedDecodingContainer.decode(_:forKey:)();
    v52 = v36;
    OUTLINED_FUNCTION_30_17(2);
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = v33;
    v51 = v37;
    OUTLINED_FUNCTION_30_17(3);
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = v39;
    v46 = v38;
    LOBYTE(v53[0]) = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v54;
    v44 = v55;
    OUTLINED_FUNCTION_30_17(5);
    v40 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v42;
    (*(v31 + 8))(v24, v29);
    v53[0] = v48;
    v53[1] = v35;
    v53[2] = v50;
    v53[3] = v52;
    v53[4] = v47;
    v53[5] = v51;
    v53[6] = v46;
    v53[7] = v49;
    v53[8] = v54;
    v53[9] = v55;
    LOBYTE(v53[10]) = v40;
    v53[11] = v41;
    v53[12] = v43;
    outlined init with copy of WorkflowDataModels.ConfirmActionModel(v53, &v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v54 = v48;
    v55 = v35;
    v56 = v50;
    v57 = v52;
    v58 = v47;
    v59 = v51;
    v60 = v46;
    v61 = v49;
    v62 = v45;
    v63 = v44;
    v64 = v40;
    v65 = v41;
    v66 = v43;
    outlined destroy of WorkflowDataModels.ConfirmActionModel(&v54);
    memcpy(v28, v53, 0x68uLL);
  }

  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.ConfirmActionModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.ConfirmActionModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x68uLL);
  }
}

uint64_t WorkflowDataModels.DisambiguateItemsModel.prompt.getter()
{
  OUTLINED_FUNCTION_23();

  return v0;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO33DisambiguateSmartPromptItemsModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO11stringValueSSvg_0(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO33DisambiguateSmartPromptItemsModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0M3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.DisambiguateItemsModel.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkflowDataModels.DisambiguateItemsModel.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_23();
  v3 = v1 == 0x74706D6F7270 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_50(0x74706D6F7270, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x736D657469 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_50(0x736D657469, 0xE500000000000000);
    OUTLINED_FUNCTION_48_3();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.DisambiguateItemsModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74_6();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_13_29();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v24();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_163();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v22)
  {
    OUTLINED_FUNCTION_49_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_67_9();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v30);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v31 = OUTLINED_FUNCTION_52_11();
  v32(v31);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.DisambiguateItemsModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74_6();
  v23 = v22;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_2_40();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  OUTLINED_FUNCTION_69_8();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
  OUTLINED_FUNCTION_49_13();
  OUTLINED_FUNCTION_66_9();
  lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v29);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = OUTLINED_FUNCTION_57_7();
  v31(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

uint64_t WorkflowDataModels.InvocationCommand.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000000002351A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000000002351C0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7165527472617473 && a2 == 0xEC00000074736575)
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

uint64_t WorkflowDataModels.InvocationCommand.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x7165527472617473;
}

uint64_t WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_50(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_50(0x64616F6C796170, 0xE700000000000000);
    OUTLINED_FUNCTION_48_3();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directh4WithF10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO11stringValueSSvg_0(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 25705;
  }
}

uint64_t WorkflowDataModels.InvocationCommand.StartRequestCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
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

uint64_t protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.DisambiguateItemsModel@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.InvocationCommand.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directh4WithF10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0L3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.InvocationCommand.StartRequestCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();

  return CodingKey.description.getter(a1, started);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();

  return CodingKey.debugDescription.getter(a1, started);
}

void WorkflowDataModels.InvocationCommand.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74_6();
  v57 = v22;
  v55 = v23;
  v49 = v24;
  v56 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v51 = v27;
  v52 = v26;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_30_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v53 = v30;
  v54 = v29;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_56_7();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v50 = v33;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v34);
  v36 = &v49 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v58 = v38;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_13_29();
  v40 = OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_53_9(v40, v41);
  lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v55)
  {
    if (v55 != 1)
    {
      lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();
      OUTLINED_FUNCTION_81_7();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      v47 = OUTLINED_FUNCTION_65_10();
      v48(v47);
      v44 = OUTLINED_FUNCTION_52_11();
      goto LABEL_11;
    }

    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();
    OUTLINED_FUNCTION_81_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v42 = v54;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v20)
    {
      HIBYTE(v59) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      OUTLINED_FUNCTION_156();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v53 + 8))(v21, v42);
  }

  else
  {
    v43 = v50;
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();
    OUTLINED_FUNCTION_81_7();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v20)
    {
      HIBYTE(v59) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v43 + 8))(v36, v32);
  }

  v44 = OUTLINED_FUNCTION_97_1();
  v46 = v37;
LABEL_11:
  v45(v44, v46);
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.InvocationCommand.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74_6();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO22StartRequestCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06DirectK20WithStringCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO06Directk4WithI10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_8_20();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_56_7();
  v54 = v22;
  OUTLINED_FUNCTION_53_9(v22, v22[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_10;
  }

  v28 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO_Tt1g5(v28, 0);
  if (v30 == v29 >> 1)
  {
LABEL_9:
    type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v41 = &type metadata for WorkflowDataModels.InvocationCommand;
    v42 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_111_0(v42);
    OUTLINED_FUNCTION_21_2();
    (*(v43 + 104))(v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_138_1();
    v45(v44);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    OUTLINED_FUNCTION_75_6();
    return;
  }

  OUTLINED_FUNCTION_126();
  if (v34 < (v33 >> 1))
  {
    v35 = *(v32 + v31);
    specialized ArraySlice.subscript.getter(v31 + 1);
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    if (v37 == v39 >> 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys();
          OUTLINED_FUNCTION_132();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          KeyedDecodingContainer.decode(_:forKey:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
          lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
          OUTLINED_FUNCTION_122_0();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v46 = OUTLINED_FUNCTION_51_4();
        }

        else
        {
          lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys();
          OUTLINED_FUNCTION_132();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          KeyedDecodingContainer.decode(_:forKey:)();
          swift_unknownObjectRelease();
          v46 = OUTLINED_FUNCTION_0_23();
        }

        v47(v46);
        v48 = OUTLINED_FUNCTION_131_1();
        v49(v48);
      }

      else
      {
        lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
        lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B]);
        OUTLINED_FUNCTION_122_0();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v50 = OUTLINED_FUNCTION_1_31();
        v51(v50);
        v52 = OUTLINED_FUNCTION_97_1();
        v53(v52, v26);
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t WorkflowDataModels.DisambiguationItemModel.invocationCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 16);
  v2 = *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24);
  v3 = OUTLINED_FUNCTION_22();
  outlined copy of WorkflowDataModels.InvocationCommand(v3, v4, v1, v2);
  return OUTLINED_FUNCTION_22();
}

void *WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  outlined init with take of CodableAceObject<SAStartLocalRequest>?();
  v13 = v9 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
  *v13 = a6;
  *(v13 + 1) = a7;
  *(v13 + 2) = a8;
  v13[24] = a9;
  return v9;
}

uint64_t WorkflowDataModels.DisambiguationItemModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000000235100 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.DisambiguationItemModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.DisambiguationItemModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkflowDataModels.DisambiguationItemModel.deinit()
{

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_thumbnail, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  outlined consume of WorkflowDataModels.InvocationCommand(*(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand), *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8), *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 16), *(v0 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24));
  return v0;
}

uint64_t WorkflowDataModels.DisambiguationItemModel.__deallocating_deinit()
{
  WorkflowDataModels.DisambiguationItemModel.deinit();

  return swift_deallocClassInstance();
}

void WorkflowDataModels.DisambiguationItemModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A32F0, v3, v2);
  OUTLINED_FUNCTION_2_41();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_31(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v4);
    OUTLINED_FUNCTION_23_21();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand();
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v5 = OUTLINED_FUNCTION_25_18();
  v6(v5);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.DisambiguationItemModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v28);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_2_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelC10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_56_7();
  OUTLINED_FUNCTION_53_9(v27, v27[3]);
  v31 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys();
  OUTLINED_FUNCTION_112_0(&unk_2A32F0, v32, v31);
  if (v24)
  {
    type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_156();
    v25[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v25[3] = v33;
    OUTLINED_FUNCTION_156();
    v25[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25[5] = v34;
    type metadata accessor for VisualProperty();
    LOBYTE(v39) = 2;
    OUTLINED_FUNCTION_6_37();
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v35);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand();
    OUTLINED_FUNCTION_81_7();
    OUTLINED_FUNCTION_156();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = OUTLINED_FUNCTION_31_16();
    v37(v36);
    v38 = v25 + OBJC_IVAR____TtCO18SiriLinkFlowPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand;
    *v38 = v39;
    *(v38 + 2) = v40;
    v38[24] = v41;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkflowDataModels.DisambiguationItemModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.DisambiguationItemModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.options.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO0B19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO06stringJ0SSvg_0(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x65646F4D6B6E696CLL;
  }
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO0B19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0L3KeyAAsAIP06stringJ0xSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.LinkMultiChoiceModel.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkMultiChoiceModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_53_9(v22, v22[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_176(v38);
  OUTLINED_FUNCTION_176(&v37);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v38, v36);
  v25 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_139(v25, v26, v27, &type metadata for WorkflowDataModels.LinkActionModel, v25);
  v28 = OUTLINED_FUNCTION_160();
  memcpy(v28, v29, v30);
  outlined destroy of WorkflowDataModels.LinkActionModel(v36);
  if (!v23)
  {
    OUTLINED_FUNCTION_49_13();
    v31 = OUTLINED_FUNCTION_138_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v33);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v34 = OUTLINED_FUNCTION_0_23();
  v35(v34);
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.LinkMultiChoiceModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E16MultiChoiceModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_53_9(v23, v23[3]);
  v26 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys();
  OUTLINED_FUNCTION_112_0(&unk_2A3260, v27, v26);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    OUTLINED_FUNCTION_59_11();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v37, v36, sizeof(v37));
    v28 = OUTLINED_FUNCTION_138_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v30);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = OUTLINED_FUNCTION_0_13();
    v32(v31);
    v33 = v35[11];
    OUTLINED_FUNCTION_118_0(v34);
    v34[10] = v33;
    outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v34, v35);
    OUTLINED_FUNCTION_86_2();
    v35[10] = v33;
    outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(v35);
    memcpy(v24, v34, 0x58uLL);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkMultiChoiceModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.LinkMultiChoiceModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SHIWORD(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x58uLL);
  }
}

uint64_t WorkflowDataModels.LinkActionModel.archivedViewData.getter()
{
  v0 = OUTLINED_FUNCTION_22();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_22();
}

void key path setter for WorkflowDataModels.LinkActionModel.snippetAction : WorkflowDataModels.LinkActionModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkflowDataModels.LinkActionModel.snippetAction.setter(v1);
}

uint64_t sub_1DDFC0()
{

  if (*(v0 + 40))
  {
  }

  OUTLINED_FUNCTION_116_0();

  return _swift_deallocObject(v1);
}

uint64_t sub_1DE038()
{

  return _swift_deallocObject(v0);
}

void *WorkflowDataModels.LinkActionModel.environment.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void key path setter for WorkflowDataModels.LinkActionModel.environment : WorkflowDataModels.LinkActionModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkflowDataModels.LinkActionModel.environment.setter(v1);
}

uint64_t WorkflowDataModels.LinkActionModel.archivedViewModel.getter@<X0>(uint64_t **a1@<X8>)
{
  v9 = v1[6];
  v8 = v1[7];
  if (v8 >> 60 == 15)
  {
    OUTLINED_FUNCTION_115_1();
  }

  else
  {
    v4 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v3 = v1[3];

    v1 = v9;
    v6 = v8;
  }

  result = outlined copy of Data?(v9, v8);
  *a1 = v1;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v2;
  a1[4] = v5;
  a1[5] = v3;
  return result;
}

uint64_t WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  if (!v0[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_116_0();
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x50uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21ArchiveRenderingModelCySo8LNActionCGMd, &_s9SnippetUI21ArchiveRenderingModelCySo8LNActionCGMR);
  swift_allocObject();
  outlined init with copy of DeviceState?();
  v2 = OUTLINED_FUNCTION_119_1();
  outlined init with copy of WorkflowDataModels.LinkActionModel(v2, v3);
  return ArchiveRenderingModel.init(source:snippetEnvironmentProvider:)();
}

uint64_t closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  if (*(*(v0 + 16) + 72))
  {
    v1 = *(*(v0 + 16) + 72);
  }

  else
  {
    v1 = [objc_allocWithZone(LNSnippetEnvironment) init];
  }

  OUTLINED_FUNCTION_6_0();
  v6 = v2;
  v4 = v3;

  return v6(v1);
}

uint64_t WorkflowDataModels.LinkActionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000000235180 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4174657070696E73 && a2 == 0xED00006E6F697463;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
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

unint64_t WorkflowDataModels.LinkActionModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x6C70736944707061;
      break;
    case 2:
      result = 0x74706D6F7270;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x4174657070696E73;
      break;
    case 5:
      result = 0x6D6E6F7269766E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.LinkActionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.LinkActionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkActionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkActionModel.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v3 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A31D0, v4, v3);
  OUTLINED_FUNCTION_12_33();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_31(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_31(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v1 + 48);
    outlined init with copy of DeviceState?();
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_48_13();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v13, *(&v13 + 1));
    v5 = OUTLINED_FUNCTION_76();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v7);
    OUTLINED_FUNCTION_172();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = OUTLINED_FUNCTION_138_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_106_1();
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v11 = OUTLINED_FUNCTION_25_18();
  v12(v11);
  OUTLINED_FUNCTION_19_15();
}

void WorkflowDataModels.LinkActionModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74_6();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E11ActionModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_53_9(v22, v22[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys();
  OUTLINED_FUNCTION_167();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v27;
    OUTLINED_FUNCTION_128();
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v29;
    v37 = v28;
    LOBYTE(v42) = 2;
    OUTLINED_FUNCTION_128();
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v30;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v42;
    v34 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin13CodableActionVySo8LNActionCGMd, &_s18SiriLinkFlowPlugin13CodableActionVySo8LNActionCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAction<LNAction> and conformance CodableAction<A>);
    OUTLINED_FUNCTION_148_0();
    v33 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin18CodableEnvironmentVySo09LNSnippetF0CGMd, &_s18SiriLinkFlowPlugin18CodableEnvironmentVySo09LNSnippetF0CGMR);
    v52 = 5;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableEnvironment<LNSnippetEnvironment> and conformance CodableEnvironment<A>);
    OUTLINED_FUNCTION_148_0();
    v31 = OUTLINED_FUNCTION_36_16();
    v32(v31);
    v41[0] = v26;
    v41[1] = v40;
    v41[2] = v37;
    v41[3] = v39;
    v41[4] = v36;
    v41[5] = v38;
    v41[6] = v42;
    v41[7] = v43;
    v41[8] = v42;
    v41[9] = a10;
    outlined init with copy of WorkflowDataModels.LinkActionModel(v41, &v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v42 = v26;
    v43 = v40;
    v44 = v37;
    v45 = v39;
    v46 = v36;
    v47 = v38;
    v48 = v35;
    v49 = v34;
    v50 = v33;
    v51 = a10;
    outlined destroy of WorkflowDataModels.LinkActionModel(&v42);
    memcpy(v24, v41, 0x50uLL);
  }

  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkActionModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.LinkActionModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

uint64_t WorkflowDataModels.LinkConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D6B6E696CLL && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7572747365447369 && a2 == 0xED00006576697463)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t WorkflowDataModels.LinkConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65646F4D6B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x4C6D7269666E6F63;
      break;
    case 2:
      result = 0x614C6C65636E6163;
      break;
    case 3:
      result = 0x7572747365447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.LinkConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkConfirmationModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  v25 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A3140, v26, v25);
  OUTLINED_FUNCTION_177(v34);
  OUTLINED_FUNCTION_177(&v33);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v34, v32);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_38_16();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v27 = OUTLINED_FUNCTION_165();
  if (v23)
  {
    memcpy(v27, v28, v29);
    outlined destroy of WorkflowDataModels.LinkActionModel(v32);
  }

  else
  {
    memcpy(v27, v28, v29);
    outlined destroy of WorkflowDataModels.LinkActionModel(v32);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_38_16();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v30 = OUTLINED_FUNCTION_25_18();
  v31(v30);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.LinkConfirmationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E17ConfirmationModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_29_17();
  OUTLINED_FUNCTION_53_9(v23, v23[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys();
  OUTLINED_FUNCTION_134_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v42, v41, sizeof(v42));
    OUTLINED_FUNCTION_162(1);
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v28;
    v36 = v27;
    OUTLINED_FUNCTION_162(2);
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v30;
    v35 = v29;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = OUTLINED_FUNCTION_93_3();
    v34(v33);
    v32 &= 1u;
    OUTLINED_FUNCTION_118_0(v38);
    v38[10] = v36;
    v38[11] = v37;
    v38[12] = v35;
    v38[13] = v31;
    LOBYTE(v38[14]) = v32;
    outlined init with copy of WorkflowDataModels.LinkConfirmationModel(v38, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_118_0(v39);
    v39[10] = v36;
    v39[11] = v37;
    v39[12] = v35;
    v39[13] = v31;
    v40 = v32;
    outlined destroy of WorkflowDataModels.LinkConfirmationModel(v39);
    memcpy(v25, v38, 0x71uLL);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkConfirmationModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.LinkConfirmationModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x71uLL);
  }
}

uint64_t WorkflowDataModels.LinkMultiChoiceModel.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_23();
  v3 = v1 == 0x65646F4D6B6E696CLL && v2 == 0xE90000000000006CLL;
  if (v3 || (OUTLINED_FUNCTION_0_50(0x65646F4D6B6E696CLL, 0xE90000000000006CLL) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x736E6F6974706FLL && v0 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_50(0x736E6F6974706FLL, 0xE700000000000000);
    OUTLINED_FUNCTION_48_3();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.LinkPromptForValueModel.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_53_9(v1, v1[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();
  OUTLINED_FUNCTION_157_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_176(v15);
  OUTLINED_FUNCTION_176(&v14);
  outlined init with copy of WorkflowDataModels.LinkActionModel(v15, v13);
  v4 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
  OUTLINED_FUNCTION_139(v4, v5, v6, &type metadata for WorkflowDataModels.LinkActionModel, v4);
  v7 = OUTLINED_FUNCTION_160();
  memcpy(v7, v8, v9);
  outlined destroy of WorkflowDataModels.LinkActionModel(v13);
  if (!v2)
  {
    OUTLINED_FUNCTION_49_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_67_9();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v10);
    OUTLINED_FUNCTION_154();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v11 = OUTLINED_FUNCTION_0_23();
  v12(v11);
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.LinkPromptForValueModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E19PromptForValueModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_53_9(v23, v23[3]);
  v26 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys();
  OUTLINED_FUNCTION_112_0(&unk_2A30B0, v27, v26);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
    OUTLINED_FUNCTION_81_7();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v35, v34, sizeof(v35));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_66_9();
    lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](v28);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = OUTLINED_FUNCTION_65_10();
    v30(v29);
    v31 = v33[11];
    OUTLINED_FUNCTION_118_0(v32);
    v32[10] = v31;
    outlined init with copy of WorkflowDataModels.LinkPromptForValueModel(v32, v33);
    OUTLINED_FUNCTION_86_2();
    v33[10] = v31;
    outlined destroy of WorkflowDataModels.LinkPromptForValueModel(v33);
    memcpy(v24, v32, 0x58uLL);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.LinkPromptForValueModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.LinkPromptForValueModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SHIWORD(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x58uLL);
  }
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562)
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

uint64_t WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65646F4D77656976;
  }

  if (a1 == 1)
  {
    return 0x4C6D7269666E6F63;
  }

  return 0x614C6C65636E6163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(uint64_t a1)
{
  Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();

  return CodingKey.description.getter(a1, Run);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(uint64_t a1)
{
  Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, Run);
}

void WorkflowDataModels.AutoShortcutFirstRunModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_3_63();
  Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();
  OUTLINED_FUNCTION_29_23(&unk_2A3020, v26, Run);
  OUTLINED_FUNCTION_177(v34);
  OUTLINED_FUNCTION_177(&v33);
  outlined init with copy of AutoShortcutAppPhrasesViewModel(v34, v32);
  lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
  OUTLINED_FUNCTION_38_16();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v27 = OUTLINED_FUNCTION_165();
  if (v23)
  {
    memcpy(v27, v28, v29);
    outlined destroy of AutoShortcutAppPhrasesViewModel(v32);
  }

  else
  {
    memcpy(v27, v28, v29);
    outlined destroy of AutoShortcutAppPhrasesViewModel(v32);
    OUTLINED_FUNCTION_49_13();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v30 = OUTLINED_FUNCTION_25_18();
  v31(v30);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.AutoShortcutFirstRunModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  v26 = v25;
  v28 = v27;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO25AutoShortcutFirstRunModelV10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v30 = v29;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_53_9(v26, v26[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
    OUTLINED_FUNCTION_59_11();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v46, v45, sizeof(v46));
    v40[0] = 1;
    OUTLINED_FUNCTION_130_0();
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v32;
    OUTLINED_FUNCTION_130_0();
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v34;
    (*(v30 + 8))(v24, v38);
    OUTLINED_FUNCTION_118_0(v39);
    v39[10] = v36;
    v39[11] = v37;
    v39[12] = v33;
    v39[13] = v35;
    outlined init with copy of WorkflowDataModels.AutoShortcutFirstRunModel(v39, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_118_0(v40);
    v41 = v36;
    v42 = v37;
    v43 = v33;
    v44 = v35;
    outlined destroy of WorkflowDataModels.AutoShortcutFirstRunModel(v40);
    memcpy(v28, v39, 0x70uLL);
  }

  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_75_6();
}

void protocol witness for Decodable.init(from:) in conformance WorkflowDataModels.AutoShortcutFirstRunModel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  WorkflowDataModels.AutoShortcutFirstRunModel.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x70uLL);
  }
}

uint64_t static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[4] = v5;
  v6 = type metadata accessor for ImageElement.ImageStyle();
  v0[9] = v6;
  v0[10] = *(v6 - 8);
  v0[11] = swift_task_alloc();
  v7 = type metadata accessor for ImageElement();
  v0[12] = v7;
  v0[13] = *(v7 - 8);
  v0[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
  OUTLINED_FUNCTION_14(v8);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  if (!v3[6])
  {
    OUTLINED_FUNCTION_103_0();
    v12 = OUTLINED_FUNCTION_152_0();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v14 = type metadata accessor for _ProtoIdiom();
    OUTLINED_FUNCTION_7_1();
    v16 = v15;
    OUTLINED_FUNCTION_83_5();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_216850;
    (*(v16 + 104))(v17 + v6, enum case for _ProtoIdiom.default(_:), v14);
    v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v17);
    OUTLINED_FUNCTION_147_0(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v30);

    (*(v4 + 8))(v2, v5);
    ImageElement.convertToVisualProperty()();
    (*(v0 + 8))(v1);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for VoiceShortcutClientWrapper();
  v3[17] = swift_initStackObject();
  v7 = swift_task_alloc();
  v3[18] = v7;
  *v7 = v3;
  v7[1] = static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:);
  OUTLINED_FUNCTION_58();

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *(v1 + 152) = v0;

  v2 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v2);
}

void static WorkflowDataModels.getThumbnail(shortcutName:defaultAppIdentifier:)()
{
  v6 = *(v2 + 152);
  if (v6)
  {
    v7 = [*(v2 + 152) shortcut];
    if (v7)
    {
      v8 = v7;
      static INShortcut._unconditionallyBridgeFromObjectiveC(_:)();

      v0 = 0;
    }

    else
    {
      v0 = &dword_0 + 1;
    }

    v4 = *(v2 + 120);
    v9 = *(v2 + 128);
    v1 = type metadata accessor for INShortcut();
    __swift_storeEnumTagSinglePayload(v4, v0, 1, v1);
    OUTLINED_FUNCTION_1_31();
    outlined init with take of CodableAceObject<SAStartLocalRequest>?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v1);
    v3 = *(v2 + 128);
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of Any?(v3, &_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
    }

    else
    {
      v0 = INShortcut.intent.getter();
      OUTLINED_FUNCTION_21_2();
      (*(v11 + 8))(v3, v1);
      if (v0)
      {
        v1 = [v0 _keyImage];

        v12 = outlined bridged method (ob) of @objc INImage._imageData.getter(v1);
        if (v13 >> 60 != 15)
        {
          v30 = v12;
          v31 = v13;
          static WorkflowDataModels.getThumbnail(imageData:)(v12, v13);
          outlined consume of Data?(v30, v31);

LABEL_11:

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_58();

          __asm { BRAA            X1, X16 }
        }
      }
    }
  }

  OUTLINED_FUNCTION_103_0();
  v14 = OUTLINED_FUNCTION_152_0();
  v15(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v16 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_7_1();
  v18 = v17;
  OUTLINED_FUNCTION_83_5();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_216850;
  (*(v18 + 104))(v19 + v5, enum case for _ProtoIdiom.default(_:), v16);
  v20 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v19);
  OUTLINED_FUNCTION_147_0(v20, v21, v22, v23, v24, v25, v26, v27, v32, v33, v34);

  (*(v3 + 8))(v1, v4);
  ImageElement.convertToVisualProperty()();
  (v6)[1](v0);
  goto LABEL_11;
}

uint64_t WorkflowDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656C41776F6873 && a2 == 0xED00007765695674;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4354656C62616E65 && a2 == 0xED00007765695643;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000000002351E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000000235200 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000000235220 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000000235240 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6569566863746177 && a2 == 0xE900000000000077;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x8000000000235260 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000020 && 0x8000000000235280 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x80000000002352B0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x697463416B6E696CLL && a2 == 0xEE00776569566E6FLL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x80000000002352D0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000016 && 0x80000000002352F0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001ELL && 0x8000000000235310 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000018 && 0x8000000000235330 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t WorkflowDataModels.CodingKeys.stringValue.getter(char a1)
{
  result = 0x72656C41776F6873;
  switch(a1)
  {
    case 1:
      result = 0x4354656C62616E65;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6569566863746177;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x697463416B6E696CLL;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_48_3();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOs0M3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys(uint64_t a1)
{
  RunViewCoding = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();

  return CodingKey.description.getter(a1, RunViewCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys(uint64_t a1)
{
  RunViewCoding = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunViewCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkflowDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WorkflowDataModels.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance WorkflowDataModels.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WorkflowDataModels.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ConfirmActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ConfirmActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.EnableTCCViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.EnableTCCViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkActionViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkConfirmationViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.ShowAlertViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.ShowAlertViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkflowDataModels.WatchViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkflowDataModels.WatchViewCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WorkflowDataModels.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_74_6();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_16_9();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v165 = v11;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_9();
  v173 = v13;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v164 = v14;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_9();
  v171 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_16_9();
  v20 = OUTLINED_FUNCTION_22_10();
  type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(v20);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v170 = v23 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_16_9();
  v25 = OUTLINED_FUNCTION_22_10();
  type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(v25);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_3();
  v169 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_16_9();
  v30 = OUTLINED_FUNCTION_22_10();
  type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(v30);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_3();
  v168 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_8_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v166 = v36;
  v167 = v35;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_31_14();
  type metadata accessor for WorkflowDataModels(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_85_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_53_9(v4, v4[3]);
  lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel();
  OUTLINED_FUNCTION_31_16();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v107 = v1[1];
      v108 = v1[3];
      v175 = v1[2];
      v176 = *v1;
      v110 = v1[4];
      v109 = v1[5];
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();
      OUTLINED_FUNCTION_81_7();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v178 = v176;
      *(&v178 + 1) = v107;
      *&v179 = v175;
      *(&v179 + 1) = v108;
      *&v180 = v110;
      *(&v180 + 1) = v109;
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v111 = OUTLINED_FUNCTION_0_23();
      v112(v111);
      v113 = OUTLINED_FUNCTION_17_33();
      v114(v113);

      goto LABEL_19;
    case 2u:
      v66 = v168;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v178) = 2;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A28D0);
      OUTLINED_FUNCTION_71_7();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v93);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v94 = OUTLINED_FUNCTION_17_33();
      v95(v94);
      v70 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel;
      goto LABEL_10;
    case 3u:
      v66 = v169;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v178) = 3;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2960);
      OUTLINED_FUNCTION_70_6();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v96);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v97 = OUTLINED_FUNCTION_17_33();
      v98(v97);
      v70 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel;
      goto LABEL_10;
    case 4u:
      v66 = v170;
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      LOBYTE(v178) = 4;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A29F0);
      OUTLINED_FUNCTION_72_8();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v67);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v68 = OUTLINED_FUNCTION_17_33();
      v69(v68);
      v70 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel;
LABEL_10:
      outlined destroy of WorkflowDataModels.CustomIntentModel(v66, v70);
      v99 = OUTLINED_FUNCTION_7_37();
      v100(v99);
      break;
    case 5u:
      v115 = OUTLINED_FUNCTION_98_0();
      memcpy(v115, v116, 0x68uLL);
      LOBYTE(v177[0]) = 5;
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2A80);
      v117 = OUTLINED_FUNCTION_99_2();
      memcpy(v117, v118, 0x68uLL);
      v119 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel();
      OUTLINED_FUNCTION_62_10(v177, v120, v121, &type metadata for WorkflowDataModels.ConfirmActionModel, v119);
      v122 = OUTLINED_FUNCTION_17_33();
      v123(v122);
      v124 = OUTLINED_FUNCTION_7_37();
      v125(v124);
      outlined destroy of WorkflowDataModels.ConfirmActionModel(&v178);
      break;
    case 6u:
      v137 = OUTLINED_FUNCTION_98_0();
      memcpy(v137, v138, 0x50uLL);
      LOBYTE(v177[0]) = 6;
      lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2B10);
      v139 = OUTLINED_FUNCTION_99_2();
      memcpy(v139, v140, 0x50uLL);
      v141 = lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel();
      OUTLINED_FUNCTION_62_10(v177, v142, v143, &type metadata for WorkflowDataModels.WatchModel, v141);
      v144 = OUTLINED_FUNCTION_17_33();
      v145(v144);
      v146 = OUTLINED_FUNCTION_7_37();
      v147(v146);
      outlined destroy of WorkflowDataModels.WatchModel(&v178);
      break;
    case 7u:
      v102 = *v1;
      v101 = v1[1];
      v103 = v1[2];
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();
      v104 = v171;
      OUTLINED_FUNCTION_59_11();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v178 = v102;
      *(&v178 + 1) = v101;
      *&v179 = v103;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel();
      v105 = v172;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v106 = v164;
      goto LABEL_18;
    case 8u:
      v160 = *v1;
      v159 = v1[1];
      v161 = v1[2];
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();
      v104 = v173;
      OUTLINED_FUNCTION_59_11();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v178 = v160;
      *(&v178 + 1) = v159;
      *&v179 = v161;
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel();
      v105 = v174;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v106 = v165;
LABEL_18:
      (*(v106 + 8))(v104, v105);
      v162 = OUTLINED_FUNCTION_0_13();
      v163(v162);

LABEL_19:

      break;
    case 9u:
      v82 = OUTLINED_FUNCTION_98_0();
      memcpy(v82, v83, 0x58uLL);
      LOBYTE(v177[0]) = 9;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2CC0);
      v84 = OUTLINED_FUNCTION_99_2();
      memcpy(v84, v85, 0x58uLL);
      v86 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel();
      OUTLINED_FUNCTION_62_10(v177, v87, v88, &type metadata for WorkflowDataModels.LinkMultiChoiceModel, v86);
      v89 = OUTLINED_FUNCTION_17_33();
      v90(v89);
      v91 = OUTLINED_FUNCTION_7_37();
      v92(v91);
      outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(&v178);
      break;
    case 0xAu:
      v148 = OUTLINED_FUNCTION_98_0();
      memcpy(v148, v149, 0x50uLL);
      LOBYTE(v177[0]) = 10;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2D50);
      v150 = OUTLINED_FUNCTION_99_2();
      memcpy(v150, v151, 0x50uLL);
      v152 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
      OUTLINED_FUNCTION_62_10(v177, v153, v154, &type metadata for WorkflowDataModels.LinkActionModel, v152);
      v155 = OUTLINED_FUNCTION_17_33();
      v156(v155);
      v157 = OUTLINED_FUNCTION_7_37();
      v158(v157);
      outlined destroy of WorkflowDataModels.LinkActionModel(&v178);
      break;
    case 0xBu:
      v55 = OUTLINED_FUNCTION_98_0();
      memcpy(v55, v56, 0x71uLL);
      LOBYTE(v177[0]) = 11;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2DE0);
      v57 = OUTLINED_FUNCTION_99_2();
      memcpy(v57, v58, 0x71uLL);
      v59 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel();
      OUTLINED_FUNCTION_62_10(v177, v60, v61, &type metadata for WorkflowDataModels.LinkConfirmationModel, v59);
      v62 = OUTLINED_FUNCTION_17_33();
      v63(v62);
      v64 = OUTLINED_FUNCTION_7_37();
      v65(v64);
      outlined destroy of WorkflowDataModels.LinkConfirmationModel(&v178);
      break;
    case 0xCu:
      v71 = OUTLINED_FUNCTION_98_0();
      memcpy(v71, v72, 0x58uLL);
      LOBYTE(v177[0]) = 12;
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2E70);
      v73 = OUTLINED_FUNCTION_99_2();
      memcpy(v73, v74, 0x58uLL);
      v75 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel();
      OUTLINED_FUNCTION_62_10(v177, v76, v77, &type metadata for WorkflowDataModels.LinkPromptForValueModel, v75);
      v78 = OUTLINED_FUNCTION_17_33();
      v79(v78);
      v80 = OUTLINED_FUNCTION_7_37();
      v81(v80);
      outlined destroy of WorkflowDataModels.LinkPromptForValueModel(&v178);
      break;
    case 0xDu:
      v126 = OUTLINED_FUNCTION_98_0();
      memcpy(v126, v127, 0x50uLL);
      LOBYTE(v177[0]) = 13;
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2F00);
      v128 = OUTLINED_FUNCTION_99_2();
      memcpy(v128, v129, 0x50uLL);
      v130 = lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_62_10(v177, v131, v132, &type metadata for AutoShortcutAppPhrasesViewModel, v130);
      v133 = OUTLINED_FUNCTION_17_33();
      v134(v133);
      v135 = OUTLINED_FUNCTION_7_37();
      v136(v135);
      outlined destroy of AutoShortcutAppPhrasesViewModel(&v178);
      break;
    case 0xEu:
      v44 = OUTLINED_FUNCTION_98_0();
      memcpy(v44, v45, 0x70uLL);
      LOBYTE(v177[0]) = 14;
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();
      OUTLINED_FUNCTION_14_29(&unk_2A2F90);
      v46 = OUTLINED_FUNCTION_99_2();
      memcpy(v46, v47, 0x70uLL);
      Run = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel();
      OUTLINED_FUNCTION_62_10(v177, v49, v50, &type metadata for WorkflowDataModels.AutoShortcutFirstRunModel, Run);
      v51 = OUTLINED_FUNCTION_17_33();
      v52(v51);
      v53 = OUTLINED_FUNCTION_7_37();
      v54(v53);
      outlined destroy of WorkflowDataModels.AutoShortcutFirstRunModel(&v178);
      break;
    default:
      v40 = *(v1 + 1);
      v178 = *v1;
      v179 = v40;
      v41 = *(v1 + 3);
      v180 = *(v1 + 2);
      v181 = v41;
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();
      OUTLINED_FUNCTION_46_14();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v177[0] = v178;
      v177[1] = v179;
      v177[2] = v180;
      v177[3] = v181;
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v166 + 8))(v2, v167);
      v42 = OUTLINED_FUNCTION_7_37();
      v43(v42);
      outlined destroy of WorkflowDataModels.ShowAlertModel(&v178);
      break;
  }

  OUTLINED_FUNCTION_75_6();
}

void WorkflowDataModels.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74_6();
  v302 = v20;
  v22 = v21;
  v292[9] = v23;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO34AutoShortcutFirstRunViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v294 = v24;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v26);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO40AutoShortcutsAppEnablementViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v286[0] = v27;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v29);
  v286[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E28PromptForValueViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v285[0] = v30;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v32);
  v285[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E26ConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v283 = v33;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v35);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E20ActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v281 = v36;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v38);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO0E25MultiChoiceViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v279 = v39;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v41);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO42DisambiguateSmartPromptItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v278 = v42;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v44);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31DisambiguateItemsViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v276 = v45;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v47);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO19WatchViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v273 = v48;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v50);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO27ConfirmActionViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v270 = v51;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v52);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v53);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO33CustomIntentHandledViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v271 = v54;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_16_9();
  v299 = v56;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO31CustomIntentErrorViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v269 = v57;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_16_9();
  v298 = v59;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO38CustomIntentConfirmationViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v266 = v60;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v62);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23EnableTCCViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v264 = v63;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v64);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v65);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO23ShowAlertViewCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v293 = v66;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_16_9();
  OUTLINED_FUNCTION_60_9(v68);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin18WorkflowDataModelsO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v297 = v69;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v70);
  OUTLINED_FUNCTION_16_9();
  v307 = v71;
  v72 = OUTLINED_FUNCTION_22_10();
  v296 = type metadata accessor for WorkflowDataModels(v72);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v73);
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v74);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v75);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v76);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v77);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v78);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v79);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v80);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v81);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v82);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_19_19();
  v84 = __chkstk_darwin(v83);
  v86 = &v254 - v85;
  v87 = __chkstk_darwin(v84);
  v89 = &v254 - v88;
  v90 = __chkstk_darwin(v87);
  v92 = &v254 - v91;
  v93 = __chkstk_darwin(v90);
  v95 = &v254 - v94;
  v96 = __chkstk_darwin(v93);
  v98 = &v254 - v97;
  __chkstk_darwin(v96);
  v100 = &v254 - v99;
  v301 = v22;
  v101 = OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_53_9(v101, v102);
  lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys();
  v103 = v302;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v103)
  {
    goto LABEL_8;
  }

  v256 = v98;
  v302 = v95;
  v257 = v92;
  v258 = v89;
  v259 = v86;
  v260 = v100;
  v104 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin18WorkflowDataModelsO17InvocationCommandO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLO_Tt1g5(v104, 0);
  if (v106 == v105 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_126();
  v255 = 0;
  if (v110 >= (v109 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1E42B0);
  }

  v254 = *(v108 + v107);
  specialized ArraySlice.subscript.getter(v107 + 1);
  v112 = v111;
  v114 = v113;
  swift_unknownObjectRelease();
  v115 = v293;
  if (v112 != v114 >> 1)
  {
LABEL_7:
    v119 = v296;
    type metadata accessor for DecodingError();
    swift_allocError();
    v121 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v121 = v119;
    v122 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_111_0(v122);
    OUTLINED_FUNCTION_21_2();
    (*(v123 + 104))(v121);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_80_5();
    v124 = OUTLINED_FUNCTION_138_1();
    v125(v124);
LABEL_8:
    v126 = v301;
    goto LABEL_9;
  }

  v116 = v255;
  v117 = v302;
  switch(v254)
  {
    case 1:
      LOBYTE(v303) = 1;
      v175 = lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys();
      OUTLINED_FUNCTION_61_6(&unk_2A2840, &v303, v176, v177, v175);
      lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel();
      v178 = v265;
      OUTLINED_FUNCTION_132();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v232 = OUTLINED_FUNCTION_78_5();
      v233(v232, v178);
      OUTLINED_FUNCTION_80_5();
      v234(v115, v300);
      v235 = v304;
      *v117 = v303;
      v117[1] = v235;
      v117[2] = v305;
      OUTLINED_FUNCTION_55_5();
      goto LABEL_26;
    case 2:
      LOBYTE(v303) = 2;
      v167 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A28D0, &v303, v168, v169, v167);
      type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
      OUTLINED_FUNCTION_71_7();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v170);
      OUTLINED_FUNCTION_69_8();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v220 = OUTLINED_FUNCTION_92_3();
      v221(v220);
      v222 = OUTLINED_FUNCTION_78_5();
      v223(v222, v115);
      OUTLINED_FUNCTION_55_5();
      goto LABEL_26;
    case 3:
      LOBYTE(v303) = 3;
      lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys();
      v171 = v300;
      OUTLINED_FUNCTION_46_14();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v116)
      {
        OUTLINED_FUNCTION_80_5();
        v212(v307, v171);
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
      OUTLINED_FUNCTION_70_6();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v213);
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v214 = v297;
      swift_unknownObjectRelease();
      v224 = OUTLINED_FUNCTION_5_6();
      v225(v224);
      (*(v214 + 8))(v307, v171);
      OUTLINED_FUNCTION_55_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_39();
LABEL_27:
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      v253 = v301;
      OUTLINED_FUNCTION_5_39();
      outlined init with take of WorkflowDataModels.CustomIntentModel();
      v126 = v253;
      break;
    case 4:
      LOBYTE(v303) = 4;
      v145 = lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys();
      OUTLINED_FUNCTION_8_36(&unk_2A29F0, &v303, v146, v147, v145);
      type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
      OUTLINED_FUNCTION_72_8();
      lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v148);
      OUTLINED_FUNCTION_69_8();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v216 = OUTLINED_FUNCTION_92_3();
      v217(v216);
      v218 = OUTLINED_FUNCTION_78_5();
      v219(v218, v115);
      OUTLINED_FUNCTION_55_5();
      goto LABEL_26;
    case 5:
      LOBYTE(v303) = 5;
      v179 = lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A2A80, &v303, v180, v181, v179);
      lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28();
      swift_unknownObjectRelease();
      v182 = OUTLINED_FUNCTION_27_21();
      v183(v182);
      v184 = OUTLINED_FUNCTION_31_18();
      v185(v184);
      v186 = OUTLINED_FUNCTION_101_1(v285);
      memcpy(v186, v187, 0x68uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 6:
      LOBYTE(v303) = 6;
      v197 = lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A2B10, &v303, v198, v199, v197);
      lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28();
      swift_unknownObjectRelease();
      v200 = OUTLINED_FUNCTION_27_21();
      v201(v200);
      v202 = OUTLINED_FUNCTION_31_18();
      v203(v202);
      v204 = OUTLINED_FUNCTION_101_1(v286);
      memcpy(v204, v205, 0x50uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 7:
      LOBYTE(v303) = 7;
      v172 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys();
      OUTLINED_FUNCTION_61_6(&unk_2A2BA0, &v303, v173, v174, v172);
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel();
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v226 = OUTLINED_FUNCTION_5_6();
      v227(v226);
      v228 = OUTLINED_FUNCTION_52_11();
      v229(v228);
      v230 = v304;
      v231 = v261;
      *v261 = v303;
      *(v231 + 2) = v230;
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 8:
      LOBYTE(v303) = 8;
      v209 = lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys();
      OUTLINED_FUNCTION_61_6(&unk_2A2C30, &v303, v210, v211, v209);
      lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel();
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v247 = OUTLINED_FUNCTION_5_6();
      v248(v247);
      v249 = OUTLINED_FUNCTION_52_11();
      v250(v249);
      v251 = v304;
      v252 = v262;
      *v262 = v303;
      *(v252 + 2) = v251;
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 9:
      LOBYTE(v303) = 9;
      v158 = lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A2CC0, &v303, v159, v160, v158);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28();
      swift_unknownObjectRelease();
      v161 = OUTLINED_FUNCTION_27_21();
      v162(v161);
      v163 = OUTLINED_FUNCTION_31_18();
      v164(v163);
      v165 = OUTLINED_FUNCTION_101_1(&v287);
      memcpy(v165, v166, 0x58uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 10:
      LOBYTE(v303) = 10;
      v206 = lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A2D50, &v303, v207, v208, v206);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28();
      swift_unknownObjectRelease();
      v241 = OUTLINED_FUNCTION_27_21();
      v242(v241);
      v243 = OUTLINED_FUNCTION_31_18();
      v244(v243);
      v245 = OUTLINED_FUNCTION_101_1(&v288);
      memcpy(v245, v246, 0x50uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 11:
      LOBYTE(v303) = 11;
      v136 = lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A2DE0, &v303, v137, v138, v136);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28();
      swift_unknownObjectRelease();
      v139 = OUTLINED_FUNCTION_27_21();
      v140(v139);
      v141 = OUTLINED_FUNCTION_31_18();
      v142(v141);
      v143 = OUTLINED_FUNCTION_101_1(&v289);
      memcpy(v143, v144, 0x71uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 12:
      LOBYTE(v303) = 12;
      v149 = lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A2E70, &v303, v150, v151, v149);
      lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28();
      swift_unknownObjectRelease();
      v152 = OUTLINED_FUNCTION_27_21();
      v153(v152);
      v154 = OUTLINED_FUNCTION_31_18();
      v155(v154);
      v156 = OUTLINED_FUNCTION_101_1(&v290);
      memcpy(v156, v157, 0x58uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 13:
      LOBYTE(v303) = 13;
      v188 = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys();
      OUTLINED_FUNCTION_2_62(&unk_2A2F00, &v303, v189, v190, v188);
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_26_27();
      OUTLINED_FUNCTION_15_28();
      swift_unknownObjectRelease();
      v191 = OUTLINED_FUNCTION_27_21();
      v192(v191);
      v193 = OUTLINED_FUNCTION_31_18();
      v194(v193);
      v195 = OUTLINED_FUNCTION_101_1(&v291);
      memcpy(v195, v196, 0x50uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    case 14:
      LOBYTE(v303) = 14;
      RunViewCoding = lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys();
      OUTLINED_FUNCTION_8_36(&unk_2A2F90, &v303, v128, v129, RunViewCoding);
      lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v130 = OUTLINED_FUNCTION_27_21();
      v131(v130);
      v132 = OUTLINED_FUNCTION_31_18();
      v133(v132);
      v134 = OUTLINED_FUNCTION_101_1(v292);
      memcpy(v134, v135, 0x70uLL);
      OUTLINED_FUNCTION_22_27();
      goto LABEL_26;
    default:
      LOBYTE(v303) = 0;
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys();
      v118 = v288;
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_171();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel();
      v215 = v263;
      OUTLINED_FUNCTION_69_8();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      (*(v115 + 8))(v118, v215);
      v236 = OUTLINED_FUNCTION_65_10();
      v237(v236);
      v238 = v304;
      v239 = v256;
      *v256 = v303;
      v239[1] = v238;
      v240 = v306;
      v239[2] = v305;
      v239[3] = v240;
      OUTLINED_FUNCTION_22_27();
LABEL_26:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_39();
      goto LABEL_27;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v126);
  OUTLINED_FUNCTION_75_6();
}

uint64_t WatchViewType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C646E6168 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t WatchViewType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x64656C646E6168;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t WatchViewType.ConfirmationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t WatchViewType.ConfirmationCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WatchViewType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.ConfirmationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WatchViewType.ConfirmationCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.ConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.ConfirmationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WatchViewType.HandledCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = WatchViewType.HandledCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WatchViewType.HandledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WatchViewType.HandledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void WatchViewType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74_6();
  v42 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v40 = v28;
  v41 = v27;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_31_14();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_2_40();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v34 = v33;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_56_7();
  v36 = OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_53_9(v36, v37);
  lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v42)
  {
    lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();
    OUTLINED_FUNCTION_46_14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v23)
    {
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    v38 = OUTLINED_FUNCTION_78_5();
    v39(v38, v30);
    (*(v34 + 8))(v24, v32);
  }

  else
  {
    lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();
    OUTLINED_FUNCTION_46_14();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v40 + 8))(v25, v41);
    (*(v34 + 8))(v24, v32);
  }

  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_75_6();
}