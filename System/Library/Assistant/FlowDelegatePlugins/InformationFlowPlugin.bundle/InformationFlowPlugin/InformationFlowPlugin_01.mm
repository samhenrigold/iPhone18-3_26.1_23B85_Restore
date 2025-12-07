uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t sub_1D8C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in DefaultBiomeDonator.donate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in DefaultBiomeDonator.donate(_:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DC94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

id specialized DefaultBiomeDonator.removeUtterances(_:)(void *a1)
{
  if (!INInformationUseCaseIntent.supportsRelatedQuestions()())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.information);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Stripping utterance from intent", v4, 2u);
    }

    [a1 setExampleUtterance:0];
  }

  return a1;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t CarPlaySuggestionsIntentDonator.__allocating_init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CarPlaySuggestionsIntentDonator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *CarPlaySuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v56 = a3;
  v54 = a1;
  v55 = a2;
  v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v8 = __chkstk_darwin(v7 - 8);
  v58 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v16 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[3] = &type metadata for Features;
  v65[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v65[0]) = 2;
  v19 = isFeatureEnabled(_:)();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v65);
  if (v19)
  {
    if (a4)
    {
      result = GenericExperience.components.getter();
    }

    else
    {
      result = _swiftEmptyArrayStorage;
    }

    v45 = result[2];
    if (v45)
    {
      v21 = 0;
      v44 = result + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v43 = v50 + 16;
      v42 = v50 + 8;
      v41 = (v16 + 8);
      v62 = v13 + 8;
      v63 = v13 + 16;
      v59 = enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showMapPoints(_:);
      v52 = (v5 + 8);
      v53 = (v5 + 32);
      v22 = v58;
      v40 = result;
      while (v21 < result[2])
      {
        v23 = v50;
        v24 = *(v50 + 72);
        v51 = v21;
        v25 = v46;
        v26 = v47;
        (*(v50 + 16))(v46, &v44[v24 * v21], v47);
        v27 = v48;
        Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
        (*(v23 + 8))(v25, v26);
        v28 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
        result = (*v41)(v27, v49);
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = 0;
          v64 = v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
          while (v30 < *(v28 + 16))
          {
            (*(v13 + 16))(v15, v64 + *(v13 + 72) * v30, v12);
            Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
            (*(v13 + 8))(v15, v12);
            v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v11, 1, v32) != 1)
            {
              outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(v11, v22);
              v34 = (*(v33 + 88))(v22, v32);
              if (v34 == v59)
              {
                (*(v33 + 96))(v22, v32);
                (*v53)(v60, v22, v61);
                if (one-time initialization token for information != -1)
                {
                  swift_once();
                }

                v35 = type metadata accessor for Logger();
                __swift_project_value_buffer(v35, static Logger.information);
                v36 = Logger.logObject.getter();
                v37 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v36, v37))
                {
                  v38 = swift_slowAlloc();
                  *v38 = 0;
                  _os_log_impl(&dword_0, v36, v37, "Donating Geo Intent to Siri Suggestions", v38, 2u);
                }

                (*(v57 + 16))(v65);
                v31 = v60;
                specialized static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(v60, v56, v54, v55, v65);
                __swift_destroy_boxed_opaque_existential_0Tm(v65);
                (*v52)(v31, v61);
                v22 = v58;
              }

              else
              {
                (*(v33 + 8))(v22, v32);
              }
            }

            ++v30;
            result = outlined destroy of Any?(v11, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
            if (v29 == v30)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
          break;
        }

LABEL_7:
        v21 = v51 + 1;

        result = v40;
        if (v21 == v45)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Features and conformance Features()
{
  result = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features and conformance Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features and conformance Features);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[100] = v13;
  v8[99] = v12;
  v8[98] = a8;
  v8[97] = a7;
  v8[96] = a6;
  v8[95] = a5;
  v8[94] = a4;
  v9 = type metadata accessor for SiriSuggestions.Intent();
  v8[101] = v9;
  v8[102] = *(v9 - 8);
  v8[103] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:), 0, 0);
}

uint64_t closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)()
{
  v80 = v0;
  v1 = specialized static PegasusACEConverters.makeShowMapPoints(params:)();
  *(v0 + 832) = v1;
  v2 = [v1 showDirections];
  *(v0 + 880) = v2;
  if (v2 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v3 = [v1 itemDestination];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 label];

      if (v5)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        *(v0 + 104) = &type metadata for String;
        *(v0 + 112) = &protocol witness table for String;
        *(v0 + 120) = &protocol witness table for String;
        *(v0 + 80) = v6;
        *(v0 + 88) = v8;
        outlined init with take of Decodable & Encodable & Sendable((v0 + 80), (v0 + 128));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = &_swiftEmptyDictionarySingleton;
        v10 = *(v0 + 152);
        v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 128, v10);
        v12 = *(v10 - 8);
        v13 = swift_task_alloc();
        (*(v12 + 16))(v13, v11, v10);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v13, v13[1], 0xD000000000000010, 0x80000000000BE310, isUniquelyReferenced_nonNull_native, &v79);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));

        v14 = v79;
        v15 = [v1 itemDestination];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 location];

          if (v17)
          {
            v18 = [v17 latitude];

            if (v18)
            {
              [v18 doubleValue];
              *(v0 + 680) = &type metadata for Double;
              *(v0 + 688) = &protocol witness table for Double;
              *(v0 + 696) = &protocol witness table for Double;
              *(v0 + 656) = v19;
              outlined init with take of Decodable & Encodable & Sendable((v0 + 656), (v0 + 704));
              v20 = swift_isUniquelyReferenced_nonNull_native();
              v79 = v14;
              v21 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 704, *(v0 + 728));
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x74616E6974736564, 0xEE0074614C6E6F69, v20, &v79, *v21);

              __swift_destroy_boxed_opaque_existential_0Tm((v0 + 704));
              v14 = v79;
            }
          }
        }

        v22 = [v1 itemDestination];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 location];

          if (v24)
          {
            v25 = [v24 longitude];

            if (v25)
            {
              [v25 doubleValue];
              *(v0 + 584) = &type metadata for Double;
              *(v0 + 592) = &protocol witness table for Double;
              *(v0 + 600) = &protocol witness table for Double;
              *(v0 + 560) = v26;
              outlined init with take of Decodable & Encodable & Sendable((v0 + 560), (v0 + 608));
              v27 = swift_isUniquelyReferenced_nonNull_native();
              v79 = v14;
              v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 608, *(v0 + 632));
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x74616E6974736564, 0xEF676E6F4C6E6F69, v27, &v79, *v28);

              __swift_destroy_boxed_opaque_existential_0Tm((v0 + 608));
              v14 = v79;
            }
          }
        }

        v29 = [v1 itemDestination];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 detailType];

          if (v31)
          {
            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;

            *(v0 + 488) = &type metadata for String;
            *(v0 + 496) = &protocol witness table for String;
            *(v0 + 504) = &protocol witness table for String;
            *(v0 + 464) = v32;
            *(v0 + 472) = v34;
            outlined init with take of Decodable & Encodable & Sendable((v0 + 464), (v0 + 512));
            v35 = swift_isUniquelyReferenced_nonNull_native();
            v79 = v14;
            v36 = *(v0 + 536);
            v37 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 512, v36);
            v38 = *(v36 - 8);
            v39 = swift_task_alloc();
            (*(v38 + 16))(v39, v37, v36);
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v39, v39[1], 0xD000000000000015, 0x80000000000BE350, v35, &v79);
            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 512));

            v14 = v79;
          }
        }

        v40 = [v1 itemSource];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 detailType];

          if (v42)
          {
            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            *(v0 + 392) = &type metadata for String;
            *(v0 + 400) = &protocol witness table for String;
            *(v0 + 408) = &protocol witness table for String;
            *(v0 + 368) = v43;
            *(v0 + 376) = v45;
            outlined init with take of Decodable & Encodable & Sendable((v0 + 368), (v0 + 416));
            v46 = swift_isUniquelyReferenced_nonNull_native();
            v79 = v14;
            v47 = *(v0 + 440);
            v48 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 416, v47);
            v49 = *(v47 - 8);
            v50 = swift_task_alloc();
            (*(v49 + 16))(v50, v48, v47);
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v50, v50[1], 0xD000000000000010, 0x80000000000BE330, v46, &v79);
            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));

            v14 = v79;
          }
        }

        v51 = PommesResponse.requestLocation.getter();
        if (v51)
        {
          v52 = v51;
          [v51 coordinate];
          *(v0 + 200) = &type metadata for Double;
          *(v0 + 208) = &protocol witness table for Double;
          *(v0 + 216) = &protocol witness table for Double;
          *(v0 + 176) = v53;
          outlined init with take of Decodable & Encodable & Sendable((v0 + 176), (v0 + 224));
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v79 = v14;
          v55 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 224, *(v0 + 248));
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x4C746E6572727563, 0xEA00000000007461, v54, &v79, *v55);
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));
          v56 = v79;
          [v52 coordinate];
          *(v0 + 296) = &type metadata for Double;
          *(v0 + 304) = &protocol witness table for Double;
          *(v0 + 312) = &protocol witness table for Double;
          *(v0 + 272) = v57;
          outlined init with take of Decodable & Encodable & Sendable((v0 + 272), (v0 + 320));
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v79 = v56;
          v59 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 320, *(v0 + 344));
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x4C746E6572727563, 0xEB00000000676E6FLL, v58, &v79, *v59);
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 320));
          v14 = v79;
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          __swift_project_value_buffer(v60, static Logger.information);
          v61 = v52;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 134545921;
            [v61 coordinate];
            *(v64 + 4) = v65;
            *(v64 + 12) = 2053;
            [v61 coordinate];
            *(v64 + 14) = v66;
            _os_log_impl(&dword_0, v62, v63, "Location from PommesResponse: (%{sensitive}f, %{sensitive}f)", v64, 0x16u);
          }

          else
          {

            v62 = v61;
          }
        }

        else
        {
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          __swift_project_value_buffer(v69, static Logger.information);
          v62 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v62, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_0, v62, v70, "Location unavailable in PommesResponse", v71, 2u);
          }
        }

        *(v0 + 840) = v14;
        v72 = *(v0 + 776);
        v73 = v72[3];
        v74 = v72[4];
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v75 = swift_task_alloc();
        *(v0 + 848) = v75;
        v76 = *(v74 + 8);
        *v75 = v0;
        v75[1] = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
        v77 = *(v0 + 792);
        v78 = *(v0 + 784);

        return SiriSuggestionsBaseAPIClient.submitExecutionParams(for:executionParams:)(v78, v77, v14, v73, v76);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v67 = *(v0 + 8);

  return v67();
}

{
  *(*v1 + 856) = v0;

  if (v0)
  {

    v2 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  else
  {
    v2 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 776);
  if (*(v0 + 880))
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*(v0 + 880))
  {
    v6 = 0x657461676976616ELL;
  }

  else
  {
    v6 = 0x686372616573;
  }

  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B8690;
  *(inited + 32) = 1651664246;
  v10 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(v10, &_sSS_SStMd, &_sSS_SStMR);
  Action.init(actionId:params:)();
  (*(v2 + 104))(v1, enum case for SiriSuggestions.Intent.action(_:), v3);
  v11 = swift_task_alloc();
  *(v0 + 864) = v11;
  v12 = *(v8 + 8);
  *v11 = v0;
  v11[1] = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  v13 = *(v0 + 824);
  v14 = *(v0 + 800);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:submitEngagement:)(v14, v13, 1, v7, v12);
}

{
  v2 = *(*v1 + 824);
  v3 = *(*v1 + 816);
  v4 = *(*v1 + 808);
  *(*v1 + 872) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  else
  {
    v5 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v1 = *(v0 + 8);

  return v1();
}

{

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Received error donating to Siri Suggestions: %@", v4, 0xCu);
    outlined destroy of Any?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

{

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Received error donating to Siri Suggestions: %@", v4, 0xCu);
    outlined destroy of Any?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t CarPlaySuggestionsIntentDonator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:) in conformance CarPlaySuggestionsIntentDonator()
{
  (*(**v0 + 96))();
  v2 = *(v1 + 8);

  return v2();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v28 = &type metadata for String;
  v29 = &protocol witness table for String;
  v30 = &protocol witness table for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v10 = *a6;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 48 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      return outlined init with take of Decodable & Encodable & Sendable(&v27, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a5 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v27, &type metadata for String);
  __chkstk_darwin(v23);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  specialized _NativeDictionary._insert(at:key:value:)(v12, a3, a4, *v25, v25[1], v18);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v27);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  *&v23 = a5;
  v24 = &type metadata for Double;
  v25 = &protocol witness table for Double;
  v26 = &protocol witness table for Double;
  v9 = *a4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return outlined init with take of Decodable & Encodable & Sendable(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, &type metadata for Double);
  specialized _NativeDictionary._insert(at:key:value:)(v11, a1, a2, v17, *v22);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = &type metadata for Double;
  v13 = &protocol witness table for Double;
  v14 = &protocol witness table for Double;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Decodable & Encodable & Sendable(&v11, (a4[7] + 48 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &protocol witness table for String;
  v15 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = outlined init with take of Decodable & Encodable & Sendable(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

void specialized static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v68 = a1;
  v69 = a5;
  v72 = a2;
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v71 = *(v73 - 8);
  v7 = *(v71 + 64);
  __chkstk_darwin(v73);
  v77 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v76 = &v58 - v9;
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v79 = type metadata accessor for PerformanceUtil.Ticket();
  v70 = *(v79 - 8);
  v11 = *(v70 + 64);
  v12 = __chkstk_darwin(v79);
  v75 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v58 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v74 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v21;
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  v78 = a3;
  UUID.init(uuidString:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of Any?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.information);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v80[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, a4, v80);
      _os_log_impl(&dword_0, v25, v26, "Unable to convert requestId: %s to UUID", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }
  }

  else
  {
    v64 = v7;
    v63 = v19;
    v29 = *(v19 + 32);
    v66 = v23;
    v67 = v18;
    v62 = v19 + 32;
    v61 = v29;
    v29(v23, v17, v18);
    Date.init()();
    v30 = v14;
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v31 = v78;
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.information);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    v35 = os_log_type_enabled(v33, v34);
    v60 = a4;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v80[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, a4, v80);
      _os_log_impl(&dword_0, v33, v34, "Donating Siri Suggestions claim against: %s for SiriGeo", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    v38 = v14;
    v40 = v66;
    v39 = v67;
    v41 = v63;
    v59 = v30;
    v42 = type metadata accessor for TaskPriority();
    (*(*(v42 - 8) + 56))(v76, 1, 1, v42);
    v43 = v70;
    (*(v70 + 16))(v75, v38, v79);
    v44 = v71;
    (*(v71 + 16))(v77, v68, v73);
    outlined init with copy of OutputPublisherAsync(v69, v80);
    (*(v41 + 16))(v74, v40, v39);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = (v11 + *(v44 + 80) + v45) & ~*(v44 + 80);
    v47 = (v64 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
    v50 = (*(v41 + 80) + v49 + 16) & ~*(v41 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    (*(v43 + 32))(v51 + v45, v75, v79);
    (*(v44 + 32))(v51 + v46, v77, v73);
    v52 = v72;
    *(v51 + v47) = v72;
    outlined init with take of SiriSuggestionsBroker(v80, v51 + v48);
    v53 = (v51 + v49);
    v54 = v60;
    *v53 = v78;
    v53[1] = v54;
    v55 = v51 + v50;
    v56 = v67;
    v61(v55, v74, v67);

    v57 = v52;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v76, &async function pointer to partial apply for closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:), v51);

    (*(v43 + 8))(v59, v79);
    (*(v41 + 8))(v66, v56);
  }
}

uint64_t sub_209E8()
{
  v18 = type metadata accessor for PerformanceUtil.Ticket();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v14 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v14 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for UUID();
  v9 = *(v16 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v14, v18);
  (*(v4 + 8))(v0 + v6, v17);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v8));

  (*(v9 + 8))(v0 + v11, v16);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t partial apply for closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for PerformanceUtil.Ticket() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for UUID();
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v9);
  v14 = *(v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(a1, v11, v12, v1 + v5, v1 + v8, v13, v1 + v10, v14);
}

uint64_t static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v95 = a3;
  v99 = a1;
  v93 = type metadata accessor for SportsResolverMetrics();
  v7 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v10 = __chkstk_darwin(v9 - 8);
  v87 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v94 = &v78[-v12];
  v86 = a4;
  v15 = type metadata accessor for SportsPersonalizationSelection(0, a4, v13, v14);
  v97 = *(v15 - 8);
  v98 = v15;
  __chkstk_darwin(v15);
  v96 = &v78[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v18 = __chkstk_darwin(v17 - 8);
  v85 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v22 = &v78[-v21];
  __chkstk_darwin(v20);
  v24 = &v78[-v23];
  v25 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v83 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v81 = &v78[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v29 = &v78[-v28];
  v30 = type metadata accessor for SportsResolverConfig();
  v89 = *(v30 - 8);
  v90 = v30;
  __chkstk_darwin(v30);
  v100 = &v78[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v24, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v33 = *(v32 - 8);
  v84 = *(v33 + 48);
  v34 = v84(v24, 1, v32);
  v92 = v7;
  v82 = v25;
  if (v34 == 1)
  {
    outlined destroy of Any?(v24, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v35 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v33 + 8))(v24, v32);
    if (*(v35 + 16))
    {
      v36 = v83;
      (*(v83 + 16))(v29, v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v25);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      (*(v36 + 8))(v29, v25);
    }

    else
    {
    }
  }

  v37 = v100;
  SportsResolverConfig.init(intentTypeName:bundleId:)();
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v22, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v39 = v97;
  v38 = v98;
  v40 = v22;
  v41 = v96;
  (*(v97 + 16))(v96, v99, v98);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v79 = v43;
    v44 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v44 = 136315394;
    v45 = v85;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v40, v85, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v46 = v84(v45, 1, v32);
    v80 = v40;
    if (v46 == 1)
    {
      outlined destroy of Any?(v45, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      v47 = 0xE700000000000000;
      v48 = v88;
      v49 = 0x6E776F6E6B6E75;
      v51 = v96;
      v50 = v97;
    }

    else
    {
      v54 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      (*(v33 + 8))(v45, v32);
      v48 = v88;
      v51 = v96;
      if (*(v54 + 16))
      {
        v55 = v83;
        v56 = v81;
        v57 = v82;
        (*(v83 + 16))(v81, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v82);

        v49 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
        v47 = v58;
        (*(v55 + 8))(v56, v57);
      }

      else
      {

        v47 = 0xE700000000000000;
        v49 = 0x6E776F6E6B6E75;
      }

      v50 = v97;
    }

    outlined destroy of Any?(v80, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v47, v101);

    *(v44 + 4) = v59;
    *(v44 + 12) = 2080;
    v60 = v98;
    v61 = SportsPersonalizationSelection<A>.debugDescription.getter(v98, v48);
    v63 = v62;
    (*(v50 + 8))(v51, v60);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v101);

    *(v44 + 14) = v64;
    _os_log_impl(&dword_0, v42, v79, "Logging sports personalization metrics: intent=%s selection=%s", v44, 0x16u);
    swift_arrayDestroy();

    v53 = v94;
    v37 = v100;
    v52 = v91;
  }

  else
  {

    (*(v39 + 8))(v41, v38);
    outlined destroy of Any?(v40, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v52 = v91;
    v53 = v94;
    v48 = v88;
  }

  closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(v99, v37, v86, v48, v53);
  v65 = v87;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v53, v87, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v67 = v92;
  v66 = v93;
  if ((*(v92 + 48))(v65, 1, v93) == 1)
  {
    outlined destroy of Any?(v53, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v89 + 8))(v37, v90);
    return outlined destroy of Any?(v65, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  (*(v67 + 32))(v52, v65, v66);
  SportsResolverMetrics.logSportsMetric()();
  if (!v69)
  {
    goto LABEL_21;
  }

  swift_errorRetain();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v70, v71))
  {

LABEL_21:
    (*(v67 + 8))(v52, v66);
    v77 = v53;
    goto LABEL_22;
  }

  v72 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v101[0] = v73;
  *v72 = 136315138;
  swift_getErrorValue();
  v74 = Error.localizedDescription.getter();
  v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v101);

  *(v72 + 4) = v76;
  _os_log_impl(&dword_0, v70, v71, "Logging sports metrics failed with: %s", v72, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);

  (*(v67 + 8))(v52, v66);
  v77 = v94;
LABEL_22:
  outlined destroy of Any?(v77, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  return (*(v89 + 8))(v100, v90);
}

uint64_t closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsResolverConfig();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsPersonalizationSelection(0, a3, v16, v17);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  (*(v21 + 16))(&v26 - v19, a1);
  v22 = (*(v9 + 48))(v20, 2, a3);
  v23 = v22;
  if (v22)
  {
    if (v22 != 1)
    {
      (*(v13 + 16))(v15, v27, v12);
      SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
      v23 = 0;
    }
  }

  else
  {
    (*(v9 + 32))(v11, v20, a3);
    (*(v13 + 16))(v15, v27, v12);
    (*(a4 + 8))(a3, a4);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    (*(v9 + 8))(v11, a3);
  }

  v24 = type metadata accessor for SportsResolverMetrics();
  return (*(*(v24 - 8) + 56))(a5, v23, 1, v24);
}

uint64_t PushOffQueryFlow.__allocating_init(query:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3, a4);

  return v8;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int Features.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t key path setter for PushOffQueryFlow.nlContextUpdate : PushOffQueryFlow(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, &v8 - v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(**a2 + 152))(v6);
}

uint64_t PushOffQueryFlow.nlContextUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate;
  swift_beginAccess();
  return outlined init with copy of (String, Decodable & Encodable & Sendable)(v1 + v3, a1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t PushOffQueryFlow.nlContextUpdate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate;
  swift_beginAccess();
  outlined assign with take of NLContextUpdate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t PushOffQueryFlow.targetedRequest.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_targetedRequest;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void key path setter for PushOffQueryFlow.state : PushOffQueryFlow(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  outlined copy of PushOffQueryFlow.State(v2, v3, v5);
  outlined consume of PushOffQueryFlow.State(v6, v7, v8);
  PushOffQueryFlow.state.didset();
}

void PushOffQueryFlow.state.didset()
{
  v1 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = v1 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    outlined copy of PushOffQueryFlow.State(*v6, *(v6 + 8), *(v6 + 16));
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v3, "#PushOffQueryFlow transitioning to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }
}

id PushOffQueryFlow.state.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of PushOffQueryFlow.State(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3, a4);

  return v4;
}

void PushOffQueryFlow.setState(_:)(void *a1, void *a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  outlined copy of PushOffQueryFlow.State(a1, a2, a3);
  outlined consume of PushOffQueryFlow.State(v8, v9, v10);
  PushOffQueryFlow.state.didset();
}

uint64_t PushOffQueryFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v44 = v7;
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.information);
  v13 = *(v9 + 16);
  v45 = a1;
  v13(v11, a1, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = v5;
    v17 = v16;
    v41 = swift_slowAlloc();
    v46[0] = v41;
    *v17 = 136315394;
    v46[1] = (*(*v1 + 192))();
    v46[2] = v18;
    v47 = v19;
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v46);
    v43 = v4;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = Input.description.getter();
    v26 = v25;
    (*(v9 + 8))(v11, v8);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v46);
    v4 = v43;

    *(v17 + 14) = v27;
    _os_log_impl(&dword_0, v14, v15, "#PushOffQueryFlow entering on(input:) with state: %s, input: %s", v17, 0x16u);
    swift_arrayDestroy();

    v5 = v42;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v28 = (*(*v2 + 192))();
  if (v30 != 3 || v28 | v29)
  {
    outlined consume of PushOffQueryFlow.State(v28, v29, v30);
    return 0;
  }

  v31 = v44;
  Input.parse.getter();
  if ((*(v5 + 88))(v31, v4) != enum case for Parse.pommesResponse(_:))
  {
    (*(v5 + 8))(v31, v4);
    return 0;
  }

  (*(v5 + 96))(v31, v4);
  v32 = *v31;
  v33 = v2 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  v34 = 1;
  swift_beginAccess();
  v36 = *v33;
  v35 = *(v33 + 8);
  *v33 = v32;
  *(v33 + 8) = 0;
  v37 = *(v33 + 16);
  *(v33 + 16) = 1;
  v38 = v32;
  outlined consume of PushOffQueryFlow.State(v36, v35, v37);
  PushOffQueryFlow.state.didset();

  return v34;
}

uint64_t PushOffQueryFlow.execute()(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(PushOffQueryFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = PushOffQueryFlow.execute();
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = PushOffQueryFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t PushOffQueryFlow.execute()()
{
  v39 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 152) = __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38 = v7;
    *v6 = 136315138;
    *(v0 + 104) = (*(*v5 + 192))();
    *(v0 + 112) = v8;
    *(v0 + 120) = v9;
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v38);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "#PushOffQueryFlow entering execute with state: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }

  *(v0 + 160) = v5;
  v13 = (*(**(v0 + 144) + 192))();
  *(v0 + 168) = v13;
  *(v0 + 176) = v14;
  if (v15 > 1u)
  {
    if (v15 != 2)
    {
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_22:
      v35 = *(v0 + 8);

      return v35();
    }

LABEL_21:
    static ExecuteResponse.complete()();
    goto LABEL_22;
  }

  v16 = v13;
  if (!v15)
  {
    v17 = *(v0 + 144);
    v18 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    *(v0 + 184) = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    v19 = v17 + v18;
    v20 = v14;
    swift_beginAccess();
    v21 = *v19;
    v22 = *(v19 + 8);
    *v19 = 0;
    *(v19 + 8) = 0;
    v23 = *(v19 + 16);
    *(v19 + 16) = 3;
    outlined consume of PushOffQueryFlow.State(v21, v22, v23);
    PushOffQueryFlow.state.didset();
    v24 = PushOffQueryFlow.buildPommesSearchRequest(query:)(v16, v20);
    *(v0 + 192) = v24;
    outlined consume of PushOffQueryFlow.State(v16, v20, 0);
    if (v24)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(*(v0 + 144) + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_pommesSearchClient, v0 + 16, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
      v25 = *(v0 + 40);
      if (v25)
      {
        v26 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v27 = swift_task_alloc();
        *(v0 + 208) = v27;
        *v27 = v0;
        v27[1] = PushOffQueryFlow.execute();

        return dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)(v24, v25, v26);
      }

      outlined destroy of Any?(v0 + 16, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
    }

    v31 = *(v0 + 144) + *(v0 + 184);
    v32 = *v31;
    v33 = *(v31 + 8);
    *v31 = 0;
    *(v31 + 8) = 0;
    v34 = *(v31 + 16);
    *(v31 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v32, v33, v34);
    PushOffQueryFlow.state.didset();
    goto LABEL_21;
  }

  v28 = *(**(v0 + 144) + 256);
  v37 = (v28 + *v28);
  v29 = swift_task_alloc();
  *(v0 + 200) = v29;
  *v29 = v0;
  v29[1] = PushOffQueryFlow.execute();
  v30 = *(v0 + 136);

  return v37(v30, v16);
}

{

  return _swift_task_switch(PushOffQueryFlow.execute(), 0, 0);
}

{
  outlined consume of PushOffQueryFlow.State(*(v0 + 168), *(v0 + 176), 1);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[28];
  v2 = v0[18];
  v3 = v2 + v0[23];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = v1;
  *(v3 + 8) = 0;
  v6 = *(v3 + 16);
  *(v3 + 16) = 1;
  v7 = v1;
  outlined consume of PushOffQueryFlow.State(v4, v5, v6);
  PushOffQueryFlow.state.didset();

  v12 = (*(*v2 + 256) + **(*v2 + 256));
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = PushOffQueryFlow.execute();
  v9 = v0[28];
  v10 = v0[17];

  return v12(v10, v9);
}

{

  return _swift_task_switch(PushOffQueryFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

{
  v15 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v14);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "#PushOffQueryFlow requestInfiEntityResolution call has an error %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
  }

  v8 = *(v0 + 144) + *(v0 + 184);
  v9 = *v8;
  v10 = *(v8 + 8);
  *v8 = 0;
  *(v8 + 8) = 0;
  v11 = *(v8 + 16);
  *(v8 + 16) = 2;
  outlined consume of PushOffQueryFlow.State(v9, v10, v11);
  PushOffQueryFlow.state.didset();
  static ExecuteResponse.complete()();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t PushOffQueryFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PushOffQueryFlow(0);
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type PushOffQueryFlow and conformance PushOffQueryFlow, type metadata accessor for PushOffQueryFlow, &protocol conformance descriptor for PushOffQueryFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PushOffQueryFlow.handlePommesResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(PushOffQueryFlow.handlePommesResponse(_:), 0, 0);
}

uint64_t PushOffQueryFlow.handlePommesResponse(_:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PushOffQueryFlow going to handlePommesResponse...", v4, 2u);
  }

  v5 = v0[8];

  if (specialized PushOffQueryFlow.isUserCanceled(pommesResponse:)(v5))
  {
    v6 = v0[9] + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 8);
    *v6 = xmmword_B97E0;
    v9 = *(v6 + 16);
    *(v6 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v7, v8, v9);
    PushOffQueryFlow.state.didset();
    static ExecuteResponse.complete()();
LABEL_13:
    v18 = v0[1];

    return v18();
  }

  v10 = dispatch thunk of PommesResponse.primaryPluginIdentifier()();
  if (v11)
  {
    v0[5] = v10;
    v0[6] = v11;
    v12 = swift_task_alloc();
    *(v12 + 16) = v0 + 5;
    v13 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, &outlined read-only object #0 of one-time initialization function for defaultPegasusBundleIdentifiers);

    if ((v13 & 1) == 0)
    {
      PushOffQueryFlow.handleClientDrivenExperience(pommesResponse:)(v0[8]);
      goto LABEL_13;
    }
  }

  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = PushOffQueryFlow.handlePommesResponse(_:);
  v15 = v0[8];
  v16 = v0[7];

  return PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:)(v16, v15);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PushOffQueryFlow.buildPommesSearchRequest(query:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v81 = a1;
  v3 = type metadata accessor for DeviceRestrictions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for InputOrigin();
  v7 = *(v88 - 8);
  v8 = __chkstk_darwin(v88);
  v77 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v87 = v70 - v11;
  v12 = __chkstk_darwin(v10);
  v86 = v70 - v13;
  __chkstk_darwin(v12);
  v92 = v70 - v14;
  v15 = type metadata accessor for ResponseMode();
  v84 = *(v15 - 8);
  v85 = v15;
  __chkstk_darwin(v15);
  v83 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __chkstk_darwin(v17 - 8);
  v82 = v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __chkstk_darwin(v19 - 8);
  v79 = v70 - v20;
  v21 = type metadata accessor for MultiUserState();
  __chkstk_darwin(v21 - 8);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ParseStateXPC();
  v78 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Siri_Nlu_External_UserParse();
  v90 = *(v27 - 8);
  v91 = v27;
  v28 = __chkstk_darwin(v27);
  v89 = v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (*(*v2 + 168))(v28);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    v31 = SiriEnvironment.currentRequest.getter();
  }

  v32 = CurrentRequest.executionRequestId.getter();
  if (!v33)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.information);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_17;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "#PushOffQueryFlow executionRequestId is not available, cannot construct PommesSearchRequestXPC";
    goto LABEL_16;
  }

  v72 = v32;
  v73 = v6;
  v74 = v4;
  v34 = v31;
  v35 = CurrentRequest.resultCandidateId.getter();
  if (!v36)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.information);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_17;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "#PushOffQueryFlow resultCandidateId is not available, cannot construct PommesSearchRequestXPC";
LABEL_16:
    _os_log_impl(&dword_0, v48, v49, v51, v50, 2u);

LABEL_17:

    return 0;
  }

  v37 = v36;
  v76 = v7;
  v71 = v3;
  v70[0] = v35;
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, &type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  v38 = v89;
  v39 = v91;
  v75 = v34;
  static Message.with(_:)();
  v70[2] = CurrentRequest.currentDeviceAssistantId.getter();
  v70[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR);
  v41 = v90;
  v42 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_B8690;
  (*(v41 + 16))(v43 + v42, v38, v39);
  *v26 = v70[0];
  *(v26 + 1) = v37;
  *(v26 + 2) = v43;
  v26[24] = 1;
  (*(v78 + 104))(v26, enum case for ParseStateXPC.rc(_:), v24);
  type metadata accessor for PommesSearchRequestXPCBuilder();
  swift_allocObject();

  PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)();
  dispatch thunk of PommesSearchRequestXPCBuilder.withListenAfterSpeaking(_:)();

  dispatch thunk of PommesSearchRequestXPCBuilder.withIsPushOffRequest(_:)();

  CurrentRequest.multiUserState.getter();
  MultiUserState.isEnabled.getter();
  outlined destroy of KnowledgeFallbackHelper(v23, &type metadata accessor for MultiUserState);
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsMultiUser(_:)();

  v44 = v79;
  CurrentRequest.audioSource.getter();
  v45 = type metadata accessor for AudioSource();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    outlined destroy of Any?(v44, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    AudioSource.aceValue.getter();
    (*(v46 + 8))(v44, v45);
  }

  v54 = v88;
  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioSource(_:)();

  v55 = v82;
  CurrentRequest.audioDestination.getter();
  v56 = type metadata accessor for AudioDestination();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v55, 1, v56) == 1)
  {
    outlined destroy of Any?(v55, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  else
  {
    AudioDestination.aceValue.getter();
    (*(v57 + 8))(v55, v56);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioDestination(_:)();

  v58 = v83;
  CurrentRequest.responseMode.getter();
  ResponseMode.aceValue.getter();
  (*(v84 + 8))(v58, v85);
  dispatch thunk of PommesSearchRequestXPCBuilder.withResponseMode(_:)();

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v97, v98);
  dispatch thunk of DeviceState.isEyesFree.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsEyesFree(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v97);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v97, v98);
  dispatch thunk of DeviceState.isVoiceTriggerEnabled.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsVoiceTriggerEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v97);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v97, v98);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v88 = dispatch thunk of PommesSearchRequestXPCBuilder.withIsTextToSpeechEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v97);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v97, v98);
  dispatch thunk of DeviceState.inputOrigin.getter();
  v59 = *(v76 + 104);
  v60 = v86;
  v59(v86, enum case for InputOrigin.clientGenerated(_:), v54);
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, &type metadata accessor for InputOrigin, &protocol conformance descriptor for InputOrigin);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v95 == v93 && v96 == v94)
  {
    v61 = 1;
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v62 = *(v76 + 8);
  v62(v60, v54);
  v62(v92, v54);

  __swift_destroy_boxed_opaque_existential_0Tm(&v97);
  if ((v61 & 1) == 0)
  {
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    dispatch thunk of DeviceState.inputOrigin.getter();
    v63 = v77;
    v59(v77, enum case for InputOrigin.triggerlessFollowup(_:), v54);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v95 != v93 || v96 != v94)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v62(v63, v54);
    v62(v87, v54);

    __swift_destroy_boxed_opaque_existential_0Tm(&v97);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withIsTriggerlessFollowup(_:)();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v64 = v73;
  dispatch thunk of CurrentDevice.restrictions.getter();

  v65 = DeviceRestrictions.aceSet.getter();
  (*(v74 + 8))(v64, v71);
  v66 = *(v65 + 16);
  if (!v66)
  {
    goto LABEL_34;
  }

  v67 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v65 + 16), 0);
  v68 = specialized Sequence._copySequenceContents(initializing:)(&v97, v67 + 4, v66, v65);
  outlined consume of Set<String>.Iterator._Variant(v97);
  if (v68 != v66)
  {
    __break(1u);
LABEL_34:
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withDeviceRestrictions(_:)();

  v69 = dispatch thunk of PommesSearchRequestXPCBuilder.build()();

  (*(v90 + 8))(v89, v91);
  return v69;
}

uint64_t closure #1 in PushOffQueryFlow.buildPommesSearchRequest(query:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser();
  __chkstk_darwin(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  *(swift_allocObject() + 16) = xmmword_B8690;
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
  static Message.with(_:)();
  Siri_Nlu_External_UserParse.userDialogActs.setter();
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser and conformance Siri_Nlu_External_Parser, &type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
  static Message.with(_:)();
  Siri_Nlu_External_UserParse.parser.setter();
  Siri_Nlu_External_UserParse.probability.setter();
  return Siri_Nlu_External_UserParse.comparableProbability.setter();
}

uint64_t closure #1 in closure #1 in PushOffQueryFlow.buildPommesSearchRequest(query:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v8 - v5;
  Siri_Nlu_External_DelegatedUserDialogAct.init()();
  static PommesSearchRequest.PommesParserId.getter();
  Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
  (*(v1 + 16))(v4, v6, v0);
  Siri_Nlu_External_UserDialogAct.delegated.setter();
  return (*(v1 + 8))(v6, v0);
}

uint64_t closure #2 in closure #1 in PushOffQueryFlow.buildPommesSearchRequest(query:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_Parser.AlgorithmType();
  __chkstk_darwin(v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Siri_Nlu_External_Parser.AlgorithmType.model(_:));
  Siri_Nlu_External_Parser.algorithm.setter();
  (*(v1 + 104))(v3, enum case for Siri_Nlu_External_Parser.ParserIdentifier.psc(_:), v0);
  return Siri_Nlu_External_Parser.parserID.setter();
}

uint64_t PushOffQueryFlow.handleClientDrivenExperience(pommesResponse:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#PushOffQueryFlow in handleClientDrivenExperience", v7, 2u);
  }

  v19[0] = v2;
  type metadata accessor for PushOffQueryFlow(0);
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type PushOffQueryFlow and conformance PushOffQueryFlow, type metadata accessor for PushOffQueryFlow, &protocol conformance descriptor for PushOffQueryFlow);
  v8 = CompositionSearchFlow.findFlowForPommesResponse(_:)();
  if (v8)
  {
    v9 = v8;
    v19[3] = type metadata accessor for AnyFlow();
    v19[4] = &protocol witness table for AnyFlow;
    v19[0] = v9;
    v10 = *(*v2 + 288);

    v10(a1, v19);

    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#PushOffQueryFlow failed to render a client-driven experience", v14, 2u);
    }

    v15 = v2 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v16 = *v15;
    v17 = *(v15 + 8);
    *v15 = 0;
    *(v15 + 8) = 0;
    v18 = *(v15 + 16);
    *(v15 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v16, v17, v18);
    PushOffQueryFlow.state.didset();
    return static ExecuteResponse.complete()();
  }
}

uint64_t PushOffQueryFlow.handleClientDrivenExperience(pommesResponse:renderFlow:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = type metadata accessor for Date();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Input();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[3];
  v43 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v15);
  *v10 = a1;
  (*(v8 + 104))(v10, enum case for Parse.pommesResponse(_:), v7);
  v16 = a1;
  Input.init(parse:)();
  LOBYTE(v15) = dispatch thunk of Flow.on(input:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.information);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#PushOffQueryFlow pushing render component flow for client-driven experience", v20, 2u);
    }

    v21 = v47 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v22 = *v21;
    v23 = *(v21 + 8);
    *v21 = 0;
    *(v21 + 8) = 0;
    v24 = *(v21 + 16);
    *(v21 + 16) = 3;
    outlined consume of PushOffQueryFlow.State(v22, v23, v24);
    PushOffQueryFlow.state.didset();
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    return static ExecuteResponse.complete<A>(next:)();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.information);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "#PushOffQueryFlow render flow refused input, returning error flow", v29, 2u);
    }

    v30 = v47;
    v31 = v47 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v32 = *v31;
    v33 = *(v31 + 8);
    *v31 = 0;
    *(v31 + 8) = 0;
    v34 = *(v31 + 16);
    *(v31 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v32, v33, v34);
    PushOffQueryFlow.state.didset();
    v49 = v30;
    type metadata accessor for PerformanceUtil();
    v35 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v35);
    v38 = &v49;
    v36 = v44;
    Date.init()();
    v40 = v37;
    v41 = type metadata accessor for ExecuteResponse();
    v39 = partial apply for specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:);
    LOBYTE(v38) = 2;
    v37[0] = "makeResponse(forErrorMessage:)";
    v37[1] = 30;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    return (*(v45 + 8))(v36, v46);
  }
}

uint64_t PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = type metadata accessor for KnowledgeFallbackHelper(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for Parse();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for Input();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:), 0, 0);
}

uint64_t PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:)()
{
  v29 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PushOffQueryFlow in handleServerDrivenExperience", v4, 2u);
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v12 = v0[7];

  *v6 = v12;
  (*(v8 + 104))(v6, enum case for Parse.pommesResponse(_:), v7);
  v13 = v12;
  Input.init(parse:)();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  LODWORD(v6) = [objc_opt_self() isSiriLocationServicesPromptingEnabled];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v14 = v11[5];
  v15 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v15 - 8) + 56))(v9 + v14, 1, 1, v15);
  *(v9 + v11[6]) = xmmword_B86A0;
  *(v9 + v11[7]) = xmmword_B86A0;
  outlined init with copy of KnowledgeFallbackHelper(v9, v10, type metadata accessor for KnowledgeFallbackHelper);
  v16 = _s21InformationFlowPlugin0a7RoutingB0C5input15outputPublisher17interactionStream38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperACSg0k3KitB05InputV_AJ06OutputG5Async_p0kA6Search017CurareInteractionI0_pSgSbAA09KnowledgeqR9Providing_ptcfCTf4nnnnen_nAA0zqR0V_Tt4g5(v5, v27, v28, v6, v10);
  outlined destroy of KnowledgeFallbackHelper(v9, type metadata accessor for KnowledgeFallbackHelper);
  if (v16)
  {
    v0[5] = v16;
    type metadata accessor for InformationRoutingFlow(0);
    lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow, &protocol conformance descriptor for InformationRoutingFlow);
    static ExecuteResponse.complete<A>(next:)();
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#PushOffQueryFlow failed to construct routing flow to render server-driven response", v19, 2u);
    }

    v20 = v0[8];

    v21 = v20 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v22 = *v21;
    v23 = *(v21 + 8);
    *v21 = 0;
    *(v21 + 8) = 0;
    v24 = *(v21 + 16);
    *(v21 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v22, v23, v24);
    PushOffQueryFlow.state.didset();
    static ExecuteResponse.complete()();
  }

  v25 = v0[1];

  return v25();
}

uint64_t PushOffQueryFlow.deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_outputPublisher));

  outlined consume of PushOffQueryFlow.State(*(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state), *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state + 8), *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state + 16));
  return v0;
}

uint64_t PushOffQueryFlow.__deallocating_deinit()
{
  PushOffQueryFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 184))();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance PushOffQueryFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

void protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.execute() in conformance PushOffQueryFlow(uint64_t a1)
{
  v6 = (*(**v1 + 240) + **(**v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PushOffQueryFlow(uint64_t a1, uint64_t a2)
{
  Flow = type metadata accessor for PushOffQueryFlow(0);

  return Flow<>.exitValue.getter(Flow, a2);
}

uint64_t _s21InformationFlowPlugin0a7RoutingB0C5input15outputPublisher17interactionStream38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperACSg0k3KitB05InputV_AJ06OutputG5Async_p0kA6Search017CurareInteractionI0_pSgSbAA09KnowledgeqR9Providing_ptcfCTf4nnnnen_nAA0zqR0V_Tt4g5(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v227 = a5;
  v223 = a4;
  v226 = a3;
  v228 = a2;
  v211 = type metadata accessor for MessagePayload.ClientAction();
  v210 = *(v211 - 8);
  v6 = __chkstk_darwin(v211);
  v207 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v208 = &v202 - v8;
  v213 = type metadata accessor for IFClientActionParse();
  v214 = *(v213 - 8);
  v9 = __chkstk_darwin(v213);
  v209 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v215 = &v202 - v11;
  v12 = type metadata accessor for Parse.DirectInvocation();
  v219 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v204 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v205 = &v202 - v16;
  v17 = __chkstk_darwin(v15);
  v206 = &v202 - v18;
  v19 = __chkstk_darwin(v17);
  v212 = &v202 - v20;
  v21 = __chkstk_darwin(v19);
  v217 = &v202 - v22;
  __chkstk_darwin(v21);
  v24 = &v202 - v23;
  v25 = type metadata accessor for CATOption();
  __chkstk_darwin(v25 - 8);
  v222 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for InformationRoutingFlow.State(0);
  __chkstk_darwin(v221);
  v224 = (&v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = type metadata accessor for Parse.PegasusResult();
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v29 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Parse();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v37 = &v202 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = (&v202 - v39);
  __chkstk_darwin(v38);
  v42 = &v202 - v41;
  v236[3] = type metadata accessor for KnowledgeFallbackHelper(0);
  v236[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v236);
  outlined init with take of KnowledgeFallbackHelper(v227, boxed_opaque_existential_1);
  v227 = a1;
  Input.parse.getter();
  v44 = v31;
  v45 = (*(v31 + 88))(v42, v30);
  v225 = v31;
  if (v45 == enum case for Parse.directInvocation(_:))
  {
    v46 = *(v31 + 16);
    v218 = v42;
    v46(v37, v42, v30);
    (*(v31 + 96))(v37, v30);
    v47 = v219;
    v48 = *(v219 + 16);
    v48(v24, v37, v12);
    v49 = v24;
    v50 = Parse.DirectInvocation.identifier.getter();
    v220 = v30;
    v52 = v12;
    v203 = v37;
    if (v50 == 0xD00000000000003DLL && 0x80000000000BD690 == v51)
    {

LABEL_8:
      v70 = v224;
      v202 = v49;
      v48(v224, v49, v12);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of OutputPublisherAsync(v228, &v235);
      v71 = v226;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      outlined init with copy of OutputPublisherAsync(v236, &v233);
      static AceService.currentAsync.getter();
      static Device.current.getter();
      type metadata accessor for CommonCATs(0);
      static CATOption.defaultMode.getter();
      v72 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v73 = swift_allocObject();
      v74 = [objc_opt_self() sharedPreferences];
      v75 = type metadata accessor for PommesServerFallbackPreferences();
      swift_allocObject();
      v76 = PommesServerFallbackPreferences.init(_:)();
      v73[11] = v75;
      v73[12] = &protocol witness table for PommesServerFallbackPreferences;
      v73[8] = v76;
      outlined init with take of SiriSuggestionsBroker(v229, (v73 + 3));
      v73[2] = v72;
      type metadata accessor for ExperienceSelector();
      v77 = swift_allocObject();
      type metadata accessor for InformationRoutingFlow(0);
      v64 = swift_allocObject();
      v78 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
      *v78 = 0u;
      *(v78 + 16) = 0u;
      *(v78 + 32) = 0;
      outlined init with copy of KnowledgeFallbackHelper(v70, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
      outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
      outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
      *(v64 + 96) = v73;
      *(v64 + 104) = v77;
      swift_beginAccess();
      outlined assign with copy of CurareInteractionStream?(v234, v78);
      swift_endAccess();
      *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
      outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
      UtteranceNormalizer.init(locale:)();
      type metadata accessor for AnalyticsComponentIdGenerator();
      swift_allocObject();
      AnalyticsComponentIdGenerator.init()();
      type metadata accessor for KnowledgeFallbackInstrumentationUtil();
      swift_allocObject();
      v79 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
      outlined destroy of Any?(v71, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(v228);
      v80 = type metadata accessor for Input();
      (*(*(v80 - 8) + 8))(v227, v80);
      __swift_destroy_boxed_opaque_existential_0Tm(&v230);
      __swift_destroy_boxed_opaque_existential_0Tm(&v233);
      outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&v235);
      outlined destroy of KnowledgeFallbackHelper(v70, type metadata accessor for InformationRoutingFlow.State);
      v81 = *(v47 + 8);
      v81(v202, v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v236);
      *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v79;
      v81(v203, v12);
LABEL_22:
      v42 = v218;
      v66 = v220;
      goto LABEL_23;
    }

    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v69)
    {
      goto LABEL_8;
    }

    v96 = v47;
    v97 = v47 + 8;
    v98 = *(v47 + 8);
    v98(v49, v12);
    v48(v217, v37, v12);
    v99 = Parse.DirectInvocation.identifier.getter();
    v216 = v98;
    if (v99 == 0xD000000000000040 && 0x80000000000BD6D0 == v100)
    {
    }

    else
    {
      v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v108 & 1) == 0)
      {
        v98(v217, v12);
        v48(v212, v37, v12);
        if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x80000000000BD650 == v125)
        {
        }

        else
        {
          v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v150 & 1) == 0)
          {
            v98(v212, v12);
            v48(v206, v37, v12);
            if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000045 && 0x80000000000BD720 == v163)
            {
            }

            else
            {
              v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v164 & 1) == 0)
              {
                v98(v206, v12);
                v48(v205, v37, v12);
                if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000041 && 0x80000000000BD770 == v176)
                {
                }

                else
                {
                  v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v177 & 1) == 0)
                  {
                    v98(v205, v12);
                    v189 = v204;
                    (*(v96 + 32))(v204, v37, v52);
                    v190 = v224;
                    v48(v224, v189, v52);
                    swift_storeEnumTagMultiPayload();
                    v191 = v228;
                    outlined init with copy of OutputPublisherAsync(v228, &v235);
                    v221 = v97;
                    v219 = v52;
                    v192 = v226;
                    outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    outlined init with copy of OutputPublisherAsync(v236, &v233);
                    static AceService.currentAsync.getter();
                    static Device.current.getter();
                    type metadata accessor for CommonCATs(0);
                    static CATOption.defaultMode.getter();
                    v193 = CATWrapper.__allocating_init(options:globals:)();
                    type metadata accessor for InformationViewFactory();
                    v194 = swift_allocObject();
                    v195 = [objc_opt_self() sharedPreferences];
                    v196 = type metadata accessor for PommesServerFallbackPreferences();
                    swift_allocObject();
                    v197 = PommesServerFallbackPreferences.init(_:)();
                    v194[11] = v196;
                    v194[12] = &protocol witness table for PommesServerFallbackPreferences;
                    v194[8] = v197;
                    outlined init with take of SiriSuggestionsBroker(v229, (v194 + 3));
                    v194[2] = v193;
                    type metadata accessor for ExperienceSelector();
                    v198 = swift_allocObject();
                    type metadata accessor for InformationRoutingFlow(0);
                    v64 = swift_allocObject();
                    v199 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                    *v199 = 0u;
                    *(v199 + 16) = 0u;
                    *(v199 + 32) = 0;
                    outlined init with copy of KnowledgeFallbackHelper(v190, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                    outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
                    outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
                    *(v64 + 96) = v194;
                    *(v64 + 104) = v198;
                    swift_beginAccess();
                    outlined assign with copy of CurareInteractionStream?(v234, v199);
                    swift_endAccess();
                    *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
                    outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                    UtteranceNormalizer.init(locale:)();
                    type metadata accessor for AnalyticsComponentIdGenerator();
                    swift_allocObject();
                    AnalyticsComponentIdGenerator.init()();
                    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                    swift_allocObject();
                    v200 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                    outlined destroy of Any?(v192, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(v191);
                    v201 = type metadata accessor for Input();
                    (*(*(v201 - 8) + 8))(v227, v201);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v230);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v233);
                    outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v235);
                    outlined destroy of KnowledgeFallbackHelper(v190, type metadata accessor for InformationRoutingFlow.State);
                    v216(v189, v219);
                    __swift_destroy_boxed_opaque_existential_0Tm(v236);
                    *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v200;
                    goto LABEL_22;
                  }
                }

                v178 = v224;
                v48(v224, v205, v12);
                swift_storeEnumTagMultiPayload();
                v179 = v228;
                outlined init with copy of OutputPublisherAsync(v228, &v235);
                v180 = v226;
                outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                outlined init with copy of OutputPublisherAsync(v236, &v233);
                static AceService.currentAsync.getter();
                static Device.current.getter();
                type metadata accessor for CommonCATs(0);
                static CATOption.defaultMode.getter();
                v181 = CATWrapper.__allocating_init(options:globals:)();
                type metadata accessor for InformationViewFactory();
                v182 = swift_allocObject();
                v183 = [objc_opt_self() sharedPreferences];
                v184 = type metadata accessor for PommesServerFallbackPreferences();
                swift_allocObject();
                v185 = PommesServerFallbackPreferences.init(_:)();
                v182[11] = v184;
                v182[12] = &protocol witness table for PommesServerFallbackPreferences;
                v182[8] = v185;
                outlined init with take of SiriSuggestionsBroker(v229, (v182 + 3));
                v182[2] = v181;
                type metadata accessor for ExperienceSelector();
                v186 = swift_allocObject();
                type metadata accessor for InformationRoutingFlow(0);
                v64 = swift_allocObject();
                v187 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                *v187 = 0u;
                *(v187 + 16) = 0u;
                *(v187 + 32) = 0;
                outlined init with copy of KnowledgeFallbackHelper(v178, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
                outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
                *(v64 + 96) = v182;
                *(v64 + 104) = v186;
                swift_beginAccess();
                outlined assign with copy of CurareInteractionStream?(v234, v187);
                swift_endAccess();
                *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
                outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                UtteranceNormalizer.init(locale:)();
                type metadata accessor for AnalyticsComponentIdGenerator();
                swift_allocObject();
                AnalyticsComponentIdGenerator.init()();
                type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                swift_allocObject();
                v119 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                outlined destroy of Any?(v180, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(v179);
                v188 = type metadata accessor for Input();
                (*(*(v188 - 8) + 8))(v227, v188);
                __swift_destroy_boxed_opaque_existential_0Tm(&v230);
                __swift_destroy_boxed_opaque_existential_0Tm(&v233);
                outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(&v235);
                outlined destroy of KnowledgeFallbackHelper(v178, type metadata accessor for InformationRoutingFlow.State);
                v121 = &v231;
                goto LABEL_21;
              }
            }

            v165 = v224;
            v48(v224, v206, v12);
            swift_storeEnumTagMultiPayload();
            v166 = v228;
            outlined init with copy of OutputPublisherAsync(v228, &v235);
            v167 = v226;
            outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            outlined init with copy of OutputPublisherAsync(v236, &v233);
            static AceService.currentAsync.getter();
            static Device.current.getter();
            type metadata accessor for CommonCATs(0);
            static CATOption.defaultMode.getter();
            v168 = CATWrapper.__allocating_init(options:globals:)();
            type metadata accessor for InformationViewFactory();
            v169 = swift_allocObject();
            v170 = [objc_opt_self() sharedPreferences];
            v171 = type metadata accessor for PommesServerFallbackPreferences();
            swift_allocObject();
            v172 = PommesServerFallbackPreferences.init(_:)();
            v169[11] = v171;
            v169[12] = &protocol witness table for PommesServerFallbackPreferences;
            v169[8] = v172;
            outlined init with take of SiriSuggestionsBroker(v229, (v169 + 3));
            v169[2] = v168;
            type metadata accessor for ExperienceSelector();
            v173 = swift_allocObject();
            type metadata accessor for InformationRoutingFlow(0);
            v64 = swift_allocObject();
            v174 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
            *v174 = 0u;
            *(v174 + 16) = 0u;
            *(v174 + 32) = 0;
            outlined init with copy of KnowledgeFallbackHelper(v165, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
            outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
            outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
            *(v64 + 96) = v169;
            *(v64 + 104) = v173;
            swift_beginAccess();
            outlined assign with copy of CurareInteractionStream?(v234, v174);
            swift_endAccess();
            *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
            outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
            UtteranceNormalizer.init(locale:)();
            type metadata accessor for AnalyticsComponentIdGenerator();
            swift_allocObject();
            AnalyticsComponentIdGenerator.init()();
            type metadata accessor for KnowledgeFallbackInstrumentationUtil();
            swift_allocObject();
            v119 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
            outlined destroy of Any?(v167, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(v166);
            v175 = type metadata accessor for Input();
            (*(*(v175 - 8) + 8))(v227, v175);
            __swift_destroy_boxed_opaque_existential_0Tm(&v230);
            __swift_destroy_boxed_opaque_existential_0Tm(&v233);
            outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(&v235);
            outlined destroy of KnowledgeFallbackHelper(v165, type metadata accessor for InformationRoutingFlow.State);
            v121 = &v232;
LABEL_21:
            v122 = v216;
            v216(*(v121 - 32), v12);
            __swift_destroy_boxed_opaque_existential_0Tm(v236);
            *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v119;
            v122(v203, v12);
            goto LABEL_22;
          }
        }

        v151 = v224;
        v48(v224, v212, v12);
        swift_storeEnumTagMultiPayload();
        v152 = v228;
        outlined init with copy of OutputPublisherAsync(v228, &v235);
        v153 = v226;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        outlined init with copy of OutputPublisherAsync(v236, &v233);
        static AceService.currentAsync.getter();
        static Device.current.getter();
        type metadata accessor for CommonCATs(0);
        static CATOption.defaultMode.getter();
        v154 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for InformationViewFactory();
        v155 = swift_allocObject();
        v156 = [objc_opt_self() sharedPreferences];
        v157 = type metadata accessor for PommesServerFallbackPreferences();
        swift_allocObject();
        v158 = PommesServerFallbackPreferences.init(_:)();
        v155[11] = v157;
        v155[12] = &protocol witness table for PommesServerFallbackPreferences;
        v155[8] = v158;
        outlined init with take of SiriSuggestionsBroker(v229, (v155 + 3));
        v155[2] = v154;
        type metadata accessor for ExperienceSelector();
        v159 = swift_allocObject();
        type metadata accessor for InformationRoutingFlow(0);
        v64 = swift_allocObject();
        v160 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
        *v160 = 0u;
        *(v160 + 16) = 0u;
        *(v160 + 32) = 0;
        outlined init with copy of KnowledgeFallbackHelper(v151, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
        outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
        outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
        *(v64 + 96) = v155;
        *(v64 + 104) = v159;
        swift_beginAccess();
        outlined assign with copy of CurareInteractionStream?(v234, v160);
        swift_endAccess();
        *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
        outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
        UtteranceNormalizer.init(locale:)();
        type metadata accessor for AnalyticsComponentIdGenerator();
        swift_allocObject();
        AnalyticsComponentIdGenerator.init()();
        type metadata accessor for KnowledgeFallbackInstrumentationUtil();
        swift_allocObject();
        v119 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
        outlined destroy of Any?(v153, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v152);
        v161 = type metadata accessor for Input();
        (*(*(v161 - 8) + 8))(v227, v161);
        __swift_destroy_boxed_opaque_existential_0Tm(&v230);
        __swift_destroy_boxed_opaque_existential_0Tm(&v233);
        outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(&v235);
        outlined destroy of KnowledgeFallbackHelper(v151, type metadata accessor for InformationRoutingFlow.State);
        v121 = v234;
        goto LABEL_21;
      }
    }

    v109 = v224;
    v48(v224, v217, v12);
    swift_storeEnumTagMultiPayload();
    v110 = v228;
    outlined init with copy of OutputPublisherAsync(v228, &v235);
    v111 = v226;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v236, &v233);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v112 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v113 = swift_allocObject();
    v114 = [objc_opt_self() sharedPreferences];
    v115 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v116 = PommesServerFallbackPreferences.init(_:)();
    v113[11] = v115;
    v113[12] = &protocol witness table for PommesServerFallbackPreferences;
    v113[8] = v116;
    outlined init with take of SiriSuggestionsBroker(v229, (v113 + 3));
    v113[2] = v112;
    type metadata accessor for ExperienceSelector();
    v117 = swift_allocObject();
    type metadata accessor for InformationRoutingFlow(0);
    v64 = swift_allocObject();
    v118 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v118 = 0u;
    *(v118 + 16) = 0u;
    *(v118 + 32) = 0;
    outlined init with copy of KnowledgeFallbackHelper(v109, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
    outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
    *(v64 + 96) = v113;
    *(v64 + 104) = v117;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v234, v118);
    swift_endAccess();
    *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
    outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    type metadata accessor for AnalyticsComponentIdGenerator();
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    swift_allocObject();
    v119 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v111, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v110);
    v120 = type metadata accessor for Input();
    (*(*(v120 - 8) + 8))(v227, v120);
    __swift_destroy_boxed_opaque_existential_0Tm(&v230);
    __swift_destroy_boxed_opaque_existential_0Tm(&v233);
    outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v235);
    outlined destroy of KnowledgeFallbackHelper(v109, type metadata accessor for InformationRoutingFlow.State);
    v121 = &v235;
    goto LABEL_21;
  }

  if (v45 == enum case for Parse.pegasusResults(_:))
  {
    v53 = *(v31 + 16);
    v220 = v30;
    v53(v40, v42, v30);
    (*(v31 + 96))(v40, v30);
    v54 = v216;
    v55 = v218;
    (*(v216 + 4))(v29, v40, v218);
    v56 = v224;
    v54[2](v224, v29, v55);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of OutputPublisherAsync(v228, &v235);
    v57 = v226;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v236, &v233);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v58 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v59 = swift_allocObject();
    v60 = [objc_opt_self() sharedPreferences];
    v61 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v62 = PommesServerFallbackPreferences.init(_:)();
    v59[11] = v61;
    v59[12] = &protocol witness table for PommesServerFallbackPreferences;
    v59[8] = v62;
    outlined init with take of SiriSuggestionsBroker(v229, (v59 + 3));
    v59[2] = v58;
    type metadata accessor for ExperienceSelector();
    v63 = swift_allocObject();
    type metadata accessor for InformationRoutingFlow(0);
    v64 = swift_allocObject();
    v65 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = 0;
    outlined init with copy of KnowledgeFallbackHelper(v56, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
    outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
    *(v64 + 96) = v59;
    *(v64 + 104) = v63;
    v66 = v220;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v234, v65);
    swift_endAccess();
    *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
    outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    type metadata accessor for AnalyticsComponentIdGenerator();
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    swift_allocObject();
    v67 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v57, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v228);
    v68 = type metadata accessor for Input();
    (*(*(v68 - 8) + 8))(v227, v68);
    __swift_destroy_boxed_opaque_existential_0Tm(&v230);
    __swift_destroy_boxed_opaque_existential_0Tm(&v233);
    outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v235);
    outlined destroy of KnowledgeFallbackHelper(v56, type metadata accessor for InformationRoutingFlow.State);
    (v54[1])(v29, v55);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(v236);
    *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v67;
    goto LABEL_23;
  }

  if (v45 == enum case for Parse.pommesResponse(_:))
  {
    v82 = *(v31 + 16);
    v220 = v30;
    v82(v40, v42, v30);
    (*(v31 + 96))(v40, v30);
    v83 = *v40;
    v84 = v224;
    *v224 = *v40;
    *(v84 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    v85 = v228;
    outlined init with copy of OutputPublisherAsync(v228, &v235);
    v218 = v42;
    v86 = v226;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v236, &v233);
    v87 = v83;
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs(0);
    static CATOption.defaultMode.getter();
    v88 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v89 = swift_allocObject();
    v90 = [objc_opt_self() sharedPreferences];
    v91 = type metadata accessor for PommesServerFallbackPreferences();
    swift_allocObject();
    v92 = PommesServerFallbackPreferences.init(_:)();
    v89[11] = v91;
    v89[12] = &protocol witness table for PommesServerFallbackPreferences;
    v89[8] = v92;
    outlined init with take of SiriSuggestionsBroker(v229, (v89 + 3));
    v89[2] = v88;
    type metadata accessor for ExperienceSelector();
    v93 = swift_allocObject();
    type metadata accessor for InformationRoutingFlow(0);
    v64 = swift_allocObject();
    v94 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v94 = 0u;
    *(v94 + 16) = 0u;
    *(v94 + 32) = 0;
    outlined init with copy of KnowledgeFallbackHelper(v84, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
    outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
    *(v64 + 96) = v89;
    *(v64 + 104) = v93;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v234, v94);
    swift_endAccess();
    *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
    outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    type metadata accessor for AnalyticsComponentIdGenerator();
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    swift_allocObject();
    v67 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();

    v66 = v220;
    outlined destroy of Any?(v86, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    v95 = type metadata accessor for Input();
    (*(*(v95 - 8) + 8))(v227, v95);
    __swift_destroy_boxed_opaque_existential_0Tm(&v230);
    __swift_destroy_boxed_opaque_existential_0Tm(&v233);
    v42 = v218;
    outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v235);
    outlined destroy of KnowledgeFallbackHelper(v84, type metadata accessor for InformationRoutingFlow.State);
    goto LABEL_11;
  }

  if (v45 != enum case for Parse.ifClientAction(_:))
  {
    outlined destroy of Any?(v226, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v228);
    v124 = type metadata accessor for Input();
    (*(*(v124 - 8) + 8))(v227, v124);
    __swift_destroy_boxed_opaque_existential_0Tm(v236);
    v64 = 0;
    v66 = v30;
    goto LABEL_24;
  }

  v101 = *(v31 + 16);
  v218 = v42;
  v66 = v30;
  v101(v34, v42, v30);
  (*(v31 + 96))(v34, v30);
  v102 = v213;
  (*(v214 + 32))(v215, v34, v213);
  v103 = v208;
  IFClientActionParse.clientAction.getter();
  v104 = MessagePayload.ClientAction.toolId.getter();
  v106 = v105;
  v219 = *(v210 + 8);
  (v219)(v103, v211);
  if (v104 == 0x657461676976616ELL && v106 == 0xEB000000006F745FLL)
  {

    v107 = v209;
  }

  else
  {
    v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v107 = v209;
    if ((v126 & 1) == 0)
    {
      outlined destroy of Any?(v226, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(v228);
      v162 = type metadata accessor for Input();
      (*(*(v162 - 8) + 8))(v227, v162);
      (*(v214 + 8))(v215, v102);
      __swift_destroy_boxed_opaque_existential_0Tm(v236);
      v64 = 0;
      v44 = v225;
      v42 = v218;
      goto LABEL_24;
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v127 = type metadata accessor for Logger();
  __swift_project_value_buffer(v127, static Logger.information);
  v128 = v214;
  (*(v214 + 16))(v107, v215, v102);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v235 = v132;
    *v131 = 136315138;
    v133 = v207;
    IFClientActionParse.clientAction.getter();
    v217 = MessagePayload.ClientAction.toolId.getter();
    v134 = v107;
    v136 = v135;
    (v219)(v133, v211);
    (*(v128 + 8))(v134, v213);
    v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v136, &v235);

    *(v131 + 4) = v137;
    _os_log_impl(&dword_0, v129, v130, "%s shim tool found", v131, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v132);
  }

  else
  {

    (*(v128 + 8))(v107, v102);
  }

  v138 = v224;
  IFClientActionParse.clientAction.getter();
  swift_storeEnumTagMultiPayload();
  v139 = v228;
  outlined init with copy of OutputPublisherAsync(v228, &v235);
  v140 = v226;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v226, v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  outlined init with copy of OutputPublisherAsync(v236, &v233);
  static AceService.currentAsync.getter();
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v141 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v142 = swift_allocObject();
  v143 = [objc_opt_self() sharedPreferences];
  v144 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v145 = PommesServerFallbackPreferences.init(_:)();
  v142[11] = v144;
  v142[12] = &protocol witness table for PommesServerFallbackPreferences;
  v142[8] = v145;
  outlined init with take of SiriSuggestionsBroker(v229, (v142 + 3));
  v142[2] = v141;
  type metadata accessor for ExperienceSelector();
  v146 = swift_allocObject();
  type metadata accessor for InformationRoutingFlow(0);
  v64 = swift_allocObject();
  v147 = v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
  *v147 = 0u;
  *(v147 + 16) = 0u;
  *(v147 + 32) = 0;
  outlined init with copy of KnowledgeFallbackHelper(v138, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined init with copy of OutputPublisherAsync(&v230, v64 + 56);
  outlined init with copy of OutputPublisherAsync(&v235, v64 + 16);
  *(v64 + 96) = v142;
  *(v64 + 104) = v146;
  swift_beginAccess();
  outlined assign with copy of CurareInteractionStream?(v234, v147);
  swift_endAccess();
  *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v223 & 1;
  outlined init with copy of OutputPublisherAsync(&v233, v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
  UtteranceNormalizer.init(locale:)();
  type metadata accessor for AnalyticsComponentIdGenerator();
  swift_allocObject();
  AnalyticsComponentIdGenerator.init()();
  type metadata accessor for KnowledgeFallbackInstrumentationUtil();
  swift_allocObject();
  v148 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
  outlined destroy of Any?(v140, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v139);
  v149 = type metadata accessor for Input();
  (*(*(v149 - 8) + 8))(v227, v149);
  __swift_destroy_boxed_opaque_existential_0Tm(&v230);
  __swift_destroy_boxed_opaque_existential_0Tm(&v233);
  outlined destroy of Any?(v234, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(&v235);
  outlined destroy of KnowledgeFallbackHelper(v138, type metadata accessor for InformationRoutingFlow.State);
  (*(v214 + 8))(v215, v213);
  __swift_destroy_boxed_opaque_existential_0Tm(v236);
  *(v64 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v148;
  v66 = v30;
  v42 = v218;
LABEL_23:
  v44 = v225;
LABEL_24:
  (*(v44 + 8))(v42, v66);
  return v64;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized static PushOffQueryFlow.State.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return a4 == a1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      type metadata accessor for NSObject();
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CATOption();
  __chkstk_darwin(v9 - 8);
  v10 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate;
  v11 = type metadata accessor for NLContextUpdate();
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_targetedRequest) = 0;
  type metadata accessor for ExperienceSelector();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_experienceSelector) = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_renderComponentFlowFactory) = a3;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a4, v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  v12 = v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = 0;

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  outlined init with take of SiriSuggestionsBroker(v19, v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_outputPublisher);
  static Device.current.getter();
  type metadata accessor for CommonCATs(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v14 = swift_allocObject();
  v15 = [objc_opt_self() sharedPreferences];
  v16 = type metadata accessor for PommesServerFallbackPreferences();
  swift_allocObject();
  v17 = PommesServerFallbackPreferences.init(_:)();
  v14[11] = v16;
  v14[12] = &protocol witness table for PommesServerFallbackPreferences;
  v14[8] = v17;
  outlined destroy of Any?(a4, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  outlined init with take of SiriSuggestionsBroker(v19, (v14 + 3));
  v14[2] = v13;
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_informationViewFactory) = v14;
  return v4;
}

uint64_t outlined assign with take of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id outlined copy of PushOffQueryFlow.State(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

void outlined consume of PushOffQueryFlow.State(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t type metadata accessor for PushOffQueryFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for PushOffQueryFlow;
  if (!type metadata singleton initialization cache for PushOffQueryFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t specialized PushOffQueryFlow.isUserCanceled(pommesResponse:)(uint64_t a1)
{
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (result >> 62)
  {
    goto LABEL_18;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    do
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v2 = *(result + 32);
      }

      v3 = v2;

      type metadata accessor for GenericExperience();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      v11 = v3;
      result = dispatch thunk of Experience.catIds.getter();
      v4 = result;
      v5 = result + 40;
      v6 = -*(result + 16);
      v7 = -1;
      while (1)
      {
        if (v6 + v7 == -1)
        {

          return 0;
        }

        if (++v7 >= *(v4 + 16))
        {
          break;
        }

        lazy protocol witness table accessor for type String and conformance String();

        if (StringProtocol.contains<A>(_:)())
        {

LABEL_16:

          return 1;
        }

        v5 += 16;
        v8 = StringProtocol.contains<A>(_:)();

        if (v8)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      v9 = result;
      v10 = _CocoaArrayWrapper.endIndex.getter();
      result = v9;
    }

    while (v10);
  }

  return 0;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type PushOffQueryError and conformance PushOffQueryError()
{
  result = lazy protocol witness table cache variable for type PushOffQueryError and conformance PushOffQueryError;
  if (!lazy protocol witness table cache variable for type PushOffQueryError and conformance PushOffQueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PushOffQueryError and conformance PushOffQueryError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PushOffQueryError] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PushOffQueryError] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PushOffQueryError] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21InformationFlowPlugin17PushOffQueryErrorOGMd, &_sSay21InformationFlowPlugin17PushOffQueryErrorOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PushOffQueryError] and conformance [A]);
  }

  return result;
}

uint64_t sub_296C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_29714(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t sub_29768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for PushOffQueryError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushOffQueryError(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for PushOffQueryFlow(uint64_t a1)
{
  type metadata accessor for NLContextUpdate?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for NLContextUpdate?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NLContextUpdate?)
  {
    type metadata accessor for NLContextUpdate();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NLContextUpdate?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21InformationFlowPlugin012PushOffQueryB0C5StateO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PushOffQueryFlow.State(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushOffQueryFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for PushOffQueryFlow.State(uint64_t result, unsigned int a2)
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

uint64_t outlined init with take of KnowledgeFallbackHelper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnowledgeFallbackHelper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of KnowledgeFallbackHelper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t outlined destroy of KnowledgeFallbackHelper(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t String.base64Encode(encoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = String.data(using:allowLossyConversion:)();
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data?(v6, v7);
  return countAndFlagsBits;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t String.base64Decode(encoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Data.init(base64Encoded:options:)();
  v10 = 0;
  if (v9 >> 60 != 15)
  {
    v11 = v8;
    v12 = v9;
    (*(v5 + 16))(v7, a1, v4, 0);
    v13 = String.init(data:encoding:)();
    outlined consume of Data?(v11, v12);
    return v13;
  }

  return v10;
}

uint64_t RenderComponentFlowFactory.__allocating_init(outputPublisher:informationViewFactory:dialogStateManager:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  outlined init with take of OutputPublisherAsync(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t RenderComponentFlowFactory.init(outputPublisher:informationViewFactory:dialogStateManager:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  outlined init with take of OutputPublisherAsync(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = v23;
  *(v9 + 200) = v8;
  *(v9 + 184) = v22;
  *(v9 + 168) = v21;
  *(v9 + 152) = a7;
  *(v9 + 160) = a8;
  *(v9 + 136) = a5;
  *(v9 + 144) = a6;
  *(v9 + 120) = a3;
  *(v9 + 128) = a4;
  *(v9 + 104) = a1;
  *(v9 + 112) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  *(v9 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  *(v9 + 216) = swift_task_alloc();
  v10 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  *(v9 + 224) = v10;
  *(v9 + 232) = *(v10 - 8);
  *(v9 + 240) = swift_task_alloc();
  v11 = type metadata accessor for NLContextUpdate();
  *(v9 + 248) = v11;
  v12 = *(v11 - 8);
  *(v9 + 256) = v12;
  *(v9 + 264) = *(v12 + 64);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v9 + 288) = v13;
  *(v9 + 296) = *(v13 - 8);
  *(v9 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow7HintsUIVSgMd, &_s11SiriKitFlow7HintsUIVSgMR);
  *(v9 + 312) = swift_task_alloc();
  v14 = type metadata accessor for HintsUI();
  *(v9 + 320) = v14;
  *(v9 + 328) = *(v14 - 8);
  *(v9 + 336) = swift_task_alloc();
  v15 = type metadata accessor for SuggestionContextData();
  *(v9 + 344) = v15;
  *(v9 + 352) = *(v15 - 8);
  *(v9 + 360) = swift_task_alloc();
  v16 = type metadata accessor for Date();
  *(v9 + 368) = v16;
  *(v9 + 376) = *(v16 - 8);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v17 = type metadata accessor for DialogPhase();
  *(v9 + 400) = v17;
  *(v9 + 408) = *(v17 - 8);
  *(v9 + 416) = swift_task_alloc();
  v18 = type metadata accessor for OSSignpostID();
  *(v9 + 424) = v18;
  *(v9 + 432) = *(v18 - 8);
  *(v9 + 440) = swift_task_alloc();

  return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

void RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 448) = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RenderPegasusFlow making flow to render PegasusResult", v4, 2u);
  }

  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 176);
  v6 = static Logger.informationLog;
  *(v0 + 456) = static Logger.informationLog;
  v7 = v6;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (v5 && (dispatch thunk of PommesResponse.listenAfterSpeaking.getter() & 1) != 0)
  {
    static DialogPhase.clarification.getter();
  }

  else
  {
    static DialogPhase.summary.getter();
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "RenderPegasusFlow using server driven experience", v10, 2u);
  }

  v11 = *(v0 + 416);
  v12 = *(v0 + 200);
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  v15 = *(v0 + 120);
  v18 = *(v0 + 104);
  v19 = *(v0 + 152);

  *(v0 + 464) = type metadata accessor for PerformanceUtil();
  *(v0 + 472) = static PerformanceUtil.shared.getter();
  v16 = swift_task_alloc();
  *(v0 + 480) = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v18;
  *(v16 + 40) = v15;
  *(v16 + 48) = v19;
  *(v16 + 64) = v14;
  *(v16 + 72) = v11;
  *(v16 + 80) = v13;
  Date.init()();
  v20 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v17 = swift_task_alloc();
  *(v0 + 488) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12SAUIAddViewsCG_SDy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGSgtMd, &_sSaySo12SAUIAddViewsCG_SDy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGSgtMR);
  *v17 = v0;
  v17[1] = RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:);

  __asm { BR              X8 }
}

{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Any?(v3, &_s11SiriKitFlow7HintsUIVSgMd, &_s11SiriKitFlow7HintsUIVSgMR);
  }

  else
  {
    v4 = v0[42];
    v5 = v0[25];
    (*(v2 + 32))(v4, v3, v1);
    (*(*v5 + 128))(v4, v0 + 9, v0 + 10);
    (*(v2 + 8))(v4, v1);
  }

  v6 = v0[9];
  v111 = v0;
  v107 = v6 >> 62;
  if (v6 >> 62)
  {
    v90 = v0[9];
    v91 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v90;
    v7 = v91;
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v110 = v6;
  if (v7)
  {
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = (v0[37] + 8);
      while (1)
      {
        if (v9)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v6 + 8 * v8 + 32);
        }

        v15 = v14;
        v16 = [v15 aceId];
        if (v16)
        {
          v17 = v16;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = 0;
          v20 = 0xE000000000000000;
        }

        v22 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v22 = v21;
        }

        if (v22)
        {
          v23 = [v15 aceId];
          if (!v23)
          {
            v13 = 0;
            goto LABEL_11;
          }

          v24 = v23;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v11 = v111[38];
          v12 = v111[36];
          UUID.init()();
          UUID.uuidString.getter();
          (*v10)(v11, v12);
        }

        v13 = String._bridgeToObjectiveC()();

LABEL_11:
        ++v8;
        [v15 setAceId:v13];

        v6 = v110;
        if (v7 == v8)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_24:
  v25 = v111;
  v26 = v111[10];
  v27 = v26 >> 62;
  if (!(v26 >> 62))
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    v109 = v111[10];
    if (!v28)
    {
      goto LABEL_44;
    }

    goto LABEL_26;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  v109 = v26;
  if (v28)
  {
LABEL_26:
    if (v28 < 1)
    {
LABEL_76:
      __break(1u);
      return;
    }

    v106 = v26 >> 62;
    v29 = v26 & 0xC000000000000001;
    v30 = (v111[37] + 8);

    v31 = 0;
    while (1)
    {
      if (v29)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v26 + 8 * v31 + 32);
      }

      v37 = v36;
      v38 = [v36 aceId];
      if (v38)
      {
        v39 = v38;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = v40 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = 0;
        v42 = 0xE000000000000000;
      }

      v44 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v44 = v43;
      }

      if (v44)
      {
        v45 = [v37 aceId];
        if (!v45)
        {
          v35 = 0;
          goto LABEL_30;
        }

        v46 = v45;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v32 = v25[38];
        v33 = v111[36];
        UUID.init()();
        UUID.uuidString.getter();
        v34 = v33;
        v25 = v111;
        (*v30)(v32, v34);
      }

      v35 = String._bridgeToObjectiveC()();

LABEL_30:
      v26 = v109;
      ++v31;
      [v37 setAceId:v35];

      if (v28 == v31)
      {

        v27 = v106;
        break;
      }
    }
  }

LABEL_44:
  v47 = v25[22];
  NLContextUpdate.init()();
  if (!v47)
  {
    outlined destroy of String(&unk_DC5E8);
    goto LABEL_54;
  }

  v48 = dispatch thunk of PommesResponse.primaryCatIds()();
  v49 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v48, &outlined read-only object #0 of RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:));

  outlined destroy of String(&unk_DC5E8);
  if ((v49 & 1) == 0)
  {
LABEL_54:
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "Sending PommesContext as usual", v64, 2u);
    }

    v65 = v25[22];

    if (v65)
    {
      PommesResponse.pommesContext.getter();
      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v67 = v25[26];
    v68 = type metadata accessor for PommesContext();
    (*(*(v68 - 8) + 56))(v67, v66, 1, v68);
    NLContextUpdate.pommesContext.setter();
    goto LABEL_60;
  }

  v50 = static SystemDialogActHelper.systemAskedUserToRepeat()();
  v52 = v25[28];
  v51 = v25[29];
  v53 = v25[27];
  if (!v50)
  {
    (*(v51 + 56))(v25[27], 1, 1, v25[28]);
    goto LABEL_53;
  }

  swift_getObjectType();
  SIRINLUSystemDialogAct.toNluSystemDialogAct()();
  swift_unknownObjectRelease();
  if ((*(v51 + 48))(v53, 1, v52) == 1)
  {
LABEL_53:
    outlined destroy of Any?(v25[27], &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
    goto LABEL_54;
  }

  (*(v25[29] + 32))(v25[30], v25[27], v25[28]);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "Got gibberish response from Pegasus; sending ask-to-repeat SDA", v56, 2u);
  }

  v57 = v25[29];
  v58 = v25[30];
  v59 = v25[28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v60 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_B8690;
  (*(v57 + 16))(v61 + v60, v58, v59);
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v57 + 8))(v58, v59);
LABEL_60:
  v69 = v25[14];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  RenderComponentFlowFactory.saveDialogStateUpdates(from:)(v69);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134218240;
    if (v107)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v73 = *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8));
    }

    *(v72 + 4) = v73;

    *(v72 + 12) = 2048;
    if (v27)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v74 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    }

    *(v72 + 14) = v74;
    _os_log_impl(&dword_0, v70, v71, "RenderPegasusFlow creating output with views %ld : commands %ld", v72, 0x16u);
  }

  else
  {
  }

  v95 = v25[68];
  v101 = v25[53];
  v102 = v25[55];
  v105 = v25[52];
  v103 = v25[51];
  v104 = v25[50];
  v99 = v25[45];
  v100 = v25[54];
  v97 = v25[44];
  v98 = v25[43];
  v75 = v25[34];
  v76 = v25[35];
  v96 = v76;
  v78 = v25[32];
  v77 = v25[33];
  v79 = v25[31];
  v108 = v75;
  v94 = v25[23];
  v92 = v25[24];
  v93 = v25[22];
  outlined init with copy of OutputPublisherAsync(v25[25] + 16, (v25 + 2));
  (*(v78 + 16))(v75, v76, v79);
  v80 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v81 = (v77 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  (*(v78 + 32))(v86 + v80, v108, v79);
  *(v86 + v81) = v92;
  *(v86 + v82) = v95;
  *(v86 + v83) = v110;
  *(v86 + v84) = v109;
  *(v86 + v85) = v94;
  *(v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8)) = v93;
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  v87 = v93;

  v111[12] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v88 = Flow.eraseToAnyFlow()();
  (*(v78 + 8))(v96, v79);
  (*(v97 + 8))(v99, v98);
  (*(v100 + 8))(v102, v101);

  (*(v103 + 8))(v105, v104);

  v89 = v111[1];

  v89(v88);
}

uint64_t RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[49];
    v5 = v2[46];
    v6 = v2[47];
    v7 = *(v6 + 8);
    v2[62] = v7;
    v2[63] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
  }
}

{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 496))(*(v2 + 384), *(v2 + 368));

    return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
  }
}

{
  v1 = _swiftEmptyArrayStorage;
  v0[11] = _swiftEmptyArrayStorage;
  v2 = v0 + 11;
  v3 = specialized RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(v0[20], v0[64], v0[21]);

  if (v3)
  {
    v4 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = *v2;
  }

  v0[68] = v1;
  DialogPhase.aceValue.getter();
  if (v0[10] >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  SuggestionContextData.init(dialogPhase:hasAdditionalCommands:patternId:)();
  v5 = swift_task_alloc();
  v0[69] = v5;
  *v5 = v0;
  v5[1] = RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:);
  v6 = v0[45];
  v7 = v0[39];

  return static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:)(v7, v6);
}

{

  return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

void RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1)
{
  v2 = v1[9].i64[0];
  v3 = v1[3].i64[1];
  v1[32].i64[0] = v1[4].i64[0];
  v1[4].i64[1] = v3;
  v6 = v1[8];
  v1[32].i64[1] = static PerformanceUtil.shared.getter();
  v4 = swift_task_alloc();
  v1[33].i64[0] = v4;
  v4[1] = vextq_s8(v6, v6, 8uLL);
  v4[2].i64[0] = v2;
  Date.init()();
  v7 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v5 = swift_task_alloc();
  v1[33].i64[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
  *v5 = v1;
  v5[1] = RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:);

  __asm { BR              X8 }
}

uint64_t closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v11;
  v8[11] = v12;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

uint64_t closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = *(v0[3] + 56);
  v5 = type metadata accessor for DialogPhase();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v2, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = v0[12];
  if (v3)
  {
    v8 = PommesResponse.requestId.getter();
    v10 = v9;
    PommesResponse.pommesCandidateId.getter();
  }

  else
  {
    v11 = type metadata accessor for PommesCandidateId();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v10 = 0;
    v8 = 0;
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[2];
  v15 = (*(*v4 + 152))(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v12, v8, v10, v13);
  v17 = v16;

  outlined destroy of Any?(v13, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  outlined destroy of Any?(v12, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  *v14 = v15;
  v14[1] = v17;

  v18 = v0[1];

  return v18();
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v1 = v0[2];
  *v1 = static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8[19] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v8[23] = swift_task_alloc();
  v10 = type metadata accessor for AceOutput();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v11 = type metadata accessor for NLContextUpdate();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();

  return _swift_task_switch(closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

uint64_t closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v33 = *(v0[28] + 16);
  v33(v0[29], v0[12], v0[27]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = *(v4 + 16);

    *(v5 + 12) = 2048;
    swift_beginAccess();
    v6 = NLContextUpdate.rrEntities.getter();
    if (v6)
    {
      v7 = v6;
      swift_endAccess();
      v8 = *(v7 + 16);
    }

    else
    {
      swift_endAccess();
      v8 = 0;
    }

    *(v5 + 14) = v8;
    _os_log_impl(&dword_0, v2, v3, "Setting %ld entities on NLContextUpdate (displacing %ld)", v5, 0x16u);
  }

  else
  {
  }

  v9 = v0[15];
  swift_beginAccess();

  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  if (v9 >> 62)
  {
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

    v10 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    v10 = v0[15];
  }

  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[27];
  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[21];
  v30 = v0[20];
  v32 = v0[18];

  specialized Array.append<A>(contentsOf:)(v10);

  specialized Array.append<A>(contentsOf:)(v17);
  v33(v15, v11, v13);
  (*(v12 + 56))(v15, 0, 1, v13);
  AceOutput.init(commands:flowActivity:nlContextUpdate:)();
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg8taskType_Sb20isTerminalStepLoggedtMd, &_sSSSg8taskType_Sb20isTerminalStepLoggedtMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  (*(v16 + 8))(v14, v30);

  static PerformanceUtil.shared.getter();
  v18 = v0[19];
  if (v32)
  {
    PommesResponse.requestId.getter();
    PommesResponse.pommesCandidateId.getter();
  }

  else
  {
    v19 = type metadata accessor for PommesCandidateId();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v20 = v0[28];
  v21 = v0[29];
  v29 = v0[26];
  v31 = v0[27];
  v22 = v0[24];
  v23 = v0[25];
  v24 = v0[19];
  v25 = v0[11];
  dispatch thunk of PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)();

  outlined destroy of Any?(v24, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v25[3] = v22;
  v25[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(v23 + 32))(boxed_opaque_existential_1, v29, v22);
  (*(v20 + 8))(v21, v31);

  v27 = v0[1];

  return v27();
}

uint64_t RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for Date();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:), 0, 0);
}

uint64_t RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)()
{
  v21 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RenderPegasusFlow making flow to render PegasusResult in Navigation", v4, 2u);
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v19 = *(v0 + 72);

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  *(swift_task_alloc() + 16) = vextq_s8(v19, v19, 8uLL);
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 56);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    v13 = Array.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v9, v10, "RenderPegasusFlow creating output with pegasusViews %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  outlined init with copy of OutputPublisherAsync(*(v0 + 80) + 16, v0 + 16);
  *(swift_allocObject() + 16) = v8;
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();
  *(v0 + 64) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v16 = Flow.eraseToAnyFlow()();

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:), 0, 0);
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  *(swift_task_alloc() + 16) = v4;
  Date.init()();
  v5[3] = type metadata accessor for AceOutput();
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = v6 - v2;
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v6, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

id RenderComponentFlowFactory.addSiriSuggestion(_:toPegasusViews:toPegasusCommands:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for HintsUI();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HintsUI.snippet.getter();
  p_base_props = &InformationRoutingFlow.base_props;
  if (v10)
  {
    v12 = v10;
    v13 = *a2;
    if (*a2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_4:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_35:
            if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
            {
LABEL_13:
              v21 = v12;
              specialized Array.replaceSubrange<A>(_:with:)(0, 0, v21);

              if (v40)
              {
                v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
              }

              else
              {
                v22.super.isa = 0;
              }

              p_base_props = 937984;
              [a2 setViews:v22.super.isa];

              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_37;
          }

          v14 = *(v13 + 32);
        }

        a2 = v14;
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.information);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_0, v16, v17, "RenderPegasusFlow adding 1 SiriSuggestion view to Pegasus views", v18, 2u);
        }

        result = [a2 views];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v20 = result;
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        p_base_props = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = p_base_props;
        if (!(p_base_props >> 62))
        {
          goto LABEL_13;
        }

        goto LABEL_35;
      }
    }

    else if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

    if (one-time initialization token for information == -1)
    {
LABEL_19:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.information);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "RenderPegasusFlow adding 1 SiriSuggestion view to Pegasus commands", v26, 2u);
      }

      v27 = [objc_allocWithZone(SAUIAddViews) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_B9BD0;
      *(v28 + 32) = v12;
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v29 = v12;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v27 setViews:isa];

      v31 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (*a3 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_24;
    }

LABEL_37:
    swift_once();
    goto LABEL_19;
  }

LABEL_24:
  if (*(p_base_props + 928) != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.information);
  (*(v7 + 16))(v9, a1, v6);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = HintsUI.supportingCommands.getter();
    if (v36 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
    }

    (*(v7 + 8))(v9, v6);
    *(v35 + 4) = v37;
    _os_log_impl(&dword_0, v33, v34, "RenderPegasusFlow adding %ld SiriSuggestion supportingCommands to Pegasus commands", v35, 0xCu);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v38 = HintsUI.supportingCommands.getter();
  return specialized Array.append<A>(contentsOf:)(v38);
}

void closure #1 in RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  v6 = __chkstk_darwin(v30);
  v29[1] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Any?(v9, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  }

  else
  {
    if ((*(v15 + 88))(v9, v14) == enum case for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component.videoObjects(_:))
    {
      (*(v15 + 96))(v9, v14);
      (*(v11 + 32))(v13, v9, v10);
      v16 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.tvOrMovieObject.getter();
      (*(v11 + 8))(v13, v10);
      v17 = *(v16 + 16);

      goto LABEL_12;
    }

    (*(v15 + 8))(v9, v14);
  }

  v18 = v31;
  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.videoSnippet);
  (*(v3 + 16))(v5, a1, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
    v24 = String.init<A>(describing:)();
    v26 = v25;
    (*(v3 + 8))(v5, v18);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v33);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "Ignoring unsupported domain object component: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {

    (*(v3 + 8))(v5, v18);
  }

  v17 = 0;
LABEL_12:
  v28 = v32;
  *v32 = v17;
  *(v28 + 8) = 0;
}

uint64_t RenderComponentFlowFactory.saveDialogStateUpdates(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v3 - 8);
  v66 = &v51 - v4;
  v80 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta();
  v5 = *(v80 - 8);
  v6 = __chkstk_darwin(v80);
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v64 = &v51 - v9;
  v10 = __chkstk_darwin(v8);
  v63 = &v51 - v11;
  __chkstk_darwin(v10);
  v62 = &v51 - v12;
  v77 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState();
  v13 = *(v77 - 8);
  v14 = __chkstk_darwin(v77);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v60 = &v51 - v16;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  result = __chkstk_darwin(v17);
  v21 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a1 + 16);
  if (v59)
  {
    v22 = 0;
    v56 = *(v1 + 64);
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v55 = v24;
    v54 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v76 = (v13 + 8);
    v79 = (v5 + 8);
    v53 = (v23 - 8);
    v57 = v23;
    v52 = *(v23 + 56);
    v78 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v17;
    do
    {
      v75 = v22;
      v55(v21, v54 + v52 * v22, v17);
      v72 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
      v74 = v28;
      v29 = v60;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogState.getter();
      v71 = Apple_Parsec_Siri_V2alpha_DialogState.familyState.getter();
      v73 = v30;
      v31 = *v76;
      (*v76)(v29, v77);
      v32 = v62;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v33 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.familyStateCounts.getter();
      v34 = *v79;
      (*v79)(v32, v80);
      v35 = *(v33 + 16);
      if (v35)
      {
        v69 = v31;
        v81 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v36 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v33 + v36)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v36 += 4;
          --v35;
        }

        while (v35);

        v70 = v81;
        v31 = v69;
      }

      else
      {

        v70 = _swiftEmptyArrayStorage;
      }

      v37 = v63;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v38 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.familyStateMinutes.getter();
      v34(v37, v80);
      v39 = *(v38 + 16);
      if (v39)
      {
        v81 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v40 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v38 + v40)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v40 += 4;
          --v39;
        }

        while (v39);
      }

      v41 = v61;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogState.getter();
      v68 = Apple_Parsec_Siri_V2alpha_DialogState.useCaseState.getter();
      v69 = v42;
      v31(v41, v77);
      v43 = v64;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v44 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.useCaseStateCounts.getter();
      v34(v43, v80);
      v45 = *(v44 + 16);
      if (v45)
      {
        v81 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v46 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v44 + v46)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v46 += 4;
          --v45;
        }

        while (v45);
      }

      v47 = v65;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v48 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.useCaseStateMinutes.getter();
      v34(v47, v80);
      v49 = *(v48 + 16);
      if (v49)
      {
        v81 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v50 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v48 + v50)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v50 += 4;
          --v49;
        }

        while (v49);

        v25 = v81;
      }

      else
      {

        v25 = _swiftEmptyArrayStorage;
      }

      v67 = v25;
      v22 = v75 + 1;
      v26 = type metadata accessor for Date();
      v27 = v66;
      (*(*(v26 - 8) + 56))(v66, 1, 1, v26);
      dispatch thunk of PommesDialogStateManager.update(_:familyState:familyStateCount:familyStateMinutes:useCaseState:useCaseStateCount:useCaseStateMinutes:expirationDate:)();

      outlined destroy of Any?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v21 = v78;
      v17 = v58;
      result = (*v53)(v78, v58);
    }

    while (v22 != v59);
  }

  return result;
}

void *RenderComponentFlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t RenderComponentFlowFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
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

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(a1, v4, v5, v6);
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

id specialized RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !*(a2 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(4), (v18 & 1) == 0))
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.information);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_26;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Cannot find any domain object made, skipping making ProfileSwitch";
    goto LABEL_25;
  }

  if (*(*(a2 + 56) + 8 * v17) != 1)
  {
    if (one-time initialization token for information == -1)
    {
LABEL_29:
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.information);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_26;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "More than one domain objects were made, skipping making ProfileSwitch";
LABEL_25:
      _os_log_impl(&dword_0, v32, v33, v35, v34, 2u);

LABEL_26:

      return 0;
    }

LABEL_51:
    swift_once();
    goto LABEL_29;
  }

  if (!a3)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_32;
  }

  PommesRenderOptions.switchProfile.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_32:
    outlined destroy of Any?(v12, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.information);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_26;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "No switchProfileBuilderParams is available, skipping making ProfileSwitch";
    goto LABEL_25;
  }

  v53 = v7;
  (*(v14 + 32))(v16, v12, v13);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v54 = v21;
      v22 = v20;
      while (1)
      {
        if (v22 >= v19)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v23 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent() - 8);
        v20 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_49;
        }

        closure #1 in RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22, &v55);
        if ((v56 & 1) == 0)
        {
          break;
        }

        ++v22;
        if (v20 == v19)
        {
          v21 = v54;
          goto LABEL_37;
        }
      }

      v52 = v55;
      v24 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      }

      v25 = v24;
      v26 = *(v24 + 2);
      v27 = v25;
      v28 = *(v25 + 3);
      v29 = (v26 + 1);
      if (v26 >= v28 >> 1)
      {
        v54 = (v26 + 1);
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v26 + 1, 1, v27);
        v29 = v54;
        v27 = v30;
      }

      v21 = v27;
      *(v27 + 2) = v29;
      *&v27[8 * v26 + 32] = v52;
    }

    while (v20 != v19);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

LABEL_37:
  v39 = *(v21 + 2);
  v40 = v53;
  v41 = 0;
  if (v39)
  {
    v42 = (v21 + 32);
    while (1)
    {
      v43 = *v42++;
      v44 = __OFADD__(v41, v43);
      v41 += v43;
      if (v44)
      {
        break;
      }

      if (!--v39)
      {
        goto LABEL_41;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_41:

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.information);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v41;
    _os_log_impl(&dword_0, v46, v47, "Found %ld tvOrMovieObject in videoObjects", v48, 0xCu);
  }

  if (v41 != 1)
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  v49 = [objc_allocWithZone(SAProfileSwitch) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v40 + 8))(v9, v6);
  v50 = String._bridgeToObjectiveC()();

  [v49 setAceId:v50];

  Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams.userID.getter();
  v51 = String._bridgeToObjectiveC()();

  [v49 setSharedUserId:v51];

  (*(v14 + 8))(v16, v13);
  return v49;
}

uint64_t sub_2EAA4()
{
  v1 = type metadata accessor for NLContextUpdate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NLContextUpdate() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + v11);
  v17 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(a1, v1 + v6, v12, v13, v14, v15, v16, v17);
}

uint64_t partial apply for closure #1 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(*(v1 + 16) + 56) + 160))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_2ED78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(a1, v4);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *(&dword_10 + (*v5 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, 1, v4);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for URLQueryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t partial apply for closure #1 in closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(*v1 + 128))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t closure #1 in ResponseFlowFactory.outputManifest(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for NLContextUpdate();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v14;
  v8[16] = v15;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  type metadata accessor for DialogPhase();
  v8[17] = swift_task_alloc();
  v9 = type metadata accessor for NLContextUpdate();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  type metadata accessor for Date();
  v8[24] = swift_task_alloc();
  v11 = type metadata accessor for PerformanceUtil.Ticket();
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();

  return _swift_task_switch(ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:), 0, 0);
}

uint64_t ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:)()
{
  v22 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v21);
    *(v6 + 12) = 2080;
    v7 = Dictionary.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v21);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "ResponseFlowFactory.makeRenderPatternFlow making default pattern flow for patternId %s : %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[16];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v20 = (*(v12 + 8) + **(v12 + 8));
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:);
  v14 = v0[14];
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  v18 = v0[7];

  return v20(v18, v17, v15, v16, v14, v11, v12);
}

{
  v1 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v2 = v0[23];
  v13 = v0[30];
  v14 = v0[22];
  v3 = v0[20];
  v15 = v0[21];
  v4 = v0[19];
  v12 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static PatternFlowProvidingHelper.unwrap(_:with:)(v5, v7, v0 + 2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  NLContextUpdate.init()();
  outlined copy of Data?(v8, v6);
  NLContextUpdate.pegasusConversationContext.setter();
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v3;
  OutputGenerationManifest.init(dialogPhase:_:)();

  (*(v4 + 8))(v3, v12);
  v9 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v14 + 8))(v2, v15);
  (*(v16 + 8))(v1, v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v10 = v0[1];

  return v10(v9);
}

{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:);
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t PatternExecutor.execute(pattern:in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return _swift_task_switch(PatternExecutor.execute(pattern:in:with:), 0, 0);
}

uint64_t PatternExecutor.execute(pattern:in:with:)(uint64_t a1)
{
  v2 = v1[11];
  static Device.current.getter();
  v9 = (*(*v2 + 88) + **(*v2 + 88));
  v3 = swift_task_alloc();
  v1[12] = v3;
  *v3 = v1;
  v3[1] = PatternExecutor.execute(pattern:in:with:);
  v4 = v1[10];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[7];

  return v9(v7, v5, v6, v4, v1 + 2);
}

{
  v4 = *v2;
  v4[13] = v1;

  __swift_destroy_boxed_opaque_existential_0Tm(v4 + 2);
  if (v1)
  {

    return _swift_task_switch(PatternExecutor.execute(pattern:in:with:), 0, 0);
  }

  else
  {
    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t PatternExecutor.execute(pattern:in:with:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = PatternExecutor.execute(pattern:in:with:deviceState:);

  return specialized PatternExecutor.execute(pattern:in:with:deviceState:)(a1, a2, a3, a4, a5);
}

uint64_t PatternExecutor.execute(pattern:in:with:deviceState:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned PatternExecutionResult, @unowned NSError?) -> () with result type PatternExecutionResult(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 88) + **(**v5 + 88));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for PatternExecutorProtocol.execute(pattern:in:with:) in conformance PatternExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 80) + **(**v4 + 80));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return v12(a1, a2, a3, a4);
}

uint64_t specialized PatternExecutor.execute(pattern:in:with:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return _swift_task_switch(specialized PatternExecutor.execute(pattern:in:with:deviceState:), 0, 0);
}

uint64_t specialized PatternExecutor.execute(pattern:in:with:deviceState:)()
{
  v2 = v0[26];
  v1 = v0[27];
  v11 = v0[25];
  v10 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v0[28] = v3;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[29] = isa;

  type metadata accessor for CATGlobals();
  outlined init with copy of OutputPublisherAsync(v1, (v0 + 10));
  static CATGlobals.defaultBuilder(deviceState:)();
  outlined destroy of DeviceState?((v0 + 10));
  v5 = dispatch thunk of CATGlobals.Builder.build()();

  dispatch thunk of CATGlobals.toDictionary.getter();

  v6 = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[30] = v6;

  v7 = CATDefaultMode;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = specialized PatternExecutor.execute(pattern:in:with:deviceState:);
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22PatternExecutionResultCs5Error_pGMd, &_sSccySo22PatternExecutionResultCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned PatternExecutionResult, @unowned NSError?) -> () with result type PatternExecutionResult;
  v0[13] = &block_descriptor_0;
  v0[14] = v8;
  [v10 execute:v11 patternId:v3 parameters:isa globals:v6 options:v7 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = specialized PatternExecutor.execute(pattern:in:with:deviceState:);
  }

  else
  {
    v2 = specialized PatternExecutor.execute(pattern:in:with:deviceState:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t specialized PatternExecutor.execute(pattern:in:with:deviceState:)(uint64_t a1)
{
  v17 = v1;
  v2 = v1[30];
  v4 = v1[28];
  v3 = v1[29];
  swift_willThrow();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v1[23];
    v8 = v1[24];
    v10 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v16);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v16);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_0, v6, v7, "PatternExecutor: Failed to execute Pattern: %s with error: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v1[1];

  return v14();
}

uint64_t outlined destroy of DeviceState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShimOverrideFlow.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue) = 0;
  type metadata accessor for ShimOverrideFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v4 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ShimOverrideFlow.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for ShimOverrideFlow.exitValue : ShimOverrideFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShimOverrideFlow.ExitValue(a1, v6);
  return (*(**a2 + 104))(v6);
}

uint64_t ShimOverrideFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue;
  swift_beginAccess();
  return outlined init with copy of ShimOverrideFlow.ExitValue(v1 + v3, a1);
}

uint64_t ShimOverrideFlow.exitValue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue;
  swift_beginAccess();
  outlined assign with take of ShimOverrideFlow.ExitValue(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t ShimOverrideFlow.init(with:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue) = 0;
  type metadata accessor for ShimOverrideFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v4 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t outlined init with copy of ShimOverrideFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ShimOverrideFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ShimOverrideFlow.__allocating_init()()
{
  v1 = type metadata accessor for Parse.DirectInvocation();
  __chkstk_darwin(v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.DirectInvocation.init(identifier:userData:)();
  return (*(v0 + 120))(v3);
}

uint64_t ShimOverrideFlow.execute()(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for Parse.PegasusResult();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(ShimOverrideFlow.execute(), 0, 0);
}

{
  v67 = v1;
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x80000000000BD650 == v2)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = v1[16];
      v6 = v1[14];
      v7 = Parse.DirectInvocation.identifier.getter();
      v9 = v8;
      lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
      v10 = swift_allocError();
      *v11 = v7;
      *(v11 + 8) = v9;
      *(v11 + 16) = 0;
      *v5 = v10;
      swift_storeEnumTagMultiPayload();
      (*(*v6 + 104))(v5);
LABEL_19:
      static ExecuteResponse.complete()();
      goto LABEL_20;
    }
  }

  v12 = Parse.DirectInvocation.userData.getter();
  if (!v12)
  {
    v19 = v1[16];
    v20 = v1[14];
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v22 = swift_allocError();
    *v23 = xmmword_B9E30;
    v25 = 1;
    goto LABEL_18;
  }

  v13 = v12;
  if (!*(v12 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000000000BD8D0), (v15 & 1) == 0))
  {

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v14, (v1 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v19 = v1[16];
    v20 = v1[14];
    v21 = 0x80000000000BE940;
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v22 = swift_allocError();
    v24 = 0xD00000000000002DLL;
    goto LABEL_16;
  }

  v16 = Data.init(base64Encoded:options:)();
  v18 = v17;

  if (v18 >> 60 == 15)
  {
    v19 = v1[16];
    v20 = v1[14];
    v21 = 0x80000000000BE970;
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v22 = swift_allocError();
    v24 = 0xD000000000000022;
LABEL_16:
    *v23 = v24;
    *(v23 + 8) = v21;
    v25 = 2;
LABEL_18:
    *(v23 + 16) = v25;
    *v19 = v22;
    swift_storeEnumTagMultiPayload();
    (*(*v20 + 104))(v19);
    goto LABEL_19;
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_B95F0;
  *(v28 + 32) = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSArray, NSArray_ptr);
  *(v28 + 40) = type metadata accessor for Experience();
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v1[9])
  {
    outlined destroy of Any?((v1 + 6));
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch17GenericExperienceCGMd, &_sSay21SiriInformationSearch17GenericExperienceCGMR);
  if (!swift_dynamicCast())
  {
LABEL_24:
    v29 = v1[16];
    v30 = v1[14];
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v31 = swift_allocError();
    *v32 = 0xD00000000000002FLL;
    *(v32 + 8) = 0x80000000000BE9A0;
    *(v32 + 16) = 2;
    *v29 = v31;
    swift_storeEnumTagMultiPayload();
    (*(*v30 + 104))(v29);
    static ExecuteResponse.complete()();
    outlined consume of Data?(v16, v18);
    goto LABEL_20;
  }

  v33 = getComponent #1 () in ShimOverrideFlow.execute()(v1[12]);
  v34 = v1[24];
  v36 = v1[21];
  v35 = v1[22];
  v64 = v1[23];
  v37 = v33;

  *(swift_task_alloc() + 16) = v37;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);
  static Message.with(_:)();

  (*(v35 + 16))(v64, v34, v36);
  Parse.PegasusResult.init(pegasusResponse:)();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v39 = v1[19];
  v38 = v1[20];
  v40 = v1[17];
  v41 = v1[18];
  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.information);
  v65 = *(v41 + 16);
  v65(v39, v38, v40);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v47 = v1[18];
  v46 = v1[19];
  v48 = v1[17];
  if (v45)
  {
    v61 = v44;
    v49 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66 = v59;
    *v49 = 136315138;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Parse.PegasusResult and conformance Parse.PegasusResult, &type metadata accessor for Parse.PegasusResult, &protocol conformance descriptor for Parse.PegasusResult);
    v50 = Encodable.asJSONString.getter();
    v52 = v51;
    v63 = *(v47 + 8);
    v63(v46, v48);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v66);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_0, v43, v61, "NavigateToShim pegasus result: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  else
  {

    v63 = *(v47 + 8);
    v63(v46, v48);
  }

  v54 = v1[22];
  v60 = v1[21];
  v62 = v1[24];
  v55 = v1[20];
  v57 = v1[16];
  v56 = v1[17];
  v58 = v1[14];
  v65(v57, v55, v56);
  swift_storeEnumTagMultiPayload();
  (*(*v58 + 104))(v57);
  static ExecuteResponse.complete()();
  outlined consume of Data?(v16, v18);
  v63(v55, v56);
  (*(v54 + 8))(v62, v60);
LABEL_20:

  v26 = v1[1];

  return v26();
}

unint64_t lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError()
{
  result = lazy protocol witness table cache variable for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError;
  if (!lazy protocol witness table cache variable for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError);
  }

  return result;
}

void *getComponent #1 () in ShimOverrideFlow.execute()(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = GenericExperience.components.getter();

      v9 = *(v8 + 16);
      v10 = v4[2];
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v11 <= v4[3] >> 1)
      {
        if (*(v8 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v4);
        if (*(v8 + 16))
        {
LABEL_19:
          v14 = (v4[3] >> 1) - v4[2];
          type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
          if (v14 < v9)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v9)
          {
            v15 = v4[2];
            v16 = __OFADD__(v15, v9);
            v17 = v15 + v9;
            if (v16)
            {
              goto LABEL_29;
            }

            v4[2] = v17;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v7 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_32:
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.information);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();

    v23 = Array.description.getter();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v19, v20, "NavigateToShim components available: %s ", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  return v4;
}

uint64_t ShimOverrideFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShimOverrideFlow(0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type ShimOverrideFlow and conformance ShimOverrideFlow, type metadata accessor for ShimOverrideFlow, &protocol conformance descriptor for ShimOverrideFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t closure #1 in ShimOverrideFlow.makePegasusResponse(experienceComponents:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  __chkstk_darwin(v2);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);
  static Message.with(_:)();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.setter();
  v3 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.setter();
  v3(v5, 0);
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.setter();
}

uint64_t closure #1 in closure #1 in ShimOverrideFlow.makePegasusResponse(experienceComponents:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  __chkstk_darwin(v2);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerDrivenExperience and conformance Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, &protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);
  static Message.with(_:)();
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.setter();
}

uint64_t ShimOverrideFlow.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v2 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ShimOverrideFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue);
  return v0;
}

uint64_t ShimOverrideFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v2 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ShimOverrideFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance ShimOverrideFlow(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of ShimOverrideFlow.ExitValue(uint64_t a1)
{
  v2 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for ShimOverrideFlow(uint64_t a1)
{
  result = type metadata accessor for Parse.DirectInvocation();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ShimOverrideFlow.ExitValue(319);
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

void type metadata completion function for ShimOverrideFlow.ExitValue(uint64_t a1)
{
  type metadata accessor for Parse.PegasusResult();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Error?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ShimOverrideFlow.ShimError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShimOverrideFlow.ShimError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t WebSearchPunchoutFlow.__allocating_init(query:renderPegasusFlow:state:outputPublisher:responseGenerator:informationViewFactory:searchURLProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, __int128 *a6, uint64_t a7, __int128 *a8)
{
  v16 = swift_allocObject();
  *(v16 + 112) = a1;
  *(v16 + 120) = a2;
  v17 = *(a3 + 16);
  *(v16 + 128) = *a3;
  *(v16 + 144) = v17;
  *(v16 + 160) = *(a3 + 32);
  *(v16 + 104) = a4 & 1;
  outlined init with take of SiriSuggestionsBroker(a5, v16 + 16);
  outlined init with take of SiriSuggestionsBroker(a6, v16 + 56);
  *(v16 + 96) = a7;
  outlined init with take of SiriSuggestionsBroker(a8, v16 + 168);
  return v16;
}

Swift::Int DisableConfirmRequestsConfirmationResponse.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t WebSearchPunchoutFlow.state.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1 & 1;
  return result;
}

id one-time initialization function for bundle(uint64_t a1)
{
  type metadata accessor for WebSearchPunchoutFlow();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static WebSearchPunchoutFlow.bundle = result;
  return result;
}

{
  type metadata accessor for PegasusPatternFlowFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static PegasusPatternFlowFactory.bundle = result;
  return result;
}

uint64_t WebSearchPunchoutFlow.init(query:renderPegasusFlow:state:outputPublisher:responseGenerator:informationViewFactory:searchURLProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, __int128 *a6, uint64_t a7, __int128 *a8)
{
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  v12 = *(a3 + 16);
  *(v8 + 128) = *a3;
  *(v8 + 144) = v12;
  *(v8 + 160) = *(a3 + 32);
  *(v8 + 104) = a4 & 1;
  outlined init with take of SiriSuggestionsBroker(a5, v8 + 16);
  outlined init with take of SiriSuggestionsBroker(a6, v8 + 56);
  *(v8 + 96) = a7;
  outlined init with take of SiriSuggestionsBroker(a8, v8 + 168);
  return v8;
}

uint64_t WebSearchPunchoutFlow.on(input:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.information);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "WebSearchPunchoutFlow does not expect input", v3, 2u);
  }

  return 0;
}

uint64_t WebSearchPunchoutFlow.execute()(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = type metadata accessor for Date();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v2[43] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v5 = type metadata accessor for CATOption();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();

  return _swift_task_switch(WebSearchPunchoutFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 384);
  *(v4 + 464) = v1;

  v6 = (v5 + 8);
  v7 = *(v4 + 392);
  v8 = *(v4 + 376);

  if (v1)
  {
    (*v6)(v7, v8);
    outlined destroy of Any?(v4 + 256, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v9 = WebSearchPunchoutFlow.execute();
  }

  else
  {
    *(v4 + 472) = a1;
    (*v6)(v7, v8);
    outlined destroy of Any?(v4 + 256, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v9 = WebSearchPunchoutFlow.execute();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  *(v1[54] + 32) = v1[59];
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v2 = swift_task_alloc();
  v1[60] = v2;
  *v2 = v1;
  v2[1] = WebSearchPunchoutFlow.execute();
  v3 = v1[54];
  v4 = v1[51];
  v5 = v1[52];
  v6 = v1[46];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v1 + 22, v3, v6, v4, v5);
}

{
  static ExecuteResponse.complete()();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t WebSearchPunchoutFlow.execute()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 400) = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "WebSearchPunchoutFlow.execute", v4, 2u);
  }

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v5 = dispatch thunk of CurrentDevice.isCarPlay.getter();

  if (v5 & 1) != 0 || (static Device.current.getter(), __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), v6 = dispatch thunk of DeviceState.isEyesFree.getter(), v7 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16)), (v6))
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Web search punchout is not supported in CarPlay", v10, 2u);
    }

    v11 = *(v0 + 312);

    outlined init with copy of OutputPublisherAsync(v11 + 56, v0 + 216);
    v12 = *(v0 + 240);
    *(v0 + 408) = v12;
    *(v0 + 424) = __swift_project_boxed_opaque_existential_1((v0 + 216), v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v0 + 432) = v13;
    *(v13 + 16) = xmmword_B9BD0;
    type metadata accessor for CATDialog();
    if (one-time initialization token for bundle != -1)
    {
      swift_once();
    }

    v14 = static WebSearchPunchoutFlow.bundle;
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    *(v0 + 440) = v15;
    type metadata accessor for CATGlobals();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
    v16 = CATGlobals.__allocating_init()();
    *(v0 + 448) = v16;
    static CATOption.defaultMode.getter();
    v17 = swift_task_alloc();
    *(v0 + 456) = v17;
    *v17 = v0;
    v17[1] = WebSearchPunchoutFlow.execute();
    v18 = *(v0 + 392);

    return static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)(v14, 0xD00000000000002ALL, 0x80000000000BEA50, v15, v16, v0 + 256, v18);
  }

  else
  {
    v19 = (*(**(v0 + 312) + 144))(v7);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    if (v19)
    {
      if (v22)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v20, v21, "WebSearchPunchoutFlow: renderPegasus", v23, 2u);
      }

      v24 = *(v0 + 312);

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v24 + 128, v0 + 96, &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
      if (*(v0 + 120))
      {
        outlined init with take of SiriSuggestionsBroker((v0 + 96), v0 + 56);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        static ExecuteResponse.complete<A>(next:)();
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
      }

      else
      {
        v32 = *(v0 + 328);
        v31 = *(v0 + 336);
        v33 = *(v0 + 312);
        v34 = *(v0 + 320);
        outlined destroy of Any?(v0 + 96, &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
        *(v0 + 296) = v33;
        type metadata accessor for PerformanceUtil();
        static PerformanceUtil.shared.getter();
        v35 = swift_task_alloc();
        v35[2] = v0 + 296;
        v35[3] = 0xD000000000000039;
        v35[4] = 0x80000000000BEA10;
        Date.init()();
        type metadata accessor for ExecuteResponse();
        dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

        (*(v32 + 8))(v31, v34);
      }

      v36 = *(v0 + 8);

      return v36();
    }

    else
    {
      if (v22)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v20, v21, "WebSearchPunchoutFlow: doWebSearchPunchout", v25, 2u);
      }

      v26 = *(v0 + 312);

      v27 = v26[5];
      v28 = v26[6];
      __swift_project_boxed_opaque_existential_1(v26 + 2, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_B9BD0;
      *(v29 + 32) = WebSearchPunchoutFlow.webSearchCommand(query:)(v26[14], v26[15]);
      *(v0 + 160) = type metadata accessor for AceOutput();
      *(v0 + 168) = &protocol witness table for AceOutput;
      __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      AceOutput.init(commands:flowActivity:)();
      v30 = swift_task_alloc();
      *(v0 + 504) = v30;
      *v30 = v0;
      v30[1] = WebSearchPunchoutFlow.execute();

      return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 136, v27, v28);
    }
  }
}

{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(WebSearchPunchoutFlow.execute(), 0, 0);
}

{
  v1 = v0[39];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = WebSearchPunchoutFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 22, v2, v3);
}

{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = WebSearchPunchoutFlow.execute();
  }

  else
  {
    v2 = WebSearchPunchoutFlow.execute();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  static ExecuteResponse.complete()();

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = WebSearchPunchoutFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v3 = WebSearchPunchoutFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  *(v0[54] + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to publish dialog for failed web search punchout: %@", v3, 0xCu);
    outlined destroy of Any?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  static ExecuteResponse.complete()();

  v6 = v0[1];

  return v6();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to publish dialog for failed web search punchout: %@", v3, 0xCu);
    outlined destroy of Any?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  static ExecuteResponse.complete()();

  v6 = *(v0 + 8);

  return v6();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Failed to execute web search punchout.", v3, 2u);
  }

  static ExecuteResponse.complete()();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t WebSearchPunchoutFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WebSearchPunchoutFlow();
  lazy protocol witness table accessor for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow();
  return Flow.deferToExecuteAsync(_:)();
}

id WebSearchPunchoutFlow.webSearchCommand(query:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = type metadata accessor for UUID();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v16 = v3[24];
  v17 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v16);
  (*(v17 + 8))(a1, a2, v16, v17);
  v18 = v3[24];
  v19 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v18);
  v20 = (*(v19 + 16))(v18, v19);
  WebSearchPunchoutFlow.addProviderSpecificParams(url:providerId:)(v12, v20, v14);
  outlined destroy of Any?(v12, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v24 = 0;
  if ((*(v22 + 48))(v14, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v23);
    v24 = v25;
    (*(v22 + 8))(v14, v21);
  }

  [v15 setPunchOutUri:v24];

  v26 = v15;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v6 + 8))(v8, v30);
  v27 = String._bridgeToObjectiveC()();

  [v26 setAceId:v27];

  return v26;
}

uint64_t WebSearchPunchoutFlow.addProviderSpecificParams(url:providerId:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v8, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Any?(v8, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    return outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, a3, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    if (a2 - 2 >= 2)
    {
      if (a2)
      {
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentDevice.getter();

        v16 = dispatch thunk of CurrentDevice.isMac.getter();

        if (v16 & 1) != 0 || (static SiriEnvironment.default.getter(), SiriEnvironment.currentDevice.getter(), , v17 = dispatch thunk of CurrentDevice.isPad.getter(), , (v17))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
          type metadata accessor for URLQueryItem();
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_B9FF0;
          URLQueryItem.init(name:value:)();
          URLQueryItem.init(name:value:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
          type metadata accessor for URLQueryItem();
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_B95F0;
          URLQueryItem.init(name:value:)();
        }

        URLQueryItem.init(name:value:)();
        URL.setOrAppend(queryItems:)(v18, a3);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
        type metadata accessor for URLQueryItem();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_BA000;
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URL.setOrAppend(queryItems:)(v15, a3);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      swift_deallocClassInstance();
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      v14(a3, v12, v9);
      return (*(v10 + 56))(a3, 0, 1, v9);
    }
  }
}

int64_t URL.setOrAppend(queryItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v11 = *(v5 + 48);
  if (!v11(v10, 1, v4))
  {
    v21[0] = a2;
    v13 = URLComponents.queryItems.modify();
    if (*v12)
    {
      v14 = v12;

      result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v14, a1);
      v16 = *(*v14 + 16);
      if (v16 < result)
      {
        __break(1u);
        return result;
      }

      specialized Array.replaceSubrange<A>(_:with:)(result, v16);
      v13(v22, 0);
    }

    else
    {
      v13(v22, 0);
    }

    a2 = v21[0];
  }

  if (!v11(v10, 1, v4))
  {
    v17 = URLComponents.queryItems.modify();
    if (*v18)
    {

      specialized Array.append<A>(contentsOf:)(v19);
    }

    v17(v22, 0);
  }

  if (v11(v10, 1, v4))
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    URLComponents.url.getter();
    (*(v5 + 8))(v7, v4);
  }

  return outlined destroy of Any?(v10, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
}

void *WebSearchPunchoutFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  outlined destroy of Any?((v0 + 16), &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  return v0;
}

uint64_t WebSearchPunchoutFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  outlined destroy of Any?((v0 + 16), &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WebSearchPunchoutFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v6(a1);
}

uint64_t SafariSearchURLProvider.searchUrl(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  [v3 reloadSearchEngines];

  v4 = [v2 sharedInstance];
  v5 = [v4 defaultSearchEngine];

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 searchURLForUserTypedString:v6];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t WBSSearchProviderID.asSearchProvider.getter(uint64_t a1)
{
  if (WBSSearchProviderIDBaidu == a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (WBSSearchProviderIDGoogle == a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

BOOL closure #1 in URL.setOrAppend(queryItems:)(uint64_t a1, uint64_t a2)
{
  v16[2] = a1;
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v17 = a2;
  v18 = *(a2 + 16);
  v16[1] = v4 + 16;
  v8 = (v4 + 8);
  do
  {
    v10 = v7;
    if (v18 == v7)
    {
      break;
    }

    (*(v4 + 16))(v6, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, v3);
    v11 = URLQueryItem.name.getter();
    v13 = v12;
    if (v11 == URLQueryItem.name.getter() && v13 == v14)
    {

      (*v8)(v6, v3);
      return v18 != v10;
    }

    ++v7;
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v8)(v6, v3);
  }

  while ((v9 & 1) == 0);
  return v18 != v10;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for URLQueryItem();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {
  }

  v54 = v5;
  if (v17)
  {
    v18 = *(v15 + 16);

    return v18;
  }

  v49 = v14;
  v44 = v12;
  v45 = v9;
  v43 = a1;
  v55 = 0;
  v53 = result;
  v19 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v20 = v15;
    v23 = *(v15 + 16);
    v22 = (v15 + 16);
    v21 = v23;
    v24 = v54;
    if (v19 == v23)
    {
LABEL_7:

      return v53;
    }

    v52 = v6 + 16;
    v47 = a2;
    v48 = (v6 + 8);
    v42 = (v6 + 40);
    v46 = v6;
    while (v19 < v21)
    {
      v25 = v20;
      v50 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v26 = v20 + v50;
      v27 = *(v6 + 72);
      v28 = *(v6 + 16);
      v51 = v27 * v19;
      v29 = v20 + v50 + v27 * v19;
      v30 = v49;
      v28(v49, v29, v24);
      v31 = v55;
      v32 = closure #1 in URL.setOrAppend(queryItems:)(v30, a2);
      v55 = v31;
      if (v31)
      {
        (*v48)(v30, v24);
      }

      v33 = v32;
      result = (*v48)(v30, v24);
      if (v33)
      {
        v6 = v46;
        a2 = v47;
        v24 = v54;
        v20 = v25;
      }

      else
      {
        v34 = v53;
        if (v19 == v53)
        {
          v6 = v46;
          a2 = v47;
          v24 = v54;
          v20 = v25;
        }

        else
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v35 = *v22;
          if (v53 >= *v22)
          {
            goto LABEL_27;
          }

          v36 = v27 * v53;
          v37 = v54;
          result = (v28)(v44, &v26[v27 * v53], v54);
          if (v19 >= v35)
          {
            goto LABEL_28;
          }

          v38 = v51;
          v28(v45, &v26[v51], v37);
          v20 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
          }

          v6 = v46;
          a2 = v47;
          v39 = v20 + v50;
          v40 = *v42;
          v24 = v54;
          result = (*v42)(v20 + v50 + v36, v45, v54);
          if (v19 >= v20[2])
          {
            goto LABEL_29;
          }

          result = v40(&v39[v38], v44, v24);
          *v43 = v20;
          v34 = v53;
        }

        v53 = v34 + 1;
      }

      ++v19;
      v22 = v20 + 2;
      v21 = v20[2];
      if (v19 == v21)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow()
{
  result = lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow;
  if (!lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow)
  {
    type metadata accessor for WebSearchPunchoutFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow);
  }

  return result;
}

uint64_t specialized SafariSearchURLProvider.searchProviderID.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 defaultSearchEngine];

  if (!v1)
  {
    return 3;
  }

  v2 = [v1 searchID];

  if (WBSSearchProviderIDGoogle == v2)
  {
    return 0;
  }

  if (WBSSearchProviderIDBaidu == v2)
  {
    return 1;
  }

  return 2;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(type metadata accessor for URLQueryItem() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = closure #1 in URL.setOrAppend(queryItems:)(v8, a2);
    if (v2 || v10)
    {
      break;
    }

    ++v6;
    v8 += v9;
    if (v3 == v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State()
{
  result = lazy protocol witness table cache variable for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State;
  if (!lazy protocol witness table cache variable for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchProviderID and conformance SearchProviderID()
{
  result = lazy protocol witness table cache variable for type SearchProviderID and conformance SearchProviderID;
  if (!lazy protocol witness table cache variable for type SearchProviderID and conformance SearchProviderID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchProviderID and conformance SearchProviderID);
  }

  return result;
}

uint64_t sub_35CE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.__allocating_init(responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, v8 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v8 + 56);
  *(v8 + 96) = a3;
  outlined init with take of SiriSuggestionsBroker(a4, v8 + 104);
  return v8;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.init(responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  outlined init with take of SiriSuggestionsBroker(a1, v4 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v4 + 56);
  *(v4 + 96) = a3;
  outlined init with take of SiriSuggestionsBroker(a4, v4 + 104);
  return v4;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.confirmationString()()
{
  v1[10] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.confirmationString(), 0, 0);
}

{
  v1 = DisableConfirmRequestsConfirmationStrategy.knowledgeFallbackHelper.modify((v0 + 2));
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 104))(v3, v4);
  v0[14] = v6;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = v0[10];
    (v1)(v0 + 2, 0);
    v14 = (*(**(v9 + 96) + class metadata base offset for CommonCATs + 48) + **(**(v9 + 96) + class metadata base offset for CommonCATs + 48));
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = DisableConfirmRequestsConfirmationStrategy.confirmationString();
    v11 = v0[13];

    return v14(v11, v7, v8);
  }

  else
  {
    v1((v0 + 2));
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError();
    swift_allocError();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = DisableConfirmRequestsConfirmationStrategy.confirmationString();
  }

  else
  {
    v2 = DisableConfirmRequestsConfirmationStrategy.confirmationString();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = (*(**(v0 + 80) + 168))(v1);
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

{
  v12 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Unable to generate disableConfirmRequestsConfirmationText dialog due to error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = *(v0 + 8);

  return v9(0, 0xE000000000000000);
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError);
  }

  return result;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel(), 0, 0);
}

{
  v4 = (**(v0[6] + 96) + class metadata base offset for CommonCATs + 56);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel();
  v2 = v0[9];

  return v5(v2);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel();
  }

  else
  {
    v2 = DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v12 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Unable to generate disableConfirmRequestsConfirmationYesLabel dialog due to error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = *(v0 + 8);

  return v9(0, 0xE000000000000000);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel(), 0, 0);
}

{
  v4 = (**(v0[6] + 96) + class metadata base offset for CommonCATs + 64);
  v5 = (*v4 + **v4);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel();
  v2 = v0[9];

  return v5(v2);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel();
  }

  else
  {
    v2 = DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = (*(**(v0 + 48) + 168))(v1);
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

{
  v12 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Unable to generate disableConfirmRequestsConfirmationNoLabel dialog due to error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = *(v0 + 8);

  return v9(0, 0xE000000000000000);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.stringFromTemplatingResult(_:)()
{
  v28 = type metadata accessor for TemplatingText();
  v0 = *(v28 - 8);
  __chkstk_darwin(v28);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TemplatingSection();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = TemplatingResult.sections.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v25 = *(v8 + 56);
    v26 = v9;
    v24 = (v0 + 8);
    v22 = v6;
    v23 = (v8 - 8);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = v27;
      v13 = v8;
      v26(v5, v10, v27);
      TemplatingSection.content.getter();
      v14 = TemplatingText.text.getter();
      v16 = v15;
      (*v24)(v2, v28);
      (*v23)(v5, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v11);
      }

      *(v11 + 2) = v18 + 1;
      v19 = &v11[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      v10 += v25;
      --v7;
      v8 = v13;
    }

    while (v7);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v20 = BidirectionalCollection<>.joined(separator:)();

  return v20;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.actionForInput(_:)()
{
  if (Input.disableConfirmRequestsConfirmationResponse.getter() == 2)
  {

    return static ActionForInput.ignore()();
  }

  else
  {

    return static ActionForInput.handle()();
  }
}

uint64_t Input.disableConfirmRequestsConfirmationResponse.getter()
{
  v0 = type metadata accessor for Parse.DirectInvocation();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = __chkstk_darwin(v3 - 8);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = type metadata accessor for USOParse();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 != enum case for Parse.directInvocation(_:))
  {
    if (v16 == enum case for Parse.uso(_:))
    {
      (*(v13 + 96))(v15, v12);
      (*(v9 + 32))(v11, v15, v8);
      USOParse.userConfirmationResponse.getter(v7);
      (*(v9 + 8))(v11, v8);
      v27 = type metadata accessor for ConfirmationResponse();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v7, 1, v27) != 1)
      {
        v36 = v39;
        outlined init with copy of ConfirmationResponse?(v7, v39);
        v37 = (*(v28 + 88))(v36, v27);
        if (v37 == enum case for ConfirmationResponse.confirmed(_:))
        {
          outlined destroy of ConfirmationResponse?(v7);
          return 0;
        }

        if (v37 == enum case for ConfirmationResponse.rejected(_:))
        {
          outlined destroy of ConfirmationResponse?(v7);
          return 1;
        }

        (*(v28 + 8))(v36, v27);
      }

      outlined destroy of ConfirmationResponse?(v7);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    return 2;
  }

  (*(v13 + 96))(v15, v12);
  v17 = v40;
  (*(v40 + 32))(v2, v15, v0);
  v18 = Parse.DirectInvocation.identifier.getter();
  v20 = v19;
  v21 = static SiriKitDirectInvocationPayloads.confirm.getter();
  v22 = [v21 identifier];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v2;
  if (v23 == v18 && v25 == v20)
  {

LABEL_9:
    (*(v17 + 8))(v2, v0);

    return 0;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_9;
  }

  v31 = static SiriKitDirectInvocationPayloads.reject.getter();
  v32 = [v31 identifier];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v33 == v18 && v35 == v20)
  {

    (*(v17 + 8))(v2, v0);
    return 1;
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v17 + 8))(v26, v0);
    if (v38)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t DisableConfirmRequestsConfirmationStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Input();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.parseConfirmationResponse(input:)()
{
  v22 = v0;
  v1 = Input.disableConfirmRequestsConfirmationResponse.getter();
  if (v1 == 2)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v2 = v0[5];
    v5 = v0[2];
    v4 = v0[3];
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.information);
    (*(v3 + 16))(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 136315138;
      lazy protocol witness table accessor for type Input and conformance Input();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v7, v8, "Unexpectedly found nil userConfirmationResponse in %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  v18 = v0[1];

  return v18(v1);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  type metadata accessor for DialogPhase();
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = *(*v1 + 144);
  v7 = *v1 + 144;
  v2[21] = v4;
  v2[22] = v7 & 0xFFFFFFFFFFFFLL | 0xA5B0000000000000;
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[23] = v5;
  *v5 = v2;
  v5[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

  return v8();
}

uint64_t DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;
  v5 = *v3;
  v4[24] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v9 = (v4[21] + *v4[21]);
    v8 = swift_task_alloc();
    v4[25] = v8;
    *v8 = v5;
    v8[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v9();
  }
}

{
  v4 = *v3;
  v4[11] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;
  v5 = *v3;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {

    return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v8 = (v4[21] + *v4[21]);
    v6 = swift_task_alloc();
    v4[28] = v6;
    *v6 = v5;
    v6[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v8();
  }
}

{
  v6 = *v3;
  v6[29] = v2;

  if (v2)
  {

    return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v7 = v6[12];
    v8 = v6[8];
    v9 = v6[16];
    v6[30] = a2;
    v6[31] = a1;
    v6[32] = v7;
    v6[33] = v8;
    v12 = (*(*v9 + 152) + **(*v9 + 152));
    v10 = swift_task_alloc();
    v6[34] = v10;
    *v10 = v6;
    v10[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v12();
  }
}

{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v8 = *v2;
  v3[35] = a1;
  v3[36] = a2;

  v7 = (*(*v4 + 160) + **(*v4 + 160));
  v5 = swift_task_alloc();
  v3[37] = v5;
  *v5 = v8;
  v5[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

  return v7();
}

{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v27 = v0[39];
  v24 = v0[36];
  v25 = v0[38];
  v29 = v0[35];
  v1 = v0[33];
  v21 = v0[32];
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[24];
  v22 = v0[31];
  v28 = v0[16];
  v30 = [objc_allocWithZone(DialogExecutionResult) init];
  v0[40] = v30;
  v5 = [objc_allocWithZone(DialogElement) init];
  v0[41] = v5;

  v6 = String._bridgeToObjectiveC()();

  [v5 setFullPrint:v6];

  v7 = String._bridgeToObjectiveC()();

  [v5 setFullSpeak:v7];

  v8 = String._bridgeToObjectiveC()();

  [v5 setSupportingPrint:v8];

  v9 = String._bridgeToObjectiveC()();

  [v5 setSupportingSpeak:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_B9BD0;
  *(v10 + 32) = v5;
  type metadata accessor for DialogElement();
  v11 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 setDialog:isa];

  static DialogPhase.confirmation.getter();
  v13 = swift_task_alloc();
  v13[2] = v1;
  v13[3] = v4;
  v13[4] = v21;
  v13[5] = v3;
  v13[6] = v22;
  v13[7] = v2;
  v13[8] = v29;
  v13[9] = v24;
  v13[10] = v25;
  v13[11] = v27;
  v13[12] = 0xD00000000000002CLL;
  v13[13] = 0x80000000000BEB30;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v23 = v28[5];
  v26 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v23);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[5] = &type metadata for SiriInformationDataModels;
  v0[6] = lazy protocol witness table accessor for type SiriInformationDataModels and conformance SiriInformationDataModels();
  v14 = swift_allocObject();
  v0[2] = v14;
  *(v14 + 16) = v29;
  *(v14 + 24) = v24;
  *(v14 + 32) = v25;
  *(v14 + 40) = v27;
  *(v14 + 48) = 1;
  v15 = swift_allocObject();
  v0[42] = v15;
  *(v15 + 16) = xmmword_B9BD0;
  *(v15 + 32) = v30;
  v16 = v30;
  v17 = swift_task_alloc();
  v0[43] = v17;
  *v17 = v0;
  v17[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v18 = v0[20];
  v19 = v0[15];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v19, v0 + 2, v15, v18, v23, v26);
}

{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

{
  v1 = *(v0 + 328);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

void *DisableConfirmRequestsConfirmationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  return v0;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(*v2 + 184) + **(*v2 + 184));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance DisableConfirmRequestsConfirmationStrategy;

  return v7(a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance DisableConfirmRequestsConfirmationStrategy(char a1)
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

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DisableConfirmRequestsConfirmationStrategy();
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DisableConfirmRequestsConfirmationStrategy();
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t DisableConfirmRequestsConfirmationResponseProvider.confirmationResponse.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    v3 = type metadata accessor for ConfirmationResponse();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
  }

  else
  {
    v9 = type metadata accessor for ConfirmationResponse();
    v10 = *(v9 - 8);
    v13 = (v10 + 56);
    if (a1)
    {
      v11 = &enum case for ConfirmationResponse.rejected(_:);
    }

    else
    {
      v11 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    (*(v10 + 104))(a2, *v11, v9);
    v4 = *v13;
    v6 = a2;
    v7 = 0;
    v5 = v9;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t protocol witness for ConfirmationResponseProviding.confirmationResponse.getter in conformance DisableConfirmRequestsConfirmationResponseProvider@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 == 2)
  {
    v4 = type metadata accessor for ConfirmationResponse();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = type metadata accessor for ConfirmationResponse();
    v10 = *(v9 - 8);
    v13 = (v10 + 56);
    if (v3)
    {
      v11 = &enum case for ConfirmationResponse.rejected(_:);
    }

    else
    {
      v11 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    (*(v10 + 104))(a1, *v11, v9);
    v5 = *v13;
    v7 = a1;
    v8 = 0;
    v6 = v9;
  }

  return v5(v7, v8, 1, v6);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of ConfirmationResponse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

unint64_t type metadata accessor for DialogElement()
{
  result = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogElement);
  }

  return result;
}

uint64_t partial apply for closure #1 in DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v9[0] = *(v1 + 16);
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v6;
  v11 = v7;
  return closure #1 in DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v9);
}

uint64_t sub_39A58()
{
  outlined consume of SiriInformationDataModels(v0[2], v0[3], v0[4], v0[5]);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t outlined consume of SiriInformationDataModels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisableConfirmRequestsConfirmationResponseProvider(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}