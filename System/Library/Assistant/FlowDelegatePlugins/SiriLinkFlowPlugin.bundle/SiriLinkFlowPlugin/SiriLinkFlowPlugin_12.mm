uint64_t CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2()()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[3];
  OUTLINED_FUNCTION_3_11((v1 + 16));
  OUTLINED_FUNCTION_101_0();
  v4 = DeviceState.isActualHomePod.getter(v2, v3);
  v5 = *(v1 + 48);
  v6 = OUTLINED_FUNCTION_3_11((v1 + 16));
  DeviceState.asSiriKitDeviceState()(v6, v5);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v7;
  if (v4)
  {
    OUTLINED_FUNCTION_16_1();
    v17 = (v8 + *v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[5] = v9;
    *v9 = v10;
    v9[1] = CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2();
    v11 = OUTLINED_FUNCTION_15_21();
    v12 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_16_1();
    v18 = (v13 + *v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[7] = v14;
    *v14 = v15;
    v14[1] = CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2();
    v11 = OUTLINED_FUNCTION_15_21();
    v12 = v18;
  }

  return v12(v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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

    OUTLINED_FUNCTION_6_0();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
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

    OUTLINED_FUNCTION_6_0();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.doneButton()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  (*(v0[4] + 104))(v0[5], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[3]);
  v1 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_6_17();
    v10 = (v4 + *v4);
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_57_1(v5);
    *v6 = v7;
    v6[1] = CustomIntentsDialogTemplating.doneButton();

    return v10();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = CustomIntentsDialogTemplating.doneButton();

    return CustomIntentsDialogTemplating.doneButton_rfv1()();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  dispatch thunk of LabelExecutionResult.subscript.getter();
  OUTLINED_FUNCTION_71_6();

  v0 = OUTLINED_FUNCTION_9_3();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  if (!v0)
  {
    OUTLINED_FUNCTION_48_2();
  }

  OUTLINED_FUNCTION_87();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t CustomIntentsDialogTemplating.doneButton_rfv1()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingText();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_28();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[6] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for TemplatingSection();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingResult();
  v1[10] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_2_26();
  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 104) = v2;
  *v2 = v3;
  v2[1] = CustomIntentsDialogTemplating.doneButton_rfv1();
  v4 = *(v0 + 96);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void CustomIntentsDialogTemplating.doneButton_rfv1()(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  TemplatingResult.sections.getter();
  OUTLINED_FUNCTION_88_2();
  specialized Collection.first.getter(v4, v5);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v2);
  v8 = v1[11];
  v7 = v1[12];
  v9 = v1[10];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of String?(v1[6], &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    lazy protocol witness table accessor for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError();
    swift_allocError();
    swift_willThrow();
    (*(v8 + 8))(v7, v9);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v19 = v1[10];
  v13 = v1[8];
  v12 = v1[9];
  v14 = v1[7];
  (*(v13 + 32))(v12);
  TemplatingSection.content.getter();
  TemplatingText.text.getter();
  v15 = OUTLINED_FUNCTION_60_0();
  v16(v15);
  (*(v13 + 8))(v12, v14);
  (*(v8 + 8))(v7, v19);

  OUTLINED_FUNCTION_58();

  __asm { BRAA            X3, X16 }
}

uint64_t CustomIntentsDialogTemplating.getAppName(app:)(uint64_t a1)
{
  v3 = v1[17];
  v4 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  (*(v4 + 8))(a1, v3, v4);
  OUTLINED_FUNCTION_62_5();

  return SpeakableString.init(print:speak:)();
}

void CustomIntentsDialogTemplating.copyPropertiesFromIntentToResponse(intent:intentResponse:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  if (!v1)
  {
    goto LABEL_44;
  }

  v3 = v0;
  v4 = v1;
  v5 = [v3 _dictionaryRepresentation];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v3 typeName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  INIntentResponse.localizedResponseTemplate(intentName:)(v11);

  type metadata accessor for CATSpeakableString();
  OUTLINED_FUNCTION_42_9();
  v14 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(v12, v13);

  v64 = v4;
  v15 = [v4 _codableDescription];
  if (!v15)
  {

LABEL_44:
    OUTLINED_FUNCTION_42();
    return;
  }

  v16 = v15;
  v65 = v6;
  v17 = outlined bridged method (pb) of @objc INCodableDescription.attributes.getter(v15);
  if (!v17)
  {
    goto LABEL_47;
  }

  v18 = v17;
  v63 = v14;
  v62 = v2;
  v61 = v16;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = __CocoaDictionary.makeIterator()();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v20 = v17 + 64;
    v21 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v17 + 64);
  }

  v26 = 0;
  v60 = v21;
  v27 = (v21 + 64) >> 6;
  while (1)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      v35 = __CocoaDictionary.Iterator.next()();
      if (!v35 || (v37 = v36, *&v72[0] = v35, type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr), swift_dynamicCast(), v33 = v71[0], *&v72[0] = v37, type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableAttribute, INCodableAttribute_ptr), swift_dynamicCast(), v34 = v71[0], v30 = v26, v66 = v22, !v33))
      {
LABEL_43:
        v58 = OUTLINED_FUNCTION_60_0();
        outlined consume of Set<String>.Iterator._Variant(v58);

        goto LABEL_44;
      }

      goto LABEL_21;
    }

    v28 = v26;
    v29 = v22;
    v30 = v26;
    if (!v22)
    {
      break;
    }

LABEL_17:
    v66 = (v29 - 1) & v29;
    v31 = (v30 << 9) | (8 * __clz(__rbit64(v29)));
    v32 = *(*(v18 + 56) + v31);
    v33 = *(*(v18 + 48) + v31);
    v34 = v32;
    if (!v33)
    {
      goto LABEL_43;
    }

LABEL_21:
    v38 = outlined bridged method (pb) of @objc INCodableAttribute.propertyName.getter(v34);
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      *&v69 = v38;
      *(&v69 + 1) = v39;

      AnyHashable.init<A>(_:)();
      if (!*(v65 + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v71), (v43 & 1) == 0))
      {

        outlined destroy of AnyHashable(v71);
        goto LABEL_36;
      }

      outlined init with copy of Any(*(v65 + 56) + 32 * v42, &v69);
      outlined destroy of AnyHashable(v71);
      outlined init with take of Any(&v69, v72);
      *&v69 = v40;
      *(&v69 + 1) = v41;

      AnyHashable.init<A>(_:)();
      v44 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v64);
      if (!v44)
      {
        goto LABEL_46;
      }

      v45 = v44;
      if (*(v44 + 16))
      {
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
        if (v47)
        {
          outlined init with copy of Any(*(v45 + 56) + 32 * v46, &v69);
          outlined destroy of AnyHashable(v71);

          outlined destroy of String?(&v69, &_sypSgMd, &_sypSgMR);
LABEL_34:
          __swift_destroy_boxed_opaque_existential_1Tm(v72);

          goto LABEL_35;
        }
      }

      outlined destroy of AnyHashable(v71);
      v69 = 0u;
      v70 = 0u;
      v48 = outlined destroy of String?(&v69, &_sypSgMd, &_sypSgMR);
      v71[0] = v40;
      v71[1] = v41;
      __chkstk_darwin(v48);
      v59[2] = v71;
      if (!specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v59, v63))
      {
        goto LABEL_34;
      }

      *&v69 = v40;
      *(&v69 + 1) = v41;

      AnyHashable.init<A>(_:)();
      outlined init with copy of Any(v72, &v69);
      v49 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v64);
      if (!v49)
      {
        goto LABEL_48;
      }

      v50 = v49;

      if (*(&v70 + 1))
      {
        outlined init with take of Any(&v69, v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v50;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v71, isUniquelyReferenced_nonNull_native);
        outlined destroy of AnyHashable(v71);
        v22 = v66;
        if (v67)
        {
          goto LABEL_33;
        }
      }

      else
      {
        outlined destroy of String?(&v69, &_sypSgMd, &_sypSgMR);
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
        if (v54)
        {
          v55 = v53;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v67 = v50;
          v57 = *(v50 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v56, v57);
          v50 = v67;
          outlined destroy of AnyHashable(*(v67 + 48) + 40 * v55);
          outlined init with take of Any((*(v50 + 56) + 32 * v55), v68);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          memset(v68, 0, 32);
        }

        v22 = v66;
        outlined destroy of String?(v68, &_sypSgMd, &_sypSgMR);
        outlined destroy of AnyHashable(v71);
        if (v50)
        {
LABEL_33:
          v52.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          goto LABEL_42;
        }
      }

      v52.super.isa = 0;
LABEL_42:
      [v64 setPropertiesByName:{v52.super.isa, v60, v61}];

      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      v26 = v30;
    }

    else
    {
LABEL_35:

LABEL_36:
      v26 = v30;
      v22 = v66;
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      goto LABEL_43;
    }

    v29 = *(v20 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void *CustomIntentsDialogTemplating.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  return v0;
}

uint64_t CustomIntentsDialogTemplating.__deallocating_deinit()
{
  CustomIntentsDialogTemplating.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (pb) of @objc INCodableDescription.attributes.getter(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableAttribute, INCodableAttribute_ptr);
  lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INCodableAttribute.propertyName.getter(void *a1)
{
  v1 = [a1 propertyName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a10 + 136) = a11;
  *(a10 + 144) = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a10 + 112));
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a9, a11);
  *(a10 + 56) = a2;
  outlined init with take of Output(a1, a10 + 16);
  *(a10 + 64) = a3;
  *(a10 + 72) = a4 & 1;
  *(a10 + 80) = a5;
  *(a10 + 88) = a6;
  *(a10 + 96) = a7;
  *(a10 + 104) = a8;
  return a10;
}

unint64_t lazy protocol witness table accessor for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError()
{
  result = lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentsDialogTemplatingError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x129B1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_20_16(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return CustomIntentsDialogTemplating.getAppName(app:)(v2);
}

uint64_t OUTLINED_FUNCTION_37_9()
{
}

uint64_t OUTLINED_FUNCTION_39_14(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_6()
{

  return DeviceState.isVox.getter();
}

id OUTLINED_FUNCTION_65_5()
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));

  return v0;
}

__n128 *OUTLINED_FUNCTION_72_5(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6574656D61726170;
  result[2].n128_u64[1] = 0xE900000000000072;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_5()
{
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1)
{

  return outlined destroy of String?(a1, v1, v2);
}

void OUTLINED_FUNCTION_80_4()
{
}

uint64_t OUTLINED_FUNCTION_82_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return CustomIntentsDialogTemplating.getAppName(app:)(a11);
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return outlined destroy of String?(v1, v0, v2);
}

__n128 *OUTLINED_FUNCTION_89_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E756F63;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

void OUTLINED_FUNCTION_90_1(uint64_t a1)
{
  v3 = v1;

  String.append(_:)(*&a1);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, char *a2)
{

  return static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v2, v4, v3, a1, a2);
}

void OUTLINED_FUNCTION_104_0(unint64_t a1@<X8>)
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_105_0(uint64_t a1)
{

  return DeviceState.asSiriKitDeviceState()(a1, v1);
}

void OUTLINED_FUNCTION_107()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_115(uint64_t a1)
{
  *(v1 + 96) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_130()
{
  v2 = *(v0 + 40);
}

void OUTLINED_FUNCTION_131()
{
  v2 = *(v0 + 152);
}

void OUTLINED_FUNCTION_133()
{
  v2 = *(v0 + 32);
}

void OUTLINED_FUNCTION_134()
{
  v2 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_136()
{
}

uint64_t OUTLINED_FUNCTION_138()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_140()
{
}

uint64_t OUTLINED_FUNCTION_142(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_143()
{
}

Swift::String __swiftcall DisambiguationItemProtocol.getDisplayTitle()()
{
  v2 = DisambiguationItemProtocol.getDisplayTitle()(v0, v1, static CATSpeakableString.stripTTSHint(print:));
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t DisambiguationItemProtocol.getVoiceCommandPayloadsForItem()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  swift_allocObject();
  v4 = UsoEntityBuilder_common_VoiceCommandPayload.init()();
  (*(a2 + 32))(a1, a2);
  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v4;
  v6 = *(a2 + 8);

  v6(v11, a1, a2);
  v7 = v13;
  v17 = v13;
  v16 = v11[0];

  outlined destroy of String(&v16);
  v15 = v11[1];
  outlined destroy of String?(&v15, &_sSSSgMd, &_sSSSgMR);
  v14 = v12;
  outlined destroy of String?(&v14, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  outlined destroy of String?(&v17, &_sSaySSGMd, &_sSaySSGMR);
  v8 = *(v7 + 16);
  if (v8)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = v7 + 40;
    do
    {
      OUTLINED_FUNCTION_6_25();

      UsoEntityBuilder_common_VoiceCommandPayload.init()();
      OUTLINED_FUNCTION_5_22();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  outlined destroy of String?(&v17, &_sSaySSGMd, &_sSaySSGMR);
  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);

  return v5;
}

Swift::String __swiftcall DisambiguationItemProtocol.toSpeakString()()
{
  DisambiguationItemProtocol.getDisplayTitle()(v0, v1, static CATSpeakableString.applyTTSHint(speak:));
  v4 = OUTLINED_FUNCTION_2_37();
  DisambiguationItemProtocol.getDisplaySubtitle()(v4, v5, static CATSpeakableString.applyTTSHint(speak:));
  if (v6)
  {
    OUTLINED_FUNCTION_3_30();
    if (v8)
    {
      OUTLINED_FUNCTION_90_1(v7);

      String.append(_:)(v12);

      v2 = v13;
      v3 = v14;
    }

    else
    {
    }
  }

  v9 = v2;
  v10 = v3;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DisambiguationItemProtocol.asSpeakableString()()
{
  DisambiguationItemProtocol.toDisplayString()();
  DisambiguationItemProtocol.toSpeakString()();

  return SpeakableString.init(print:speak:)();
}

uint64_t DisambiguationItemComponent.synonyms.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

Swift::String __swiftcall DisambiguationItemProtocol.toDisplayString()()
{
  (*(v0 + 32))();
  OUTLINED_FUNCTION_2_37();
  if (DisambiguationItemProtocol.getDisplaySubtitle()().value._object)
  {
    OUTLINED_FUNCTION_3_30();
    if (v4)
    {
      OUTLINED_FUNCTION_90_1(v3);

      String.append(_:)(v8);

      v1 = v9;
      v2 = v10;
    }

    else
    {
    }
  }

  v5 = v1;
  v6 = v2;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall DisambiguationItemProtocol.getDisplaySubtitle()()
{
  v2 = DisambiguationItemProtocol.getDisplaySubtitle()(v0, v1, static CATSpeakableString.stripTTSHint(print:));
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t DisambiguationItemProtocol.getDisplayTitle()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for CATSpeakableString();
  (*(a2 + 8))(v9, a1, a2);
  v6 = v9[0];
  v7 = v9[1];
  v15 = v10;
  outlined destroy of String?(&v15, &_sSSSgMd, &_sSSSgMR);
  v14 = v11;
  outlined destroy of String?(&v14, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  v13 = v12;
  outlined destroy of String?(&v13, &_sSaySSGMd, &_sSaySSGMR);
  a3(v6, v7);

  return OUTLINED_FUNCTION_22();
}

uint64_t DisambiguationItemProtocol.getDisplaySubtitle()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  (*(a2 + 8))(&v7, a1);
  v4 = v8;
  v5 = v9;
  v14 = v7;
  outlined destroy of String(&v14);
  v13 = v10;
  outlined destroy of String?(&v13, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  v12 = v11;
  outlined destroy of String?(&v12, &_sSaySSGMd, &_sSaySSGMR);
  if (v5)
  {
    type metadata accessor for CATSpeakableString();
    a3(v4, v5);
  }

  return OUTLINED_FUNCTION_22();
}

uint64_t outlined init with copy of [String](uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();
}

uint64_t OUTLINED_FUNCTION_6_25()
{

  return swift_allocObject();
}

uint64_t CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:));
}

uint64_t CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = *(v0[5] + 16);
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v6 = DeviceState.asSiriKitDeviceState()(v4, v5);
  v0[10] = v6;

  SpeakableString.init(print:speak:)();
  v7 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v7);
  v12 = (*(*v3 + class metadata base offset for RunVoiceCommandCATs + 112) + **(*v3 + class metadata base offset for RunVoiceCommandCATs + 112));
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:);
  v9 = v0[9];
  v10 = v0[6];

  return v12(v9, v6, v10);
}

{
  v2 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  outlined destroy of SpeakableString?(v2);

  if (v0)
  {
    v3 = CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:);
  }

  else
  {
    v3 = CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:);
  }

  return _swift_task_switch(v3);
}

{

  v1 = *(v0 + 8);

  return v1(&outlined read-only object #0 of CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:));
}

uint64_t CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = TemplatingResult.print.getter();
  (*(v3 + 8))(v2, v4);

  v6 = v1[1];

  return v6(v5);
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModeInfoProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ModeInfoProvider.init()();
  return v0;
}

id ModeInfoProvider.init()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  OUTLINED_FUNCTION_3();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.background.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  objc_allocWithZone(AFNotifyObserver);
  v8 = v7;
  result = @nonobjc AFNotifyObserver.init(name:options:queue:delegate:)(0xD000000000000021, 0x80000000002338D0, 1, v7, 0);
  if (result)
  {
    v10 = result;

    result = v11;
    *(v11 + 16) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

id @nonobjc AFNotifyObserver.init(name:options:queue:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithName:v10 options:a3 queue:a4 delegate:a5];

  swift_unknownObjectRelease();
  return v11;
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
  v12 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_dynamicTypeSize);
  v38 = static LNSnippetEnvironmentDynamicTypeSize.make(from:)(v12, v13);

  v14 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_textLegibilityWeight);
  v37 = static LNSnippetEnvironmentLegibilityWeight.make(from:)(v14, v15);

  v16 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_textDirection);
  v18 = static LNSnippetEnvironmentLayoutDirection.make(from:)(v16, v17);

  v19 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_displayColorScheme);
  v21 = static LNSnippetEnvironmentColorScheme.make(from:)(v19, v20);

  v22 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_displayContrast);
  v24 = static LNSnippetEnvironmentColorSchemeContrast.make(from:)(v22, v23);

  [v8 scale];
  v26 = v25;
  v27 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_displayGamut);
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

    OUTLINED_FUNCTION_0_28(v5);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v8);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v11);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v15);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v18);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v21);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v24);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v27);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v30);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v33);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v36);
    OUTLINED_FUNCTION_1_41();
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

    OUTLINED_FUNCTION_0_28(v39);
    OUTLINED_FUNCTION_1_41();
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
    v45 = OUTLINED_FUNCTION_0_28(v42);

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
    v18 = OUTLINED_FUNCTION_0_28(v15);

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

uint64_t OUTLINED_FUNCTION_0_28(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_41()
{
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVG_So13SFCardSectionCs5NeverOTg504_s18def51Plugin28WorkflowPhoneSnippetProviderC35cardSectionsik96Items33_4EECA0108B9B644B18340581AEC8AD2DLL014disambiguationM011appBundleId13utteranceViewSaySo13mn51CG_SaySo20SAClientBoundCommand_pGtSayAA08WFChoosek4j2L4L47VG_SSSo022SAUIAssistantUtteranceY0CSgtFAjOXEfU_SSAF0rstU0CSaySo20SAClientBoundCommand_pGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v60 = a2;
  v61 = a5;
  v63 = a4;
  v8 = type metadata accessor for ImageSize();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v62 = a3;
    v50 = v5;
    v72 = _swiftEmptyArrayStorage;
    v53 = &v50 - v11;
    v51 = v8;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = type metadata accessor for CATSpeakableString();
    v58 = SAInputOriginDialogButtonTapValue;
    v57 = objc_opt_self();
    HIDWORD(v56) = enum case for ImageSize.default(_:);
    v54 = (v9 + 8);
    v55 = (v9 + 104);
    v14 = (a1 + 80);
    v52 = xmmword_216010;
    v59 = v13;
    do
    {
      v71 = v12;
      v16 = *(v14 - 6);
      v15 = *(v14 - 5);
      v18 = *(v14 - 4);
      v17 = *(v14 - 3);
      v19 = *(v14 - 1);
      v20 = *v14;
      v68 = *(v14 - 2);
      v69 = v19;

      v67 = v20;

      v70 = v15;
      static CATSpeakableString.stripTTSHint(print:)(v16, v15, v21, v22, v23, v24, v25, v26, v50, v51, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v16, v65, v66);
      v27 = v53;
      v28 = v51;
      (*v55)();
      v66 = v17;
      if (v17)
      {
        static CATSpeakableString.stripTTSHint(print:)(v18, v17, v29, v30, v31, v32, v33, v34, v50, v51, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      }

      v14 += 7;
      v65 = static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

      (*v54)(v27, v28);
      v35 = static SLFDisambiguationItemConverter.toDirectInvocationPayload(title:)(v64, v70);
      v64 = v35;
      __swift_project_boxed_opaque_existential_1(v63 + 2, v63[5]);
      v36 = DeviceState.asInvocationContext.getter();
      [v36 setInputOrigin:v58];
      v37 = v57;
      v38 = [v57 runSiriKitExecutorCommandWithContext:v36 payload:v35];
      v39 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
      v40 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
      v41 = String._bridgeToObjectiveC()();
      [v40 setBundleId:v41];

      [v39 setRequestedApp:v40];
      [v38 setAppSelectionState:v39];

      v42 = [v37 wrapCommandInStartLocalRequest:v38];
      v43 = v42;
      v44 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = v52;
      *(v45 + 32) = v44;
      v46 = v44;
      outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v45, v65);
      v47 = v61;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*v47 & 0xFFFFFFFFFFFFFF8)));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 = v71 - 1;
    }

    while (v71 != 1);

    v48 = v72;
  }

  else
  {

    v48 = _swiftEmptyArrayStorage;
  }

  return v48;
}

uint64_t WorkflowPhoneSnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowPhoneSnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    outlined bridged method (pb) of @objc INIntent.launchId.getter(v2);
    if (v4)
    {
      v5 = *(v0 + 16);
      type metadata accessor for App();
      App.__allocating_init(appIdentifier:)();
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
      v6 = v3;
      v7 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
      v8 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

      v9 = static CasinoFactory.makePlaceholderCardSection()();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = OUTLINED_FUNCTION_64(v10);
      *(v11 + 16) = xmmword_216010;
      *(v11 + 32) = v8;
      v23 = v8;
      outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v11, v9);
      v12 = [v5 _metadata];
      if (v12)
      {
        v13 = v12;
        v14 = *(v0 + 16);
        [v12 setExecutionContext:{2, v23}];
        [v14 _setMetadata:v13];
      }

      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
      v15 = OUTLINED_FUNCTION_64(v10);
      *(v15 + 16) = xmmword_216010;
      *(v15 + 32) = v9;
      v16 = v9;
      v17 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

      v18 = OUTLINED_FUNCTION_64(v10);
      *(v18 + 16) = xmmword_216010;
      *(v18 + 32) = v7;
      v19 = v7;
      outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v18, v17);
    }

    else
    {
    }
  }

  v20 = OUTLINED_FUNCTION_10_15();

  return v21(v20);
}

uint64_t WorkflowPhoneSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowPhoneSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)()
{
  v1 = specialized Array.count.getter(v0[5]);
  v2 = v0[5];
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v2 = v0[5];
    if (v3)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v2 = v0[5];
    }

    else
    {
      v4 = *(v2 + 32);
    }
  }

  else
  {
    v4 = 0;
  }

  WorkflowPhoneSnippetProvider.cardSectionsFromDisambiguationItems(disambiguationItems:appBundleId:utteranceView:)(v0[2], v0[3], v0[4], v4);
  v6 = v5;

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  v7 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

  outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v6, v7);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v8 = v7;
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v8 setListenAfterSpeaking:isa];

  [v8 setCanUseServerTTS:0];
  v10 = static CustomIntentPlatformSpecificSnippets.makeDialogFromUtteranceView(utteranceViews:)(v2);
  if (v10)
  {
    v11 = v10;
    [v8 setDialog:v10];
  }

  type metadata accessor for SiriKitAceViewBuilder();
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  v12 = OUTLINED_FUNCTION_10_15();

  return v13(v12);
}

uint64_t WorkflowPhoneSnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowPhoneSnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = [objc_allocWithZone(SAAppsLaunchApp) init];
  outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(v1, v2, v4);
  v5 = v4;
  v6 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

  outlined bridged method (pb) of @objc WFShowAlertDialogRequest.message.getter(v3);
  LOWORD(v17) = 257;
  OUTLINED_FUNCTION_2_38();
  v7 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = OUTLINED_FUNCTION_64(v8);
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = v6;
  v10 = v6;
  outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v9, v7);
  v11 = [objc_allocWithZone(INStartCallIntent) init];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  v12 = OUTLINED_FUNCTION_64(v8);
  *(v12 + 16) = xmmword_216010;
  *(v12 + 32) = v7;
  v13 = v7;
  static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

  v14 = OUTLINED_FUNCTION_10_15();

  return v15(v14);
}

unint64_t WorkflowPhoneSnippetProvider.cardSectionsFromDisambiguationItems(disambiguationItems:appBundleId:utteranceView:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImageSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  if (a4)
  {
    v14 = a4;
    outlined bridged method (pb) of @objc SAUIAssistantUtteranceView.text.getter(v14);
    (*(v11 + 104))(v13, enum case for ImageSize.original(_:), v10);
    OUTLINED_FUNCTION_2_38();
    static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

    (*(v11 + 8))(v13, v10);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVG_So13SFCardSectionCs5NeverOTg504_s18def51Plugin28WorkflowPhoneSnippetProviderC35cardSectionsik96Items33_4EECA0108B9B644B18340581AEC8AD2DLL014disambiguationM011appBundleId13utteranceViewSaySo13mn51CG_SaySo20SAClientBoundCommand_pGtSayAA08WFChoosek4j2L4L47VG_SSSo022SAUIAssistantUtteranceY0CSgtFAjOXEfU_SSAF0rstU0CSaySo20SAClientBoundCommand_pGTf1cn_n(a1, a2, a3, v5, &v19);
  specialized Array.append<A>(contentsOf:)(v15);
  return v18;
}

uint64_t RFFeatureFlags.ResponseFramework.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();
  v1 = specialized Dictionary.subscript.getter(v0, static RFFeatureFlags.ResponseFramework.forceEnabled);
  if (v1 == 2)
  {
    swift_endAccess();
    v2 = type metadata accessor for RFFeatureFlags.ResponseFramework();
    v10[3] = v2;
    v10[4] = lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework, &protocol conformance descriptor for RFFeatureFlags.ResponseFramework);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v0, v2);
    v4 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v4 = v1;
    swift_endAccess();
  }

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
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_0, v6, v7, "RFFeatureFlags.ResponseFramework - isRFv2: %{BOOL}d", v8, 8u);
  }

  return v4 & 1;
}

void one-time initialization function for forceEnabled()
{
  static RFFeatureFlags.ResponseFramework.forceEnabled = _swiftEmptyDictionarySingleton;
}

{
  static SiriLinkFlowFeatureFlags.forceEnabled = _swiftEmptyDictionarySingleton;
}

uint64_t *RFFeatureFlags.ResponseFramework.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  return &static RFFeatureFlags.ResponseFramework.forceEnabled;
}

double static RFFeatureFlags.ResponseFramework.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static RFFeatureFlags.ResponseFramework.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();
  static RFFeatureFlags.ResponseFramework.forceEnabled = a1;
}

uint64_t (*static RFFeatureFlags.ResponseFramework.forceEnabled.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  return static LocaleUtils.intentBundleCache.modify;
}

uint64_t RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(uint64_t a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();
  v4 = specialized Dictionary.subscript.getter(v2, static RFFeatureFlags.ResponseFramework.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v5 = OUTLINED_FUNCTION_2_39();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v6);
  static RFFeatureFlags.ResponseFramework.forceEnabled = v9;
  v7 = swift_endAccess();
  a2(v7);
  return $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(v2, v4);
}

uint64_t RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 112) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  return _swift_task_switch(RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:));
}

uint64_t RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  swift_beginAccess();
  *(v0 + 113) = specialized Dictionary.subscript.getter(v1, static RFFeatureFlags.ResponseFramework.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = static RFFeatureFlags.ResponseFramework.forceEnabled;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v1);
  static RFFeatureFlags.ResponseFramework.forceEnabled = v8;
  swift_endAccess();
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:);
  v5 = *(v0 + 64);

  return v7(v5);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v2 = RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:);
  }

  return _swift_task_switch(v2);
}

{
  $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(*(v0 + 88), *(v0 + 113));
  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(*(v0 + 88), *(v0 + 113));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      v5 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = static RFFeatureFlags.ResponseFramework.forceEnabled;
      v7 = *(static RFFeatureFlags.ResponseFramework.forceEnabled + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMd, &_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
      v8 = *(v14 + 48);
      v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
      (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
      lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework, &protocol conformance descriptor for RFFeatureFlags.ResponseFramework);
      _NativeDictionary._delete(at:)();
      static RFFeatureFlags.ResponseFramework.forceEnabled = v14;
    }
  }

  else
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v10 = OUTLINED_FUNCTION_2_39();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v11);
    static RFFeatureFlags.ResponseFramework.forceEnabled = v13;
  }

  return swift_endAccess();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFFeatureFlags.ResponseFramework();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *WFShowAlertFlow.exitValue.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (v2 == 2)
  {
    swift_errorRetain();
  }

  else if (v2 == 1)
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

uint64_t WFShowAlertFlow.__allocating_init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint8_t *a7)
{
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_0_13();
  WFShowAlertFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(v13, v14, a3, a4, a5, a6, a7);
  return v12;
}

uint64_t WFShowAlertFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint8_t *a7)
{
  v8 = v7;
  v15 = type metadata accessor for CATOption();
  __chkstk_darwin(v15 - 8);
  OUTLINED_FUNCTION_3();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v19);
    _os_log_impl(&dword_0, v17, v18, "#WFShowAlertFlow initialized.", a7, 2u);
    OUTLINED_FUNCTION_15_0(a7);
  }

  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  outlined init with copy of DeviceState(a7, v8 + 56);
  if (a6)
  {
    v20 = a3;
  }

  else
  {
    v41 = a7;
    outlined init with copy of DeviceState(a7, v42);
    v21 = one-time initialization token for shared;
    v22 = a3;
    v23 = a3;
    if (v21 != -1)
    {
      swift_once();
    }

    v24 = static WFDialogState.shared;
    type metadata accessor for WorkflowRunnerCATs(0);

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_9_23();
    v39 = CATWrapper.__allocating_init(options:globals:)();
    v25 = type metadata accessor for WorkflowRunnerCATsSimple(0);
    OUTLINED_FUNCTION_19_14(v25);
    OUTLINED_FUNCTION_9_23();
    v26 = CATWrapperSimple.__allocating_init(options:globals:)();
    v27 = type metadata accessor for RunCustomIntentCATs(0);
    OUTLINED_FUNCTION_19_14(v27);
    OUTLINED_FUNCTION_9_23();
    v28 = CATWrapper.__allocating_init(options:globals:)();
    v29 = type metadata accessor for RunCustomIntentCATsSimple(0);
    OUTLINED_FUNCTION_19_14(v29);
    OUTLINED_FUNCTION_9_23();
    v30 = CATWrapperSimple.__allocating_init(options:globals:)();
    v31 = type metadata accessor for RunVoiceCommandCATs(0);
    OUTLINED_FUNCTION_19_14(v31);
    OUTLINED_FUNCTION_9_23();
    v32 = CATWrapper.__allocating_init(options:globals:)();
    v33 = type metadata accessor for RunVoiceCommandCATsSimple(0);
    OUTLINED_FUNCTION_19_14(v33);
    OUTLINED_FUNCTION_9_23();
    v34 = CATWrapperSimple.__allocating_init(options:globals:)();
    v35 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    OUTLINED_FUNCTION_19_14(v35);
    OUTLINED_FUNCTION_9_23();
    v36 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowDialogTemplating();
    swift_allocObject();
    a6 = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v42, v24, v39, v26, v28, v30, v32, v34, v36);
    a7 = v41;
    a3 = v22;
  }

  *(v8 + 96) = a6;
  type metadata accessor for WorkflowSnippetProvider();
  v37 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a7);

  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  *(v8 + 104) = v37;
  type metadata accessor for WorkflowNLContextProvider();
  *(v8 + 112) = swift_allocObject();
  *(v8 + 120) = 0;
  *(v8 + 128) = 3;
  return v8;
}

uint64_t WFShowAlertFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v44 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.voiceCommands);
  (*(v12 + 16))(v16, a1, v10);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v42 = v4;
    v20 = swift_slowAlloc();
    v43 = v1;
    v21 = swift_slowAlloc();
    v45 = v21;
    *v20 = 136315138;
    v22 = Input.description.getter();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_0_13();
    v26(v25);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v45);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_0, v18, v19, "#WFShowAlertFlow received input: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v28 = v21;
    v2 = v43;
    OUTLINED_FUNCTION_15_0(v28);
    v29 = v20;
    v4 = v42;
    OUTLINED_FUNCTION_15_0(v29);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_0_13();
    v31(v30);
  }

  if (*(v2 + 128) != 3 || *(v2 + 120) != 1)
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v35);
      v36 = "#WFShowAlertFlow on input, state is not waitingForResponse";
LABEL_15:
      _os_log_impl(&dword_0, v33, v34, v36, v19, 2u);
      OUTLINED_FUNCTION_17();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  Input.parse.getter();
  v37 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v9);
  (*(v44 + 8))(v9, v4);
  if (v37 == 3)
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v38 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v38);
      v36 = "#WFShowAlertFlow on input, no confirmation state";
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  v40 = *(v2 + 120);
  *(v2 + 120) = v37;
  v41 = *(v2 + 128);
  *(v2 + 128) = 0;
  outlined consume of WFShowAlertFlow.State(v40, v41);
  return 1;
}

uint64_t WFShowAlertFlow.execute()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3);
}

{
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  OUTLINED_FUNCTION_17_23();
  v4 = swift_task_alloc();
  *(v3 + 136) = v4;
  *v4 = v3;
  v4[1] = WFShowAlertFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v3 + 16, v1, v2);
}

uint64_t WFShowAlertFlow.execute()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v7 = [*(v4 + 32) message];
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v9 = OUTLINED_FUNCTION_0_13();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "#WFShowAlertFlow begins execution, message: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_15_0(v6);
    OUTLINED_FUNCTION_15_0(v5);
  }

  v13 = v0[13];
  v14 = *(v13 + 120);
  switch(*(v13 + 128))
  {
    case 1:
      v21 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v33))
      {
        goto LABEL_21;
      }

      v34 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v34);
      v26 = "#WFShowAlertFlow completed";
      goto LABEL_20;
    case 2:
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_30_1(v22))
      {
        v23 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v23);
        v26 = "#WFShowAlertFlow error state";
LABEL_20:
        OUTLINED_FUNCTION_26(&dword_0, v24, v25, v26);
        OUTLINED_FUNCTION_17();
      }

LABEL_21:

      static ExecuteResponse.complete()();
      goto LABEL_32;
    case 3:
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      v29 = OUTLINED_FUNCTION_30_1(v28);
      if (v14)
      {
        if (v29)
        {
          v30 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v30);
          OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#WFShowAlertFlow waiting for response");
          OUTLINED_FUNCTION_17();
        }

        goto LABEL_31;
      }

      if (v29)
      {
        v38 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v38);
        OUTLINED_FUNCTION_26(&dword_0, v39, v40, "#WFShowAlertFlow submitting output");
        OUTLINED_FUNCTION_17();
      }

      v41 = swift_task_alloc();
      v0[15] = v41;
      *v41 = v0;
      v41[1] = WFShowAlertFlow.execute();

      return WFShowAlertFlow.buildOutput()();
    default:
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v16))
      {
        v17 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v17);
        OUTLINED_FUNCTION_26(&dword_0, v18, v19, "#WFShowAlertFlow responseReceived");
        OUTLINED_FUNCTION_17();
      }

      if (v14 - 1 < 2)
      {
        v20 = [objc_allocWithZone(WFDialogResponse) initWithCancelled:1];
LABEL_24:
        v35 = *(v13 + 120);
        *(v13 + 120) = v20;
        v36 = *(v13 + 128);
        *(v13 + 128) = 1;
        v37 = v20;
        outlined consume of WFShowAlertFlow.State(v35, v36);
        static ExecuteResponse.ongoing(requireInput:)();

        goto LABEL_32;
      }

      if (!v14)
      {
        v20 = [objc_allocWithZone(WFDialogResponse) initWithResponseCode:0];
        goto LABEL_24;
      }

      v43 = *(v13 + 120);
      *(v13 + 120) = 0;
      v44 = *(v13 + 128);
      *(v13 + 128) = 3;
      outlined consume of WFShowAlertFlow.State(v43, v44);
LABEL_31:
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_32:
      OUTLINED_FUNCTION_6_0();

      return v45();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    v7 = WFShowAlertFlow.execute();
  }

  else
  {
    v7 = WFShowAlertFlow.execute();
  }

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = WFShowAlertFlow.execute();
  }

  else
  {
    v7 = WFShowAlertFlow.execute();
  }

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = *(v1 + 120);
  *(v1 + 120) = 1;
  v3 = *(v1 + 128);
  *(v1 + 128) = 3;
  outlined consume of WFShowAlertFlow.State(v2, v3);
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v0 = OUTLINED_FUNCTION_52();
    *v0 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v3, v4, "#WFShowAlertFlow error submitting output");
    OUTLINED_FUNCTION_15_0(v0);
  }

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v1, v0);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v1 = OUTLINED_FUNCTION_52();
    *v1 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v4, v5, "#WFShowAlertFlow error submitting output");
    OUTLINED_FUNCTION_15_0(v1);
  }

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v2, v1);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t WFShowAlertFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFShowAlertFlow();
  lazy protocol witness table accessor for type WFShowAlertFlow and conformance WFShowAlertFlow(&lazy protocol witness table cache variable for type WFShowAlertFlow and conformance WFShowAlertFlow, v2, type metadata accessor for WFShowAlertFlow, &protocol conformance descriptor for WFShowAlertFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFShowAlertFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[17] = v2;
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for DialogPhase();
  v1[20] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[21] = v4;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[24] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[25] = v6;
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for NLContextUpdate();
  v1[27] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[28] = v8;
  v1[29] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  v1 = v0[18];
  (*(**(v1 + 112) + 208))();
  v2 = *(v1 + 96);
  v3 = *(v1 + 32);
  v0[30] = v3;
  v6 = (*(*v2 + 168) + **(*v2 + 168));
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = WFShowAlertFlow.buildOutput();

  return v6(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v4;
  *(v2 + 264) = v0;

  if (v0)
  {
    v5 = WFShowAlertFlow.buildOutput();
  }

  else
  {
    v5 = WFShowAlertFlow.buildOutput();
  }

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_24_15();
  (*(v6 + 8))(v2, v4);
  (*(v5 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_23_12();

  OUTLINED_FUNCTION_6_0();

  return v7();
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
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_24_15();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_23_12();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();
  (*(v0[28] + 8))(v0[29], v0[27]);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WFShowAlertFlow.buildOutput()(uint64_t a1)
{
  v2 = v1[32];
  v3 = v1[28];
  v51 = v1[27];
  v53 = v1[29];
  v5 = v1[22];
  v4 = v1[23];
  v6 = v1[21];
  v49 = v1[20];
  v9 = v1 + 18;
  v8 = v1[18];
  v7 = v9[1];
  static DialogPhase.confirmation.getter();
  v10 = [v2 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v5, v4, v49);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v49);
  (*(v3 + 16))(v7, v53, v51);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v51);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OUTLINED_FUNCTION_17_23();
  if (dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 || (OUTLINED_FUNCTION_17_23(), (dispatch thunk of DeviceState.isHomePod.getter()))
  {
    v11 = *(v55 + 256);
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    *(v55 + 296) = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    *(v55 + 304) = v12;
    *(v12 + 16) = xmmword_216010;
    *(v12 + 32) = v11;
    OUTLINED_FUNCTION_22_15();
    v13 = swift_task_alloc();
    *(v55 + 312) = v13;
    *v13 = v55;
    v13[1] = WFShowAlertFlow.buildOutput();
    v14 = *(v55 + 208);
    v15 = *(v55 + 136);

    return v53(v15, v12, v14);
  }

  else
  {
    v17 = *(v55 + 240);
    v18 = *(v55 + 144);
    outlined init with copy of DeviceState(v8 + 56, v55 + 56);
    v48 = *(v18 + 16);
    v50 = *(v18 + 24);
    v19 = [v17 okButton];
    v20 = [v19 title];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v21;

    v22 = [v17 cancelButton];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 title];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = [*(v55 + 240) promptForDisplay];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = [*(v55 + 240) message];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    __swift_project_boxed_opaque_existential_1((v55 + 56), *(v55 + 80));
    if (dispatch thunk of DeviceState.isWatch.getter())
    {

      v38 = &type metadata for WorkflowDataModels.WatchModel;
      v39 = &protocol witness table for WorkflowDataModels.WatchModel;
      *(v55 + 40) = &type metadata for WorkflowDataModels.WatchModel;
      *(v55 + 48) = &protocol witness table for WorkflowDataModels.WatchModel;
      v40 = swift_allocObject();
      *(v40 + 16) = v48;
      *(v40 + 24) = v50;
      *(v40 + 32) = v52;
      *(v40 + 40) = v54;
      *(v40 + 48) = v25;
      *(v40 + 56) = v27;
      *(v40 + 64) = 0u;
      *(v40 + 80) = 0u;
    }

    else
    {
      v38 = &type metadata for WorkflowDataModels.ShowAlertModel;
      v39 = &protocol witness table for WorkflowDataModels.ShowAlertModel;
      *(v55 + 40) = &type metadata for WorkflowDataModels.ShowAlertModel;
      *(v55 + 48) = &protocol witness table for WorkflowDataModels.ShowAlertModel;
      v40 = swift_allocObject();
      *(v40 + 16) = v52;
      *(v40 + 24) = v54;
      *(v40 + 32) = v25;
      *(v40 + 40) = v27;
      *(v40 + 48) = v30;
      *(v40 + 56) = v32;
      *(v40 + 64) = v35;
      *(v40 + 72) = v37;
    }

    *(v55 + 16) = v40;
    v41 = *(v55 + 256);
    __swift_destroy_boxed_opaque_existential_1Tm((v55 + 56));
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    *(v55 + 272) = ResponseFactory.init()();
    __swift_project_boxed_opaque_existential_1((v55 + 16), v38);
    v42 = v39[1];
    *(v55 + 120) = type metadata accessor for WorkflowDataModels(0);
    *(v55 + 128) = lazy protocol witness table accessor for type WFShowAlertFlow and conformance WFShowAlertFlow(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, 255, type metadata accessor for WorkflowDataModels, &protocol conformance descriptor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 96));
    v42(boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v44 = swift_allocObject();
    *(v55 + 280) = v44;
    *(v44 + 16) = xmmword_216010;
    *(v44 + 32) = v41;
    OUTLINED_FUNCTION_22_15();
    v45 = swift_task_alloc();
    *(v55 + 288) = v45;
    *v45 = v55;
    v45[1] = WFShowAlertFlow.buildOutput();
    v46 = *(v55 + 208);
    v47 = *(v55 + 136);

    return v54(v47, v55 + 96, v44, v46);
  }
}

uint64_t WFConfirmInteractionFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  outlined consume of WFShowAlertFlow.State(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t WFConfirmInteractionFlow.__deallocating_deinit()
{
  WFConfirmInteractionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFShowAlertFlow(uint64_t a1)
{
  v6 = (*(**v1 + 192) + **(**v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFShowAlertFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void outlined consume of WFShowAlertFlow.State(id a1, char a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 == 1)
  {
  }
}

_BYTE *storeEnumTagSinglePayload for WFShowAlertFlowError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x12FE30);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin011WFShowAlertC0C5State33_0E609C7F55F99E1F092CF826B7D12744LLO(uint64_t a1)
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

uint64_t sub_12FE94()
{

  return _swift_deallocObject(v0);
}

uint64_t lazy protocol witness table accessor for type WFShowAlertFlow and conformance WFShowAlertFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_12FF2C()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t OUTLINED_FUNCTION_15_22()
{
  *(v1 + 120) = v0;
  *(v1 + 128) = 2;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_19_14(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

id OUTLINED_FUNCTION_22_15()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_23_12()
{
}

void OUTLINED_FUNCTION_24_15()
{
  v2 = *(v0 + 256);
}

uint64_t static CustomTypeReference.buildFromAttributeHash(attributeHash:)(uint64_t a1)
{
  static CustomTypeReference.getTypeString(attributeHash:)(a1);
  v2 = v1;
  v4 = v3;
  if (one-time initialization token for TypeNameMap != -1)
  {
    OUTLINED_FUNCTION_1_43();
    swift_once();
  }

  v5 = specialized Dictionary.subscript.getter(v2, v4, static CustomTypeReference.TypeNameMap);
  v7 = v6;

  OUTLINED_FUNCTION_17_24();
  if (v7)
  {
    return v5;
  }

  else
  {
    return 0x697461646E756F66;
  }
}

Swift::String __swiftcall CustomTypeReference.asString()()
{
  v4 = v3;
  v5 = v2;
  v11 = v0;
  v12 = v1;

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = v5;
  v7._object = v4;
  String.append(_:)(v7);

  v8 = v11;
  v9 = v12;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static CustomTypeReference.fromSlotValueType(valueType:)(uint64_t a1)
{
  v1 = static CustomTypeReference.typeString(valueType:)(a1);
  v3 = v2;
  if (one-time initialization token for TypeNameMap != -1)
  {
    OUTLINED_FUNCTION_1_43();
    swift_once();
  }

  v4 = 0x697461646E756F66;
  v5 = static CustomTypeReference.TypeNameMap;
  if (*(&dword_10 + static CustomTypeReference.TypeNameMap))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v3);
    if (v7)
    {
      v4 = *(*&stru_20.segname[v5 + 16] + 32 * v6);
    }
  }

  return v4;
}

uint64_t CustomIntentDefinition.requestDefinition.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *static CustomRequestDefinition.buildFromIntentDescription(intentDescription:)(void *a1)
{
  v1 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(a1);
  if (!v1)
  {
    return 0;
  }

  specialized Dictionary.subscript.getter(v1, &v35, 0xD000000000000012, 0x80000000002339B0);

  if (!v36)
  {
    outlined destroy of Any?(&v35);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v33[0] + 16);
  if (v2)
  {
    v34 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v33[0] + 32;
    do
    {
      outlined init with copy of Any(v4, &v35);
      outlined init with copy of Any(&v35, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();
      if (*(v31 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000000002339D0), (v6 & 1) != 0) && (outlined init with copy of Any(*(v31 + 56) + 32 * v5, v33), swift_dynamicCast()))
      {
        v7 = v32;
        v30 = v31;
      }

      else
      {
        v30 = 0;
        v7 = 0xE000000000000000;
      }

      v29 = v7;
      static CustomTypeReference.getTypeString(attributeHash:)(v31);
      v9 = v8;
      v11 = v10;
      if (one-time initialization token for TypeNameMap != -1)
      {
        OUTLINED_FUNCTION_1_43();
        swift_once();
      }

      v12 = static CustomTypeReference.TypeNameMap;
      if (*(&dword_10 + static CustomTypeReference.TypeNameMap) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11), (v14 & 1) != 0))
      {
        v15 = (*&stru_20.segname[v12 + 16] + 32 * v13);
        v16 = *v15;
        v17 = v15[1];
        v19 = v15[2];
        v18 = v15[3];
      }

      else
      {
        v18 = 0xE600000000000000;
        v16 = 0x697461646E756F66;
        v17 = 0xEA00000000006E6FLL;
        v19 = 0x7463656A624FLL;
      }

      if (*(v31 + 16) && (v20 = CustomParameterOptions.CodingKeys.stringValue.getter(), v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21), (v23 & 1) != 0) && (outlined init with copy of Any(*(v31 + 56) + 32 * v22, v33), (swift_dynamicCast() & 1) != 0))
      {
        v24 = v31;
      }

      else
      {

        v24 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v35);
      v34 = v3;
      v26 = v3[2];
      v25 = v3[3];
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v3 = v34;
      }

      v3[2] = v26 + 1;
      v27 = &v3[7 * v26];
      v27[4] = v30;
      v27[5] = v29;
      v27[6] = v16;
      v27[7] = v17;
      v27[8] = v19;
      v27[9] = v18;
      *(v27 + 80) = v24;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t CustomIntentDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000000233A50 == a2)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomIntentDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomIntentDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomIntentDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomIntentDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomIntentDefinition.encode(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_22();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_3_31(v4);
  lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type CustomRequestDefinition and conformance CustomRequestDefinition();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_19_15();
}

void CustomIntentDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_16_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_3_31(v3);
  lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    lazy protocol witness table accessor for type CustomRequestDefinition and conformance CustomRequestDefinition();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = OUTLINED_FUNCTION_6_26();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_19_15();
}

void protocol witness for Decodable.init(from:) in conformance CustomIntentDefinition(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  CustomIntentDefinition.init(from:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t static CustomRequestParameterDefinition.buildFromAttributeHash(attributeHash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Dictionary.subscript.getter(a1, &v25, 0xD000000000000015, 0x80000000002339D0);
  if (!v26)
  {
    outlined destroy of Any?(&v25);
    goto LABEL_5;
  }

  if ((OUTLINED_FUNCTION_2_5(v4, v5, v6, &type metadata for String, v7, v8, v9, v10, v21, v23, v25) & 1) == 0)
  {
LABEL_5:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_6;
  }

  v11 = v22;
  v12 = v24;
LABEL_6:
  v13 = static CustomTypeReference.buildFromAttributeHash(attributeHash:)(a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = static CustomParameterOptions.buildFromAttributeHash(attributeHash:)(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = result & 1;
  return result;
}

uint64_t CustomRequestDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomRequestDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomRequestDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomRequestDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomRequestDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomRequestDefinition.encode(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_22();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v11 = v12 - v10;
  OUTLINED_FUNCTION_3_31(v5);
  lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMd, &_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMR);
  lazy protocol witness table accessor for type [CustomRequestParameterDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [CustomRequestParameterDefinition] and conformance <A> [A], lazy protocol witness table accessor for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_19_15();
}

void CustomRequestDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_16_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_3_31(v3);
  lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMd, &_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMR);
    lazy protocol witness table accessor for type [CustomRequestParameterDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [CustomRequestParameterDefinition] and conformance <A> [A], lazy protocol witness table accessor for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = OUTLINED_FUNCTION_6_26();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_19_15();
}

void protocol witness for Decodable.init(from:) in conformance CustomRequestDefinition(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  CustomRequestDefinition.init(from:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t CustomRequestParameterDefinition.typeDefinition.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CustomRequestParameterDefinition.typeDefinition.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return result;
}

uint64_t static CustomParameterOptions.buildFromAttributeHash(attributeHash:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = CustomParameterOptions.CodingKeys.stringValue.getter();
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_23(v3, v4, v5, v6, v7);
  result = swift_dynamicCast();
  if (result)
  {
    return v9;
  }

  return result;
}

void __swiftcall CustomRequestParameterDefinition.init(name:typeDefinition:options:)(SiriLinkFlowPlugin::CustomRequestParameterDefinition *__return_ptr retstr, Swift::String name, SiriLinkFlowPlugin::CustomTypeReference typeDefinition, SiriLinkFlowPlugin::CustomParameterOptions options)
{
  retstr->name = name;
  retstr->typeDefinition = typeDefinition;
  retstr->options = options;
}

uint64_t CustomRequestParameterDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6966654465707974 && a2 == 0xEE006E6F6974696ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t CustomRequestParameterDefinition.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6966654465707974;
  }

  return 0x736E6F6974706FLL;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomRequestParameterDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomRequestParameterDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomRequestParameterDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomRequestParameterDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomRequestParameterDefinition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_22();
  v5 = v3;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  OUTLINED_FUNCTION_3_31(v7);
  lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = *(v5 + 32);
    v23 = *(v5 + 16);
    v24 = v14;
    v22 = 1;
    v15 = lazy protocol witness table accessor for type CustomTypeReference and conformance CustomTypeReference();
    OUTLINED_FUNCTION_14_21(v15, v16, v17, &type metadata for CustomTypeReference, v15);
    LOBYTE(v23) = *(v5 + 48);
    v22 = 2;
    v18 = lazy protocol witness table accessor for type CustomParameterOptions and conformance CustomParameterOptions();
    OUTLINED_FUNCTION_14_21(v18, v19, v20, &type metadata for CustomParameterOptions, v18);
  }

  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_19_15();
}

uint64_t CustomRequestParameterDefinition.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_16_24();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3_31(v1);
  lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  LOBYTE(v13) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  v12 = v6;
  lazy protocol witness table accessor for type CustomTypeReference and conformance CustomTypeReference();
  OUTLINED_FUNCTION_13_19();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  lazy protocol witness table accessor for type CustomParameterOptions and conformance CustomParameterOptions();
  OUTLINED_FUNCTION_13_19();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = OUTLINED_FUNCTION_5_23();
  v10(v9);

  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  *v4 = v12;
  *(v4 + 8) = v8;
  *(v4 + 16) = v13;
  *(v4 + 24) = v14;
  *(v4 + 32) = v15;
  *(v4 + 40) = v16;
  *(v4 + 48) = 0;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance CustomRequestParameterDefinition@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CustomRequestParameterDefinition.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 16) = v6;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t CustomParameterOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72614369746C756DLL && a2 == 0xED00006C616E6964)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomParameterOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomParameterOptions.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomParameterOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomParameterOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomParameterOptions.encode(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_22();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_3_31(v4);
  lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_19_15();
}

void CustomParameterOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_16_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_3_31(v3);
  lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = OUTLINED_FUNCTION_6_26();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  OUTLINED_FUNCTION_19_15();
}

void protocol witness for Decodable.init(from:) in conformance CustomParameterOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  CustomParameterOptions.init(from:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6 & 1;
  }
}

uint64_t static CustomTypeReference.typeString(valueType:)(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x676E69727453;
  switch(v1)
  {
    case 0:
      result = 0x6E61656C6F6F42;
      break;
    case 2:
    case 3:
    case 20:
      result = 0x656C62756F44;
      break;
    case 4:
    case 5:
    case 7:
    case 8:
    case 23:
    case 25:
      result = 0x72656765746E49;
      break;
    case 6:
    case 29:
      return result;
    case 9:
      result = 0x6E6F73726550;
      break;
    case 13:
      result = 0x706D6F4365746144;
      break;
    case 15:
      result = 0x65746E49656D6954;
      break;
    case 18:
      result = 0x65636E6174736944;
      break;
    case 26:
      result = 0x72616D6563616C50;
      break;
    case 31:
      result = 0x74617265706D6554;
      break;
    case 35:
      result = 5001813;
      break;
    case 37:
      result = 1936941389;
      break;
    case 38:
      result = 0x656D756C6F56;
      break;
    case 39:
      result = 0x6465657053;
      break;
    case 40:
      result = 0x796772656E45;
      break;
    case 52:
      result = 0x79636E6572727543;
      break;
    default:
      result = 0x7463656A624FLL;
      break;
  }

  return result;
}

int *one-time initialization function for TypeNameMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static CustomTypeReference.TypeNameMap = result;
  return result;
}

void static CustomTypeReference.getTypeString(attributeHash:)(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000000002339F0), (v3 & 1) == 0) || (v7 = OUTLINED_FUNCTION_15_23(v2, v3, v4, v5, v6), (OUTLINED_FUNCTION_2_5(v7, v8, v9, &type metadata for String, v10, v11, v12, v13, v15, v16, v17) & 1) == 0))
  {
    static CustomTypeReference.getTypeField(attributeHash:probeKey:)(a1, 0xD000000000000019, 0x8000000000233A10);
    if (!v14)
    {
      static CustomTypeReference.getTypeField(attributeHash:probeKey:)(a1, 0xD000000000000015, 0x8000000000233A30);
      OUTLINED_FUNCTION_17_24();
    }
  }
}

uint64_t static CustomTypeReference.getTypeField(attributeHash:probeKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_15_23(v3, v4, v5, v6, v7);
  if (OUTLINED_FUNCTION_2_5(v8, v9, v10, &type metadata for String, v11, v12, v13, v14, v16, v18, v19))
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t CustomTypeReference.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t CustomTypeReference.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomTypeReference.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomTypeReference.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CustomTypeReference.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CustomTypeReference.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomTypeReference.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomTypeReference.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CustomTypeReference.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_2_40();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v5, v7);
}

uint64_t CustomTypeReference.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_2_40();
  v4 = a1[4];
  OUTLINED_FUNCTION_3_31(a1);
  lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = OUTLINED_FUNCTION_12_22();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CustomTypeReference@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CustomTypeReference.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestDefinition and conformance CustomRequestDefinition()
{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition()
{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CustomRequestParameterDefinition] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMd, &_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomTypeReference and conformance CustomTypeReference()
{
  result = lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference;
  if (!lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference;
  if (!lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomParameterOptions and conformance CustomParameterOptions()
{
  result = lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for CustomRequestParameterDefinition(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for CustomRequestParameterDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomParameterOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomParameterOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x132BC8);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomTypeReference(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CustomTypeReference(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CustomTypeReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x132D68);
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

_BYTE *storeEnumTagSinglePayload for CustomRequestParameterDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x132E80);
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

_BYTE *storeEnumTagSinglePayload for CustomParameterOptions.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x132F64);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 + 56) + 32 * a1;

  return outlined init with copy of Any(v7, va);
}

uint64_t _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    v5 = INTypedIntentWithIntent();
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (!v2)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CustomIntentNeedsDisambiguationFlowStrategy.__allocating_init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)()
{
  OUTLINED_FUNCTION_40_0();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = *(v6 + 24);
  v14 = *(v6 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v6, v15);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17);
  v21(v13, v11, v9, v19, v5, v3, v0, v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsDisambiguationFlowStrategy.paginationStyle(resolveRecord:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7_1();
  v43 = v5;
  v44 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v42 = v7 - v6;
  OUTLINED_FUNCTION_22_10();
  v8 = type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  (*(v10 + 8))(v14, v8);
  v15 = ParameterResolutionRecord.result.getter();
  v16 = ParameterResolutionRecord.intent.getter();
  if ((static OutputUtils.shouldReadItemsInDisambiguationList(siriEnvironment:)() & 1) == 0)
  {

LABEL_12:
    static PaginationStyle.noPagination()();
LABEL_13:

    OUTLINED_FUNCTION_42();
    return;
  }

  v41[2] = v3;
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  outlined init with copy of DeviceState((v0 + 2), &v46);
  static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)();
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  v19 = [v16 _codableDescription];
  v20 = OUTLINED_FUNCTION_63_6();
  v22 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(v20, v21, v19);

  if (!v22)
  {

LABEL_11:

    goto LABEL_12;
  }

  v23 = [v22 windowSize];

  v24 = *(v18 + 16);

  if (!__OFADD__(v23, 1))
  {
    if (v23 + 1 < v24)
    {
      v41[1] = v23;
      v25 = v1[5];
      v26 = __swift_project_boxed_opaque_existential_1(v1 + 2, v25);
      v41[0] = v41;
      v27 = *(v25 - 8);
      __chkstk_darwin(v26);
      OUTLINED_FUNCTION_3();
      (*(v27 + 16))(v29 - v28);
      v30 = v42;
      dispatch thunk of DeviceState.siriLocale.getter();
      v31 = OUTLINED_FUNCTION_22_4();
      v32(v31);
      OUTLINED_FUNCTION_60_6();
      v36 = INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)(v33, v34, v35, v30, 0);
      (*(v43 + 8))(v30, v44);
      v1[7] = v36;

      OUTLINED_FUNCTION_60_6();
      v38 = INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(v37);

      specialized Dictionary.subscript.getter(v38, &v46, 0x6F697463656C6573, 0xEE00736D6574496ELL);

      if (v47)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
        v39 = swift_dynamicCast();
        v40 = v45;
        if (!v39)
        {
          v40 = 0;
        }
      }

      else
      {
        outlined destroy of Any?(&v46, &_sypSgMd, &_sypSgMR);
        v40 = 0;
      }

      v1[8] = v40;

      static PaginationStyle.pageSize(_:)();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  __break(1u);
}

void static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)()
{
  OUTLINED_FUNCTION_40_0();
  v51 = v0;
  v2 = v1;
  v54 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v7);
  v52 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = v50 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
  OUTLINED_FUNCTION_7_1();
  v56 = v11;
  v57 = v10;
  __chkstk_darwin(v10);
  v55 = v50 - v12;
  OUTLINED_FUNCTION_22_10();
  v50[0] = type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v50[1] = v2;
  v19 = ParameterResolutionRecord.result.getter();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.voiceCommands);
  v21 = v19;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_55_3();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_0, v22, v23, "#CustomIntentNeedsDisambiguationFlowStrategy makeDisambiguationList:intentResolutionResult: %@", v24, 0xCu);
    outlined destroy of Any?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  v27 = [v21 disambiguationItems];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = *(v28 + 16);

  v30 = &selRef_alternatives;
  if (v29)
  {
    v30 = &selRef_disambiguationItems;
  }

  v31 = [v21 *v30];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = ParameterResolutionRecord.intent.getter();
  v34 = [v33 _codableDescription];

  ParameterResolutionRecord.parameter.getter();
  v35 = ParameterIdentifier.name.getter();
  v37 = v36;
  (*(v14 + 8))(v18, v50[0]);
  v38 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v35, v37, v34, &selRef_attributeByKeyPath_);

  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v39 = v52;
  v40 = OUTLINED_FUNCTION_56_1();
  v41 = v54;
  v42(v40);
  v43 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  (*(v4 + 32))(v44 + v43, v39, v41);
  v45 = v38;
  v46 = v55;
  Transformer.init(transform:)();
  v47 = OUTLINED_FUNCTION_71_2();
  v49 = v48(v47);
  __chkstk_darwin(v49);
  v50[-2] = v46;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayypG_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVsAE_pTg5(partial apply for closure #1 in static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:), &v50[-4], v32);

  (*(v56 + 8))(v46, v57);
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsDisambiguationFlowStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v66 = v9 - v8;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v69 = v11;
  v70 = v10;
  v12 = __chkstk_darwin(v10);
  v67 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = v64 - v14;
  OUTLINED_FUNCTION_22_10();
  v15 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.voiceCommands);
  v23 = *(v17 + 16);
  v71 = v1;
  v23(v21, v1, v15);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v65 = v6;
  if (v26)
  {
    OUTLINED_FUNCTION_55_3();
    v27 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    v64[1] = v3;
    v72 = v64[0];
    *v27 = 136315138;
    OUTLINED_FUNCTION_22_16();
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(v28, 255, v29, &protocol conformance descriptor for Input);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v17 + 8))(v21, v15);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v72);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_0, v24, v25, "#CustomIntentNeedsDisambiguationFlowStrategy actionForInput: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64[0]);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  v34 = v68;
  Input.parse.getter();
  v35 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v34);
  v36 = *(v69 + 8);
  v37 = OUTLINED_FUNCTION_62();
  v36(v37);
  switch(v35)
  {
    case 2:

      goto LABEL_15;
    case 3:
      goto LABEL_8;
    default:
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_15;
      }

LABEL_8:
      v39 = v67;
      Input.parse.getter();
      v40 = OUTLINED_FUNCTION_62();
      v42 = v41(v40);
      if (v42 == enum case for Parse.NLv3IntentOnly(_:))
      {
        v43 = OUTLINED_FUNCTION_62();
        v36(v43);
        goto LABEL_13;
      }

      if (v42 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v42 != enum case for Parse.directInvocation(_:))
        {
          if (v42 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR), v59 = ParameterResolutionRecord.intent.getter(), v60 = [v59 _type], v59, v60 == &dword_0 + 2))
          {
            static ActionForInput.handle()();
          }

          else
          {
            static ActionForInput.ignore()();
          }

          v61 = OUTLINED_FUNCTION_62();
          v36(v61);
          goto LABEL_16;
        }

        v49 = OUTLINED_FUNCTION_62();
        v50(v49);
        v51 = v65;
        v52 = OUTLINED_FUNCTION_22_4();
        v53(v52);
        Parse.DirectInvocation.identifier.getter();
        OUTLINED_FUNCTION_61_2();
        if (v56 == 0xD000000000000043 && v55 == v54)
        {
        }

        else
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v58 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
        v62 = ParameterResolutionRecord.intent.getter();
        v63 = [v62 _type];

        if (v63 == &dword_0 + 2)
        {
          static ActionForInput.handle()();
LABEL_34:
          (*(v51 + 8))(v66, v4);
          goto LABEL_16;
        }

LABEL_33:
        static ActionForInput.ignore()();
        goto LABEL_34;
      }

      v44 = OUTLINED_FUNCTION_62();
      v45(v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

      type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_7();
      (*(v46 + 8))(v39);
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
      v47 = ParameterResolutionRecord.intent.getter();
      v48 = [v47 _type];

      if (v48 == &dword_0 + 2)
      {
        static ActionForInput.handle()();
      }

      else
      {
LABEL_15:
        static ActionForInput.ignore()();
      }

LABEL_16:
      OUTLINED_FUNCTION_42();
      return;
  }
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[8];
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  outlined init with copy of DeviceState(v1 + 16, (v0 + 2));
  static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.parseSmartPromptResult(_:_:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7_1();
  v51 = v5;
  v7 = __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logger.voiceCommands);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_18_1();
    v18 = swift_slowAlloc();
    v50 = v13;
    *v18 = 0;
    _os_log_impl(&dword_0, v14, v15, "#CustomIntentNeedsDisambiguationFlowStrategy parsing smart prompt input", v18, 2u);
    v2 = v1;
    OUTLINED_FUNCTION_15_1();
  }

  v19 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  if (v19)
  {
    v20 = v19;
    v21 = outlined bridged method (pb) of @objc WFSmartPromptIntent.buttons.getter(v19);
    if (v21)
    {
      static SmartPromptConfirmationUtils.getConfirmationFromUSO(usoParse:options:)(a1, v21);
      if (v2)
      {
      }

      else
      {
        v2 = v22;
        v31 = a1;
        v32 = v23;
        v50 = v31;

        if (v32)
        {
        }

        else
        {
          v33 = v51;
          v34 = *(v51 + 16);
          v34(v11, v50, v4);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.debug.getter();
          v37 = OUTLINED_FUNCTION_17_18();
          if (os_log_type_enabled(v37, v38))
          {
            OUTLINED_FUNCTION_55_3();
            v39 = swift_slowAlloc();
            LODWORD(v50) = v36;
            v40 = v39;
            v49 = swift_slowAlloc();
            v52 = v49;
            *v40 = 136315138;
            v34(v9, v11, v4);
            v41 = String.init<A>(describing:)();
            v43 = v42;
            v44 = *(v33 + 8);
            v2 = v33 + 8;
            v44(v11, v4);
            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v52);

            *(v40 + 4) = v45;
            _os_log_impl(&dword_0, v35, v50, "#CustomIntentNeedsDisambiguationFlowStrategy unable to extract parsed response to smart prompt parse %s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v49);
            OUTLINED_FUNCTION_15_1();

            OUTLINED_FUNCTION_15_1();
          }

          else
          {

            v46 = *(v33 + 8);
            v2 = v33 + 8;
            v46(v11, v4);
          }

          lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
          OUTLINED_FUNCTION_31_10();
          swift_allocError();
          *v47 = 2;
          swift_willThrow();
        }
      }

      return v2;
    }
  }

  v24 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v25 = OUTLINED_FUNCTION_6_22();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_12(&dword_0, v27, v28, "#CustomIntentNeedsDisambiguationFlowStrategy unable to retrieve smart prompt result");
    OUTLINED_FUNCTION_15_1();
  }

  lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
  OUTLINED_FUNCTION_31_10();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();
  return v2;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for Parse.DirectInvocation();
  v1[7] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for USOParse();
  v1[10] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
  v1[13] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[14] = v11;
  v1[15] = OUTLINED_FUNCTION_27();
  v1[16] = swift_task_alloc();
  v12 = type metadata accessor for Parse();
  v1[17] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[18] = v13;
  v1[19] = OUTLINED_FUNCTION_27();
  v1[20] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMR);
  OUTLINED_FUNCTION_14(v14);
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
  v1[23] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[24] = v16;
  v1[25] = OUTLINED_FUNCTION_27();
  v1[26] = swift_task_alloc();
  v17 = type metadata accessor for ParameterIdentifier();
  v1[27] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[28] = v18;
  v1[29] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for Input();
  v1[30] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[31] = v20;
  v1[32] = OUTLINED_FUNCTION_28();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21);
}

{
  v127 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  if (v8)
  {
    OUTLINED_FUNCTION_55_3();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v125 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_22_16();
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(v14, 255, v15, &protocol conformance descriptor for Input);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v10 + 8))(v9, v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v125);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v6, v7, "#CustomIntentNeedsDisambiguationFlowStrategy received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[28];
  v21 = v0[29];
  v22 = v0[27];
  v123 = v0[23];
  v23 = v0[20];
  v24 = v0[18];
  v119 = v0[22];
  v120 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v118 = ParameterIdentifier.name.getter();
  v122 = v25;
  (*(v20 + 8))(v21, v22);
  v26 = ParameterResolutionRecord.intent.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v27 = PaginatedItemContainer.items.getter();
  v28 = PaginatedItemContainer.page.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA012CustomIntentG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA012CustomIntentG4ItemVGMR);
  swift_allocObject();
  v29 = specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v27, v28);
  Input.parse.getter();
  CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandPagination(parse:)();
  v30 = *(v24 + 8);
  v30(v23, v120);
  if (__swift_getEnumTagSinglePayload(v119, 1, v123) != 1)
  {
    v40 = v0[26];
    v41 = v26;
    v42 = v0[23];
    v43 = v0[24];
    v44 = v0[22];
    v45 = v0[2];

    goto LABEL_12;
  }

  v31 = v0[20];
  outlined destroy of Any?(v0[22], &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMR);
  Input.parse.getter();
  CustomIntentNeedsDisambiguationFlowStrategy.getSmartPromptConfirmation(parse:intent:)(v31);
  v33 = v32;
  v34 = OUTLINED_FUNCTION_20_1();
  (v30)(v34);
  if (!v33)
  {
    v121 = v26;
    v48 = v0[23];
    v50 = v0[20];
    v49 = v0[21];
    Input.parse.getter();
    CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandConfirmation(parse:)(v50, v49);
    v51 = OUTLINED_FUNCTION_56_1();
    (v30)(v51);
    if (__swift_getEnumTagSinglePayload(v49, 1, v48) == 1)
    {
      outlined destroy of Any?(v0[21], &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMR);
      Input.parse.getter();
      v52 = OUTLINED_FUNCTION_9_3();
      v54 = v53(v52);
      if (v54 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        (*(v0[18] + 96))(v0[19], v0[17]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
        v55 = Parse.ServerConversion.siriKitIntent.getter();
        v56 = [v55 _codableDescription];

        v57 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v118, v122, v56, &selRef_attributeByName_);
        if (v57)
        {
          v58 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableAttribute, INCodableAttribute_ptr);
        }

        else
        {
          v58 = 0;
          *(&v125 + 1) = 0;
          *&v126 = 0;
        }

        v85 = v0[19];
        *&v125 = v57;
        *(&v126 + 1) = v58;
        v86 = v57;
        Parse.ServerConversion.siriKitIntent.getter();
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        OUTLINED_FUNCTION_20_1();
        static DisambiguationResult.chosenItem(_:)();

        v87 = OUTLINED_FUNCTION_20_1();
        v88(v87);
        type metadata accessor for NLIntent();
        OUTLINED_FUNCTION_7();
        (*(v89 + 8))(v85);
        goto LABEL_13;
      }

      if (v54 != enum case for Parse.directInvocation(_:))
      {
        if (v54 == enum case for Parse.uso(_:))
        {
          (*(v0[18] + 96))(v0[19], v0[17]);
          v80 = OUTLINED_FUNCTION_22_4();
          v81(v80);
          v82 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
          if (v82)
          {

            v83 = OUTLINED_FUNCTION_22();
            v84 = CustomIntentNeedsDisambiguationFlowStrategy.parseSmartPromptResult(_:_:)(v83);
            v115 = (*(*v29 + 144))(v84);
          }

          else
          {
            v115 = (*(*v29 + 136))(v0[12]);
          }

          CustomIntentNeedsDisambiguationFlowStrategy.getChosenItemResult(_:_:_:)(v115, v26, v118, v122);
          v116 = OUTLINED_FUNCTION_56_1();
          v117(v116);

          goto LABEL_9;
        }

        lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
        OUTLINED_FUNCTION_31_10();
        swift_allocError();
        *v97 = 0;
        swift_willThrow();

        v98 = OUTLINED_FUNCTION_62();
        (v30)(v98);
LABEL_10:

        OUTLINED_FUNCTION_6_0();
        goto LABEL_14;
      }

      v59 = v0[19];
      v61 = v0[8];
      v60 = v0[9];
      v62 = v0[7];

      v63 = OUTLINED_FUNCTION_22_4();
      v64(v63);
      (*(v61 + 32))(v60, v59, v62);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        OUTLINED_FUNCTION_18_1();
        v67 = swift_slowAlloc();
        OUTLINED_FUNCTION_45(v67);
        _os_log_impl(&dword_0, v65, v66, "#CustomIntentNeedsDisambiguationFlowStrategy parsing direct Invocation", v60, 2u);
        OUTLINED_FUNCTION_15_1();
      }

      Parse.DirectInvocation.identifier.getter();
      OUTLINED_FUNCTION_61_2();
      if (v70 == 0xD000000000000043 && v69 == v68)
      {
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v72 & 1) == 0)
        {
          v73 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();
          v74 = OUTLINED_FUNCTION_17_18();
          if (os_log_type_enabled(v74, v75))
          {
            OUTLINED_FUNCTION_18_1();
            v76 = swift_slowAlloc();
            OUTLINED_FUNCTION_45(v76);
            OUTLINED_FUNCTION_26(&dword_0, v77, v78, "#CustomIntentNeedsDisambiguationFlowStrategy unsupported direct invocation type");
            OUTLINED_FUNCTION_15_1();
          }

          lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
          OUTLINED_FUNCTION_31_10();
          swift_allocError();
          *v79 = 0;
LABEL_51:
          swift_willThrow();

          v113 = OUTLINED_FUNCTION_62();
          v114(v113);
          goto LABEL_10;
        }
      }

      v90 = Parse.DirectInvocation.userData.getter();
      if (v90)
      {
        v91 = static SLFDisambiguationItemConverter.toIntent(userData:)(v90);

        if (v91)
        {
          v92 = v0[8];
          v124 = v0[9];
          v93 = v0[7];
          v125 = 0u;
          v126 = 0u;
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
          v94 = v91;
          IntentPromptAnswer.init(answeredValue:updatedIntent:)();
          OUTLINED_FUNCTION_20_1();
          static DisambiguationResult.chosenItem(_:)();

          v95 = OUTLINED_FUNCTION_20_1();
          v96(v95);
          (*(v92 + 8))(v124, v93);
          goto LABEL_13;
        }

        v107 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v108 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v108, v109))
        {
          OUTLINED_FUNCTION_18_1();
          v110 = swift_slowAlloc();
          OUTLINED_FUNCTION_45(v110);
          OUTLINED_FUNCTION_26(&dword_0, v111, v112, "#CustomIntentNeedsDisambiguationFlowStrategy cannot parse user data");
          OUTLINED_FUNCTION_15_1();
        }

        lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
        OUTLINED_FUNCTION_31_10();
        swift_allocError();
        v106 = 2;
      }

      else
      {
        v99 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v100 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v100, v101))
        {
          OUTLINED_FUNCTION_18_1();
          v102 = swift_slowAlloc();
          OUTLINED_FUNCTION_45(v102);
          OUTLINED_FUNCTION_26(&dword_0, v103, v104, "#CustomIntentNeedsDisambiguationFlowStrategy no user data");
          OUTLINED_FUNCTION_15_1();
        }

        lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
        OUTLINED_FUNCTION_31_10();
        swift_allocError();
        v106 = 1;
      }

      *v105 = v106;
      goto LABEL_51;
    }

    v43 = v0[24];
    v40 = v0[25];
    v42 = v0[23];
    v44 = v0[21];
    v45 = v0[2];

LABEL_12:
    v46 = *(v43 + 32);
    v46(v40, v44, v42);
    v46(v45, v40, v42);
    goto LABEL_13;
  }

  v35 = OUTLINED_FUNCTION_22_4();
  v36(v35);

  v37 = OUTLINED_FUNCTION_56_1();
  CustomIntentNeedsDisambiguationFlowStrategy.getChosenItemResult(_:_:_:)(v37, v38, v118, v122);

LABEL_9:

LABEL_13:

  OUTLINED_FUNCTION_6_7();
LABEL_14:

  return v39();
}

BOOL INIntent.isSmartPromptIntent.getter()
{
  v0 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.getChosenItemResult(_:_:_:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
  OUTLINED_FUNCTION_7_1();
  __chkstk_darwin(v9);
  specialized Collection.first.getter(a1, __src);
  if (__src[1])
  {
    memcpy(__dst, __src, 0x51uLL);
    v10 = static SLFDisambiguationItemConverter.getUpdatedIntent(intent:chosenItem:parameterName:)(a2, __dst, a3, a4);
    if (v10)
    {
      v11 = v10;
      CustomIntentDisambiguationItem.getRawValue()(__src);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
      v12 = v11;
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      OUTLINED_FUNCTION_71_2();
      static DisambiguationResult.chosenItem(_:)();

      v13 = OUTLINED_FUNCTION_71_2();
      v14(v13);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.voiceCommands);
      v30 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v31 = OUTLINED_FUNCTION_6_22();
      if (os_log_type_enabled(v31, v32))
      {
        OUTLINED_FUNCTION_18_1();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_24_12(&dword_0, v33, v34, "#CustomIntentNeedsDisambiguationFlowStrategy getChosenItemResult: cannot update intent");
        OUTLINED_FUNCTION_15_1();
      }

      lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
      OUTLINED_FUNCTION_31_10();
      swift_allocError();
      *v35 = 3;
      swift_willThrow();
    }

    return outlined destroy of CustomIntentDisambiguationItem(__dst);
  }

  else
  {
    outlined destroy of Any?(__src, &_s18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVSgMd, &_s18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v38 = v4;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_18_1();
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v16, v17, "#CustomIntentNeedsDisambiguationFlowStrategy getChosenItemResult: cannot get selected items", v20, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    memset(__dst, 0, 32);
    v21 = OUTLINED_FUNCTION_63_6();
    v24 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v21, v22, a4, v23, 0, 1);
    outlined destroy of Any?(__dst, &_sypSgMd, &_sypSgMR);
    memset(__dst, 0, 32);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    v25 = v24;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    OUTLINED_FUNCTION_71_2();
    static DisambiguationResult.chosenItem(_:)();

    v26 = OUTLINED_FUNCTION_71_2();
    return v27(v26);
  }
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v5);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v1 = PaginatedItemContainer.pageSize.getter();
  v2 = *(PaginatedItemContainer.items.getter() + 16);

  if (v1 >= v2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.voiceCommands);
    v14 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v15 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_18_1();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v17);
      OUTLINED_FUNCTION_26(&dword_0, v18, v19, "#CustomIntentNeedsDisambiguationFlowStrategy: prompt without pagination");
      OUTLINED_FUNCTION_15_1();
    }

    v20 = v0[15];

    v24 = (*(*v20 + 304) + **(*v20 + 304));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[18] = v21;
    *v21 = v22;
    v21[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v23 = v0[14];

    return v24(v0 + 2, v23);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.voiceCommands);
    v4 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v5 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_18_1();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v7);
      OUTLINED_FUNCTION_26(&dword_0, v8, v9, "#CustomIntentNeedsDisambiguationFlowStrategy: prompt with pagination");
      OUTLINED_FUNCTION_15_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[16] = v10;
    *v10 = v11;
    v10[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);

    return CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined init with take of AceServiceInvokerAsync((v0 + 56), *(v0 + 96));
  *(*(v0 + 120) + 72) = 0;
  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined init with take of AceServiceInvokerAsync((v0 + 16), *(v0 + 96));
  *(*(v0 + 120) + 72) = 0;
  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  return OUTLINED_FUNCTION_21_15();
}

{
  return OUTLINED_FUNCTION_21_15();
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v1[32] = *v0;
  v4 = type metadata accessor for DialogPhase();
  v1[33] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[34] = v5;
  v1[35] = OUTLINED_FUNCTION_27();
  v1[36] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[37] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[38] = v7;
  v1[39] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[40] = OUTLINED_FUNCTION_27();
  v1[41] = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  v1[42] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[43] = v10;
  v1[44] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 248);
  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v5 = ParameterResolutionRecord.intent.getter();
  *(v0 + 368) = v5;
  ParameterResolutionRecord.parameter.getter();
  v6 = ParameterIdentifier.name.getter();
  v8 = v7;
  v26 = v6;
  *(v0 + 376) = v6;
  *(v0 + 384) = v7;
  (*(v1 + 8))(v2, v3);
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  outlined init with copy of DeviceState(v4 + 16, v0 + 72);
  static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)();
  v10 = v9;
  *(v0 + 392) = v9;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  *(v0 + 480) = INIntent.isRestricted()();
  outlined init with copy of DeviceState(v4 + 16, v0 + 112);
  type metadata accessor for CustomIntentNLContextProvider();
  inited = swift_initStackObject();
  *(v0 + 400) = inited;
  outlined init with take of AceServiceInvokerAsync((v0 + 112), inited + 16);
  v12 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  if (v12)
  {

    CustomIntentNLContextProvider.makeContextForSmartPrompt()();
    type metadata accessor for NLContextUpdate();
    v13 = OUTLINED_FUNCTION_43_8();
    __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
    *(v0 + 424) = OUTLINED_FUNCTION_67_6();
    v16 = ParameterResolutionRecord.result.getter();
    OUTLINED_FUNCTION_51_7(v16);
    v17 = swift_task_alloc();
    *(v0 + 440) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_11_21(v17);
    OUTLINED_FUNCTION_27_0();

    __asm { BRAA            X8, X16 }
  }

  v20 = ParameterResolutionRecord.result.getter();
  *(v0 + 408) = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 416) = v21;
  *v21 = v22;
  v21[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:);
  v23 = *(v0 + 328);

  return CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:)(v23, v5, v26, v8, v20, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 408);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  *(v3 + 448) = v7;
  *(v3 + 456) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[56];
  static DialogPhase.clarification.getter();
  if (specialized Array.count.getter(v1))
  {
    OUTLINED_FUNCTION_52_7();
    if (v1)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v2 = *(v0[56] + 32);
    }

    v3 = v2;
    v4 = [v2 catId];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = v0[40];
  v16 = v0[41];
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  (*(v7 + 16))(v0[35], v6, v8);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v7 + 8))(v6, v8);
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of NLContextUpdate?(v16, v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  outlined init with copy of DeviceState(v9 + 16, (v0 + 19));
  v10 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v11 = ResponseFactory.init()();
  v0[27] = v10;
  v0[28] = &protocol witness table for ResponseFactory;
  v0[24] = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[58] = v12;
  *v12 = v13;
  v12[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:);
  OUTLINED_FUNCTION_27_0();

  return static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:)();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v3[59] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 19);

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 24);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);

  outlined destroy of Any?(v2, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_66_6();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);

  v3 = OUTLINED_FUNCTION_9_3();
  v4(v3);
  outlined destroy of Any?(v2, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_66_6();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

void CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:)()
{
  OUTLINED_FUNCTION_15_2();
  *(v0 + 424) = OUTLINED_FUNCTION_67_6();
  v1 = ParameterResolutionRecord.result.getter();
  OUTLINED_FUNCTION_51_7(v1);
  v2 = swift_task_alloc();
  *(v0 + 440) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_11_21(v2);

  __asm { BRAA            X8, X16 }
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  (*(v5 + 8))(v4, v6);
  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }
}

uint64_t static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 280) = v15;
  *(v0 + 264) = v14;
  *(v0 + 248) = v1;
  *(v0 + 256) = v2;
  *(v0 + 232) = v3;
  *(v0 + 240) = v4;
  *(v0 + 216) = v5;
  *(v0 + 224) = v6;
  *(v0 + 200) = v7;
  *(v0 + 208) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
  OUTLINED_FUNCTION_14(v9);
  *(v0 + 288) = OUTLINED_FUNCTION_27();
  *(v0 + 296) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v10);
  *(v0 + 304) = OUTLINED_FUNCTION_27();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 392) = v5;
  *(v3 + 400) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of Any?(*(v0 + 320), &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

{
  OUTLINED_FUNCTION_15_2();
  outlined destroy of Any?(*(v0 + 320), &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30();
  __swift_project_boxed_opaque_existential_1(*(v12 + 208), *(*(v12 + 208) + 24));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    __swift_project_boxed_opaque_existential_1(*(v12 + 280), *(*(v12 + 280) + 24));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 416) = v13;
    *v13 = v14;
    v13[1] = static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:);
    OUTLINED_FUNCTION_57_4();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  v23 = *(v12 + 320);
  v24 = *(v12 + 232);
  v25 = type metadata accessor for VisualProperty();
  *(v12 + 328) = v25;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v26 = [v24 typeName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  OUTLINED_FUNCTION_61_2();
  if (v27 == 0xD000000000000051 && v30 == v29)
  {
    goto LABEL_16;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_17;
  }

  v33 = [*(v12 + 232) typeName];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  OUTLINED_FUNCTION_61_2();
  if (v34 == 0xD00000000000005ALL && v37 == v36)
  {
LABEL_16:
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      v40 = 0;
LABEL_29:
      *(v12 + 360) = v40;
      if (specialized Array.count.getter(*(v12 + 224)))
      {
        OUTLINED_FUNCTION_52_7();
        if (v25)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v55 = *(*(v12 + 224) + 32);
        }

        v56 = v55;
        v57 = DialogExecutionResult.firstDialogFullPrint()();
        countAndFlagsBits = v57.value._countAndFlagsBits;
        object = v57.value._object;
      }

      else
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      *(v12 + 368) = countAndFlagsBits;
      *(v12 + 376) = object;
      v64 = swift_task_alloc();
      *(v12 + 384) = v64;
      *v64 = v12;
      OUTLINED_FUNCTION_14_22(v64);
      OUTLINED_FUNCTION_57_4();

      return Array<A>.toDisambiguationItemModels(intent:parameterName:)();
    }
  }

LABEL_17:
  v41 = *(v12 + 232);
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 valueForKey:v42];

  if (v43)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  *(v12 + 96) = v67;
  *(v12 + 112) = v68;
  if (!*(v12 + 120))
  {
    v47 = v12 + 96;
LABEL_34:
    outlined destroy of Any?(v47, &_sypSgMd, &_sypSgMR);
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v44 = *(v12 + 232);
  v40 = *(v12 + 184);
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 valueForKey:v45];

  if (v46)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  *(v12 + 128) = v67;
  *(v12 + 144) = v68;
  if (!*(v12 + 152))
  {

    v47 = v12 + 128;
    goto LABEL_34;
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INFile, INFile_ptr);
  if (swift_dynamicCast())
  {
    v49 = *(v12 + 312);
    v48 = *(v12 + 320);
    v50 = *(v12 + 192);
    v51 = [v50 data];
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    static WorkflowDataModels.getThumbnail(imageData:)(v52, v54);
    outlined consume of Data._Representation(v52, v54);

    outlined destroy of Any?(v48, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v25);
    outlined init with take of INShortcut?(v49, v48, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
    goto LABEL_29;
  }

LABEL_35:
  type metadata accessor for VoiceShortcutClientWrapper();
  *(v12 + 336) = swift_initStackObject();
  v60 = swift_task_alloc();
  *(v12 + 344) = v60;
  *v60 = v12;
  v60[1] = static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:);
  OUTLINED_FUNCTION_57_4();

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v61, v62);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  if (*(v12 + 360) && (v13 = *(v12 + 328), v14 = *(v12 + 304), , v15 = OUTLINED_FUNCTION_9_3(), outlined init with copy of NLContextUpdate?(v15, v16, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR), LODWORD(v13) = __swift_getEnumTagSinglePayload(v14, 1, v13), v17 = OUTLINED_FUNCTION_20_1(), outlined destroy of Any?(v17, v18, &_s10SnippetKit14VisualPropertyVSgMR), v13 != 1))
  {
    v19 = &protocol witness table for WorkflowDataModels.DisambiguateSmartPromptItemsModel;
    v20 = &type metadata for WorkflowDataModels.DisambiguateSmartPromptItemsModel;
  }

  else
  {
    v19 = &protocol witness table for WorkflowDataModels.DisambiguateItemsModel;
    v20 = &type metadata for WorkflowDataModels.DisambiguateItemsModel;
  }

  *(v12 + 40) = v20;
  *(v12 + 48) = v19;
  v21 = *(v12 + 392);
  v22 = *(v12 + 280);
  *(v12 + 16) = *(v12 + 368);
  *(v12 + 32) = v21;
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  __swift_project_boxed_opaque_existential_1((v12 + 16), v20);
  v23 = v19[1];
  *(v12 + 80) = type metadata accessor for WorkflowDataModels(0);
  *(v12 + 88) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, 255, type metadata accessor for WorkflowDataModels, &protocol conformance descriptor for WorkflowDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 56));
  v23(boxed_opaque_existential_1);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v12 + 408) = v25;
  *v25 = v26;
  v25[1] = static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:);
  OUTLINED_FUNCTION_25_2();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v11 + 352);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = [*(v11 + 352) shortcut];
  if (v13)
  {
    v14 = v13;
    static INShortcut._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
  }

  else
  {
    v10 = &dword_0 + 1;
  }

  v16 = *(v11 + 288);
  v15 = *(v11 + 296);
  v17 = type metadata accessor for INShortcut();
  __swift_storeEnumTagSinglePayload(v16, v10, 1, v17);
  outlined init with take of INShortcut?(v16, v15, &_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v17);
  v19 = *(v11 + 296);
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of Any?(v19, &_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  v10 = INShortcut.intent.getter();
  (*(*(v17 - 8) + 8))(v19, v17);
  if (!v10 || (v20 = [v10 _keyImage], v10, outlined bridged method (ob) of @objc INImage._imageData.getter(v20), v21 >> 60 == 15))
  {

    goto LABEL_10;
  }

  v10 = *(v11 + 320);
  v31 = *(v11 + 328);
  v32 = *(v11 + 312);
  v33 = [v12 shortcutName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v34;

  v35 = OUTLINED_FUNCTION_56_1();
  static WorkflowDataModels.getThumbnail(imageData:)(v35, v36);

  v37 = OUTLINED_FUNCTION_56_1();
  outlined consume of Data?(v37, v38);
  v39 = OUTLINED_FUNCTION_22_4();
  outlined destroy of Any?(v39, v40, &_s10SnippetKit14VisualPropertyVSgMR);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
  outlined init with take of INShortcut?(v32, v10, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
LABEL_11:
  *(v11 + 360) = v22;
  if (specialized Array.count.getter(*(v11 + 224)))
  {
    OUTLINED_FUNCTION_52_7();
    if (v10)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(*(v11 + 224) + 32);
    }

    v24 = v23;
    v25 = DialogExecutionResult.firstDialogFullPrint()();
    countAndFlagsBits = v25.value._countAndFlagsBits;
    object = v25.value._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  *(v11 + 368) = countAndFlagsBits;
  *(v11 + 376) = object;
  v28 = swift_task_alloc();
  *(v11 + 384) = v28;
  *v28 = v11;
  OUTLINED_FUNCTION_14_22(v28);
  OUTLINED_FUNCTION_25_2();

  return Array<A>.toDisambiguationItemModels(intent:parameterName:)();
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[19] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[23] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_28();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v1[26] = OUTLINED_FUNCTION_27();
  v1[27] = swift_task_alloc();
  v10 = type metadata accessor for ParameterIdentifier();
  v1[28] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[29] = v11;
  v1[30] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  *(v2 + 344) = v6;
  *(v2 + 352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v3)
  {
    OUTLINED_FUNCTION_35_11(v2 > 1);
  }

  OUTLINED_FUNCTION_70_4();
  v1[47] = OUTLINED_FUNCTION_37_10(v1[14]);
  v1[48] = ParameterResolutionRecord.result.getter();
  v7 = (*(*v0 + 264) + **(*v0 + 264));
  v4 = swift_task_alloc();
  v1[49] = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_13_20(v4);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  *(v3 + 400) = v7;
  *(v3 + 408) = v0;

  v8 = *(v2 + 384);

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_14_0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v2)
  {
    OUTLINED_FUNCTION_35_11(v1 > 1);
  }

  v3 = v0[46];
  OUTLINED_FUNCTION_70_4();
  v0[52] = v0[14];
  v4 = PaginatedItemContainer.page.getter();
  v0[53] = v4;
  v7 = (*(*v3 + 248) + **(*v3 + 248));
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);

  return v7(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 440) = v7;
  *(v3 + 448) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 472) = v5;
  *(v3 + 480) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
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

Swift::Int CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 232);
  v16 = *(v14 + 240);
  v17 = *(v14 + 224);
  *(v14 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v18 = ParameterResolutionRecord.intent.getter();
  *(v14 + 256) = v18;
  ParameterResolutionRecord.parameter.getter();
  v19 = ParameterIdentifier.name.getter();
  v21 = v20;
  v60 = v19;
  *(v14 + 264) = v19;
  *(v14 + 272) = v20;
  (*(v15 + 8))(v16, v17);
  *(v14 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v22 = *(PaginatedItemContainer.items.getter() + 16);
  *(v14 + 288) = v22;

  result = PaginatedItemContainer.pageSize.getter();
  *(v14 + 296) = result;
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = result;
  if (v22 % result)
  {
    v25 = v22 / result + 1;
  }

  else
  {
    v25 = v22 / result;
  }

  result = PaginatedItemContainer.getCurrentPageIndex()();
  v26 = result * v24;
  if ((result * v24) >> 64 != (result * v24) >> 63)
  {
    goto LABEL_20;
  }

  *(v14 + 304) = v22 - v26;
  if (__OFSUB__(v22, v26))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v25 - result;
  if (__OFSUB__(v25, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v14 + 312) = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  outlined init with copy of DeviceState(*(v14 + 144) + 16, v14 + 72);
  type metadata accessor for CustomIntentNLContextProvider();
  inited = swift_initStackObject();
  *(v14 + 320) = inited;
  outlined init with take of AceServiceInvokerAsync((v14 + 72), inited + 16);
  v29 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  if (v29)
  {

    CustomIntentNLContextProvider.makeContextForSmartPrompt()();
  }

  else
  {
    v31 = *(v14 + 136);
    v30 = *(v14 + 144);
    v33 = *(v30 + 56);
    v32 = *(v30 + 64);

    CustomIntentNLContextProvider.makeContextForPagination(intent:parameterName:displayHints:selectionItems:paginatedItems:)(v18, v60, v21, v33, v32, v31);
  }

  v34 = *(v14 + 216);
  v35 = *(v14 + 144);
  v36 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v36);
  *(v14 + 112) = _swiftEmptyArrayStorage;
  if (*(v35 + 72) == 1)
  {
    v37 = *(*(v14 + 144) + 80);
    *(v14 + 328) = ParameterResolutionRecord.app.getter();
    v57 = (*v37 + 256);
    v58 = *v57 + **v57;
    v38 = swift_task_alloc();
    *(v14 + 336) = v38;
    *v38 = v14;
    v38[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);
    OUTLINED_FUNCTION_6_1();

    return v44(v39, v40, v41, v42, v43, v44, v45, v46, v57, v58, v60, a12, a13, a14);
  }

  else
  {
    *(v14 + 376) = OUTLINED_FUNCTION_37_10(_swiftEmptyArrayStorage);
    *(v14 + 384) = ParameterResolutionRecord.result.getter();
    v59 = (*v18 + 264);
    v61 = *v59 + **v59;
    v47 = swift_task_alloc();
    *(v14 + 392) = v47;
    *v47 = v14;
    OUTLINED_FUNCTION_13_20(v47);
    OUTLINED_FUNCTION_6_1();

    return v54(v48, v49, v50, v51, v52, v53, v54, v55, a9, v59, v61, a12, a13, a14);
  }
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v16)
  {
    OUTLINED_FUNCTION_35_11(v15 > 1);
  }

  v17 = *(v14 + 312);
  OUTLINED_FUNCTION_70_4();
  v18 = *(v14 + 112);
  *(v14 + 456) = v18;
  if (v17 < 1)
  {
    *(v14 + 488) = v18;
    static DialogPhase.clarification.getter();
    if (specialized Array.count.getter(v18))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      v29 = [*(v18 + 32) catId];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v45 = 0;
    }

    v30 = *(v14 + 208);
    v47 = *(v14 + 216);
    OUTLINED_FUNCTION_60_6();
    v31();
    OUTLINED_FUNCTION_1_0();
    OutputGenerationManifest.init(dialogPhase:_:)();
    OutputGenerationManifest.responseViewId.setter();
    v32 = OUTLINED_FUNCTION_63_6();
    v33(v32);
    INIntent.isRestricted()();
    OutputGenerationManifest.canUseServerTTS.setter();
    OutputGenerationManifest.listenAfterSpeaking.setter();
    outlined init with copy of NLContextUpdate?(v47, v30, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    OutputGenerationManifest.nlContextUpdate.setter();
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    *(v14 + 496) = ResponseFactory.init()();
    v48 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 504) = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_16_25(v34);
    OUTLINED_FUNCTION_6_1();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v48, a12, a13, a14);
  }

  else
  {
    v44 = (**(v14 + 368) + 208);
    v46 = *v44 + **v44;
    v19 = swift_task_alloc();
    *(v14 + 464) = v19;
    *v19 = v14;
    v19[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);
    OUTLINED_FUNCTION_6_1();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, v44, v46, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v16)
  {
    OUTLINED_FUNCTION_35_11(v15 > 1);
  }

  OUTLINED_FUNCTION_70_4();
  v17 = v14[14];
  v14[61] = v17;
  static DialogPhase.clarification.getter();
  if (specialized Array.count.getter(v17))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v18 = [*(v17 + 32) catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = v14[26];
  v34 = v14[27];
  OUTLINED_FUNCTION_60_6();
  v20();
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  v21 = OUTLINED_FUNCTION_63_6();
  v22(v21);
  INIntent.isRestricted()();
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of NLContextUpdate?(v34, v19, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v14[62] = ResponseFactory.init()();
  v35 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v14[63] = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_16_25(v23);
  OUTLINED_FUNCTION_6_1();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, v17, a12, a13, a14);
}

void CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[40];
  v2 = v0[32];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  (*(v5 + 8))(v4, v6);
  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandPagination(parse:)()
{
  OUTLINED_FUNCTION_40_0();
  v87 = v0;
  v88 = v1;
  type metadata accessor for PaginationRequest();
  OUTLINED_FUNCTION_7_1();
  v85 = v3;
  v86 = v2;
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v84 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v7 = OUTLINED_FUNCTION_14(v6);
  __chkstk_darwin(v7);
  v9 = &v75 - v8;
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7_1();
  v78 = v11;
  v79 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v80 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v77 = v15;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v76 = v18 - v17;
  OUTLINED_FUNCTION_22_10();
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7_1();
  v82 = v20;
  v83 = v19;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v81 = v22 - v21;
  v23 = OUTLINED_FUNCTION_22_10();
  type metadata accessor for VoiceCommandsNLIntent(v23);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7_1();
  v30 = v29;
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  v35 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v37 = v36;
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_3();
  v41 = v40 - v39;
  (*(v37 + 16))(v40 - v39, v87, v35);
  v42 = OUTLINED_FUNCTION_97();
  v44 = v43(v42);
  if (v44 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v45 = OUTLINED_FUNCTION_97();
    v46(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    (*(v30 + 32))(v34, v41, v28);
    (*(v30 + 16))(v27, v34, v28);
    if (one-time initialization token for voiceCommandPaginationNode != -1)
    {
      swift_once();
    }

    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, 255, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    outlined destroy of VoiceCommandsNLIntent(v27);
    (*(v30 + 8))(v34, v28);
    value = v89;
    goto LABEL_5;
  }

  if (v44 == enum case for Parse.uso(_:))
  {
    v49 = OUTLINED_FUNCTION_97();
    v50(v49);
    (*(v82 + 32))(v81, v41, v83);
    USOParse.userParse.getter();
    v51 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    (*(v78 + 8))(v14, v79);
    specialized Collection.first.getter(v51, v9);

    v52 = v80;
    if (__swift_getEnumTagSinglePayload(v9, 1, v80) == 1)
    {
      outlined destroy of Any?(v9, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      v54 = __swift_project_value_buffer(v53, static Logger.voiceCommands);
      v55 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v56 = OUTLINED_FUNCTION_6_22();
      if (os_log_type_enabled(v56, v57))
      {
        OUTLINED_FUNCTION_18_1();
        v58 = swift_slowAlloc();
        OUTLINED_FUNCTION_45(v58);
        _os_log_impl(&dword_0, v55, v54, "#CustomIntentNeedsDisambiguationFlowStrategy: could not get pagination value", v9, 2u);
        OUTLINED_FUNCTION_15_1();
      }

      v59 = OUTLINED_FUNCTION_41_10();
      v60(v59);
    }

    else
    {
      v67 = v76;
      v68 = v77;
      (*(v77 + 32))(v76, v9, v52);
      v69.value = Siri_Nlu_External_UserDialogAct.paginationValue()().value;
      if (!v70)
      {
        value = v69.value;
        (*(v68 + 8))(v67, v52);
        v73 = OUTLINED_FUNCTION_41_10();
        v74(v73);
LABEL_5:
        switch(value)
        {
          case SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandPagination_previous:
            v48 = v84;
            static PaginationRequest.previousPage()();
            break;
          case SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandPagination_repeat:
          case SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandPagination_unknownDefault:
            goto LABEL_19;
          default:
            v48 = v84;
            static PaginationRequest.nextPage()();
            break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
        static DisambiguationResult.paginate(_:)();
        (*(v85 + 8))(v48, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
        v64 = OUTLINED_FUNCTION_43_8();
        goto LABEL_20;
      }

      (*(v68 + 8))(v67, v52);
      v71 = OUTLINED_FUNCTION_41_10();
      v72(v71);
    }

LABEL_19:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
    v64 = v88;
    v65 = 1;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v64, v65, 1, v66);
    goto LABEL_21;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
  __swift_storeEnumTagSinglePayload(v88, 1, 1, v61);
  v62 = OUTLINED_FUNCTION_97();
  v63(v62);
LABEL_21:
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.getSmartPromptConfirmation(parse:intent:)(uint64_t a1)
{
  v2 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = outlined bridged method (pb) of @objc WFSmartPromptIntent.buttons.getter(v2);
  if (!v4 || (v5 = static SmartPromptConfirmationUtils.getSimpleConfirmation(parse:options:)(a1, v4), v7 = v6, , !v7))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_18_1();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v9, v10, "#CustomIntentNeedsDisambiguationFlowStrategy: smart prompt not a simple confirmation", v13, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    return 0;
  }

  return v5;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandConfirmation(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaginationRequest();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  switch(static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(a1))
  {
    case 1u:
    case 2u:
    case 3u:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);

      result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v11);
      break;
    default:
      static PaginationRequest.nextPage()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
      static DisambiguationResult.paginate(_:)();
      (*(v6 + 8))(v10, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
      v13 = OUTLINED_FUNCTION_43_8();
      result = __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
      break;
  }

  return result;
}

uint64_t closure #1 in static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
  v6 = Transformer.transform.getter();
  v6(a1);

  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

void *CustomIntentNeedsDisambiguationFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return v0;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.__deallocating_deinit()
{
  CustomIntentNeedsDisambiguationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(**v2 + 264) + **(**v2 + 264));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy;

  return v7(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 280) + **(**v4 + 280));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 296) + **(**v3 + 296));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v5, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v12 = v6;
  v12[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v14 = v7;
  v14[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

id outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 *a4];

  return v7;
}

uint64_t outlined bridged method (pb) of @objc WFSmartPromptIntent.buttons.getter(void *a1)
{
  v1 = [a1 buttons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFSmartPromptButton, WFSmartPromptButton_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INImage._imageData.getter(void *a1)
{
  v2 = [a1 _imageData];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_22();
}

uint64_t specialized CustomIntentNeedsDisambiguationFlowStrategy.__allocating_init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a8 - 8);
  __chkstk_darwin(a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a4, a8);
  v19 = specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(a1, a2, a3, v17, a5, v22, v18, a8, a9);
  (*(v15 + 8))(a4, a8);
  return v19;
}

uint64_t specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  __chkstk_darwin(v17 - 8);
  v29 = a8;
  v30 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *(a7 + 128) = a1;
  *(a7 + 136) = a2;
  outlined init with copy of DeviceState(a3, a7 + 16);
  outlined init with copy of DeviceState(a7 + 16, v27);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs(0);

  static CATOption.defaultMode.getter();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v22 = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v23 = type metadata accessor for AppNameResolver();
  v24 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v25 = swift_allocObject();
  *(v25 + 136) = v23;
  *(v25 + 144) = &protocol witness table for AppNameResolver;
  *(v25 + 112) = v24;
  *(v25 + 56) = v19;
  outlined init with take of AceServiceInvokerAsync(v27, v25 + 16);
  *(v25 + 64) = 0;
  *(v25 + 72) = 1;
  *(v25 + 80) = v20;
  *(v25 + 88) = a6;
  *(v25 + 96) = v21;
  *(v25 + 104) = v22;
  *(a7 + 80) = v25;
  outlined init with take of AceServiceInvokerAsync(&v28, a7 + 88);
  *(a7 + 144) = a5;
  *(a7 + 72) = 1;
  return a7;
}

uint64_t sub_13B62C()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in static Transformer<>.disambiguationItemTransformer(attributeMetadata:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_14(v5);
  return closure #1 in static Transformer<>.disambiguationItemTransformer(attributeMetadata:locale:)(a1, *(v2 + 16), v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), a2);
}

unint64_t lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError()
{
  result = lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError;
  if (!lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError;
  if (!lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError);
  }

  return result;
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v4;
}

uint64_t outlined init with take of INShortcut?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v4;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer()
{
  result = lazy protocol witness table cache variable for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer;
  if (!lazy protocol witness table cache variable for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x13BA30);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_7_24()
{
}

uint64_t OUTLINED_FUNCTION_11_21(uint64_t a1)
{
  *(a1 + 8) = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:);
  *(v3 + 16) = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_35_11(uint64_t a1)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_37_10@<X0>(uint64_t a1@<X8>)
{
  v1[45] = a1;
  v1[46] = *(v1[18] + 80);

  return ParameterResolutionRecord.app.getter();
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
}

uint64_t OUTLINED_FUNCTION_66_6()
{
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return ParameterResolutionRecord.app.getter();
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void AutoShortcutFirstRunFlow.__allocating_init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_71_1();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_45_7(v2);
  v5 = v4(v3);
  OUTLINED_FUNCTION_30_11(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  v13 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_42();
}

uint64_t AutoShortcutFirstRunFlow.exitValue.getter()
{
  v1 = *(v0 + 272);
  if ((v1 & 0xC0) != 0x40)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v4))
    {
      v5 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v5);
      OUTLINED_FUNCTION_25(&dword_0, v6, v7, "#AutoShortcutFirstRunFlow exited in the wrong state");
      OUTLINED_FUNCTION_17();
    }

    v1 = 0;
  }

  return v1 & 1;
}

void AutoShortcutFirstRunFlow.init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_71_1();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_45_7(v2);
  v5 = v4(v3);
  OUTLINED_FUNCTION_30_11(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  v13 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  OUTLINED_FUNCTION_42();
}

void AutoShortcutFirstRunFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v35 = v5;
  v36 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v34 = v7 - v6;
  v8 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = OUTLINED_FUNCTION_14(v15);
  __chkstk_darwin(v16);
  v17 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_63_7(v17);
  OUTLINED_FUNCTION_27_6();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  (*(v10 + 16))(v14, v3, v8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v33 = v0;
    v22 = OUTLINED_FUNCTION_48();
    v37 = OUTLINED_FUNCTION_85();
    *v22 = 136315138;
    v23 = Input.description.getter();
    (*(v10 + 8))(v14, v8);
    v24 = OUTLINED_FUNCTION_22_4();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);
    OUTLINED_FUNCTION_1_18();

    *(v22 + 4) = v23;
    _os_log_impl(&dword_0, v20, v21, "#AutoShortcutFirstRunFlow on input: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_15_0(v37);
    v27 = v22;
    v1 = v33;
    OUTLINED_FUNCTION_15_0(v27);
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  Input.parse.getter();
  v28 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v34);
  (*(v35 + 8))(v34, v36);
  if (v28 == 3)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_38_4(v30))
    {
      v31 = OUTLINED_FUNCTION_52();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v34, "#AutoShortcutFirstRunFlow failed to get confirmation", v31, 2u);
      OUTLINED_FUNCTION_15_0(v31);
    }

    v32 = 64;
    goto LABEL_13;
  }

  if (!v28)
  {
    v32 = 1;
LABEL_13:
    *(v1 + 272) = v32;
    goto LABEL_14;
  }

  *(v1 + 272) = 0;
LABEL_14:
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in AutoShortcutFirstRunFlow.on(input:)()
{
  OUTLINED_FUNCTION_15_2();
  outlined init with copy of DeviceState(v0[12] + 136, (v0 + 2));
  OUTLINED_FUNCTION_47(v0 + 2);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[13] = v1;
  *v1 = v2;
  v1[1] = closure #1 in AutoShortcutFirstRunFlow.on(input:);
  OUTLINED_FUNCTION_49_8();
  OUTLINED_FUNCTION_67_7();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v4);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t AutoShortcutFirstRunFlow.execute(completion:)(uint64_t a1)
{
  type metadata accessor for AutoShortcutFirstRunFlow();
  lazy protocol witness table accessor for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow(&lazy protocol witness table cache variable for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow, v1, type metadata accessor for AutoShortcutFirstRunFlow, &protocol conformance descriptor for AutoShortcutFirstRunFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AutoShortcutFirstRunFlow.execute()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  return OUTLINED_FUNCTION_0_16(AutoShortcutFirstRunFlow.execute());
}

uint64_t AutoShortcutFirstRunFlow.execute()()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 200);
  v2 = *(v1 + 272);
  *(v0 + 336) = v2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_49_0();

      __asm { BRAA            X1, X16 }
    }

    if (v2 == 128)
    {
      v24 = swift_task_alloc();
      *(v0 + 216) = v24;
      *v24 = v0;
      v24[1] = AutoShortcutFirstRunFlow.execute();
      OUTLINED_FUNCTION_49_0();

      __asm { BRAA            X0, X16 }
    }

    outlined init with copy of DeviceState(v1 + 136, v0 + 56);
    OUTLINED_FUNCTION_47((v0 + 56));
    static OutputUtils.makeTemporaryOutput()((v0 + 96));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 264) = v29;
    *v29 = v30;
    v29[1] = AutoShortcutFirstRunFlow.execute();
    OUTLINED_FUNCTION_49_8();
    OUTLINED_FUNCTION_49_0();

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v31, v32, v33);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 280) = __swift_project_value_buffer(v3, static Logger.voiceCommands);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v2 & 1;
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v7, v8, v9, v10, v6, 8u);
      OUTLINED_FUNCTION_17();
    }

    v11 = *(v0 + 200);

    __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
    v12 = OUTLINED_FUNCTION_25_3();
    v13(v12);
    *(v0 + 288) = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 296) = v15;
    *v15 = v16;
    v15[1] = AutoShortcutFirstRunFlow.execute();
    OUTLINED_FUNCTION_49_0();

    return static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:)(v17, v18, v19, v20, v21);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 337) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 200);
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_47((v1 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 248) = v3;
  *v3 = v4;
  v3[1] = AutoShortcutFirstRunFlow.execute();
  OUTLINED_FUNCTION_49_8();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v5, v6, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 272) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_6_0();

  return v1();
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
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 200);
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_47((v1 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 320) = v3;
  *v3 = v4;
  v3[1] = AutoShortcutFirstRunFlow.execute();
  OUTLINED_FUNCTION_49_8();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v5, v6, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v3);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v4);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v4);
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t static AutoShortcutFirstRunFlow.getAppName(bundleId:appNameResolver:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[3];
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v4);
  v6 = OUTLINED_FUNCTION_48_2();

  return specialized static AutoShortcutFirstRunFlow.getAppName(bundleId:appNameResolver:)(v6, v7, v8, v3, v4, v5);
}

uint64_t static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 72) = a1;
  return OUTLINED_FUNCTION_0_16(static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:));
}

uint64_t static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:)()
{
  OUTLINED_FUNCTION_24_1();
  v23 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 48) = OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_85();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v22);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v9, v10, v11, v12, v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0(v8);
    OUTLINED_FUNCTION_15_0(v7);
  }

  v13 = *(v0 + 32);
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_47(v13);
  v21 = (*(v15 + 48) + **(v15 + 48));
  v16 = swift_task_alloc();
  *(v0 + 56) = v16;
  *v16 = v0;
  v16[1] = static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + 72);

  return v21(v19, v17, v18, v14, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  if ((*(v0 + 72) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
    v1 = OUTLINED_FUNCTION_25_11();
    v2(v1);
  }

  OUTLINED_FUNCTION_6_6();

  return v3(1);
}

{
  OUTLINED_FUNCTION_24_1();
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_85();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v12);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v5;
    _os_log_impl(&dword_0, v1, v2, "failed to set AppShortcuts enablement for %s to %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0(v7);
    OUTLINED_FUNCTION_15_0(v6);
  }

  if ((*(v0 + 72) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
    v8 = OUTLINED_FUNCTION_25_11();
    v9(v8);
  }

  OUTLINED_FUNCTION_6_6();

  return v10(1);
}

uint64_t AutoShortcutFirstRunFlow.makePromptOutput(appName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return OUTLINED_FUNCTION_0_16(AutoShortcutFirstRunFlow.makePromptOutput(appName:));
}

uint64_t AutoShortcutFirstRunFlow.makePromptOutput(appName:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 80);
  v2 = *(v1 + 48);
  OUTLINED_FUNCTION_47((v1 + 16));
  v6 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);
  v4 = OUTLINED_FUNCTION_9_3();

  return v6(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_48();
    *v6 = 134217984;
    *(v6 + 4) = specialized Array.count.getter(v5);

    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v7, v8, v9, v10, v6, 0xCu);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v11 = v0[13];
  v12 = specialized Array.count.getter(v11);
  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  v15 = v11 & 0xFFFFFFFFFFFFFF8;
  v16 = v11 + 32;
  v17 = _swiftEmptyArrayStorage;
  v18 = v0;
  v40 = v0;
LABEL_6:
  v18[14] = v17;
  v0 = v17;
  while (v12 != v13)
  {
    if (v14)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v15 + 16))
      {
        goto LABEL_30;
      }

      v19 = *(v16 + 8 * v13);
    }

    v20 = v19;
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v22 = [v19 orderedPhrases];
    type metadata accessor for LNAutoShortcutLocalizedPhrase();
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_17:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v25 = *(v23 + 32);
        }

        v26 = v25;

        v27 = [v26 localizedPhrase];

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v0 = v34;
        }

        v31 = v0[2];
        v32 = v0;
        if (v31 >= v0[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v32 = v35;
        }

        v32[2] = v31 + 1;
        v17 = v32;
        v33 = &v32[2 * v31];
        v33[4] = v28;
        v33[5] = v30;
        v13 = v21;
        v18 = v40;
        goto LABEL_6;
      }
    }

    else
    {
      result = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_17;
      }
    }

    ++v13;
    v17 = v0;
  }

  v36 = v40[10];

  v37 = *(v36 + 176);
  v40[15] = v37;
  v39 = (*(*v37 + 288) + **(*v37 + 288));
  v38 = swift_task_alloc();
  v40[16] = v38;
  *v38 = v40;
  v38[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);

  return v39(v17);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 176) = v0;

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

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_6_0();
  return v0();
}

void AutoShortcutFirstRunFlow.makePromptOutput(appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_2();
  v10 = v9[10];
  OUTLINED_FUNCTION_47((v10 + 96));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter() & 1) != 0 || (OUTLINED_FUNCTION_47((v10 + 96)), OUTLINED_FUNCTION_9_3(), (dispatch thunk of DeviceState.isCarPlay.getter()))
  {
    OUTLINED_FUNCTION_48_9();
    v30 = (*(v11 + 224) + **(v11 + 224));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v9[19] = v12;
    *v12 = v13;
    v12[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);
    v14 = v9[17];
    v15 = v9[9];
    v16 = v9[7];
    v17 = v9[8];

    v30(v16, v17, v15, v14);
  }

  else
  {
    v18 = v9[10];
    v19 = *(v18 + 184);
    v20 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v20);
    v21 = ResponseFactory.init()();
    v9[5] = v20;
    v9[6] = &protocol witness table for ResponseFactory;
    v9[2] = v21;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v9[21] = v22;
    *v22 = v23;
    v22[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);
    v24 = v9[17];
    v25 = v9[15];
    v26 = v9[8];
    v27 = v9[9];
    v28 = v9[7];

    static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)(v28, v26, v27, v24, v25, v19, v10 + 96, v18 + 16, a9);
  }
}

void static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_2();
  v9[14] = v10;
  v9[15] = a9;
  v9[12] = v11;
  v9[13] = v12;
  v9[10] = v13;
  v9[11] = v14;
  v9[8] = v15;
  v9[9] = v16;
  v9[7] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v18);
  v9[16] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for DialogPhase();
  v9[17] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v9[18] = v20;
  v9[19] = swift_task_alloc();
  v9[20] = swift_task_alloc();
  v21 = type metadata accessor for OutputGenerationManifest();
  v9[21] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v9[22] = v22;
  v9[23] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_18_4();
  v23 = swift_task_alloc();
  v9[24] = v23;
  *v23 = v9;
  v23[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_67_7();

  __asm { BRAA            X2, X16 }
}

void static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)()
{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[25] = v6;
  v3[26] = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_67_7();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_48_9();
  v10 = swift_task_alloc();
  v3[27] = v10;
  *v10 = v5;
  v10[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
  OUTLINED_FUNCTION_67_7();

  __asm { BRAA            X0, X16 }
}

uint64_t static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  v2[28] = v4;
  v2[29] = v5;
  v2[30] = v6;
  v2[31] = v7;
  v2[32] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(*(v0 + 80) + 16);
  OUTLINED_FUNCTION_48_9();
  v5 = (*(v2 + 248) + **(v2 + 248));
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);

  return v5(v1);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[34] = v6;
  v3[35] = v7;
  v3[36] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }

  else
  {
    OUTLINED_FUNCTION_48_9();
    v14 = (*(v9 + 264) + **(v9 + 264));
    v10 = swift_task_alloc();
    v3[37] = v10;
    *v10 = v5;
    v10[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
    v11 = v3[9];
    v12 = v3[8];

    return v14(v12, v11);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();

  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  OUTLINED_FUNCTION_6_0();

  return v1();
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

  OUTLINED_FUNCTION_51_8();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_51_8();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_51_8();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_61_3();
  v13 = *(v12 + 304);
  v67 = *(v12 + 248);
  v69 = *(v12 + 224);
  v71 = *(v12 + 240);
  v14 = *(v12 + 152);
  v15 = *(v12 + 160);
  v17 = *(v12 + 136);
  v16 = *(v12 + 144);
  v64 = *(v12 + 232);
  v65 = *(v12 + 128);
  v18 = *(v12 + 96);
  v73 = *(v12 + 104);
  static DialogPhase.confirmation.getter();
  v19 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v16 + 16))(v14, v15, v17);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v16 + 8))(v15, v17);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v20 = *(*v18 + 80);

  v20(v69, v64, v71, v67, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OutputGenerationManifest.nlContextUpdate.setter();
  OUTLINED_FUNCTION_47(v73);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v25 = *(v12 + 304);
    v26 = *(v12 + 120);

    OUTLINED_FUNCTION_47(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v27 = swift_allocObject();
    *(v12 + 336) = v27;
    *(v27 + 16) = xmmword_216010;
    *(v27 + 32) = v25;
    v28 = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 344) = v29;
    *v29 = v30;
    v29[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
    OUTLINED_FUNCTION_77_3();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36, v37, v38, a9, v64, v65, a12);
  }

  else
  {
    v39 = *(v12 + 304);
    v40 = *(v12 + 272);
    v74 = *(v12 + 248);
    v70 = *(v12 + 280);
    v72 = *(v12 + 240);
    v66 = *(v12 + 200);
    v68 = *(v12 + 224);
    v41 = *(v12 + 112);
    v42 = *(v12 + 120);
    v43 = *(v12 + 80);
    v44 = v41[4];
    OUTLINED_FUNCTION_47(v41);
    v45 = *(v44 + 32);

    v46 = OUTLINED_FUNCTION_9_3();
    v47 = v45(v46);
    v49 = v48;
    OUTLINED_FUNCTION_47(v42);
    *(v12 + 40) = type metadata accessor for WorkflowDataModels(0);
    *(v12 + 48) = lazy protocol witness table accessor for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, 255, type metadata accessor for WorkflowDataModels, &protocol conformance descriptor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 16));
    *boxed_opaque_existential_1 = v43;
    boxed_opaque_existential_1[1] = 3;
    boxed_opaque_existential_1[2] = v47;
    boxed_opaque_existential_1[3] = v49;
    *(boxed_opaque_existential_1 + 2) = v66;
    boxed_opaque_existential_1[6] = v40;
    boxed_opaque_existential_1[7] = v70;
    boxed_opaque_existential_1[8] = 0;
    boxed_opaque_existential_1[9] = 0;
    *(boxed_opaque_existential_1 + 5) = v68;
    boxed_opaque_existential_1[12] = v72;
    boxed_opaque_existential_1[13] = v74;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v51 = swift_allocObject();
    *(v12 + 320) = v51;
    *(v51 + 16) = xmmword_216010;
    *(v51 + 32) = v39;
    v52 = v39;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 328) = v53;
    *v53 = v54;
    v53[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
    OUTLINED_FUNCTION_77_3();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v55, v56, v57, v58, v59, v60, v61, v62, a9, v64, v66, *(&v66 + 1));
  }
}

uint64_t AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[7] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for DialogPhase();
  v1[8] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[9] = v8;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[12] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for NLContextUpdate();
  v1[15] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[18] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[19] = v14;
  v1[20] = OUTLINED_FUNCTION_28();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_14_0();
  (*(v0[19] + 104))(v0[20], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[18]);
  v1 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  if (v1)
  {
    v4 = v0[5];
    v5 = v4[2];
    if (v5)
    {
      v6 = v4[5];

      if (v5 != 1)
      {
        v11 = v4[7];

LABEL_11:
        v0[21] = v6;
        v0[22] = v11;
        v0[23] = *(v0[6] + 176);
        v12 = swift_task_alloc();
        v0[24] = v12;
        *v12 = v0;
        v12[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:);
        OUTLINED_FUNCTION_49_0();

        __asm { BRAA            X6, X16 }
      }
    }

    else
    {
      v6 = 0xE000000000000000;
    }

    v11 = 0xE000000000000000;
    goto LABEL_11;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[36] = v7;
  *v7 = v8;
  v7[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:);
  OUTLINED_FUNCTION_49_0();

  return AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod_preRFv2(appName:autoShortcutPhrases:)();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[25] = v6;
  v3[26] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = v3[23];

    v11 = (*(*v8 + 232) + **(*v8 + 232));
    v9 = swift_task_alloc();
    v3[27] = v9;
    *v9 = v5;
    v9[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:);

    return v11();
  }
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  OUTLINED_FUNCTION_4_1();
  *v12 = v11;
  v13 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v14 = v13;
  v11[28] = v0;

  if (!v0)
  {
    v11[29] = v3;
    v11[30] = v5;
    v11[31] = v7;
    v11[32] = v9;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v15);
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
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_50_5();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_50_5();

  OUTLINED_FUNCTION_6_0();

  return v1();
}