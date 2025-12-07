uint64_t TemplatingResult.init(dialogId:print:speak:)@<X0>(uint64_t a1@<X0>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v73 = a1;
  v74 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  __chkstk_darwin(v7 - 8);
  v72 = &v56 - v8;
  v9 = type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_13_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v78 = v13 - v14;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_8();
  v77 = v16;
  v76 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_13_1();
  v18 = v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_50_0();
  v71 = v20 - v21;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_12_8();
  v75 = v23;
  v24 = type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_13_1();
  v26 = v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_50_0();
  v59 = v28 - v29;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_12_8();
  v60 = v31;
  v70 = *(a3 + 16);
  if (v70)
  {
    v56 = v26;
    v57 = v24;
    v58 = a5;
    type metadata accessor for CATSpeakableString();
    v32 = 0;
    v33 = 0;
    v69 = *(v74 + 16);
    v65 = (v11 + 16);
    v66 = (v18 + 16);
    v63 = (v18 + 8);
    v64 = v11 + 8;
    v62 = v11 + 32;
    v34 = _swiftEmptyArrayStorage;
    v67 = v9;
    v68 = v11;
    v61 = a3;
    while (1)
    {

      v35 = OUTLINED_FUNCTION_22();
      static CATSpeakableString.stripTTSHint(print:)(v35, v36, v37, v38, v39, v40, v41, v42, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);

      if (v33 < v69)
      {
        if (v33 >= *(v74 + 16))
        {
          __break(1u);
          return result;
        }

        static CATSpeakableString.applyTTSHint(speak:)();
      }

      v44 = v75;
      TemplatingText.init(text:speakableTextOverride:)();
      v45 = v76;
      (*v66)(v71, v44, v76);
      __swift_storeEnumTagSinglePayload(v72, 1, 1, v45);

      v46 = v77;
      TemplatingSection.init(id:content:caption:spokenOnly:)();
      v47 = v67;
      (*v65)(v78, v46, v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        v34 = v51;
      }

      v48 = v68;
      v50 = v34[2];
      v49 = v34[3];
      if (v50 >= v49 >> 1)
      {
        v52 = OUTLINED_FUNCTION_14_8(v49);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v50 + 1, 1, v34);
        v34 = v53;
      }

      ++v33;
      (*(v48 + 8))(v77, v47);
      (*v63)(v75, v76);
      v34[2] = v50 + 1;
      (*(v48 + 32))(v34 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v78, v47);
      v32 += 16;
      if (v70 == v33)
      {

        v24 = v57;
        v26 = v56;
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v55 = v59;
  v54 = v60;
  (*(v26 + 104))(v59, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v24);
  static TemplatingResult.getBehaviorAfterSpeaking(behavior:)(v54);
  (*(v26 + 8))(v55, v24);
  return TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
}

void static CATSpeakableString.stripTTSHint(print:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_10();
  v26 = objc_opt_self();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 parseAnnotatedString:v27];

  v29 = [v28 components];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20WFTTSStringComponent_pMd, &_sSo20WFTTSStringComponent_pMR);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v30 >> 62)
  {
    OUTLINED_FUNCTION_18_9();
    v44 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v30 = v44;
  }

  else
  {
    v31 = v30 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    if (swift_dynamicCastMetatype() || (v42 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8))) == 0)
    {
LABEL_3:
    }

    else
    {
      v43 = (v31 + 32);
      while (*v43)
      {
        ++v43;
        if (!--v42)
        {
          goto LABEL_3;
        }
      }

      v30 = v31 | 1;
    }
  }

  v32 = specialized Array.count.getter(v30);
  if (v32)
  {
    v33 = v32;
    if (v32 >= 1)
    {
      v34 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          break;
        }

        objc_opt_self();
        v36 = swift_dynamicCastObjCClass();
        if (!v36)
        {
          goto LABEL_14;
        }

        v37 = [v36 displayString];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41._countAndFlagsBits = v38;
        v41._object = v40;
        String.append(_:)(v41);
        swift_unknownObjectRelease();

LABEL_15:
        if (v33 == ++v34)
        {
          goto LABEL_16;
        }
      }

      v35._countAndFlagsBits = a10;
      v35._object = a11;
      String.append(_:)(v35);

LABEL_14:
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    OUTLINED_FUNCTION_15_10();
  }
}

uint64_t static CATSpeakableString.applyTTSHint(speak:)()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 parseAnnotatedString:v1];

  v3 = [v2 components];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20WFTTSStringComponent_pMd, &_sSo20WFTTSStringComponent_pMR);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = &type metadata for Swift.AnyObject;
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFF8;

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  if (swift_dynamicCastMetatype() || (v31 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8))) == 0)
  {
LABEL_3:

    goto LABEL_4;
  }

  v32 = (v6 + 32);
  while (*v32)
  {
    ++v32;
    if (!--v31)
    {
      goto LABEL_3;
    }
  }

  v4 = v6 | 1;
LABEL_4:
  result = specialized Array.count.getter(v4);
  if (!result)
  {

    return 0;
  }

  v8 = result;
  if (result >= 1)
  {
    v34 = v2;
    v9 = 0;
    v10 = &type metadata for String;
    v11 = v4 & 0xC000000000000001;
    v2 = &_s12SiriOntology39UsoEntityBuilder_common_MeasurementUnitCAA0cde9Protocol_f1_gH0AAWP_ptr;
    v35 = result;
    while (1)
    {
      if (v11)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        String.append(_:)(v36);
      }

      else
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = [v12 seconds];
          [v13 doubleValue];
          v15 = v14;

          v16 = round(v15 * 1000.0);
          if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            OUTLINED_FUNCTION_18_9();
            v33 = _bridgeCocoaArray<A>(_:)();
            swift_bridgeObjectRelease_n();
            v4 = v33;
            goto LABEL_4;
          }

          if (v16 <= -9.22337204e18)
          {
            goto LABEL_31;
          }

          if (v16 >= 9.22337204e18)
          {
            goto LABEL_32;
          }

          v36._countAndFlagsBits = 0x3D65737561705C1BLL;
          v36._object = 0xE800000000000000;
          v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v17);

          v18._countAndFlagsBits = 92;
          v18._object = 0xE100000000000000;
          String.append(_:)(v18);
          v19._countAndFlagsBits = 0x3D65737561705C1BLL;
          v19._object = 0xE800000000000000;
          String.append(_:)(v19);
          swift_unknownObjectRelease();
          goto LABEL_20;
        }

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = [v20 spokenString];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v11;
          v24 = v4;
          v25 = v10;
          v26 = v5;
          v27 = v2;
          v29 = v28;

          v30._countAndFlagsBits = v22;
          v30._object = v29;
          String.append(_:)(v30);
          swift_unknownObjectRelease();
          v2 = v27;
          v5 = v26;
          v10 = v25;
          v4 = v24;
          v11 = v23;
          v8 = v35;
LABEL_20:

          goto LABEL_21;
        }
      }

      swift_unknownObjectRelease();
LABEL_21:
      if (v8 == ++v9)
      {

        return 0;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall CATSpeakableString.toString()()
{
  v1 = v0[5];
  if (!v1)
  {
    v4 = v0[2];
    v2 = v0[3];
LABEL_9:

    goto LABEL_10;
  }

  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = v4 == v3 && v1 == v2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_9;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x3A7374742FLL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = v3;
  v8._object = v1;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v4 = 5985107;
  v2 = 0xE300000000000000;
LABEL_10:
  v10 = v4;
  v11 = v2;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t CATSpeakableString.asSpeakableString.getter()
{

  return SpeakableString.init(print:speak:)();
}

double static CATSpeakableString.resolveVariable(variable:intent:intentResponse:tokens:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (a5)
  {
    if (*(a5 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v13)
      {
        outlined init with copy of Any(*(a5 + 56) + 32 * v12, &v22);
LABEL_13:
        outlined init with take of Any(&v22, v21);
        v16 = v21;
        goto LABEL_14;
      }
    }
  }

  if (a4)
  {
    v14 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(a4);
    if (v14)
    {
      v15 = v14;
      *&v19 = a1;
      *(&v19 + 1) = a2;

      AnyHashable.init<A>(_:)();
      specialized Dictionary.subscript.getter(v15, &v19, v21);

      outlined destroy of AnyHashable(v21);
      if (v20)
      {
        outlined init with take of Any(&v19, &v22);
        v16 = &v22;
LABEL_14:
        outlined init with take of Any(v16, a6);
        return result;
      }

      outlined destroy of Any?(&v19, &_sypSgMd, &_sypSgMR);
    }
  }

  if (a3)
  {
    v17 = outlined bridged method (pb) of @objc INIntent.parametersByName.getter(a3);
    if (v17)
    {
      specialized Dictionary.subscript.getter(v17, &v22, a1, a2);

      if (v23)
      {
        goto LABEL_13;
      }

      outlined destroy of Any?(&v22, &_sypSgMd, &_sypSgMR);
    }
  }

  result = 0.0;
  *a6 = 0u;
  a6[1] = 0u;
  return result;
}

uint64_t CATSpeakableString.deinit()
{

  return v0;
}

uint64_t CATSpeakableString.__deallocating_deinit()
{
  CATSpeakableString.deinit();

  return swift_deallocClassInstance();
}

uint64_t static TemplatingResult.getBehaviorAfterSpeaking(behavior:)@<X0>(uint64_t a1@<X8>)
{
  if (static TemplatingResult.getListenAfterSpeakingDisabled()())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "ListenAfterSpeakingDisabled is set to true", v5, 2u);
      OUTLINED_FUNCTION_15_0(v5);
    }

    v6 = enum case for BehaviorAfterSpeaking.continueWithoutListening(_:);
    type metadata accessor for BehaviorAfterSpeaking();
    OUTLINED_FUNCTION_7();
    v9 = *(v8 + 104);

    return v9(a1, v6, v7);
  }

  else
  {
    type metadata accessor for BehaviorAfterSpeaking();
    OUTLINED_FUNCTION_7();
    v11 = OUTLINED_FUNCTION_22();

    return v12(v11);
  }
}

id static TemplatingResult.getListenAfterSpeakingDisabled()()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD00000000000001BLL, 0x80000000002316C0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v7, &_sypSgMd, &_sypSgMR);
    v5 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v5];
  }

  else
  {

    memset(v7, 0, sizeof(v7));
    outlined destroy of Any?(v7, &_sypSgMd, &_sypSgMR);
  }

  return v4;
}

Swift::String_optional __swiftcall TemplatingResult.firstSectionContentText()()
{
  v0 = type metadata accessor for TemplatingText();
  OUTLINED_FUNCTION_13_1();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v9, v8);

  v10 = type metadata accessor for TemplatingSection();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    outlined destroy of Any?(v8, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    TemplatingSection.content.getter();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = TemplatingText.text.getter();
    v12 = v13;
    (*(v2 + 8))(v5, v0);
  }

  v14 = v11;
  v15 = v12;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

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

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [SFCardSection] and conformance [A](&lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A], &_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SFCardSection, SFCardSection_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [SFCardSection] and conformance [A](&lazy protocol witness table cache variable for type [SFCardSection] and conformance [A], &_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type [SFCardSection] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_2_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void OUTLINED_FUNCTION_11_7(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 96) = a2;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18_9()
{
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{

  return static SiriKitLifecycle._logCrashToEventBus(_:)();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return swift_slowAlloc();
}

BOOL static CustomIntentSnippetProvider.isDoneButtonEligible(deviceState:intent:siriEnvironment:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ResponseMode();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  SiriEnvironment.currentRequest.getter();
  CurrentRequest.responseMode.getter();

  static ResponseMode.voiceOnly.getter();
  v13 = static ResponseMode.== infix(_:_:)();
  v40 = *(v4 + 8);
  v40(v10, v3);
  if (v13)
  {
    v39 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_21();
    v39 = dispatch thunk of DeviceState.isHomePod.getter();
  }

  OUTLINED_FUNCTION_1_21();
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_1_21(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_1_21(), (dispatch thunk of DeviceState.isPod.getter()))
  {
    v38 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_21();
    v38 = dispatch thunk of DeviceState.isXRDevice.getter();
  }

  v14 = [a2 _metadata];
  if (v14)
  {
    v15 = v14;
    LODWORD(v16) = [v14 showsWhenRun];
  }

  else
  {
    LODWORD(v16) = 0;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.voiceCommands);
  (*(v4 + 16))(v7, v12, v3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136315906;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v7;
    v25 = v16;
    v16 = v26;
    v40(v24, v3);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v16, &v41);
    LOBYTE(v16) = v25;

    *(v21 + 4) = v27;
    *(v21 + 12) = 1024;
    v28 = v39;
    *(v21 + 14) = v39 & 1;
    *(v21 + 18) = 1024;
    *(v21 + 20) = v25;
    *(v21 + 24) = 1024;
    v29 = v38;
    *(v21 + 26) = v38 & 1;
    _os_log_impl(&dword_0, v18, v19, "#CustomIntentSnippetProvider responseMode: %s, isVox: %{BOOL}d, showsWhenRun: %{BOOL}d, userCanInteractWithButton: %{BOOL}d", v21, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_15_0(v22);
    v30 = v21;
    v12 = v37;
    OUTLINED_FUNCTION_15_0(v30);
  }

  else
  {

    v40(v7, v3);
    v29 = v38;
    v28 = v39;
  }

  v31 = v28 | v16 ^ 1 | v29 ^ 1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    if (v31)
    {
      v34 = "#CustomIntentSnippetProvider isDoneButtonEligible - NOT eligible";
    }

    else
    {
      v34 = "#CustomIntentSnippetProvider isDoneButtonEligible returning true";
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_15_0(v35);
  }

  v40(v12, v3);
  return (v31 & 1) == 0;
}

uint64_t AppShortcutGeneralizedInvocation.parameterIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *CustomIntentSnippetProvider.__allocating_init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[3] = a1;
  v10[4] = a2;
  v10[2] = a3;
  outlined init with take of Output(a4, (v10 + 5));
  v10[10] = a5;
  return v10;
}

void *CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = a3;
  outlined init with take of Output(a4, (v5 + 5));
  v5[10] = a5;
  return v5;
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[98] = v8;
  v9[97] = v11;
  v9[96] = a8;
  v9[95] = a7;
  v9[94] = a6;
  v9[93] = a5;
  v9[92] = a4;
  v9[91] = a3;
  v9[90] = a2;
  v9[89] = a1;
  return _swift_task_switch(CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:));
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[98];
  type metadata accessor for VoiceShortcutClientWrapper();
  v2 = swift_allocObject();
  v0[99] = v2;
  v3 = swift_task_alloc();
  v0[100] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15VCVoiceShortcutCSgMd, &_sSo15VCVoiceShortcutCSgMR);
  swift_asyncLet_begin();
  v0[88] = _swiftEmptyArrayStorage;
  v4 = OUTLINED_FUNCTION_12_9();

  return _swift_asyncLet_get(v4);
}

{
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:));
}

{
  v4 = *(v0 + 728);
  v5 = *(v0 + 696);
  v6 = OUTLINED_FUNCTION_48_2();
  static CustomIntentPlatformSpecificSnippets.buildIntentsSnippet(app:intent:intentResponse:isForConfirmation:vcShortcut:device:)(v6, v7, v4, 1);
  v9 = v8;

  if (specialized Array.count.getter(v9))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;
    OUTLINED_FUNCTION_4_18();
    v12 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_4_18();
    v12 = [objc_allocWithZone(SAUISnippet) init];
  }

  static CustomIntentPlatformSpecificSnippets.attachConfirmationButtons(snippet:yes:no:device:)(v12, v3, v2, v1, v5);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 704) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 704) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  OUTLINED_FUNCTION_48_2();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v0 + 808) = *(v0 + 704);
  v13 = OUTLINED_FUNCTION_12_9();

  return _swift_asyncLet_finish(v13);
}

{
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:));
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 808);

  return v1(v2);
}

uint64_t implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:));
}

uint64_t implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:);
  v2 = OUTLINED_FUNCTION_48_2();

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  return _swift_task_switch(implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:));
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:));
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[8];
  type metadata accessor for VoiceShortcutClientWrapper();
  v0[10] = swift_initStackObject();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  return _swift_task_switch(CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:));
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_3_13();
  if (dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 || (OUTLINED_FUNCTION_3_13(), (dispatch thunk of DeviceState.isHomePod.getter()))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = OUTLINED_FUNCTION_64(v3);
    *(v4 + 16) = xmmword_216010;
    v5 = static CustomIntentPlatformSpecificSnippets.getEmptySnippet(app:)();
LABEL_4:
    *(v4 + 32) = v5;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3_13();
  v17 = dispatch thunk of DeviceState.isWatch.getter();
  v18 = *(v0 + 48);
  if (v17)
  {
    v19 = *(v0 + 40);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = OUTLINED_FUNCTION_64(v20);
    *(v4 + 16) = xmmword_216010;
    static CustomIntentPlatformSpecificSnippets.buildWatchSnippet(app:intent:intentResponse:)(v19, v18, v1, v21, v22);
    goto LABEL_4;
  }

  v23 = [*(v0 + 48) _metadata];
  if (v23 && (v24 = v23, v25 = [v23 showsWhenRun], v24, !v25))
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v36 = *(v0 + 56);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = OUTLINED_FUNCTION_64(v26);
    *(v4 + 16) = xmmword_216010;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v27 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v28 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

    v29 = static CasinoFactory.makePlaceholderCardSection()();
    v30 = OUTLINED_FUNCTION_64(v26);
    *(v30 + 16) = xmmword_216010;
    *(v30 + 32) = v28;
    v31 = v28;
    outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v30, v29);
    [v36 _code];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v32 = OUTLINED_FUNCTION_64(v26);
    *(v32 + 16) = xmmword_216010;
    *(v32 + 32) = v29;
    v33 = v29;
    v34 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

    v35 = OUTLINED_FUNCTION_64(v26);
    *(v35 + 16) = xmmword_216010;
    *(v35 + 32) = v27;
    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v35, v34);

    *(v4 + 32) = v34;
  }

LABEL_5:
  if (v4 >> 62)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v6 = v4;
  }

  *(v0 + 104) = v6;
  v7 = *(v0 + 48);

  *(v0 + 32) = v6;
  if (static CustomIntentSnippetProvider.isDoneButtonEligible(deviceState:intent:siriEnvironment:)(v2 + 40, v7) && (v8 = (*(**(v0 + 64) + 144))(*(v0 + 48), *(v0 + 56), *(v0 + 40)), (*(v0 + 112) = v8) != 0))
  {
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
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "CustomIntentSnippetProvider makeAceViewsForHandleIntentWithUser - Creating done button in the handle view", v12, 2u);
      OUTLINED_FUNCTION_15_0(v12);
    }

    v13 = *(v0 + 64);

    v37 = (*(**(v13 + 16) + 400) + **(**(v13 + 16) + 400));
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);

    return v37();
  }

  else
  {

    OUTLINED_FUNCTION_6_6();

    return v16(v6);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = [objc_allocWithZone(SAUIButton) init];
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v2, v1, v4, &selRef_setText_);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_64(v5);
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v3;
  v7 = v3;
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v6, v4);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = v4;
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v8, v10, v11, &selRef_setItemType_);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 32) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 32) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = *(v0 + 112);
  OUTLINED_FUNCTION_48_2();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *(v0 + 32);

  OUTLINED_FUNCTION_6_6();

  return v14(v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  v7[16] = v2;

  if (v2)
  {

    v11 = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);
  }

  else
  {
    v7[17] = a2;
    v7[18] = a1;
    v11 = CustomIntentSnippetProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:);
  }

  return _swift_task_switch(v11);
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForResolveNeedsConfirmation_preRFv2(app:yesButton:noButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_0_16(CustomIntentSnippetProvider.makeAceViewsForResolveNeedsConfirmation_preRFv2(app:yesButton:noButton:));
}

uint64_t CustomIntentSnippetProvider.makeAceViewsForResolveNeedsConfirmation_preRFv2(app:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_8_0();
  static CustomIntentPlatformSpecificSnippets.buildConfirmationSnippet(app:yes:no:device:)(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = OUTLINED_FUNCTION_64(v3);
  *(v4 + 16) = xmmword_216010;
  *(v4 + 32) = v2;
  OUTLINED_FUNCTION_6_6();

  return v5();
}

id CustomIntentSnippetProvider.makeDirectInvocation(customIntent:intentResponse:app:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = v4[4];
  *&v25 = v4[3];
  *(&v25 + 1) = v7;
  v26 = a1;
  v27 = a2;
  v28 = a3;

  v8 = a1;
  v9 = a2;

  v10 = static ShortcutDoneButtonConverter.toUserData(shortcutDoneButton:)(&v25);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    v24 = v9;
    v13 = SKIDirectInvocationPayload.__allocating_init(identifier:)(0xD00000000000003BLL, 0x8000000000230BC0, v12);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);
    v15 = v14;

    outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v15, v13);
    __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
    v16 = DeviceState.asInvocationContext.getter();
    [v16 setInputOrigin:SAInputOriginDialogButtonTapValue];
    v17 = objc_opt_self();
    v18 = [v17 runSiriKitExecutorCommandWithContext:v16 payload:v13];
    v19 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
    v20 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
    v21 = String._bridgeToObjectiveC()();
    [v20 setBundleId:v21];

    [v19 setRequestedApp:v20];
    [v18 setAppSelectionState:v19];

    v22 = [v17 wrapCommandInStartLocalRequest:v18];

    v9 = v24;
  }

  else
  {

    v22 = 0;
  }

  return v22;
}

id SKIDirectInvocationPayload.__allocating_init(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_48_2();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithIdentifier:v4];

  return v5;
}

void *CustomIntentSnippetProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return v0;
}

uint64_t CustomIntentSnippetProvider.__deallocating_deinit()
{
  CustomIntentSnippetProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode()
{
  result = lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode;
  if (!lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode)
  {
    type metadata accessor for ResponseMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode;
  if (!lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode)
  {
    type metadata accessor for ResponseMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:);

  return implicit closure #1 in CustomIntentSnippetProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:yesButton:noButton:)(v3, v5, v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setUserData:isa];
}

void outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

void outlined bridged method (mbnn) of @objc SAUIButton.text.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_13()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 40), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_18()
{
}

uint64_t AppShortcutGeneralizedInvocation.bundleId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t *ShortcutsLinkPromptForConfirmationFlowStrategy.__allocating_init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  swift_allocObject();
  v12 = a7[3];
  v42 = a7[4];
  __swift_mutable_project_boxed_opaque_existential_1(a7, v12);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_20_7(v14);
  v16(v15);
  v17 = a9[3];
  v41 = a9[4];
  __swift_mutable_project_boxed_opaque_existential_1(a9, v17);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_19_5(v19);
  v21(v20);
  v23 = a10[3];
  v22 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v23);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  (*(v28 + 16))(v26 - v25);
  OUTLINED_FUNCTION_17_10();
  v35 = OUTLINED_FUNCTION_30_4(a1, a2, v29, v30, v31, v32, v33, v34, v10, v27, v37, v38, v39, v40, v17, v23, v12, v41, v22, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v35;
}

uint64_t *ShortcutsLinkPromptForConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v12 = a7[3];
  v42 = a7[4];
  __swift_mutable_project_boxed_opaque_existential_1(a7, v12);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v15 = OUTLINED_FUNCTION_20_7(v14);
  v16(v15);
  v17 = a9[3];
  v41 = a9[4];
  __swift_mutable_project_boxed_opaque_existential_1(a9, v17);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_19_5(v19);
  v21(v20);
  v23 = a10[3];
  v22 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v23);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  (*(v28 + 16))(v26 - v25);
  OUTLINED_FUNCTION_17_10();
  v35 = OUTLINED_FUNCTION_30_4(a1, a2, v29, v30, v31, v32, v33, v34, v10, v27, v37, v38, v39, v40, v17, v23, v12, v41, v22, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v35;
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)()
{
  v1 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = OUTLINED_FUNCTION_14(v8);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  OUTLINED_FUNCTION_27_6();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0);

  Input.parse.getter();
  v14 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v7);
  (*(v3 + 8))(v7, v1);
  if (v14 == 3)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)()
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
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    OUTLINED_FUNCTION_15_0(v4);
  }

  v9 = v0[12];

  outlined init with copy of DeviceState(v9 + 272, (v0 + 2));
  v10 = v0[5];
  v11 = v0[6];
  OUTLINED_FUNCTION_47(v0 + 2);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v12;
  *v12 = v13;
  v12[1] = closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v10, v11);
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
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#ShortcutsLinkPromptForConfirmationFlowStrategy failed to submit empty output to clear screen", v3, 2u);
    OUTLINED_FUNCTION_15_0(v3);
  }

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[7] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for Parse();
  v1[8] = v6;
  v1[9] = *(v6 - 8);
  v1[10] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
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
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v0 = OUTLINED_FUNCTION_52();
    *v0 = 0;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v4, v5, v6, v7, v0, 2u);
    OUTLINED_FUNCTION_15_0(v0);
  }

  OUTLINED_FUNCTION_29_5();
  v8 = enum case for ConfirmationResponse.confirmed(_:);
  type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_26_7();
  (*(v9 + 104))(v0, v8, v1);
  v10 = OUTLINED_FUNCTION_16_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
  SimpleConfirmationResponseProvider.init(_:)();

  OUTLINED_FUNCTION_6_7();

  return v13();
}

void ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  v26 = v22[10];
  v27 = v22[8];
  Input.parse.getter();
  v28 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v26);
  v29 = OUTLINED_FUNCTION_9_3();
  v30(v29);
  switch(v28)
  {
    case 1:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.voiceCommands);
      Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_30_1(v46))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    case 2:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.voiceCommands);
      Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v39))
      {
LABEL_17:
        v47 = OUTLINED_FUNCTION_52();
        *v47 = 0;
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v48, v49, v50, v27, v47, 2u);
        OUTLINED_FUNCTION_15_0(v47);
      }

LABEL_18:
      OUTLINED_FUNCTION_29_5();
      v51 = enum case for ConfirmationResponse.rejected(_:);
      type metadata accessor for ConfirmationResponse();
      OUTLINED_FUNCTION_26_7();
      (*(v52 + 104))(v27, v51, v23);
      v53 = OUTLINED_FUNCTION_16_11();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v23);
      SimpleConfirmationResponseProvider.init(_:)();

      OUTLINED_FUNCTION_6_7();
      OUTLINED_FUNCTION_6_1();

      v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
      break;
    case 3:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v41 = v22[5];
      v40 = v22[6];
      v42 = type metadata accessor for Logger();
      v43 = __swift_project_value_buffer(v42, static Logger.voiceCommands);
      v44 = *(v42 - 8);
      (*(v44 + 16))(v40, v43, v42);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v42);
      outlined init with copy of Logger?(v40, v41);
      if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
      {
        outlined destroy of Logger?(v22[5]);
      }

      else
      {
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          a11 = v67;
          *v66 = 136315650;
          v68 = StaticString.description.getter();
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &a11);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2048;
          *(v66 + 14) = 80;
          *(v66 + 22) = 2080;
          *(v66 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x80000000002317D0, &a11);
          _os_log_impl(&dword_0, v64, v65, "FatalError at %s:%lu - %s", v66, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0(v67);
          OUTLINED_FUNCTION_15_0(v66);
        }

        (*(v44 + 8))(v22[5], v42);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      _assertionFailure(_:_:file:line:flags:)();
      OUTLINED_FUNCTION_6_1();
      break;
    default:
      v31 = [*(v22[4] + 32) systemProtocols];
      type metadata accessor for LNSystemProtocol();
      v22[11] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v22[12] = v32;
      *v32 = v33;
      v32[1] = ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:);
      OUTLINED_FUNCTION_6_1();

      static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v34, v35, v36);
      break;
  }
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[41] = v2;
  v1[42] = v0;
  v1[40] = v3;
  v1[43] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[44] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v5);
  v1[45] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[46] = v6;
  v1[47] = *(v6 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v7 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v7);
  v1[50] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v4;
  *(v2 + 448) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = *(v0 + 416);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 336);
  v7 = [*(v0 + 440) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  outlined init with copy of DeviceState(v6 + 192, v0 + 184);
  outlined init with copy of DeviceState(v6 + 152, v0 + 224);
  (*(v5 + 16))(v3, v2, v4);
  outlined init with copy of DeviceState(v6 + 112, v0 + 264);
  v8 = [v1 viewSnippet];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 viewData];

    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  *(v0 + 456) = v9;
  *(v0 + 464) = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 472) = v13;
  *v13 = v14;
  v13[1] = ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v15 = *(v0 + 440);
  v16 = *(v0 + 384);
  v17 = *(v0 + 320);

  return static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(v17, v0 + 184, v0 + 224, v15, v16, v0 + 264, v9, v12);
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = v5[58];
  v7 = v5[57];
  v8 = v5[48];
  v9 = v5[47];
  v10 = v5[46];
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v3[60] = v0;

  outlined consume of Data?(v7, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 33);
  v13 = *(v9 + 8);
  v3[61] = v13;
  v3[62] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 28);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 23);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v14);
}

{
  v1 = *(v0 + 488);
  v2 = *(v0 + 424);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);

  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();
  v1(v3, v4);

  OUTLINED_FUNCTION_6_7();

  return v5();
}

{

  v1 = OUTLINED_FUNCTION_9_3();
  v2(v1);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  v1 = *(v0 + 488);
  v2 = *(v0 + 424);

  v3 = OUTLINED_FUNCTION_9_3();
  v1(v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = *(v14 + 336);
  outlined init with copy of DeviceState(v15 + 192, v14 + 144);
  v16 = *(v15 + 56);
  type metadata accessor for RunLinkActionCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  v20 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v14 + 408) = inited;
  inited[14] = v20;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v21;
  outlined init with take of AceServiceInvokerAsync((v14 + 144), (inited + 2));
  inited[7] = v17;
  inited[8] = v16;
  inited[9] = v18;
  inited[10] = v19;
  v23 = *(v15 + 24);
  *(v14 + 416) = v23;
  *(v14 + 424) = [v23 dialog];
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  type metadata accessor for WorkflowNLContextProvider();
  swift_initStackObject();
  OUTLINED_FUNCTION_11_1();
  VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  type metadata accessor for NLContextUpdate();
  v24 = OUTLINED_FUNCTION_16_11();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OutputGenerationManifest.nlContextUpdate.setter();
  static TemplatingResult.getListenAfterSpeakingDisabled()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v28 = swift_task_alloc();
  *(v14 + 432) = v28;
  *v28 = v14;
  v28[1] = ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  OUTLINED_FUNCTION_6_1();

  return LinkActionDialogTemplating.makeParameterValueConfirmation(customPrompt:parameterValue:)();
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v12;
  *(v8 + 328) = v11;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 280) = a3;
  *(v8 + 288) = a4;
  *(v8 + 264) = a1;
  *(v8 + 272) = a2;
  v9 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v9);
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_47(*(v12 + 272));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = *(v12 + 280);
    v14 = *(v12 + 288);
    v15 = v13[3];
    v16 = v13[4];
    OUTLINED_FUNCTION_47(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v17 = swift_allocObject();
    *(v12 + 408) = v17;
    *(v17 + 16) = xmmword_216010;
    *(v17 + 32) = v14;
    v18 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 416) = v22;
    *v22 = v23;
    v22[1] = static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:);
    v24 = *(v12 + 296);
    v25 = *(v12 + 264);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v17, v24, v15, v16, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    v26 = *(v12 + 304);
    v27 = v26[4];
    OUTLINED_FUNCTION_47(v26);
    v31 = (*(v27 + 8) + **(v27 + 8));
    v28 = swift_task_alloc();
    *(v12 + 352) = v28;
    *v28 = v12;
    v28[1] = static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:);
    v29 = OUTLINED_FUNCTION_9_3();

    return v31(v29);
  }
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *v3 = *v1;
  v2[45] = v4;
  v2[46] = v5;
  v2[47] = v6;
  v2[48] = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_6_0();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 224));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.ConfirmActionModel(v0 + 16);
  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_7();

  return v3();
}

uint64_t static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 272);
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v26 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v25, 2);
  v28 = v27;

  if (v28)
  {
    v29 = v26;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.voiceCommands);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v36 = *(v22 + 336);
      v35 = *(v22 + 344);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      a11 = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &a11);
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v39, v40, v41, v42, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_15_0(v38);
      OUTLINED_FUNCTION_15_0(v37);
    }
  }

  if (*(v22 + 328))
  {
    v45 = DialogExecutionResult.firstDialogFullPrint()();
    object = v45.value._object;
    countAndFlagsBits = v45.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v47 = *(v22 + 376);
  v46 = *(v22 + 384);
  v48 = *(v22 + 360);
  v49 = *(v22 + 344);
  v51 = *(v22 + 312);
  v50 = *(v22 + 320);
  v52 = *(v22 + 280);
  v53 = *(v22 + 288);
  *(v22 + 16) = *(v22 + 336);
  *(v22 + 24) = v49;
  *(v22 + 32) = v29;
  *(v22 + 40) = v30;
  *(v22 + 48) = v48;
  *(v22 + 64) = v47;
  *(v22 + 72) = v46;
  *(v22 + 80) = v51;
  *(v22 + 88) = v50;
  *(v22 + 96) = 0;
  *(v22 + 104) = countAndFlagsBits;
  *(v22 + 112) = object;
  v68 = v52[4];
  OUTLINED_FUNCTION_47(v52);
  *(v22 + 248) = type metadata accessor for WorkflowDataModels(0);
  *(v22 + 256) = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 224));
  memcpy(boxed_opaque_existential_1, (v22 + 16), 0x68uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_27_6();
  v55 = swift_allocObject();
  *(v22 + 392) = v55;
  *(v55 + 16) = xmmword_216010;
  *(v55 + 32) = v53;

  outlined copy of Data?(v51, v50);
  outlined init with copy of WorkflowDataModels.ConfirmActionModel(v22 + 16, v22 + 120);
  v56 = v53;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v22 + 400) = v57;
  *v57 = v58;
  v57[1] = static ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:enableTCCLabelsProvider:viewData:customPrompt:appBundleId:);
  OUTLINED_FUNCTION_6_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v59, v60, v61, v62, v63, v64, v65, v66, a9, v68, a11, a12);
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  return v0;
}

uint64_t ShortcutsLinkPromptForConfirmationFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkPromptForConfirmationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForConfirmationFlowStrategy.parseConfirmationResponse(input:)();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShortcutsLinkPromptForConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t *specialized ShortcutsLinkPromptForConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a14[11] = a17;
  a14[12] = a20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a14 + 8);
  (*(*(a17 - 8) + 32))(boxed_opaque_existential_1, a7, a17);
  a14[17] = a15;
  a14[18] = a18;
  v23 = __swift_allocate_boxed_opaque_existential_1(a14 + 14);
  (*(*(a15 - 8) + 32))(v23, a9, a15);
  a14[22] = a16;
  a14[23] = a19;
  v24 = __swift_allocate_boxed_opaque_existential_1(a14 + 19);
  (*(*(a16 - 8) + 32))(v24, a10, a16);
  a14[2] = a1;
  a14[3] = a2;
  a14[4] = a3;
  a14[5] = a4;
  a14[6] = a5;
  a14[7] = a6;
  a14[13] = a8;
  outlined init with take of AceServiceInvokerAsync(a11, (a14 + 24));
  outlined init with take of AceServiceInvokerAsync(a12, (a14 + 29));
  outlined init with take of AceServiceInvokerAsync(a13, (a14 + 34));
  return a14;
}

uint64_t sub_82014()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkPromptForConfirmationFlowStrategy.actionForInput(_:)(a1, v4, v5, v6);
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_29_5()
{
}

uint64_t *OUTLINED_FUNCTION_30_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = *(v21 - 120);
  v24 = *(v21 - 112);
  v25 = *(v21 - 104);
  v26 = *(v21 - 96);
  v27 = *(v21 - 88);

  return specialized ShortcutsLinkPromptForConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:runLinkActionCatWrapperSimple:linkActionPatterns:runLinkActionCatWrapper:enableTCCLabelsProvider:responseFactory:deviceState:serviceInvoker:outputPublisher:)(a1, a2, v23, v24, v25, v26, v20, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t *VoiceCommandsAppPolicyHandler.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_4_19(&one-time initialization token for instance);
  }

  return &static VoiceCommandsAppPolicyHandler.instance;
}

void *one-time initialization function for instance(uint64_t a1)
{
  type metadata accessor for VoiceCommandsAppPolicyHandler();
  OUTLINED_FUNCTION_27_6();
  swift_allocObject();
  result = VoiceCommandsAppPolicyHandler.().init()();
  static VoiceCommandsAppPolicyHandler.instance = result;
  return result;
}

uint64_t static VoiceCommandsAppPolicyHandler.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_4_19(&one-time initialization token for instance);
  }
}

void *VoiceCommandsAppPolicyHandler.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v1[2] = 0;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = _swiftEmptyDictionarySingleton;
  v8 = objc_allocWithZone(DMFApplicationPolicyMonitor);

  v9 = @nonobjc DMFApplicationPolicyMonitor.init(policyChangeHandler:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.().init(), v1);
  v10 = v1[2];
  v1[2] = v9;

  return v1;
}

Swift::Bool __swiftcall VoiceCommandsAppPolicyHandler.isAllowedByScreenTime(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v30 = v7;
    *v6 = 136315138;
    *(v6 + 4) = OUTLINED_FUNCTION_10_13(v7, v8);
    _os_log_impl(&dword_0, v4, v5, "VoiceCommandsAppPolicyHandler isAllowedByScreenTime called for : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0(v7);
    OUTLINED_FUNCTION_15_0(v6);
  }

  v9 = VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:)(countAndFlagsBits, object);
  v11 = v10;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = OUTLINED_FUNCTION_48();
      v16 = OUTLINED_FUNCTION_85();
      v30 = v16;
      *v15 = 136315138;
      *(v15 + 4) = OUTLINED_FUNCTION_10_13(v16, v17);
      _os_log_impl(&dword_0, v12, v13, "VoiceCommandsAppPolicyHandler isAllowedByScreenTime, policy undefined for app. Default to enabled. %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0(v15);
    }

    return 1;
  }

  else
  {
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315394;
      *(v19 + 4) = OUTLINED_FUNCTION_10_13(v20, v21);
      *(v19 + 12) = 2080;
      v22 = DMFPolicy.debugDescription.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v30);

      *(v19 + 14) = v24;
      OUTLINED_FUNCTION_8_14();
      _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0(v20);
      OUTLINED_FUNCTION_11_0();
    }

    return v9 == 0;
  }
}

uint64_t VoiceCommandsAppPolicyHandler.executeWithApps(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DispatchWorkItemFlags.barrier.getter();
  OUTLINED_FUNCTION_21();
  v8 = swift_allocObject();
  swift_weakInit();
  v11 = v8;
  v12 = a1;
  v13 = a2;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in VoiceCommandsAppPolicyHandler.executeWithApps(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    a2(v4 + 32);
    swift_endAccess();
  }

  return result;
}

uint64_t VoiceCommandsAppPolicyHandler.register(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_85();
    *(v7 + 4) = OUTLINED_FUNCTION_13_10(4.8149e-34, v17, v8);
    OUTLINED_FUNCTION_8_14();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_15_0(v17);
    OUTLINED_FUNCTION_11_0();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.register(bundleIdentifier:), v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_216850;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(v15);
}

void closure #1 in VoiceCommandsAppPolicyHandler.register(bundleIdentifier:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (*(*a1 + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.voiceCommands);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136315394;
    if (v7)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v7)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v15);
    _os_log_impl(&dword_0, v9, v10, "VoiceCommandsAppPolicyHandler isRegistered, %s %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if ((v7 & 1) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, a2, a3);
    *a1 = v15;
  }
}

uint64_t VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  VoiceCommandsAppPolicyHandler.register(bundleIdentifier:)(a1, a2);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    v18 = OUTLINED_FUNCTION_85();
    *(v7 + 4) = OUTLINED_FUNCTION_13_10(4.8149e-34, v18, v8);
    OUTLINED_FUNCTION_8_14();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_15_0(v18);
    OUTLINED_FUNCTION_11_0();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 1;
  OUTLINED_FUNCTION_27_6();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;

  VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:), v15);

  swift_beginAccess();
  v16 = *(v14 + 16);

  return v16;
}

void closure #1 in VoiceCommandsAppPolicyHandler.getDMFPolicy(bundleIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized Dictionary.subscript.getter(a3, a4, *a1);
  v7 = v6;
  swift_beginAccess();
  *(a2 + 16) = v5;
  *(a2 + 24) = v7 & 1;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.voiceCommands);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v13 = *(a2 + 24);
    v20[1] = *(a2 + 16);
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9DMFPolicyVSgMd, &_sSo9DMFPolicyVSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "VoiceCommandsAppPolicyHandler getDMFPolicy, %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  swift_beginAccess();
  if (*(a2 + 24) == 1)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "VoiceCommandsAppPolicyHandler checkPolicy, app policy undefined", v19, 2u);
    }
  }
}

uint64_t VoiceCommandsAppPolicyHandler.refreshAllAppsAsync()()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);
  VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in VoiceCommandsAppPolicyHandler.refreshAllAppsAsync(), v0);
  swift_beginAccess();
  VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(*v1);
}

uint64_t closure #1 in VoiceCommandsAppPolicyHandler.refreshAllAppsAsync()(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(*a1 + 16), 0);
  specialized Sequence._copySequenceContents(initializing:)(&v10, v5 + 4, v4, v3);
  v7 = v6;
  v8 = v10;

  outlined consume of Set<String>.Iterator._Variant(v8);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *(a2 + 16) = v5;
}

void VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v5, v6, "VoiceCommandsAppPolicyHandler refreshApps : %ld", v7, 0xCu);
    OUTLINED_FUNCTION_11_0();
  }

  else
  {
  }

  if (*(a1 + 16))
  {
    v8 = *(v1 + 16);
    if (v8)
    {
      v9 = v8;
      isa = Array._bridgeToObjectiveC()().super.isa;
      aBlock[4] = partial apply for closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:);
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [String : NSNumber]?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_4;
      v11 = _Block_copy(aBlock);

      [v9 requestPoliciesForBundleIdentifiers:isa completionHandler:v11];
      _Block_release(v11);

      return;
    }

    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "VoiceCommandsAppPolicyHandler appPolicyMonitor not initialized";
      goto LABEL_13;
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "VoiceCommandsAppPolicyHandler refreshApps, no apps registered";
LABEL_13:
      _os_log_impl(&dword_0, oslog, v12, v14, v13, 2u);
      OUTLINED_FUNCTION_15_0(v13);
    }
  }
}

void closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "VoiceCommandsAppPolicyHandler requestPolicies completion returned", v7, 2u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "VoiceCommandsAppPolicyHandler refreshApps appPolicyMonitor requestPolicies has an error : %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
    }

    return;
  }

  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;

    VoiceCommandsAppPolicyHandler.executeWithApps(_:)(partial apply for closure #1 in closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:), v15);

    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "VoiceCommandsAppPolicyHandler refreshApps complete";
LABEL_16:
      _os_log_impl(&dword_0, oslog, v16, v18, v17, 2u);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "VoiceCommandsAppPolicyHandler refreshApps policies not set";
      goto LABEL_16;
    }
  }
}

uint64_t closure #1 in closure #1 in VoiceCommandsAppPolicyHandler.refreshAppsAsync(bundleIdentifiers:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v38 = v2;
  v39 = v7;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(v2 + 48) + 16 * v10);
      v12 = v11[1];
      v43 = *v11;
      v13 = *(*(v2 + 56) + 8 * v10);
      swift_bridgeObjectRetain_n();
      v40 = v13;
      v42 = static DMFPolicy.from(number:)(v40);
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
        v44 = swift_slowAlloc();
        *v17 = 136315394;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v12, &v44);
        *(v17 + 12) = 2080;
        v18 = 0xEC0000004B4F2E79;
        v19 = 0x63696C6F50464D44;
        switch(v42)
        {
          case 1uLL:
            v18 = 0xEE006E7261772E79;
            break;
          case 2uLL:
            v18 = 0xED00006B73612E79;
            break;
          case 3uLL:
            v19 = 0xD000000000000014;
            v18 = 0x80000000002319C0;
            break;
          case 4uLL:
            v19 = 0xD000000000000011;
            v18 = 0x80000000002319A0;
            break;
          default:
            break;
        }

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v44);

        *(v17 + 14) = v20;
        _os_log_impl(&dword_0, v15, v16, "VoiceCommandsAppPolicyHandler refreshApps, %s to %s", v17, 0x16u);
        swift_arrayDestroy();

        v2 = v38;
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *a1;
      v22 = v44;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v12);
      v25 = *(v22 + 16);
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      v29 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9DMFPolicyVGMd, &_ss17_NativeDictionaryVySSSo9DMFPolicyVGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27))
      {
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v12);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_34;
        }

        v28 = v30;
      }

      if (v29)
      {

        v32 = v44;
        *(v44[7] + 8 * v28) = v42;
      }

      else
      {
        v32 = v44;
        v44[(v28 >> 6) + 8] |= 1 << v28;
        v33 = (v32[6] + 16 * v28);
        *v33 = v43;
        v33[1] = v12;
        *(v32[7] + 8 * v28) = v42;

        v34 = v32[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_33;
        }

        v32[2] = v36;
      }

      v6 &= v6 - 1;
      *a1 = v32;
      v7 = v39;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    JUMPOUT(0x83EACLL);
  }

  while (1)
  {
LABEL_4:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }
}

id static DMFPolicy.from(number:)(void *a1)
{
  result = [a1 integerValue];
  if (result >= 5)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.voiceCommands);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_48();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_0, v5, v6, "DMFPolicy parse unknown number %@, default to OK", v7, 0xCu);
      outlined destroy of NSObject?(v8);
      OUTLINED_FUNCTION_15_0(v8);
      OUTLINED_FUNCTION_15_0(v7);
    }

    return 0;
  }

  return result;
}

uint64_t VoiceCommandsAppPolicyHandler.__deallocating_deinit()
{
  VoiceCommandsAppPolicyHandler.deinit();
  OUTLINED_FUNCTION_27_6();

  return swift_deallocClassInstance();
}

id @nonobjc DMFApplicationPolicyMonitor.init(policyChangeHandler:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed () -> ();
    v6[3] = &block_descriptor_25_0;
    v3 = _Block_copy(v6);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPolicyChangeHandler:v3];
  _Block_release(v3);
  return v4;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo23INIntentSlotDescriptionC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriKitFlow11DisplayHintV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_Sd5valuet_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v6[2] = a1;
  v6[3] = 2 * ((v7 - 32) / 24);
  return v6;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_84584()
{

  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v0);
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_7_10();
  v5 = v2 + 56;
  OUTLINED_FUNCTION_1_22();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    OUTLINED_FUNCTION_3_14(v9);
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_19();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      v13 = (*(v0 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v3)))));
      v14 = v13[1];
      v3 &= v3 - 1;
      *v1 = *v13;
      v1[1] = v14;
      if (v11 == v8)
      {

        v9 = v12;
        goto LABEL_17;
      }

      v1 += 2;

      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_7_10();
  v5 = v2 + 64;
  OUTLINED_FUNCTION_1_22();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    OUTLINED_FUNCTION_3_14(v9);
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_19();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v3)) | (v12 << 6);
      v14 = (*(v0 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v0 + 56) + 8 * v13);
      v3 &= v3 - 1;
      *v1 = *v14;
      v1[1] = v15;
      v1[2] = v16;
      if (v11 == v8)
      {

        v9 = v12;
        goto LABEL_17;
      }

      v1 += 3;

      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_7_10();
  v5 = v2 + 64;
  OUTLINED_FUNCTION_1_22();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    OUTLINED_FUNCTION_3_14(v9);
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_19();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(*(v0 + 48) + 8 * v14);
      v16 = (*(v0 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      *v1 = v15;
      v1[1] = v18;
      v1[2] = v17;
      if (v11 == v8)
      {

        v9 = v12;
        goto LABEL_17;
      }

      v1 += 3;

      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_84958()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_84998()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v0);
}

uint64_t sub_84B18()
{

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v0);
}

uint64_t OUTLINED_FUNCTION_3_14@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_10_13(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, va);
}

unint64_t OUTLINED_FUNCTION_13_10(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, va);
}

void Siri_Nlu_External_UserDialogAct.extractAutoShortcutInvocation(groupIndex:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  __chkstk_darwin(v6);
  v8 = &v76 - v7;
  v9 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0, v0);
  if (!v16)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v48 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v48, static Logger.voiceCommands);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_38_4(v50))
    {
      v51 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v51);
      OUTLINED_FUNCTION_4_20();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_8_15();
    }

    type metadata accessor for AutoShortcutInvocation(0);
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_42();

    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    return;
  }

  v17 = v16;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v97[3])
  {

    outlined destroy of Any?(v97, &_sypSgMd, &_sypSgMR);
LABEL_53:
    type metadata accessor for AutoShortcutInvocation(0);
    OUTLINED_FUNCTION_37_2();
    goto LABEL_54;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:

    goto LABEL_53;
  }

  v18 = v96;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v19 = v97[0];
  if (!v97[0])
  {
LABEL_51:

    goto LABEL_52;
  }

  OUTLINED_FUNCTION_7_11();
  v20 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v20)
  {

    goto LABEL_51;
  }

  v83 = v19;
  v21 = *(v20 + 16);
  if (!v21)
  {

    goto LABEL_51;
  }

  v78 = v17;
  v81 = v18;
  v77 = v8;
  v80 = v4;
  v84 = 0;
  countAndFlagsBits = 0;
  v90 = 0;
  object = 0;
  v82 = 0;
  v87 = 0;
  v92 = 0;
  v95 = 0;
  v23 = v11 + 16;
  v22 = *(v11 + 16);
  OUTLINED_FUNCTION_21_8();
  v79 = v24;
  v26 = v24 + v25;
  v27 = *(v11 + 72);
  v93 = 0x8000000000231AA0;
  v86 = 0x8000000000231A80;
  v88 = IdentifierNamespaceItemId;
  v28 = (v23 - 8);
  v89 = v2;
  v94 = v23;
  do
  {
    v22(v15, v26, v9);
    v29 = UsoIdentifier.groupIndex.getter();
    if ((v29 & 0x100000000) == 0 && v29 == v2)
    {
      v31 = UsoIdentifier.namespace.getter();
      v32 = v30;
      if (v30)
      {
        v33 = v31 == 0xD000000000000018 && v93 == v30;
        if (v33 || (OUTLINED_FUNCTION_20_8(0xD000000000000018, v93, v31) & 1) != 0)
        {

          v92 = UsoIdentifier.value.getter();
          v95 = v34;
          goto LABEL_34;
        }

        v35 = v31 == 0xD000000000000014 && v86 == v32;
        if (v35 || (OUTLINED_FUNCTION_20_8(0xD000000000000014, v86, v31) & 1) != 0)
        {

          v82 = UsoIdentifier.value.getter();
          v87 = v36;
          goto LABEL_34;
        }
      }

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v32)
      {
        if (v37 == v31 && v32 == v38)
        {
        }

        else
        {
          v40 = OUTLINED_FUNCTION_20_8(v37, v38, v31);

          if ((v40 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        UsoIdentifier.value.getter();
        v41 = String.extractActionIdentifier()();
        countAndFlagsBits = v41.value._countAndFlagsBits;
        object = v41.value._object;

        v84 = UsoIdentifier.appBundleId.getter();
        v90 = v42;
      }

      else
      {
      }

LABEL_33:
      v2 = v89;
    }

LABEL_34:
    (*v28)(v15, v9);
    v26 += v27;
    --v21;
  }

  while (v21);

  v43 = v95;
  if (!v95)
  {

    goto LABEL_53;
  }

  v44 = v80;
  v46 = v90;
  v45 = object;
  if (!object)
  {

LABEL_58:

    goto LABEL_52;
  }

  if (!v90)
  {

    goto LABEL_58;
  }

  if (v87)
  {

    v47 = v77;
    UUID.init(uuidString:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    type metadata accessor for UUID();
    v47 = v77;
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  }

  v70 = type metadata accessor for AutoShortcutProvider();
  v71 = swift_allocObject();
  *(v71 + 16) = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  v72 = type metadata accessor for AutoShortcutInvocation(0);
  v73 = (v44 + v72[8]);
  v73[3] = v70;
  v73[4] = &protocol witness table for AutoShortcutProvider;
  *v73 = v71;
  v74 = [objc_opt_self() sharedPreferences];

  v75 = countAndFlagsBits;
  *v44 = v84;
  v44[1] = v46;
  v44[2] = v75;
  v44[3] = v45;
  v44[4] = v92;
  v44[5] = v43;
  outlined init with take of UUID?(v47, v44 + v72[7], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v44 + v72[9]) = v74;
  v62 = v44;
  v63 = 0;
  v64 = 1;
  v65 = v72;
LABEL_54:
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  OUTLINED_FUNCTION_42();
}

void Siri_Nlu_External_UserDialogAct.convertToStarterShortcut()()
{
  OUTLINED_FUNCTION_40_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgSgMd, &_s10Foundation3URLVSgSgMR);
  v2 = OUTLINED_FUNCTION_14(v1);
  __chkstk_darwin(v2);
  v4 = &v51 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7_1();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_50_0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v51 - v21;
  if (!specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0, v0))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_38:
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v34 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v34, static Logger.voiceCommands);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v36))
    {
      v37 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v37);
      OUTLINED_FUNCTION_25(&dword_0, v38, v39, "can't extract UsoTask for starterShortcut");
      OUTLINED_FUNCTION_15_0(v4);
    }

    goto LABEL_30;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v65[3])
  {

    v40 = &_sypSgMd;
    v41 = &_sypSgMR;
    v42 = v65;
LABEL_23:
    outlined destroy of Any?(v42, v40, v41);
    goto LABEL_30;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((OUTLINED_FUNCTION_26_8() & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  v58 = v15;
  v23 = v64;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v24 = v65[0];
  if (!v65[0])
  {
LABEL_26:

    goto LABEL_29;
  }

  v59 = v23;

  v56 = dispatch thunk of UsoEntity_common_VoiceCommand.name.getter();
  v26 = v25;

  v57 = v26;
  if (!v26)
  {

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_11();
  v27 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v27)
  {

    goto LABEL_28;
  }

  v55 = v24;
  v63 = *(v27 + 16);
  if (!v63)
  {
LABEL_17:

LABEL_28:

    goto LABEL_29;
  }

  v51 = v12;
  v52 = v5;
  v53 = v9;
  v54 = v4;
  v28 = 0;
  v29 = v58;
  OUTLINED_FUNCTION_21_8();
  v62 = v27 + v30;
  v60 = 0x800000000022FDA0;
  v61 = v29 + 16;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    (*(v29 + 16))(v19, v62 + *(v29 + 72) * v28, v13);
    v31 = UsoIdentifier.namespace.getter();
    if (!v32)
    {
      goto LABEL_16;
    }

    if (v31 == 0xD000000000000010 && v32 == v60)
    {
      break;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_32;
    }

LABEL_16:
    ++v28;
    (*(v29 + 8))(v19, v13);
    if (v63 == v28)
    {
      goto LABEL_17;
    }
  }

LABEL_32:

  (*(v29 + 32))(v22, v19, v13);
  v43 = UsoIdentifier.value.getter();
  v45 = v44;
  (*(v29 + 8))(v22, v13);
  v47 = v51;
  v46 = v52;
  if (one-time initialization token for semanticToURL != -1)
  {
    swift_once();
  }

  v48 = v54;
  specialized Dictionary.subscript.getter(static TopLevelStarterShortcuts.semanticToURL, v54, v43, v45);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v46);
  v50 = v53;
  if (EnumTagSinglePayload == 1)
  {

    v40 = &_s10Foundation3URLVSgSgMd;
    v41 = &_s10Foundation3URLVSgSgMR;
    v42 = v48;
    goto LABEL_23;
  }

  outlined init with take of UUID?(v48, v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with take of UUID?(v47, v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  type metadata accessor for InstallVoiceShortcutInvocationData(0);
  swift_allocObject();
  InstallVoiceShortcutInvocationData.init(semantic:url:utterance:)(v43, v45, v50, v56, v57);
LABEL_30:
  OUTLINED_FUNCTION_42();
}

uint64_t Siri_Nlu_External_UserDialogAct.convertToVoiceCommandTask()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMd, &_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_50_0();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  type metadata accessor for ShortcutIdentification(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  if (!specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0, v2))
  {
    goto LABEL_8;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v57)
  {

    outlined destroy of Any?(&v56, &_sypSgMd, &_sypSgMR);
LABEL_8:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v21, static Logger.voiceCommands);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_38_4(v23))
    {
      v24 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v24);
      OUTLINED_FUNCTION_4_20();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_8_15();
    }

    goto LABEL_13;
  }

  outlined init with take of Any(&v56, v58);
  OUTLINED_FUNCTION_22_7();
  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if (swift_dynamicCast())
  {
    ShortcutIdentification.init(runTask:)(v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_30_5(v11);
    if (!v19)
    {
      outlined init with take of ShortcutIdentification(v11, v18, type metadata accessor for ShortcutIdentification);
      v36 = v18;
      v37 = a1;
LABEL_22:
      outlined init with take of ShortcutIdentification(v36, v37, type metadata accessor for ShortcutIdentification);
      v42 = type metadata accessor for VoiceCommandTask(0);
      swift_storeEnumTagMultiPayload();
      v30 = a1;
      v31 = 0;
      v32 = 1;
      v33 = v42;
      return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    }

    v20 = v11;
LABEL_19:
    outlined destroy of Any?(v20, &_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMd, &_s18SiriLinkFlowPlugin22ShortcutIdentificationOSgMR);
LABEL_13:
    type metadata accessor for VoiceCommandTask(0);
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  OUTLINED_FUNCTION_22_7();
  v35 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if (OUTLINED_FUNCTION_5_9(v35))
  {
    ShortcutIdentification.init(exeTask:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    OUTLINED_FUNCTION_30_5(v8);
    if (!v19)
    {
      outlined init with take of ShortcutIdentification(v8, v15, type metadata accessor for ShortcutIdentification);
      v36 = v15;
      v37 = a1;
      goto LABEL_22;
    }

    v20 = v8;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_7();
  v38 = type metadata accessor for UsoTask_enable_common_Setting();
  if (OUTLINED_FUNCTION_5_9(v38))
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

    v39 = v56;
    v40 = a1;
    v41 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_22_7();
    v43 = type metadata accessor for UsoTask_disable_common_Setting();
    if (OUTLINED_FUNCTION_5_9(v43))
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

      v39 = v56;
      v40 = a1;
      v41 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7();
      v44 = type metadata accessor for UsoTask_toggle_common_Setting();
      if (!OUTLINED_FUNCTION_5_9(v44))
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v45 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v45, static Logger.voiceCommands);
        OUTLINED_FUNCTION_22_7();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = OUTLINED_FUNCTION_48();
          v49 = swift_slowAlloc();
          v55 = v49;
          *v48 = 136315138;
          __swift_project_boxed_opaque_existential_1(&v56, v57);
          swift_getDynamicType();
          v50 = _typeName(_:qualified:)();
          v52 = v51;
          __swift_destroy_boxed_opaque_existential_1Tm(&v56);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v55);

          *(v48 + 4) = v53;
          _os_log_impl(&dword_0, v46, v47, "unknown task type: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          OUTLINED_FUNCTION_15_0(v49);
          OUTLINED_FUNCTION_8_15();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm(&v56);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        goto LABEL_13;
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.reference.getter();

      v39 = v56;
      v40 = a1;
      v41 = 2;
    }
  }

  VoiceCommandTask.init(mode:reference:)(v41, v39, v40);

  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

void Siri_Nlu_External_UserDialogAct.extractGeneralizedAppShortcutInvocation(groupIndex:provider:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v117 = v3;
  v5 = v4;
  v6 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_50_0();
  v115 = v10 - v11;
  OUTLINED_FUNCTION_25_4();
  v13 = __chkstk_darwin(v12);
  v15 = &v105 - v14;
  __chkstk_darwin(v13);
  v17 = &v105 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v19 = OUTLINED_FUNCTION_14(v18);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_50_0();
  v112 = v20 - v21;
  OUTLINED_FUNCTION_25_4();
  v23 = __chkstk_darwin(v22);
  v25 = &v105 - v24;
  __chkstk_darwin(v23);
  v27 = &v105 - v26;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v28);
  v30 = &v105 - v29;
  v31 = specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(0, v0);
  if (!v31)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_30;
  }

  v32 = v31;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v118[3])
  {
    outlined destroy of Any?(v118, &_sypSgMd, &_sypSgMR);
LABEL_34:
    if (one-time initialization token for voiceCommands == -1)
    {
LABEL_35:
      v54 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v54, static Logger.voiceCommands);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_38_4(v56))
      {
        v57 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v57);
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_8_15();
      }

      goto LABEL_38;
    }

LABEL_91:
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    goto LABEL_35;
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if ((OUTLINED_FUNCTION_26_8() & 1) == 0)
  {
    goto LABEL_34;
  }

  v109 = v32;
  v111 = v25;
  v107 = v2;

  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();
  v116 = v6;
  if (!v118[0])
  {
    v34 = v27;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_7_11();
  v33 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  v34 = v27;
  if (!v33)
  {
LABEL_41:
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v6);
    goto LABEL_47;
  }

  v105 = v15;
  v106 = v5;
  v108 = v30;
  v5 = 0;
  v35 = *(v33 + 16);
  v113 = v8 + 16;
  v114 = v35;
  while (1)
  {
    if (v114 == v5)
    {

      v30 = v108;
      v66 = v108;
      v67 = 1;
      goto LABEL_46;
    }

    if (v5 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_21_8();
    (*(v8 + 16))(v17, v33 + v36 + *(v8 + 72) * v5, v6);
    v37 = UsoIdentifier.namespace.getter();
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v117 & 0x100000000) != 0)
    {
      break;
    }

    if (!v39)
    {
      goto LABEL_24;
    }

    if (v37 == v40 && v39 == v41)
    {
    }

    else
    {
      OUTLINED_FUNCTION_11_8(v40, v41, v40);
      OUTLINED_FUNCTION_29_6();

      if ((v37 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v44 = UsoIdentifier.groupIndex.getter();
    if ((v44 & 0x100000000) == 0 && v44 == v117)
    {
      goto LABEL_45;
    }

LABEL_28:
    v6 = v116;
    (*(v8 + 8))(v17, v116);
    ++v5;
    v34 = v27;
  }

  if (!v39)
  {
LABEL_24:

    goto LABEL_28;
  }

  if (v37 != v40 || v39 != v41)
  {
    OUTLINED_FUNCTION_11_8(v40, v41, v40);
    OUTLINED_FUNCTION_29_6();

    if (v37)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

LABEL_45:

  v34 = v27;
  v30 = v108;
  v6 = v116;
  (*(v8 + 32))(v108, v17, v116);
  v66 = v30;
  v67 = 0;
LABEL_46:
  __swift_storeEnumTagSinglePayload(v66, v67, 1, v6);
  v15 = v105;
  v5 = v106;
LABEL_47:
  v68 = v111;
  outlined init with copy of UsoIdentifier?(v30, v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v6) == 1)
  {

    outlined destroy of Any?(v34, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v69 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v69, static Logger.voiceCommands);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_38_4(v71))
    {
      v72 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v72);
      OUTLINED_FUNCTION_4_20();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_8_15();
    }

    else
    {
    }

    outlined destroy of Any?(v30, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    goto LABEL_39;
  }

  v114 = *(v8 + 32);
  v114(v15, v34, v6);
  v78 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
  static Siri_Nlu_External_UserDialogAct.logVoiceCommandTaskPayload(_:)(v78);

  v79 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

  v108 = v30;
  if (!v79 || (v80 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.appEntity.getter(), , !v80))
  {
    v93 = 1;
LABEL_86:
    __swift_storeEnumTagSinglePayload(v68, v93, 1, v6);
    v94 = UsoIdentifier.appBundleId.getter();
    v117 = v95;
    v96 = UsoIdentifier.value.getter();
    v115 = v97;
    v116 = v96;
    v98 = v112;
    outlined init with copy of UsoIdentifier?(v68, v112);
    if (__swift_getEnumTagSinglePayload(v98, 1, v6) == 1)
    {
      outlined destroy of Any?(v98, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v99 = 0;
      v100 = 0;
    }

    else
    {
      v99 = UsoIdentifier.value.getter();
      v100 = v101;
      (*(v8 + 8))(v98, v6);
    }

    outlined init with copy of DeviceState(v107, v5 + 56);
    v102 = [objc_opt_self() sharedPreferences];

    outlined destroy of Any?(v111, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    (*(v8 + 8))(v15, v6);
    outlined destroy of Any?(v108, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v103 = v117;
    *(v5 + 40) = v94;
    *(v5 + 48) = v103;
    *(v5 + 24) = v99;
    *(v5 + 32) = v100;
    v104 = v115;
    *(v5 + 8) = v116;
    *(v5 + 16) = v104;
    *v5 = v102;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_7_11();
  v81 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v81)
  {
    v93 = 1;
    goto LABEL_86;
  }

  v113 = v8 + 32;
  v105 = v15;
  v106 = v5;
  v82 = 0;
  v5 = *(v81 + 16);
  v83 = v115;
  while (1)
  {
    if (v5 == v82)
    {

      v93 = 1;
      v15 = v105;
      v5 = v106;
      v68 = v111;
      goto LABEL_86;
    }

    if (v82 >= *(v81 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_21_8();
    (*(v8 + 16))(v83, v81 + v84 + *(v8 + 72) * v82, v6);
    v85 = UsoIdentifier.namespace.getter();
    v87 = v86;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v117 & 0x100000000) != 0)
    {
      if (!v87)
      {
LABEL_73:

        v83 = v115;
        goto LABEL_77;
      }

      if (v85 == v88 && v87 == v89)
      {

        v83 = v115;
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_11_8(v88, v89, v88);
      OUTLINED_FUNCTION_29_6();

      v83 = v115;
      if (v85)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (!v87)
      {
        goto LABEL_73;
      }

      if (v85 == v88 && v87 == v89)
      {

        v83 = v115;
      }

      else
      {
        OUTLINED_FUNCTION_11_8(v88, v89, v88);
        OUTLINED_FUNCTION_29_6();

        v83 = v115;
        if ((v85 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v92 = UsoIdentifier.groupIndex.getter();
      if ((v92 & 0x100000000) == 0 && v92 == v117)
      {
LABEL_83:

LABEL_85:
        v68 = v111;
        v6 = v116;
        v114(v111, v83, v116);
        v93 = 0;
        v15 = v105;
        v5 = v106;
        goto LABEL_86;
      }
    }

LABEL_77:
    v6 = v116;
    (*(v8 + 8))(v83, v116);
    ++v82;
  }

  __break(1u);
LABEL_93:
  OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
LABEL_30:
  v45 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v45, static Logger.voiceCommands);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_38_4(v47))
  {
    v48 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_18_11(v48);
    OUTLINED_FUNCTION_4_20();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_8_15();
  }

LABEL_38:
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
LABEL_39:
  OUTLINED_FUNCTION_42();
}

uint64_t ShortcutIdentification.init(runTask:)@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ShortcutIdentification(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v19)
  {
    v8 = dispatch thunk of UsoEntity_common_VoiceCommand.name.getter();
    v10 = v9;

    if (v10)
    {
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {

        *v7 = v8;
        v7[1] = v10;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_11();
        outlined init with take of ShortcutIdentification(v7, a2, v12);
        v13 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v13, 1, v3);
      }
    }
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_52();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "reference-name NOT found in run VoiceCommand task", v17, 2u);
    OUTLINED_FUNCTION_15_0(v17);
  }

  v13 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v3);
}

void ShortcutIdentification.init(exeTask:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ShortcutIdentification(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v62 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = OUTLINED_FUNCTION_14(v8);
  __chkstk_darwin(v9);
  v66 = &v55 - v10;
  v65 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_1();
  v61 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v60 = v14 - v13;
  v15 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7_1();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_50_0();
  v64 = (v19 - v20);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  v67 = v1;
  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();
  v24 = v72;
  if (!v72)
  {
LABEL_23:
    v25 = static ShortcutIdentification.extractShortcutId(identifiers:)(v24);
    v26 = v40;

    v42 = v65;
    v41 = v66;
    if (v26)
    {

      UUID.init(uuidString:)();

      OUTLINED_FUNCTION_30_5(v41);
      if (!v33)
      {

        v50 = v60;
        v51 = *(v61 + 32);
        v51(v60, v41, v42);
        v52 = v62;
        v51(v62, v50, v42);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_9_11();
        outlined init with take of ShortcutIdentification(v52, v3, v53);
        v54 = 0;
        goto LABEL_37;
      }

      outlined destroy of Any?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_11();
  v25 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v25)
  {
    v24 = 0;
    goto LABEL_23;
  }

  v56 = v4;
  v57 = v3;
  v26 = 0;
  v71 = *(v25 + 16);
  v69 = IdentifierNamespaceSemanticValue;
  v70 = v17 + 16;
  v59 = (v17 + 32);
  v68 = (v17 + 8);
  v63 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v71 == v26)
    {

      v4 = v56;
      v3 = v57;
      v24 = v63;
      goto LABEL_23;
    }

    if (v26 >= *(v25 + 16))
    {
      break;
    }

    v27 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v28 = *(v17 + 72);
    v4 = v15;
    (*(v17 + 16))(v23, v25 + v27 + v28 * v26, v15);
    v29 = UsoIdentifier.namespace.getter();
    v3 = v30;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v3)
    {

      goto LABEL_14;
    }

    v33 = v29 == v31 && v3 == v32;
    if (v33)
    {

      goto LABEL_16;
    }

    v34 = OUTLINED_FUNCTION_20_8(v29, v3, v31);

    if (v34)
    {
LABEL_16:
      v58 = *v59;
      v58(v64, v23, v4);
      v35 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1);
        v35 = v72;
      }

      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      v3 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
        v35 = v72;
      }

      ++v26;
      *(v35 + 16) = v3;
      v63 = v35;
      v39 = v35 + v27 + v38 * v28;
      v15 = v4;
      v58(v39, v64, v4);
    }

    else
    {
LABEL_14:
      v15 = v4;
      (*v68)(v23, v4);
      ++v26;
    }
  }

  __break(1u);
LABEL_39:
  OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
LABEL_28:
  v43 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v43, static Logger.voiceCommands);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_48();
    v47 = swift_slowAlloc();
    v72 = v47;
    *v46 = 136315138;
    if (v26)
    {
      v48 = v25;
    }

    else
    {
      v48 = 63;
    }

    if (!v26)
    {
      v26 = 0xE100000000000000;
    }

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v26, &v72);

    *(v46 + 4) = v49;
    _os_log_impl(&dword_0, v44, v45, "UUID NOT found in execute VoiceCommand task; idString=%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    OUTLINED_FUNCTION_15_0(v47);
    OUTLINED_FUNCTION_15_0(v46);
  }

  else
  {
  }

  v54 = 1;
LABEL_37:
  __swift_storeEnumTagSinglePayload(v3, v54, 1, v4);
  OUTLINED_FUNCTION_42();
}

uint64_t VoiceCommandTask.init(mode:reference:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VoiceCommandTask(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = static VoiceCommandTask.extractAssociatedAppId(reference:)(a2);
  v13 = v12;

  if (v13)
  {
    *v10 = a1;
    *(v10 + 8) = v11;
    *(v10 + 16) = v13;
    swift_storeEnumTagMultiPayload();
    outlined init with take of ShortcutIdentification(v10, a3, type metadata accessor for VoiceCommandTask);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {
    OUTLINED_FUNCTION_37_2();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
  }
}

Swift::String_optional __swiftcall String.extractActionIdentifier()()
{
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v0);

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v1 = StringProtocol.components<A>(separatedBy:)();

  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = v2;
  v5 = v3;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

void static Siri_Nlu_External_UserDialogAct.logVoiceCommandTaskPayload(_:)(uint64_t a1)
{
  if (a1)
  {

    if (!dispatch thunk of UsoEntity_common_VoiceCommandPayload.appEntity.getter())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.voiceCommands);
      v2 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v2, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v2, v14, "logVoiceCommandTaskPayload - no UsoEntity_common_VoiceCommandPayload appEntity", v15, 2u);
      }

      goto LABEL_26;
    }

    if (dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.voiceCommands);

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v2, v3))
      {

        goto LABEL_25;
      }

      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136315138;
      type metadata accessor for UsoIdentifier();
      v6 = Array.description.getter();
      v8 = v7;

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v20);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_0, v2, v3, "logVoiceCommandTaskPayload - usoIdentifiers=%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.voiceCommands);
      v2 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v2, v17))
      {
        goto LABEL_25;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v2, v17, "logVoiceCommandTaskPayload - no UsoEntity_common_AppEntity usoIdentifiers for name", v18, 2u);
    }

LABEL_25:

LABEL_26:

    return;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, oslog, v11, "logVoiceCommandTaskPayload - no Uso_VerbTemplate_ReferenceVoiceCommandPayload payload", v12, 2u);
  }
}

uint64_t Siri_Nlu_External_UserDialogAct.getFirstTask()()
{
  v8 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (specialized Array.count.getter(v8))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v8 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v8 + 32);
    }

    v9 = specialized Array.count.getter(v8);

    if (v9 >= 2)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v10 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_38_4(v12))
      {
        v13 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v13);
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_8_15();
      }
    }
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v0 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v2))
    {
      v3 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v3);
      OUTLINED_FUNCTION_25(&dword_0, v4, v5, "No tasks found in UDA");
      OUTLINED_FUNCTION_15_0(0);
    }

    return 0;
  }

  return v6;
}

uint64_t specialized static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(char a1, uint64_t a2)
{
  v3 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter(v3))
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "dialogAct has no task", v13, 2u);
    }

    return 0;
  }

  if (specialized Array.count.getter(v3) > 1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.voiceCommands);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "dialogAct has more than 1 task", v7, 2u);
    }

    if (a1)
    {

      return 0;
    }
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v8 = *(v3 + 32);
  }

  return v8;
}

uint64_t static Siri_Nlu_External_UserDialogAct.extractUsoTask(expectSingleTask:uda:convertUserDialogActToTasks:)(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a2);
  if (!specialized Array.count.getter(v4))
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v11, static Logger.voiceCommands);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v13))
    {
      v14 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v14);
      OUTLINED_FUNCTION_25(&dword_0, v15, v16, "dialogAct has no task");
      OUTLINED_FUNCTION_15_0(0);
    }

    return 0;
  }

  if (specialized Array.count.getter(v4) >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_38_4(v7))
    {
      v8 = OUTLINED_FUNCTION_52();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "dialogAct has more than 1 task", v8, 2u);
      OUTLINED_FUNCTION_15_0(v8);
    }

    if (a1)
    {

      return 0;
    }
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *(v4 + 32);
  }

  return v9;
}

uint64_t static ShortcutIdentification.extractShortcutId(identifiers:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2 >= 2)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v3 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = OUTLINED_FUNCTION_48();
        v7 = swift_slowAlloc();
        v24 = v7;
        *v6 = 136315138;
        type metadata accessor for UsoIdentifier();
        v8 = Array.description.getter();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v24);

        *(v6 + 4) = v10;
        OUTLINED_FUNCTION_4_20();
        _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        OUTLINED_FUNCTION_15_0(v7);
        OUTLINED_FUNCTION_8_15();
      }

      goto LABEL_14;
    }

    if (v2)
    {
LABEL_14:
      v22 = type metadata accessor for UsoIdentifier();
      OUTLINED_FUNCTION_14(v22);
      OUTLINED_FUNCTION_21_8();
      return UsoIdentifier.value.getter();
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v18))
    {
      v19 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v19);
      OUTLINED_FUNCTION_15_0(v1);
    }
  }

  return 0;
}

uint64_t static VoiceCommandTask.extractAssociatedAppId(reference:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v74 - v6;
  v8 = type metadata accessor for UsoIdentifier();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v82 = &v74 - v15;
  __chkstk_darwin(v14);
  v18 = &v74 - v17;
  if (!a1)
  {
LABEL_24:
    v22 = 0;
    v20 = 0;
    goto LABEL_26;
  }

  v81 = v16;
  v19 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v20 = v19;
  if (!v19)
  {
    goto LABEL_25;
  }

  v76 = a1;
  v77 = v7;
  v74 = v5;
  v75 = v12;
  v21 = 0;
  v83 = *(v19 + 16);
  v22 = IdentifierNamespaceShortcutSetting;
  v79 = (v9 + 32);
  v84 = (v9 + 8);
  v85 = v9 + 16;
  v80 = _swiftEmptyArrayStorage;
  v86 = v8;
  while (v83 != v21)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      swift_once();
LABEL_27:
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.voiceCommands);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v87 = v41;
        *v40 = 136315138;
        if (v20)
        {
          v42 = v22;
        }

        else
        {
          v42 = 63;
        }

        if (!v20)
        {
          v20 = 0xE100000000000000;
        }

        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v20, &v87);

        *(v40 + 4) = v43;
        _os_log_impl(&dword_0, v38, v39, "ignoring non-enablement common_Setting; parse identifier value=%s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
      }

      else
      {
      }

      return 0;
    }

    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = *(v9 + 72);
    (*(v9 + 16))(v18, v20 + v23 + v24 * v21, v8);
    v25 = UsoIdentifier.namespace.getter();
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v27)
    {

      goto LABEL_14;
    }

    if (v25 == v28 && v27 == v29)
    {

      goto LABEL_16;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
LABEL_16:
      v78 = *v79;
      v78(v82, v18, v86);
      v32 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1);
        v32 = v87;
      }

      v35 = *(v32 + 2);
      v34 = *(v32 + 3);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1);
        v32 = v87;
      }

      ++v21;
      *(v32 + 2) = v35 + 1;
      v80 = v32;
      v8 = v86;
      v78(v32 + v23 + v35 * v24, v82, v86);
    }

    else
    {
LABEL_14:
      v8 = v86;
      (*v84)(v18, v86);
      ++v21;
    }
  }

  v20 = v80;
  if (!v80)
  {
LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  v36 = v77;
  specialized Collection.first.getter(v80, v77);

  if (__swift_getEnumTagSinglePayload(v36, 1, v8) == 1)
  {
    outlined destroy of Any?(v36, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    goto LABEL_24;
  }

  v22 = UsoIdentifier.value.getter();
  v20 = v46;
  v83 = *v84;
  v83(v36, v8);
  v47 = v22 == 0x74756374726F6873 && v20 == 0xE900000000000073;
  if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_26:
    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_77;
    }

    goto LABEL_27;
  }

  if (!dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter() || (v20 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v20))
  {
LABEL_70:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.voiceCommands);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "associatedApp-ID NOT found", v73, 2u);
    }

    return 0;
  }

  v48 = 0;
  v49 = *(v20 + 16);
  v22 = IdentifierNamespaceItemId;
  v82 = _swiftEmptyArrayStorage;
  v50 = v81;
  while (v49 != v48)
  {
    if (v48 >= *(v20 + 16))
    {
      goto LABEL_76;
    }

    v51 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v52 = *(v9 + 72);
    (*(v9 + 16))(v50, v20 + v51 + v52 * v48, v8);
    v53 = UsoIdentifier.namespace.getter();
    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v55)
    {

LABEL_56:
      v50 = v81;
      v8 = v86;
      v83(v81, v86);
      ++v48;
      continue;
    }

    if (v53 == v56 && v55 == v57)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v60 = *v79;
    v50 = v81;
    (*v79)(v75, v81, v86);
    v61 = v82;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v61;
    v87 = v61;
    v80 = v60;
    if ((v62 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1);
      v50 = v81;
      v63 = v87;
    }

    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1);
      v50 = v81;
      v63 = v87;
    }

    ++v48;
    *(v63 + 2) = v65 + 1;
    v82 = v63;
    v8 = v86;
    v80(&v63[v51 + v65 * v52], v75, v86);
  }

  if (!v82)
  {
    goto LABEL_70;
  }

  v66 = v74;
  specialized Collection.first.getter(v82, v74);

  if (__swift_getEnumTagSinglePayload(v66, 1, v8) == 1)
  {
    outlined destroy of Any?(v66, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    goto LABEL_70;
  }

  v44 = UsoIdentifier.value.getter();
  v68 = v67;
  v83(v66, v8);
  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {

    goto LABEL_70;
  }

  return v44;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of UsoIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ShortcutIdentification(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_15()
{
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL OUTLINED_FUNCTION_17_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return outlined init with copy of Any(v0 - 96, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_6()
{
}

uint64_t AutoShortcutProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  return v0;
}

uint64_t AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:)()
{
  v1 = *(v0[23] + 16);
  v2 = String._bridgeToObjectiveC()();
  v0[24] = v2;
  v3 = String._bridgeToObjectiveC()();
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:);
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo14LNAutoShortcutCGs5Error_pGMd, &_sSccySaySo14LNAutoShortcutCGs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v5);
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNAutoShortcut];
  v0[13] = &block_descriptor_5;
  v0[14] = v4;
  [v1 autoShortcutsForBundleIdentifier:v2 localeIdentifier:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:);
  }

  else
  {
    v5 = AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:);
  }

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 192);

  v2 = OUTLINED_FUNCTION_6_4();

  return v3(v2);
}

uint64_t AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:)(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNAutoShortcut](uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    type metadata accessor for LNAutoShortcut();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
  }
}

uint64_t AutoShortcutProvider.retrieveAction(for:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return OUTLINED_FUNCTION_0_2();
}

{
  swift_willThrow();
  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t AutoShortcutProvider.retrieveAction(for:)()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.retrieveAction(for:);
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8LNActionCs5Error_pGMd, &_sSccySo8LNActionCs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v4);
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v2 retrieveActionForLocalizedPhrase:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.retrieveAction(for:);
  }

  else
  {
    v5 = AutoShortcutProvider.retrieveAction(for:);
  }

  return _swift_task_switch(v5);
}

{
  return (*(v0 + 8))(*(v0 + 144));
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[21] = v5;
  v1[22] = v6;
  v1[19] = v7;
  v1[20] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:));
}

{
  v1 = v0[27];
  v2 = v0[25];
  v3 = *(v0[26] + 16);
  v4 = String._bridgeToObjectiveC()();
  v0[28] = v4;
  v5 = String._bridgeToObjectiveC()();
  v0[29] = v5;
  v6 = String._bridgeToObjectiveC()();
  v0[30] = v6;
  outlined init with copy of UUID?(v2, v1);
  v7 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v7);
  isa = 0;
  if (EnumTagSinglePayload != 1)
  {
    v10 = v0[27];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v7 - 8) + 8))(v10, v7);
  }

  v0[31] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:);
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8LNActionCs5Error_pGMd, &_sSccySo8LNActionCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_20();
  v0[13] = v12;
  v0[14] = v11;
  [v3 retrieveActionForBundleIdentifier:v4 basePhraseTemplate:v5 actionIdentifier:v6 parameterIdentifier:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:);
  }

  else
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:);
  }

  return _swift_task_switch(v5);
}

{
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:)(uint64_t a1)
{
  v2 = v1[31];
  v4 = v1[29];
  v3 = v1[30];
  v5 = v1[28];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)()
{
  v1 = v0[24];
  v2 = *(v0[25] + 16);
  v3 = String._bridgeToObjectiveC()();
  v0[26] = v3;
  v4 = String._bridgeToObjectiveC()();
  v0[27] = v4;
  if (v1)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v0[28] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8LNActionCs5Error_pGMd, &_sSccySo8LNActionCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_20();
  v0[13] = v7;
  v0[14] = v6;
  [v2 retrieveActionForBundleIdentifier:v3 appShortcutIdentifier:v4 parameterIdentifier:v5 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:);
  }

  else
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:);
  }

  return _swift_task_switch(v5);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);

  v3 = OUTLINED_FUNCTION_6_4();

  return v4(v3);
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t AutoShortcutProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AutoShortcutsProviding.autoShortcuts(forBundleIdentifier:localeIdentifier:) in conformance AutoShortcutProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 96) + **(**v4 + 96));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for AutoShortcutsProviding.autoShortcuts(forBundleIdentifier:localeIdentifier:) in conformance AutoShortcutProvider;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for AutoShortcutsProviding.autoShortcuts(forBundleIdentifier:localeIdentifier:) in conformance AutoShortcutProvider()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider(uint64_t a1)
{
  v6 = (*(**v1 + 104) + **(**v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider;

  return v6(a1);
}

uint64_t protocol witness for AutoShortcutsProviding.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:) in conformance AutoShortcutProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(**v7 + 112) + **(**v7 + 112));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for AutoShortcutsProviding.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:) in conformance AutoShortcutProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 120) + **(**v6 + 120));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider;

  return v16(a1, a2, a3, a4, a5, a6);
}

unint64_t type metadata accessor for LNAutoShortcut()
{
  result = lazy cache variable for type metadata for LNAutoShortcut;
  if (!lazy cache variable for type metadata for LNAutoShortcut)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNAutoShortcut);
  }

  return result;
}

uint64_t String.asSpeakableString.getter(uint64_t a1, uint64_t a2)
{

  return SpeakableString.init(print:speak:)();
}

uint64_t ShortcutsUnlockDeviceStrategy.__allocating_init(dialogingTemplates:deviceState:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  outlined init with take of Output(a2, v4 + 24);
  return v4;
}

uint64_t static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[13] = v6;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[17] = v8;
  v1[18] = swift_task_alloc();
  v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[19] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[20] = v10;
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0[10], *(v0[10] + 24));
    OUTLINED_FUNCTION_20_1();
    v6 = dispatch thunk of DeviceState.isHomePod.getter();
    v7 = *v5;
    if (v6)
    {
      v31 = *v5 + 368;
      v33 = *(v7 + 368) + **(v7 + 368);
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v16 = OUTLINED_FUNCTION_14_9(v8, v9, v10, v11, v12, v13, v14, v15, v31, v33);
    }

    else
    {
      v32 = v7 + 216;
      v34 = *(v7 + 216) + **(v7 + 216);
      v23 = swift_task_alloc();
      v0[23] = v23;
      *v23 = v0;
      v16 = OUTLINED_FUNCTION_14_9(v23, v24, v25, v26, v27, v28, v29, v30, v32, v34);
    }

    return v16();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[28] = v17;
    *v17 = v18;
    v17[1] = static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:);
    v19 = v0[10];
    v20 = v0[8];
    v21 = v0[9];

    return static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:)(v20, v21, v19);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10);
  }
}

{
  v1 = OUTLINED_FUNCTION_16_12(*(v0 + 24));
  static DialogPhase.completion.getter();
  v2 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = OUTLINED_FUNCTION_11_9();
  v4(v3);
  OUTLINED_FUNCTION_3_15();
  OutputGenerationManifest.responseViewId.setter();
  v5 = OUTLINED_FUNCTION_20_1();
  v6(v5);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v0 + 200) = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = xmmword_216010;
  *(v7 + 32) = v1;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 216) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_23(v8);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10);
  }
}

{
  v1 = OUTLINED_FUNCTION_16_12(*(v0 + 48));
  static DialogPhase.completion.getter();
  v2 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = OUTLINED_FUNCTION_11_9();
  v4(v3);
  OUTLINED_FUNCTION_3_15();
  OutputGenerationManifest.responseViewId.setter();
  v5 = OUTLINED_FUNCTION_20_1();
  v6(v5);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v0 + 200) = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = xmmword_216010;
  *(v7 + 32) = v1;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 216) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_23(v8);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

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

uint64_t ShortcutsUnlockDeviceStrategy.init(dialogingTemplates:deviceState:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  outlined init with take of Output(a2, v2 + 24);
  return v2;
}

uint64_t ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  OUTLINED_FUNCTION_11_1();
  return _swift_task_switch(v3);
}

uint64_t ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_12_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock();

  return static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:));
}

uint64_t static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:)()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  OUTLINED_FUNCTION_20_1();
  v2 = dispatch thunk of DeviceState.isHomePod.getter();
  v3 = *v1;
  if (v2)
  {
    v11 = (*(v3 + 376) + **(v3 + 376));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 128) = v4;
    *v4 = v5;
    v4[1] = static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:);
    v6 = *(v0 + 112);
    v7 = v11;
  }

  else
  {
    v12 = (*(v3 + 224) + **(v3 + 224));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 144) = v8;
    *v8 = v9;
    v8[1] = static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:);
    v6 = *(v0 + 104);
    v7 = v12;
  }

  return v7(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  (*(v2 + 32))(v1);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6[3] = v8;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_10_14();
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  (*(v2 + 32))(v1);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6[3] = v8;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_10_14();
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t ShortcutsUnlockDeviceStrategy.makeShortcutsUnlockDeviceFlow()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v1 = type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_5_0(v1);
  *(swift_allocObject() + 16) = xmmword_216850;
  v4[3] = type metadata accessor for ShortcutsUnlockDeviceStrategy();
  v4[4] = lazy protocol witness table accessor for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy();
  v4[0] = v0;

  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  v2 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  return v2;
}

uint64_t ShortcutsUnlockDeviceStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ShortcutsUnlockDeviceStrategy.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance ShortcutsUnlockDeviceStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 112) + **(**v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

unint64_t lazy protocol witness table accessor for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy()
{
  result = lazy protocol witness table cache variable for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy;
  if (!lazy protocol witness table cache variable for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy)
  {
    type metadata accessor for ShortcutsUnlockDeviceStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

id OUTLINED_FUNCTION_16_12@<X0>(void *a1@<X8>)
{
  *(v1 + 192) = a1;

  return a1;
}

uint64_t WFChooseFromListPromptFlowStrategy.__allocating_init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  WFChooseFromListPromptFlowStrategy.init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

__n128 WFChooseFromListDisambiguationItem.init(component:item:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u64[1];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u64[0] = v4;
  a3[2].n128_u64[1] = v5;
  a3[3].n128_u64[0] = a2;
  return result;
}

double WFChooseFromListDisambiguationItem.component.getter@<D0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_16_13(a1);

  v2 = v1;

  return result;
}

__n128 WFChooseFromListDisambiguationItem.component.setter(uint64_t a1)
{

  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t WFChooseFromListDisambiguationItem.toDisambiguationItemModel()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 80) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v2);
  *(v1 + 88) = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_5_10(inited, xmmword_216850);
  OUTLINED_FUNCTION_30_6(v1, v2);
  Dictionary.init(dictionaryLiteral:)();
  v3 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
  OUTLINED_FUNCTION_66(v3);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_12_10(v4, v5, v6, v7, v8, v9, 0x800000000022FEE0, v10, v14);

  v11 = OUTLINED_FUNCTION_10_15();

  return v12(v11);
}

uint64_t Array<A>.toDisambiguationItemModels()()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 88) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v2);
  *(v0 + 96) = OUTLINED_FUNCTION_28();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  v0[10] = _swiftEmptyArrayStorage;
  v1 = v0 + 10;
  v2 = v0[11];
  v3 = *(v2 + 16);
  v0[13] = v3;
  if (!v3)
  {
LABEL_11:

    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X2, X16 }
  }

  v4 = 0;
  while (1)
  {
    v0[14] = v4;
    v5 = (v2 + 56 * v4);
    v0[15] = v5[4];
    v0[16] = v5[5];
    v0[17] = v5[6];
    v0[18] = v5[7];
    v6 = v5[8];
    v0[19] = v6;
    v0[20] = v5[9];
    v7 = v5[10];
    v0[21] = v7;

    v6;

    v8 = v7;
    if (v6)
    {
      break;
    }

    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);

    v14 = v0[17];
    v13 = v0[18];
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    v19 = OUTLINED_FUNCTION_5_10(inited, xmmword_216850);
    v19[2].n128_u64[0] = v20;
    v19[2].n128_u64[1] = 0xE500000000000000;
    v19[3].n128_u64[0] = v16;
    v19[3].n128_u64[1] = v15;

    v21 = Dictionary.init(dictionaryLiteral:)();
    v22 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
    OUTLINED_FUNCTION_66(v22);
    OUTLINED_FUNCTION_15_11();
    WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v16, v15, v14, v13, v17, 0xD000000000000043, 0x800000000022FEE0, v21, v35);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v23 = v0[21];
    v24 = v0[19];
    v25 = v1;
    v26 = v0[13];
    v27 = v0[14] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v27 == v26)
    {
      goto LABEL_11;
    }

    v4 = v0[14] + 1;
    v2 = v0[11];
    v1 = v25;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[22] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_7_12(v28);
  OUTLINED_FUNCTION_77();

  return INImage.convertToVisualProperty()(v30);
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
  while (1)
  {
    v2 = v0[17];
    v1 = v0[18];
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    v7 = OUTLINED_FUNCTION_5_10(inited, xmmword_216850);
    v7[2].n128_u64[0] = v8;
    v7[2].n128_u64[1] = 0xE500000000000000;
    v7[3].n128_u64[0] = v4;
    v7[3].n128_u64[1] = v3;

    v9 = Dictionary.init(dictionaryLiteral:)();
    v10 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
    OUTLINED_FUNCTION_66(v10);
    OUTLINED_FUNCTION_15_11();
    WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v4, v3, v2, v1, v5, 0xD000000000000043, 0x800000000022FEE0, v9, v31);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v11 = v0[21];
    v12 = v0[19];
    v13 = v0[13];
    v14 = v0[14] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v14 == v13)
    {

      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_77();

      __asm { BRAA            X2, X16 }
    }

    v15 = v0[14];
    v0[14] = v15 + 1;
    v16 = (v0[11] + 56 * v15);
    v0[15] = v16[11];
    v0[16] = v16[12];
    v0[17] = v16[13];
    v0[18] = v16[14];
    v17 = v16[15];
    v0[19] = v17;
    v0[20] = v16[16];
    v18 = v16[17];
    v0[21] = v18;

    v17;

    v19 = v18;
    if (v17)
    {
      break;
    }

    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[22] = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_7_12(v26);
  OUTLINED_FUNCTION_77();

  return INImage.convertToVisualProperty()(v28);
}

{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 96) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  *(v0 + 104) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v2);
}

{
  *(v1 + 80) = _swiftEmptyArrayStorage;
  v2 = v1 + 80;
  v3 = *(*(v1 + 96) + 16);
  *(v1 + 112) = v3;
  if (!v3)
  {
LABEL_18:

    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_100();

    __asm { BRAA            X2, X16 }
  }

  v75 = v1 + 16;
  v4 = objc_opt_self();
  v5 = 0;
  *(v1 + 120) = v4;
  v74 = "ter";
  v76 = _swiftEmptyArrayStorage;
  *&v6 = 138412290;
  v72 = v6;
  v73 = xmmword_216850;
  v78 = v1 + 80;
  while (1)
  {
    *(v1 + 128) = v5;
    v7 = *(v1 + 120);
    v8 = (*(v1 + 96) + 56 * v5);
    v9 = v8[4];
    v10 = v8[5];
    *(v1 + 136) = v10;
    v11 = v8[6];
    v12 = v8[7];
    *(v1 + 144) = v12;
    v13 = v8[8];
    *(v1 + 152) = v13;
    OUTLINED_FUNCTION_17_26(v8);
    v79 = v13;

    v14 = v0;

    *(v1 + 88) = 0;
    v15 = [v7 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v2 + 8];
    v16 = *(v1 + 88);
    if (!v15)
    {
      v36 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.voiceCommands);

      v38 = v79;

      v39 = v14;
      v0 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v0, v40))
      {
        v41 = OUTLINED_FUNCTION_48();
        v42 = OUTLINED_FUNCTION_23_15();
        *v41 = v72;
        *(v41 + 4) = v39;
        *v42 = v39;
        v43 = v39;
        _os_log_impl(&dword_0, v0, v40, "Could not archive disambiguation data for value: %@", v41, 0xCu);
        outlined destroy of NSObject?(v42);
        OUTLINED_FUNCTION_15_0(v42);
        OUTLINED_FUNCTION_15_0(v41);
      }

      v2 = v78;
      goto LABEL_16;
    }

    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v1 + 176) = v17;
    *(v1 + 184) = v19;
    type metadata accessor for CATSpeakableString();
    static CATSpeakableString.stripTTSHint(print:)(v9, v10, v20, v21, v22, v23, v24, v25, v69, v71, v72, *(&v72 + 1), v73.n128_i64[0], v73.n128_u64[1], v74, v75, v76, v78, v79, v81, v82, v83, v84, v85, v86, v87);
    *(v1 + 192) = v32;
    *(v1 + 200) = v33;
    if (v12)
    {
      static CATSpeakableString.stripTTSHint(print:)(v11, v12, v26, v27, v28, v29, v30, v31, v70, v71, v72, *(&v72 + 1), v73.n128_i64[0], v73.n128_u64[1], v74, v75, v77, v78, v80, v81, v82, v83, v84, v85, v86, v87);
      v11 = v35;
    }

    else
    {
      v34 = 0;
    }

    v2 = v78;
    *(v1 + 208) = v11;
    *(v1 + 216) = v34;
    if (v13)
    {
      break;
    }

    v44 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_63_7(v44);
    v46 = *(v1 + 208);
    v45 = *(v1 + 216);
    v48 = *(v1 + 192);
    v47 = *(v1 + 200);
    v50 = *(v1 + 176);
    v49 = *(v1 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMR);
    inited = swift_initStackObject();
    v52 = OUTLINED_FUNCTION_1_51(inited, v73);
    v52[2].n128_u64[0] = v53;
    v52[2].n128_u64[1] = 0xE500000000000000;
    v52[3].n128_u64[0] = v50;
    v52[3].n128_u64[1] = v49;
    Dictionary.init(dictionaryLiteral:)();
    v54 = OUTLINED_FUNCTION_22_18();
    OUTLINED_FUNCTION_66(v54);
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_2_45(v48, v47, v46, v45, v55, v56, v74 | 0x8000000000000000, v57, v70);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_13_22();
    if (v59)
    {
      OUTLINED_FUNCTION_14_8(v58);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v60 = *(v1 + 168);
    v61 = *(v1 + 152);
    OUTLINED_FUNCTION_73_3();
    v0 = v78;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v76 = *(v1 + 80);
LABEL_16:
    OUTLINED_FUNCTION_12_25();
    if (v62)
    {
      goto LABEL_18;
    }
  }

  v65 = swift_task_alloc();
  *(v1 + 224) = v65;
  *v65 = v1;
  OUTLINED_FUNCTION_3_39(v65);
  OUTLINED_FUNCTION_100();

  return INImage.convertToVisualProperty()(v66);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v0);
}

{
  v73 = xmmword_216850;
  OUTLINED_FUNCTION_14_24();
  *&v5 = 138412290;
  v74 = v5;
  v70 = "ter";
  while (1)
  {
    v6 = *(v0 + 208);
    v77 = *(v0 + 216);
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    inited = swift_initStackObject();
    *(inited + 16) = v73;
    *(inited + 32) = v2;
    *(inited + 40) = v1;
    *(inited + 48) = v8;
    *(inited + 56) = v7;
    Dictionary.init(dictionaryLiteral:)();
    v10 = OUTLINED_FUNCTION_22_18();
    OUTLINED_FUNCTION_66(v10);
    OUTLINED_FUNCTION_18_25();
    v11 = OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_2_45(v11, v12, v6, v77, v13, v14, v15, v16, v67);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_13_22();
    if (v18)
    {
      OUTLINED_FUNCTION_14_8(v17);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v19 = *(v0 + 168);
    v20 = *(v0 + 152);
    v21 = (v0 + 80);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v71 = *(v0 + 80);
    while (1)
    {
      OUTLINED_FUNCTION_12_25();
      if (v23)
      {

        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_100();

        __asm { BRAA            X2, X16 }
      }

      *(v0 + 128) = v22;
      v24 = *(v0 + 120);
      v25 = (*(v0 + 96) + 56 * v22);
      v26 = v25[4];
      v27 = v25[5];
      *(v0 + 136) = v27;
      v2 = v25[6];
      v28 = v25[7];
      *(v0 + 144) = v28;
      v29 = v25[8];
      *(v0 + 152) = v29;
      OUTLINED_FUNCTION_17_26(v25);
      v78 = v29;

      v30 = v21;

      *(v0 + 88) = 0;
      v1 = [v24 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:v0 + 88];
      v31 = *(v0 + 88);
      if (v1)
      {
        break;
      }

      v32 = v31;
      v33 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v76 = v33;

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.voiceCommands);

      v35 = v78;

      v36 = v30;
      v21 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v37))
      {
        v38 = OUTLINED_FUNCTION_48();
        v39 = OUTLINED_FUNCTION_23_15();
        *v38 = v74;
        *(v38 + 4) = v36;
        *v39 = v36;
        v40 = v36;
        _os_log_impl(&dword_0, v21, v37, "Could not archive disambiguation data for value: %@", v38, 0xCu);
        outlined destroy of NSObject?(v39);
        OUTLINED_FUNCTION_15_0(v39);
        OUTLINED_FUNCTION_15_0(v38);
      }
    }

    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *(v0 + 176) = v41;
    *(v0 + 184) = v43;
    type metadata accessor for CATSpeakableString();
    static CATSpeakableString.stripTTSHint(print:)(v26, v27, v44, v45, v46, v47, v48, v49, v68, v69, v70, v71, v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v78, v80, v81, v82, v83, v84, v85, v86);
    *(v0 + 192) = v56;
    *(v0 + 200) = v57;
    if (v28)
    {
      static CATSpeakableString.stripTTSHint(print:)(v2, v28, v50, v51, v52, v53, v54, v55, v67, v69, v70, v72, v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v79, v80, v81, v82, v83, v84, v85, v86);
      v2 = v59;
    }

    else
    {
      v58 = 0;
    }

    *(v0 + 208) = v2;
    *(v0 + 216) = v58;
    if (v29)
    {
      break;
    }

    v60 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_63_7(v60);
    OUTLINED_FUNCTION_14_24();
  }

  v63 = swift_task_alloc();
  *(v0 + 224) = v63;
  *v63 = v0;
  OUTLINED_FUNCTION_3_39(v63);
  OUTLINED_FUNCTION_100();

  return INImage.convertToVisualProperty()(v64);
}

void *WFChooseFromListPromptFlowStrategy.init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v18 = type metadata accessor for CATOption();
  v19 = OUTLINED_FUNCTION_14(v18);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v10[2] = 6;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a5;
  v10[16] = a6;
  outlined init with copy of DeviceState(a7, (v10 + 8));
  v34 = a7;
  outlined init with copy of DeviceState(a7, v36);
  v20 = one-time initialization token for shared;
  v33 = a1;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_2();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  v23 = type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v23);
  OUTLINED_FUNCTION_19_2();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v25 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_32_8(v25);
  OUTLINED_FUNCTION_19_2();
  v26 = CATWrapper.__allocating_init(options:globals:)();
  v27 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v27);
  OUTLINED_FUNCTION_19_2();
  v28 = CATWrapperSimple.__allocating_init(options:globals:)();
  v29 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_32_8(v29);
  OUTLINED_FUNCTION_19_2();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  v10[13] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v36, v21, v22, v24, a8, a9, v26, v28, v30);
  type metadata accessor for WorkflowSnippetProvider();
  v31 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(v34);

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v10[14] = v31;
  type metadata accessor for WorkflowNLContextProvider();
  v10[15] = swift_allocObject();
  return v10;
}

uint64_t WFChooseFromListPromptFlowStrategy.paginationStyle()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  if (DeviceState.isVox.getter())
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
      OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#WFChooseFromListPromptFlowStrategy paginationStyle() return pagination with size = 6");
      OUTLINED_FUNCTION_15_0(v4);
    }

    return static PaginationStyle.pageSize(_:)();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      OUTLINED_FUNCTION_29_7(&dword_0, v12, v13, "#WFChooseFromListPromptFlowStrategy paginationStyle() return no pagniation");
      OUTLINED_FUNCTION_15_0(v11);
    }

    return static PaginationStyle.noPagination()();
  }
}

uint64_t WFChooseFromListPromptFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v56 = v9 - v8;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v59 = v11;
  v60 = v10;
  v12 = __chkstk_darwin(v10);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v52 - v14;
  v15 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.voiceCommands);
  (*(v17 + 16))(v21, a1, v15);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v55 = a2;
    v53 = v27;
    v61 = v27;
    *v26 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v6;
    v30 = v4;
    v32 = v31;
    (*(v17 + 8))(v21, v15);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v32, &v61);
    v4 = v30;
    v6 = v29;

    *(v26 + 4) = v33;
    _os_log_impl(&dword_0, v23, v24, "#WFChooseFromListPromptFlowStrategy actionForInput: %s", v26, 0xCu);
    v34 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    OUTLINED_FUNCTION_15_0(v34);
    OUTLINED_FUNCTION_15_0(v26);
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  v35 = v58;
  Input.parse.getter();
  v36 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v35);
  v37 = *(v59 + 8);
  v38 = OUTLINED_FUNCTION_62();
  v37(v38);
  switch(v36)
  {
    case 2:

      return static ActionForInput.ignore()();
    case 3:
      goto LABEL_8;
    default:
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        return static ActionForInput.ignore()();
      }

LABEL_8:
      v40 = v57;
      Input.parse.getter();
      v41 = OUTLINED_FUNCTION_62();
      v43 = v42(v41);
      if (v43 == enum case for Parse.NLv3IntentOnly(_:))
      {
        goto LABEL_9;
      }

      if (v43 == enum case for Parse.directInvocation(_:))
      {
        v45 = OUTLINED_FUNCTION_62();
        v46(v45);
        v47 = v56;
        (*(v6 + 32))(v56, v40, v4);
        if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000043 && 0x800000000022FEE0 == v48)
        {
        }

        else
        {
          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v50 & 1) == 0)
          {
            static ActionForInput.ignore()();
            return (*(v6 + 8))(v47, v4);
          }
        }

        static ActionForInput.handle()();
        return (*(v6 + 8))(v47, v4);
      }

      if (v43 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
      {
LABEL_9:
        static ActionForInput.handle()();
      }

      else
      {
        static ActionForInput.ignore()();
      }

      v51 = OUTLINED_FUNCTION_62();
      return (v37)(v51);
  }
}

uint64_t WFChooseFromListPromptFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = type metadata accessor for Parse();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMR);
  OUTLINED_FUNCTION_14(v7);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for Input();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

uint64_t WFChooseFromListPromptFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v24 = v20[13];
  v23 = v20[14];
  v25 = v20[12];
  v26 = v20[4];
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  (*(v24 + 16))(v23, v26, v25);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v20[13];
  v31 = v20[14];
  v33 = v20[12];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a9 = v35;
    *v34 = 136315138;
    v36 = Input.description.getter();
    v38 = v37;
    (*(v32 + 8))(v31, v33);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &a9);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v28, v29, "#WFChooseFromListPromptFlowStrategy parseDisambiguationResponse with input: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_15_0(v35);
    OUTLINED_FUNCTION_15_0(v34);
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  v40 = v20[11];
  v42 = v20[8];
  v41 = v20[9];
  Input.parse.getter();
  WFChooseFromListPromptFlowStrategy.getVoiceCommandPagination(parse:)(v41);
  v43 = *(v42 + 8);
  v44 = OUTLINED_FUNCTION_62();
  v43(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v45);
  v47 = v20[11];
  if (EnumTagSinglePayload == 1 && (v49 = v20[9], v48 = v20[10], v50 = v20[7], outlined destroy of DisambiguationResult<[WFChooseFromListDisambiguationItem]>?(v20[11]), Input.parse.getter(), WFChooseFromListPromptFlowStrategy.getConfirmationForPagination(parse:)(v49), (v43)(v49, v50), v51 = __swift_getEnumTagSinglePayload(v48, 1, v45), v47 = v20[10], v51 == 1))
  {
    v52 = v20[4];
    outlined destroy of DisambiguationResult<[WFChooseFromListDisambiguationItem]>?(v20[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMR);
    v53 = PaginatedItemContainer.items.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA016WFChooseFromListG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA016WFChooseFromListG4ItemVGMR);
    swift_allocObject();
    v54 = specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v53, 0, &outlined read-only object #0 of specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:));
    v20[2] = (*(*v54 + 128))(v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
    static DisambiguationResult.chosenItem(_:)();
  }

  else
  {
    (*(*(v45 - 8) + 32))(v20[3], v47, v45);
  }

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
}

uint64_t WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[11] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for DialogPhase();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[13] = v6;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for NLContextUpdate();
  v1[19] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

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
    _os_log_impl(&dword_0, v2, v3, "#WFChooseFromListPromptFlowStrategy make prompt for disambiguation item", v4, 2u);
    OUTLINED_FUNCTION_15_0(v4);
  }

  v5 = v0[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMR);
  v6 = PaginatedItemContainer.items.getter();
  v0[22] = v6;
  (*(**(v5 + 120) + 240))();
  v7 = *(v5 + 24);
  v8 = *(v5 + 128);
  v11 = (*(**(v5 + 104) + 224) + **(**(v5 + 104) + 224));
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);

  return v11(v7, v6, v8);
}

{
  v1 = v0[25];
  v2 = v0[20];
  v18 = v0[19];
  v19 = v0[21];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v17 = v0[11];
  v20 = v0[9];
  static DialogPhase.clarification.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v4, v3, v6);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v5 + 8))(v3, v6);
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(v2 + 16))(v17, v19, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  OutputGenerationManifest.nlContextUpdate.setter();
  v8 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v8);
  v9 = ResponseFactory.init()();
  v0[5] = v8;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[26] = v10;
  *v10 = v11;
  v10[1] = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);
  v12 = v0[25];
  v13 = v0[22];
  v14 = v0[18];
  v15 = v0[7];

  return static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)(v15, v20 + 64, v12, v14, v13, (v0 + 2));
}

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
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 192) = v1;

  if (v1)
  {

    v9 = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  else
  {
    *(v5 + 200) = a1;
    v9 = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  return _swift_task_switch(v9);
}

uint64_t WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v14 = *(v12 + 160);
  v13 = *(v12 + 168);
  v16 = *(v12 + 144);
  v15 = *(v12 + 152);
  v17 = *(v12 + 128);
  v18 = *(v12 + 136);

  (*(v18 + 8))(v16, v17);
  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v7);
}

uint64_t static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_42_3(*(v14 + 64));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v15 = *(v14 + 72);
    OUTLINED_FUNCTION_42_3(*(v14 + 96));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v14 + 152) = v16;
    *(v16 + 16) = xmmword_216010;
    *(v16 + 32) = v15;
    v17 = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 160) = v21;
    *v21 = v22;
    v21[1] = static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:);
    v23 = *(v14 + 80);
    v24 = *(v14 + 56);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v24, v16, v23, v12, v13, v18, v19, v20, a9, a10, a11, a12);
  }

  else
  {
    *(v14 + 104) = DialogExecutionResult.firstDialogFullPrint()();
    v25 = swift_task_alloc();
    *(v14 + 120) = v25;
    *v25 = v14;
    v25[1] = static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:);

    return Array<A>.toDisambiguationItemModels()();
  }
}

{
  v15 = *(v14 + 128);
  v27 = *(v14 + 104);
  v16 = *(v14 + 72);
  OUTLINED_FUNCTION_42_3(*(v14 + 96));
  *(v14 + 40) = type metadata accessor for WorkflowDataModels(0);
  *(v14 + 48) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, type metadata accessor for WorkflowDataModels, &protocol conformance descriptor for WorkflowDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 16));
  *boxed_opaque_existential_1 = v27;
  boxed_opaque_existential_1[2] = v15;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v14 + 136) = v18;
  *(v18 + 16) = xmmword_216010;
  *(v18 + 32) = v16;
  v19 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v14 + 144) = v22;
  *v22 = v23;
  v22[1] = static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:);
  v24 = *(v14 + 80);
  v25 = *(v14 + 56);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v25, v14 + 16, v18, v24, v12, v13, v20, v21, a9, a10, a11, a12);
}

uint64_t static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

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
  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t WFChooseFromListPromptFlowStrategy.getVoiceCommandPagination(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13, a1, v9);
  v16 = OUTLINED_FUNCTION_26_9();
  v18 = v17(v16);
  if (v18 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v19 = OUTLINED_FUNCTION_26_9();
    v20(v19);
LABEL_5:
    (*(v4 + 32))(v8, v15, v2);
    WFChooseFromListPromptFlowStrategy.getPaginationFromNLIntent(intent:)(v8);
    return (*(v4 + 8))(v8, v2);
  }

  if (v18 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v21 = OUTLINED_FUNCTION_26_9();
    v22(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = OUTLINED_FUNCTION_26_9();
  return v29(v28);
}

uint64_t WFChooseFromListPromptFlowStrategy.getPaginationFromNLIntent(intent:)(uint64_t a1)
{
  v2 = type metadata accessor for PaginationRequest();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for VoiceCommandsNLIntent(0);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for NLIntent();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  if (one-time initialization token for voiceCommandPaginationNode != -1)
  {
    swift_once();
  }

  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v18 - 2 >= 2)
  {
    if (v18)
    {
      static PaginationRequest.previousPage()();
    }

    else
    {
      static PaginationRequest.nextPage()();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
    static DisambiguationResult.paginate(_:)();
    (*(v4 + 8))(v8, v2);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  outlined destroy of VoiceCommandsNLIntent(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
  v15 = OUTLINED_FUNCTION_27_7();
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
}

uint64_t WFChooseFromListPromptFlowStrategy.getConfirmationForPagination(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for PaginationRequest();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  if (static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(a1) == 1)
  {
    static PaginationRequest.nextPage()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
    static DisambiguationResult.paginate(_:)();
    (*(v4 + 8))(v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
    v14 = OUTLINED_FUNCTION_27_7();
    return __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
    OUTLINED_FUNCTION_27_7();
    OUTLINED_FUNCTION_37_2();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t WFChooseFromListPromptFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return v0;
}

uint64_t WFChooseFromListPromptFlowStrategy.__deallocating_deinit()
{
  WFChooseFromListPromptFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WFChooseFromListPromptFlowStrategy();
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WFChooseFromListPromptFlowStrategy();
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse() in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

void *specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(uint64_t a1, uint64_t a2)
{
  return specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(a1, a2, &outlined read-only object #0 of specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:));
}

{
  return specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(a1, a2, &outlined read-only object #0 of specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:));
}

void *specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[2] = a1;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
  }

  v3[3] = v4;
  return v3;
}

uint64_t outlined destroy of DisambiguationResult<[WFChooseFromListDisambiguationItem]>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for WFChooseFromListDisambiguationItem(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for WFChooseFromListDisambiguationItem(uint64_t result, int a2, int a3)
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

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v13, v12, v11, v10, v9, 0xD000000000000043, a7, v14, a9);
}

double OUTLINED_FUNCTION_16_13@<D0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;

  return result;
}

void OUTLINED_FUNCTION_29_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

double OUTLINED_FUNCTION_30_6@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[4] = a2;
  a1[5] = 0xE500000000000000;
  a1[6] = v3;
  a1[7] = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t Array<A>.isAudioStarting.getter(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 audioStartingProtocol];
  v13 = v3;
  v12 = &v13;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, a1);
  v5 = v4;

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v2 audioRecordingProtocol];
    v13 = v7;
    __chkstk_darwin(v7);
    v10[2] = &v13;
    specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v10, a1);
    v6 = v8;
  }

  return v6 & 1;
}

uint64_t LNActionPresentationStyle.asSiriLinkFlowProvisionalActionPresentationStyle()(unint64_t a1)
{
  if (a1 < 3)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void __swiftcall LNAction.asSiriLinkFlowProvisionalLinkAction()(SiriLinkFlowProvisionalLinkAction_optional *__return_ptr retstr)
{
  v2 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkAction) init];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v4, v6, v2, &selRef_setIdentifier_);
  v7 = [v1 presentationStyle];
  if (v7 < 3)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 0;
  }

  [v2 setPresentationStyle:v8];
  v9 = [v1 parameters];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNProperty, LNProperty_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = specialized Array.count.getter(v10);
  if (!v11)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_42();
    return;
  }

  v12 = v11;
  if (v11 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      v15 = v14;
      v16 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionParameter) init];
      if (v16)
      {
        v17 = v16;
        v18 = [v15 identifier];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v19, v21, v17, &selRef_setName_);
        [v2 addParameters:v17];
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

void _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionCompletionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = [objc_allocWithZone(SiriLinkFlowProvisionalSiriLinkFlowClientEvent) init];
  if (v17)
  {
    v61 = v17;
    v18 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v18)
    {
      v58 = v5;
      v60 = v18;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo023SiriLinkFlowProvisionalB16ActionCompletionCmMd, &_sSo023SiriLinkFlowProvisionalB16ActionCompletionCmMR);
      v57 = String.init<A>(describing:)();
      v59 = v19;
      SiriEnvironment.flowTask.getter();
      v20 = dispatch thunk of FlowTaskProvider.id.getter();
      v22 = v21;

      if (v22)
      {
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v16, v14);
        if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
        {
          outlined destroy of UUID?(v14);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logger.voiceCommands);
          v24 = v59;

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v27 = 136315394;
            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &ObjectType);

            *(v27 + 4) = v28;
            *(v27 + 12) = 2080;
            v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v24, &ObjectType);

            *(v27 + 14) = v29;
            _os_log_impl(&dword_0, v25, v26, "#LINK SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v27, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {

          v40 = v58;
          (*(v58 + 32))(v10, v14, v4);
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
          (*(v40 + 16))(v8, v10, v4);
          v43 = SISchemaUUID.__allocating_init(nsuuid:)(v8, v41, v42);
          v44 = v60;
          [v60 setTaskId:v43];

          v45 = static ProvisionalInstrumentationUtils.createFlowId(siriEnvironment:)(a2);
          [v44 setFlowId:v45];

          SiriEnvironment.currentRequest.getter();
          CurrentRequest.resultCandidateId.getter();
          v47 = v46;

          if (v47)
          {
            v48 = String._bridgeToObjectiveC()();
          }

          else
          {
            v48 = 0;
          }

          v49 = v59;
          [v44 setResultCandidateId:v48];

          [v61 setEventMetadata:v44];
          [v61 setLinkActionCompletion:a1];
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          __swift_project_value_buffer(v50, static Logger.voiceCommands);

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            ObjectType = v54;
            *v53 = 136315138;
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v49, &ObjectType);

            *(v53 + 4) = v55;
            _os_log_impl(&dword_0, v51, v52, "#LINK Provisional SELF emitting %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v54);
            v44 = v60;
          }

          else
          {
          }

          v56 = [objc_opt_self() sharedStream];
          [v56 emitMessage:v61];

          swift_unknownObjectRelease();
          (*(v58 + 8))(v10, v4);
        }

        outlined destroy of UUID?(v16);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.voiceCommands);
        v32 = v59;

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        v35 = os_log_type_enabled(v33, v34);
        v36 = v60;
        if (v35)
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          ObjectType = v38;
          *v37 = 136315138;
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v32, &ObjectType);

          *(v37 + 4) = v39;
          _os_log_impl(&dword_0, v33, v34, "#LINK SELF Log, current taskId is nil, cannot emit %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
        }

        else
        {
        }
      }
    }

    else
    {
      v30 = v61;
    }
  }
}

void _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionConversionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_50_0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_50_0();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v21 = [objc_allocWithZone(SiriLinkFlowProvisionalSiriLinkFlowClientEvent) init];
  if (!v21)
  {
LABEL_32:
    OUTLINED_FUNCTION_42();
    return;
  }

  v75 = v21;
  v22 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
  if (v22)
  {
    v72 = v6;
    v74 = v22;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo023SiriLinkFlowProvisionalB16ActionConversionCmMd, &_sSo023SiriLinkFlowProvisionalB16ActionConversionCmMR);
    v71 = String.init<A>(describing:)();
    v73 = v23;
    SiriEnvironment.flowTask.getter();
    v24 = dispatch thunk of FlowTaskProvider.id.getter();
    v26 = v25;

    if (v26)
    {
      UUID.init(uuidString:)();
      outlined init with copy of UUID?(v20, v17);
      if (__swift_getEnumTagSinglePayload(v17, 1, v4) == 1)
      {
        outlined destroy of UUID?(v17);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.voiceCommands);
        v28 = v73;

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          ObjectType = v32;
          *v31 = 136315394;
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &ObjectType);

          *(v31 + 4) = v33;
          *(v31 + 12) = 2080;
          v34 = OUTLINED_FUNCTION_5_11();
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v28, v35);

          *(v31 + 14) = v36;
          _os_log_impl(&dword_0, v29, v30, "#LINK SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v31, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0(v32);
          OUTLINED_FUNCTION_15_0(v31);
        }

        else
        {
        }
      }

      else
      {

        v50 = v72;
        (*(v72 + 32))(v13, v17, v4);
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
        (*(v50 + 16))(v10, v13, v4);
        v53 = SISchemaUUID.__allocating_init(nsuuid:)(v10, v51, v52);
        v54 = v74;
        [v74 setTaskId:v53];

        v55 = static ProvisionalInstrumentationUtils.createFlowId(siriEnvironment:)(a2);
        [v54 setFlowId:v55];

        SiriEnvironment.currentRequest.getter();
        CurrentRequest.resultCandidateId.getter();
        v57 = v56;

        if (v57)
        {
          v58 = String._bridgeToObjectiveC()();
        }

        else
        {
          v58 = 0;
        }

        [v54 setResultCandidateId:v58];

        [v75 setEventMetadata:v54];
        objc_opt_self();
        v59 = swift_dynamicCastObjCClass();
        v60 = v73;
        if (v59)
        {
          [v75 setLinkActionCompletion:v59];
        }

        else
        {
          [v75 setLinkActionConversion:a1];
        }

        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v61 = type metadata accessor for Logger();
        __swift_project_value_buffer(v61, static Logger.voiceCommands);

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          ObjectType = v65;
          *v64 = 136315138;
          v66 = OUTLINED_FUNCTION_5_11();
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v60, v67);

          *(v64 + 4) = v68;
          _os_log_impl(&dword_0, v62, v63, "#LINK Provisional SELF emitting %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          v69 = v65;
          v54 = v74;
          OUTLINED_FUNCTION_15_0(v69);
          OUTLINED_FUNCTION_15_0(v64);
        }

        else
        {
        }

        v70 = [objc_opt_self() sharedStream];
        [v70 emitMessage:v75];

        swift_unknownObjectRelease();
        (*(v72 + 8))(v13, v4);
      }

      outlined destroy of UUID?(v20);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.voiceCommands);
      v40 = v73;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v74;
      if (v43)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        ObjectType = v46;
        *v45 = 136315138;
        v47 = OUTLINED_FUNCTION_5_11();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v40, v48);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_0, v41, v42, "#LINK SELF Log, current taskId is nil, cannot emit %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        OUTLINED_FUNCTION_15_0(v46);
        OUTLINED_FUNCTION_15_0(v45);
      }

      else
      {
      }
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_42();
}

id static ProvisionalInstrumentationUtils.createFlowId(siriEnvironment:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  static ProvisionalInstrumentationUtils.createFlowUUID(siriEnvironment:)(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of UUID?(v3);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#LINK SELF Log, invalid executionRequestId string, cannot derive flowId form it", v17, 2u);
    }

    return 0;
  }

  else
  {
    (*(v5 + 32))(v13, v3, v4);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.voiceCommands);
    v36 = *(v5 + 16);
    v36(v11, v13, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = v22;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v22 = 136315138;
      v33 = v21;
      v23 = UUID.uuidString.getter();
      v35 = v8;
      v25 = v24;
      v26 = *(v5 + 8);
      v26(v11, v4);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v37);
      v8 = v35;

      v28 = v32;
      *(v32 + 1) = v27;
      _os_log_impl(&dword_0, v20, v33, "#LINK SELF Log, created flowId: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    else
    {

      v26 = *(v5 + 8);
      v26(v11, v4);
    }

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
    v36(v8, v13, v4);
    v18 = SISchemaUUID.__allocating_init(nsuuid:)(v8, v29, v30);
    v26(v13, v4);
  }

  return v18;
}

void static ProvisionalInstrumentationUtils.createFlowUUID(siriEnvironment:)(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_50_0();
  v11 = v9 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v58 - v14;
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  SiriEnvironment.currentRequest.getter();
  CurrentRequest.executionRequestId.getter();
  v19 = v18;

  if (v19)
  {
    UUID.init(uuidString:)();

    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      outlined destroy of UUID?(v4);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.voiceCommands);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = a1;
        v24 = swift_slowAlloc();
        *v24 = 0;
        OUTLINED_FUNCTION_6_12(&dword_0, v25, v26, "#LINK SELF Log, invalid executionRequestId string, cannot derive flowId form it");
        v27 = v24;
        a1 = v23;
        OUTLINED_FUNCTION_15_0(v27);
      }

      v28 = a1;
      v29 = 1;
    }

    else
    {
      v61 = *(v7 + 32);
      v61(v17, v4, v5);
      v41 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v43 = [v41 derivedIdentifierForComponent:3 fromSourceIdentifier:isa];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v62 = a1;
      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.voiceCommands);
      (*(v7 + 16))(v11, v15, v5);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v60 = v7 + 32;
        v48 = v47;
        v59 = swift_slowAlloc();
        v63 = v59;
        *v48 = 136315138;
        v58 = UUID.uuidString.getter();
        v50 = v49;
        v51 = *(v7 + 8);
        v51(v11, v5);
        v52 = OUTLINED_FUNCTION_5_11();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v50, v53);

        *(v48 + 4) = v54;
        _os_log_impl(&dword_0, v45, v46, "#LINK SELF Log, created flowId: %s", v48, 0xCu);
        v55 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        OUTLINED_FUNCTION_15_0(v55);
        OUTLINED_FUNCTION_15_0(v48);

        v51(v17, v5);
      }

      else
      {

        v56 = *(v7 + 8);
        v56(v11, v5);
        v56(v17, v5);
      }

      v57 = v62;
      v61(v62, v15, v5);
      v28 = v57;
      v29 = 0;
    }

    __swift_storeEnumTagSinglePayload(v28, v29, 1, v5);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.voiceCommands);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      OUTLINED_FUNCTION_6_12(&dword_0, v34, v35, "#LINK SELF Log, invalid executionRequestId, cannot derive flowId form it");
      OUTLINED_FUNCTION_15_0(v33);
    }

    OUTLINED_FUNCTION_42();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }
}

void static ProvisionalInstrumentationUtils.emitActionCompleteSuccessProvisionalInstrumentation(targetBundle:action:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionCompletion) init];
  if (v7)
  {
    v11 = v7;
    LNAction.asSiriLinkFlowProvisionalLinkAction()(v8);
    v10 = v9;
    [v11 setAction:v9];

    outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.targetBundle.setter(a1, a2, v11);
    [v11 setIsSuccess:1];
    _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionCompletionC_Tt1g5(v11, a4);
  }
}

void static ProvisionalInstrumentationUtils.emitActionCompleteErrorInstrumentation(targetBundle:action:errorDescription:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionCompletion) init];
  if (v11)
  {
    v15 = v11;
    LNAction.asSiriLinkFlowProvisionalLinkAction()(v12);
    v14 = v13;
    [v15 setAction:v13];

    outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.targetBundle.setter(a1, a2, v15);
    [v15 setIsSuccess:0];
    outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.errorDescription.setter(a4, a5, v15);
    _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionCompletionC_Tt1g5(v15, a6);
  }
}

void static ProvisionalInstrumentationUtils.emitActionConversionInstrumentation(isSuccess:siriEnvironment:)(char a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionConversion) init];
  if (v4)
  {
    v5 = v4;
    [v4 setIsSuccess:a1 & 1];
    _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionConversionC_Tt1g5(v5, a2);
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.targetBundle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setTargetBundle:v4];
}

void outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.errorDescription.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setErrorDescription:v4];
}

void OUTLINED_FUNCTION_6_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t static SmartPromptConfirmationUtils.getSimpleConfirmation(parse:options:)(uint64_t a1, unint64_t a2)
{
  v5 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(a1);
  if ((v5 - 1) >= 2)
  {
    v21 = 0;
    if (v5)
    {
      return v21;
    }

    OUTLINED_FUNCTION_8_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_216840;
    v23 = WFSmartPromptButtonIdentifierAllowOnce;
    v24 = WFSmartPromptButtonIdentifierAllowAlways;
    *(inited + 32) = WFSmartPromptButtonIdentifierAllowOnce;
    *(inited + 40) = v24;
    v43 = inited;
    v48 = _swiftEmptyArrayStorage;
    v25 = specialized Array.count.getter(a2);
    v26 = a2 & 0xC000000000000001;
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
    v28 = v23;
    v29 = v24;
    OUTLINED_FUNCTION_12_11();
    while (v25 != v3)
    {
      if (v26)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_55;
        }

        v30 = *(a2 + 8 * v3 + 32);
      }

      v31 = v30;
      if (__OFADD__(v3, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_49;
      }

      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 valueForKey:v32];

      if (v33)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      v46 = v44;
      v47 = v45;
      if (*(&v45 + 1))
      {
        type metadata accessor for WFSmartPromptButtonIdentifier(0);
        if (swift_dynamicCast())
        {
          v25 = v27;
          v27 = v26;
          v26 = v2;
          OUTLINED_FUNCTION_16_14();
          __chkstk_darwin(v34);
          OUTLINED_FUNCTION_6_13();
          v36 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v35, v43);

          if (v36)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            OUTLINED_FUNCTION_9_12();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          OUTLINED_FUNCTION_13_11();
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of String?(&v46, &_sypSgMd, &_sypSgMR);
      }

      ++v3;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v37 = v48;
    if (specialized Array.count.getter(v48) == 1 && specialized Array.count.getter(v37))
    {
      OUTLINED_FUNCTION_17_12();
      if (!v43)
      {
        goto LABEL_48;
      }

      goto LABEL_56;
    }

LABEL_50:

    return 0;
  }

  OUTLINED_FUNCTION_8_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMR);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_216840;
  v7 = WFSmartPromptButtonIdentifierDeny;
  v8 = WFSmartPromptButtonIdentifierDontDelete;
  *(v6 + 32) = WFSmartPromptButtonIdentifierDeny;
  *(v6 + 40) = v8;
  v42 = v6;
  v48 = _swiftEmptyArrayStorage;
  v9 = specialized Array.count.getter(a2);
  v10 = a2 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v12 = v7;
  v13 = v8;
  OUTLINED_FUNCTION_12_11();
  while (v9 != v3)
  {
    if (v10)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v11 + 16))
      {
        goto LABEL_53;
      }

      v14 = *(a2 + 8 * v3 + 32);
    }

    v15 = v14;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 valueForKey:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      type metadata accessor for WFSmartPromptButtonIdentifier(0);
      if (swift_dynamicCast())
      {
        v9 = v11;
        v11 = v10;
        v10 = a2;
        OUTLINED_FUNCTION_16_14();
        __chkstk_darwin(v18);
        OUTLINED_FUNCTION_6_13();
        v20 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v19, v42);

        if (v20)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          OUTLINED_FUNCTION_9_12();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        OUTLINED_FUNCTION_13_11();
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of String?(&v46, &_sypSgMd, &_sypSgMR);
    }

    ++v3;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v37 = v48;
  if (specialized Array.count.getter(v48) != 1 || !specialized Array.count.getter(v37))
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_17_12();
  if (v42)
  {
    goto LABEL_56;
  }

LABEL_48:
  v38 = v37[4];
LABEL_49:
  v39 = v38;

  v40 = [v39 displayString];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v21;
}

void static SmartPromptConfirmationUtils.getConfirmationFromUSO(usoParse:options:)(_DWORD *a1, void *a2)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_3_16();
  v105 = v4;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v5);
  v115 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v7 - 8);
  v113 = &v102 - v8;
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_13_1();
  v110 = v10;
  v111 = v9;
  __chkstk_darwin(v9);
  v109 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_13_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3_16();
  v104 = v15;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v16);
  v114 = &v102 - v17;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v21 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_13_1();
  v23 = v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_3_16();
  v106 = v25;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v26);
  v28 = &v102 - v27;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v108 = v13;
  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.voiceCommands);
  v31 = *(v23 + 16);
  v112 = a1;
  v31(v28, a1, v21);
  v107 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v119 = v20;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v120 = v103;
    *v35 = 136315138;
    v31(v106, v28, v21);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = OUTLINED_FUNCTION_9_12();
    v40(v39);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v120);

    *(v35 + 4) = v28;
    _os_log_impl(&dword_0, v32, v33, "#SmartPromptConfirmationUtils got uso parse: %s", v35, 0xCu);
    v41 = v103;
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    v20 = v119;
    OUTLINED_FUNCTION_15_0(v41);
    OUTLINED_FUNCTION_15_0(v35);
  }

  else
  {

    v42 = OUTLINED_FUNCTION_9_12();
    v43(v42);
  }

  v44 = v109;
  USOParse.userParse.getter();
  v45 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v110 + 8))(v44, v111);
  v46 = v113;
  specialized Collection.first.getter(v45, v113);

  v47 = v116;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v116);
  v49 = v117;
  v50 = v114;
  v51 = v115;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of String?(v46, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_0, v52, v53, "#SmartPromptConfirmationUtils could not get UDA from USO parse", v54, 2u);
      OUTLINED_FUNCTION_15_0(v54);
    }

    return;
  }

  v55 = v108;
  (*(v108 + 32))(v20, v46, v47);
  Siri_Nlu_External_UserDialogAct.smartPromptConfirmationValue()(v51);
  if (v49)
  {
    (*(v55 + 8))(v20, v47);
    return;
  }

  v56 = type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
  if (__swift_getEnumTagSinglePayload(v51, 1, v56) != 1)
  {
    v69 = v105;
    outlined init with copy of UsoEntity_common_VoiceCommandConfirmation.DefinedValues?(v51, v105);
    OUTLINED_FUNCTION_13_1();
    v71 = v70;
    v73 = (*(v72 + 88))(v69, v56);
    v117 = 0;
    if (v73 == enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_DeleteOnce(_:))
    {
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v56 != v71)
      {
        OUTLINED_FUNCTION_14_10();
        if (v74)
        {
          goto LABEL_81;
        }

        v75 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v71, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v76 = v75;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v76);
        OUTLINED_FUNCTION_5_12();
        v20 = v77;
        if (v33)
        {
          OUTLINED_FUNCTION_11_10();
          v81 = v81 && v33 == v20;
          if (v81)
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_1_24(v78, v79, v80);
          OUTLINED_FUNCTION_18_12();

          if (v28)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    else if (v73 == enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_DontDelete(_:))
    {
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v56 != v71)
      {
        OUTLINED_FUNCTION_14_10();
        if (v74)
        {
          goto LABEL_83;
        }

        v83 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v71, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v76 = v83;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v76);
        OUTLINED_FUNCTION_5_12();
        v20 = v84;
        if (v33)
        {
          OUTLINED_FUNCTION_11_10();
          if (v81 && v33 == v20)
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_1_24(v85, v86, v87);
          OUTLINED_FUNCTION_18_12();

          if (v28)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    else if (v73 == enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_ShowAll(_:))
    {
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v56 != v71)
      {
        OUTLINED_FUNCTION_14_10();
        if (v74)
        {
          goto LABEL_85;
        }

        v89 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v71, 1))
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v76 = v89;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v76);
        OUTLINED_FUNCTION_5_12();
        v20 = v90;
        if (v33)
        {
          OUTLINED_FUNCTION_11_10();
          if (v81 && v33 == v20)
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_1_24(v91, v92, v93);
          OUTLINED_FUNCTION_18_12();

          if (v28)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    else
    {
      if (v73 != enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_DeleteAlways(_:))
      {
        (*(v71 + 8))(v105, v56);
        v50 = v114;
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v56 != v71)
      {
        OUTLINED_FUNCTION_14_10();
        if (v74)
        {
          goto LABEL_87;
        }

        v95 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v71, 1))
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          return;
        }

        v76 = v95;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v76);
        OUTLINED_FUNCTION_5_12();
        v20 = v96;
        if (v33)
        {
          OUTLINED_FUNCTION_11_10();
          if (v81 && v33 == v20)
          {
LABEL_77:

LABEL_78:
            v101 = [v76 displayString];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v119;
            break;
          }

          OUTLINED_FUNCTION_1_24(v97, v98, v99);
          OUTLINED_FUNCTION_18_12();

          if (v28)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    (*(v108 + 8))(v20, v116);
    outlined destroy of String?(v115, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
    return;
  }

LABEL_13:
  v57 = v108;
  v58 = *(v108 + 16);
  v58(v50, v20, v47);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v112 = v61;
    v118 = swift_slowAlloc();
    v120 = v118;
    *v61 = 136315138;
    LODWORD(v113) = v60;
    v62 = v116;
    v58(v104, v50, v116);
    v63 = String.init<A>(describing:)();
    v65 = v64;
    v114 = *(v57 + 8);
    (v114)(v50, v62);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v120);

    v67 = v112;
    *(v112 + 1) = v66;
    _os_log_impl(&dword_0, v59, v113, "#SmartPromptConfirmationUtils uda has unexpected value %s", v67, 0xCu);
    v68 = v118;
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    OUTLINED_FUNCTION_15_0(v68);
    OUTLINED_FUNCTION_15_0(v67);

    (v114)(v119, v62);
  }

  else
  {

    v82 = *(v57 + 8);
    v82(v50, v47);
    v82(v119, v47);
  }

  outlined destroy of String?(v51, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
}