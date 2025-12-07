void WatchViewType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_74_6();
  v29 = v28;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO17HandledCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v59 = v30;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_31_14();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO22ConfirmationCodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v60 = v33;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_13_29();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin13WatchViewTypeO10CodingKeys33_DD8014D00B2AFB3C65AC544E7299801DLLOGMR);
  OUTLINED_FUNCTION_7_1();
  v62 = v36;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_53_9(v29, v29[3]);
  lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_9;
  }

  v63 = v29;
  v38 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin0jK9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLO_Tt1g5Tm(v38, 0);
  v58 = v35;
  if (v40 == v39 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_126();
  if (v44 < (v43 >> 1))
  {
    v45 = *(v42 + v41);
    specialized ArraySlice.subscript.getter(v41 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      if (v45)
      {
        lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys();
        OUTLINED_FUNCTION_132();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v59 + 8))(v27, v61);
        v50 = OUTLINED_FUNCTION_57_7();
        v51(v50);
      }

      else
      {
        lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys();
        OUTLINED_FUNCTION_132();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        KeyedDecodingContainer.decode(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v60 + 8))(v25, v32);
        (*(v62 + 8))(v26, v58);
      }

      goto LABEL_9;
    }

LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v53 = &type metadata for WatchViewType;
    v54 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_111_0(v54);
    OUTLINED_FUNCTION_21_2();
    (*(v55 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_78_5();
    v57(v56, v58);
    v29 = v63;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_75_6();
    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel.CodingKeys and conformance WorkflowDataModels.ShowAlertModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel.CodingKeys and conformance WorkflowDataModels.EnableTCCModel.CodingKeys);
  }

  return result;
}

double outlined copy of WatchViewType(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel.CodingKeys and conformance WorkflowDataModels.WatchModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType and conformance WatchViewType()
{
  result = lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType;
  if (!lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType;
  if (!lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType and conformance WatchViewType);
  }

  return result;
}

uint64_t outlined consume of WatchViewType(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentModel.CodingKeys and conformance WorkflowDataModels.CustomIntentModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(uint64_t a1)
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentErrorModel()
{
  OUTLINED_FUNCTION_23();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of WorkflowDataModels.CustomIntentModel(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledModel.CodingKeys and conformance WorkflowDataModels.CustomIntentHandledModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorModel.CodingKeys and conformance WorkflowDataModels.CustomIntentErrorModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel.CodingKeys and conformance WorkflowDataModels.ConfirmActionModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateItemsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkflowDataModels.DisambiguationItemModel] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_40_11();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay18SiriLinkFlowPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
    lazy protocol witness table accessor for type CodableINInteraction and conformance CodableINInteraction(v2);
    OUTLINED_FUNCTION_51_4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.CodingKeys and conformance WorkflowDataModels.InvocationCommand.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.StartRequestCodingKeys and conformance WorkflowDataModels.InvocationCommand.StartRequestCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithStringCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys and conformance WorkflowDataModels.InvocationCommand.DirectInvocationWithDataCodingKeys);
  }

  return result;
}

double outlined copy of WorkflowDataModels.InvocationCommand(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 2u)
  {

LABEL_4:

    return result;
  }

  if (a4 == 2)
  {

    goto LABEL_4;
  }

  return result;
}

uint64_t outlined consume of WorkflowDataModels.InvocationCommand(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  result = a2;
  if (a4 < 2u)
  {
  }

  if (a4 == 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel.CodingKeys and conformance WorkflowDataModels.DisambiguationItemModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.InvocationCommand and conformance WorkflowDataModels.InvocationCommand);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel.CodingKeys and conformance WorkflowDataModels.LinkMultiChoiceModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel and conformance WorkflowDataModels.LinkActionModel);
  }

  return result;
}

uint64_t sub_1E5BBC()
{

  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 64), v1);
  }

  OUTLINED_FUNCTION_116_0();

  return _swift_deallocObject(v2);
}

uint64_t partial apply for closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter()
{
  OUTLINED_FUNCTION_8_0();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in closure #1 in WorkflowDataModels.LinkActionModel.renderModel.getter(v0 + 16);
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionModel.CodingKeys and conformance WorkflowDataModels.LinkActionModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupLaunchAppWithIntent> and conformance CodableAceObject<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_135_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel.CodingKeys and conformance WorkflowDataModels.LinkConfirmationModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel.CodingKeys and conformance WorkflowDataModels.LinkPromptForValueModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of CodableAceObject<SAStartLocalRequest>?()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CodingKeys and conformance WorkflowDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys and conformance WorkflowDataModels.AutoShortcutFirstRunViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutFirstRunModel and conformance WorkflowDataModels.AutoShortcutFirstRunModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys and conformance WorkflowDataModels.AutoShortcutsAppEnablementViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueViewCodingKeys and conformance WorkflowDataModels.LinkPromptForValueViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkPromptForValueModel and conformance WorkflowDataModels.LinkPromptForValueModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationViewCodingKeys and conformance WorkflowDataModels.LinkConfirmationViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkConfirmationModel and conformance WorkflowDataModels.LinkConfirmationModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkActionViewCodingKeys and conformance WorkflowDataModels.LinkActionViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceViewCodingKeys and conformance WorkflowDataModels.LinkMultiChoiceViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.LinkMultiChoiceModel and conformance WorkflowDataModels.LinkMultiChoiceModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateSmartPromptItemsViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateSmartPromptItemsModel and conformance WorkflowDataModels.DisambiguateSmartPromptItemsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsViewCodingKeys and conformance WorkflowDataModels.DisambiguateItemsViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguateItemsModel and conformance WorkflowDataModels.DisambiguateItemsModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchViewCodingKeys and conformance WorkflowDataModels.WatchViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.WatchModel and conformance WorkflowDataModels.WatchModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionViewCodingKeys and conformance WorkflowDataModels.ConfirmActionViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ConfirmActionModel and conformance WorkflowDataModels.ConfirmActionModel);
  }

  return result;
}

uint64_t outlined init with take of WorkflowDataModels.CustomIntentModel()
{
  OUTLINED_FUNCTION_23();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentHandledViewCodingKeys and conformance WorkflowDataModels.CustomIntentHandledViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentErrorViewCodingKeys and conformance WorkflowDataModels.CustomIntentErrorViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.CustomIntentConfirmationViewCodingKeys and conformance WorkflowDataModels.CustomIntentConfirmationViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCViewCodingKeys and conformance WorkflowDataModels.EnableTCCViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.EnableTCCModel and conformance WorkflowDataModels.EnableTCCModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertViewCodingKeys and conformance WorkflowDataModels.ShowAlertViewCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel()
{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel;
  if (!lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowDataModels.ShowAlertModel and conformance WorkflowDataModels.ShowAlertModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.CodingKeys and conformance WatchViewType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.HandledCodingKeys and conformance WatchViewType.HandledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys()
{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys;
  if (!lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WatchViewType.ConfirmationCodingKeys and conformance WatchViewType.ConfirmationCodingKeys);
  }

  return result;
}

void *sub_1E6ECC@<X0>(void *a1@<X8>)
{
  result = WorkflowDataModels.LinkActionModel.snippetAction.getter();
  *a1 = result;
  return result;
}

void *sub_1E6EFC@<X0>(void *a1@<X8>)
{
  result = WorkflowDataModels.LinkActionModel.environment.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for WorkflowDataModels(uint64_t a1)
{
  result = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin13WatchViewTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.WatchModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.WatchModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E7144(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for CodableINInteraction();
    OUTLINED_FUNCTION_60_7();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
      OUTLINED_FUNCTION_60_7();
      if (*(v14 + 84) != a2)
      {
        return OUTLINED_FUNCTION_47_8(*(a1 + a3[7] + 8));
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1E7294()
{
  OUTLINED_FUNCTION_32_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_60_7();
  if (*(v2 + 84) == v1 || (type metadata accessor for CodableINInteraction(), OUTLINED_FUNCTION_60_7(), *(v3 + 84) == v1) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR), OUTLINED_FUNCTION_60_7(), *(v4 + 84) == v1))
  {
    OUTLINED_FUNCTION_155_0();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_125_0(*(v0 + 28));
  }
}

void type metadata completion function for WorkflowDataModels.CustomIntentModel(uint64_t a1)
{
  type metadata accessor for CodableAceObject<SAIntentGroupLaunchAppWithIntent>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableINInteraction();
    if (v2 <= 0x3F)
    {
      type metadata accessor for VisualProperty?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CodableAceObject<SAIntentGroupLaunchAppWithIntent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAceObject<SAIntentGroupLaunchAppWithIntent>)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v1 = type metadata accessor for CodableAceObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupLaunchAppWithIntent>);
    }
  }
}

void type metadata accessor for VisualProperty?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VisualProperty?)
  {
    type metadata accessor for VisualProperty();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VisualProperty?);
    }
  }
}

uint64_t sub_1E7538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_60_7();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_47_8(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1E75EC()
{
  OUTLINED_FUNCTION_32_17();
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_60_7();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_155_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_125_0(*(v0 + 20));
  }
}

uint64_t type metadata completion function for WorkflowDataModels.CustomIntentConfirmationModel(uint64_t a1)
{
  result = type metadata accessor for WorkflowDataModels.CustomIntentModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_60_7();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_47_8(*(a1 + *(a3 + 20) + 8));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1E77F0()
{
  OUTLINED_FUNCTION_32_17();
  type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  OUTLINED_FUNCTION_60_7();
  if (*(v2 + 84) != v1)
  {
    if (v1 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_125_0(*(v0 + 20));
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  }

  OUTLINED_FUNCTION_155_0();

  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void type metadata completion function for WorkflowDataModels.CustomIntentHandledModel(uint64_t a1)
{
  type metadata accessor for WorkflowDataModels.CustomIntentModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAStartLocalRequest>?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CodableAceObject<SAStartLocalRequest>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAceObject<SAStartLocalRequest>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CodableAceObject<SAStartLocalRequest>?);
    }
  }
}

uint64_t sub_1E79BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_47_8(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1E7A58(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
    OUTLINED_FUNCTION_155_0();

    return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  return result;
}

void type metadata completion function for WorkflowDataModels.CustomIntentErrorModel(uint64_t a1)
{
  type metadata accessor for CodableAceObject<SAIntentGroupLaunchAppWithIntent>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.DisambiguateItemsModel(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.DisambiguateItemsModel(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.InvocationCommand(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.InvocationCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void type metadata completion function for WorkflowDataModels.DisambiguationItemModel(uint64_t a1)
{
  type metadata accessor for VisualProperty?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.LinkActionModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.LinkActionModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.LinkConfirmationModel(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.LinkConfirmationModel(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WorkflowDataModels.LinkMultiChoiceModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.LinkMultiChoiceModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowDataModels.AutoShortcutFirstRunModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for WorkflowDataModels.AutoShortcutFirstRunModel(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchViewType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for WatchViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WatchViewType(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1E8230);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.LinkActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1E845CLL);
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

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.ShowAlertViewCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1E8584);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.ConfirmActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1E86A8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WatchViewType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1E879CLL);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.AutoShortcutFirstRunModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1E88D0);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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

_BYTE *storeEnumTagSinglePayload for WorkflowDataModels.LinkConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_114(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_112(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1E89C4);
      case 4:
        result = OUTLINED_FUNCTION_113(result, v6);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_8_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_14_29(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void *OUTLINED_FUNCTION_26_27()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_29_23(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_47_8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_61_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_62_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_86_2()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return memcpy((v0 + 104), (v2 - 168), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t OUTLINED_FUNCTION_112_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void *OUTLINED_FUNCTION_118_0(void *a1)
{

  return memcpy(a1, (v1 - 168), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

double OUTLINED_FUNCTION_141_0()
{

  return result;
}

double OUTLINED_FUNCTION_142_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return static ImageElement.appIcon(_:imageStyle:idioms:)(a10, a11, v11, a1);
}

void *OUTLINED_FUNCTION_148_0()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_149_0@<X0>(void *__src@<X0>, void *a2@<X8>)
{

  return memcpy(a2, __src, 0x50uLL);
}

double OUTLINED_FUNCTION_150_0()
{

  return result;
}

double OUTLINED_FUNCTION_151_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_158(uint64_t result)
{
  v4 = (v3 + *(result + 20));
  *v4 = v2;
  v4[1] = v1;
  return result;
}

void *OUTLINED_FUNCTION_176(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

void *OUTLINED_FUNCTION_177(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

__n128 OUTLINED_FUNCTION_179(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, __n128 a9, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  v12[6].n128_u64[0] = a11;
  v12[6].n128_u64[1] = a12;
  v12[5] = a10;
  v12[4].n128_u64[0] = a7;
  v12[4].n128_u64[1] = a8;
  v12[3].n128_u64[0] = a5;
  v12[3].n128_u64[1] = a6;
  v12[2].n128_u64[0] = a3;
  v12[2].n128_u64[1] = a4;
  v12[1].n128_u64[0] = a1;
  v12[1].n128_u64[1] = a2;
  return result;
}

uint64_t ContinueInAppCATWrapperSimple.__allocating_init(deviceState:)(uint64_t a1)
{
  v2 = swift_allocObject();
  outlined init with copy of AppDisplayInfo?(a1, v4, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  SiriKitFlowCATWrapperSimple.init(deviceState:)(v4);
  OUTLINED_FUNCTION_19_23();
  return v2;
}

void CustomIntentContinueInAppResponseGenerator.processAutomaticPunchOut(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  __chkstk_darwin(v4);
  v6 = &v26[-1] - v5;
  v7 = type metadata accessor for ActivityType();
  OUTLINED_FUNCTION_13_1();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  type metadata accessor for SAIntentGroupLaunchAppWithIntent();
  v14 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  [v14 setDoNotDismissSiri:1];
  (*(v9 + 104))(v13, enum case for ActivityType.completed(_:), v7);
  v15 = (*(*v0 + 152))(v13, v2);
  (*(v9 + 8))(v13, v7);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Directly launching the app without a dialog", v19, 2u);
  }

  v20 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_216010;
  *(v21 + 32) = v14;
  if (v15)
  {
    v22 = type metadata accessor for DefaultFlowActivity();
    v23 = lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity();
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v26[1] = 0;
    v26[2] = 0;
  }

  v26[0] = v15;
  v26[3] = v22;
  v26[4] = v23;
  v24 = v14;

  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v26, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[12] = v6;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_28();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v1[18] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[19] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
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
    v5 = v0[18];
    v6 = v0[10];
    v7 = v6[12];
    v8 = v6[5];
    v9 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
    v10 = DeviceState.asSiriKitDeviceState()(v8, v9);
    v0[22] = v10;
    v0[5] = &type metadata for AppInfoResolver;
    v0[6] = &protocol witness table for AppInfoResolver;
    App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)((v6 + 2), v0 + 2, 2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v16 = (*(*v7 + class metadata base offset for ContinueInAppCATWrapperSimple) + **(*v7 + class metadata base offset for ContinueInAppCATWrapperSimple));
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:);
    v12 = v0[18];

    return v16(v10, v12);
  }

  else
  {
    v14 = v0[7];
    v14[3] = type metadata accessor for AceOutput();
    v14[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v14);
    v15 = swift_task_alloc();
    v0[28] = v15;
    *v15 = v0;
    v15[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:);

    return CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse_preRFv2(app:intent:)();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 192) = v0;

  v7 = *(v4 + 144);
  if (!v0)
  {
    *(v5 + 200) = v3;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
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
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
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
  *(v3 + 232) = v0;

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
  OUTLINED_FUNCTION_15_2();
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 56));

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[25];
  v14 = v12[13];
  v15 = v12[14];
  v17 = v12[11];
  v16 = v12[12];
  v18 = v12[10];
  v31 = v12[9];
  v32 = v13;
  static DialogPhase.completion.getter();
  v19 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v16 + 16))(v14, v15, v17);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v16 + 8))(v15, v17);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(*v18 + 160))(v31);
  OutputGenerationManifest.canUseServerTTS.setter();
  v20 = v18[16];
  v21 = v18[17];
  __swift_project_boxed_opaque_existential_1(v18 + 13, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  v12[26] = v22;
  *(v22 + 16) = xmmword_216010;
  *(v22 + 32) = v32;
  v23 = v32;
  v27 = swift_task_alloc();
  v12[27] = v27;
  *v27 = v12;
  v27[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse(app:intent:);
  v28 = v12[17];
  v29 = v12[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v29, v22, v28, v20, v21, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse_preRFv2(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[26] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for ActivityType();
  v1[27] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[28] = v7;
  v1[29] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[30] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for TemplatingResult();
  v1[31] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[32] = v10;
  v1[33] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[30];
  v2 = v0[25];
  v0[5] = &type metadata for AppInfoResolver;
  v0[6] = &protocol witness table for AppInfoResolver;
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(v2 + 16, v0 + 2, 2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined init with copy of DeviceState(v2 + 16, (v0 + 7));
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = CustomIntentContinueInAppResponseGenerator.processContinueInAppResponse_preRFv2(app:intent:);
  v4 = v0[33];
  v5 = v0[30];

  return static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)(v4, v5, v0 + 7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 280) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v3 + 56, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  (*(v1 + 104))(v2, enum case for ActivityType.failed(_:), v4);
  v7 = (*(*v5 + 152))(v2, v6);
  (*(v1 + 8))(v2, v4);
  outlined init with copy of DeviceState((v5 + 2), (v0 + 12));
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(*v5 + 160))(v6);
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  if (v7)
  {
    v9 = type metadata accessor for DefaultFlowActivity();
    v10 = lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity();
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v0[18] = 0;
    v0[19] = 0;
  }

  v11 = v0[32];
  v12 = v0[33];
  v13 = v0[31];
  v14 = v0[26];
  v0[17] = v7;
  v0[20] = v9;
  v0[21] = v10;

  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  (*(v11 + 8))(v12, v13);
  outlined destroy of Siri_Nlu_External_UserDialogAct?((v0 + 17), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);

  OUTLINED_FUNCTION_6_0();

  return v15();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t ContinueInAppCATWrapperSimple.continueInApp(device:appDisplayInfo:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_218630;
  *(v2 + 32) = 0x656369766564;
  *(v2 + 40) = 0xE600000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[6];
  v5 = v0[3];
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x5074737269467369;
  *(v2 + 88) = 0xEF70704179747261;
  outlined init with copy of AppDisplayInfo?(v5, v4, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v6 = type metadata accessor for AppDisplayInfo();
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v4, 1, v6);

  v7 = v0[6];
  if (v4 == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[6], &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v8 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    *(v2 + 96) = 0;
  }

  else
  {
    v9 = AppDisplayInfo.isFirstParty.getter();
    OUTLINED_FUNCTION_21_2();
    (*(v10 + 8))(v7, v6);
    *(v2 + 96) = v9 & 1;
    v8 = &type metadata for Bool;
  }

  v11 = v0[5];
  v12 = v0[3];
  *(v2 + 120) = v8;
  *(v2 + 128) = 0x656D614E707061;
  *(v2 + 136) = 0xE700000000000000;
  outlined init with copy of AppDisplayInfo?(v12, v11, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v6);
  v14 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[5], &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v15 = AppDisplayInfo.displayName.getter();
    v16 = v18;
    OUTLINED_FUNCTION_21_2();
    (*(v19 + 8))(v14, v6);
    v17 = &type metadata for String;
  }

  *(v2 + 144) = v15;
  *(v2 + 152) = v16;
  *(v2 + 168) = v17;
  v22 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v20 = swift_task_alloc();
  v0[8] = v20;
  *v20 = v0;
  v20[1] = ContinueInAppCATWrapperSimple.continueInApp(device:appDisplayInfo:);

  return v22(0xD00000000000001DLL, 0x8000000000235350, v2);
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
  *(v5 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

uint64_t ContinueInAppCATWrapperSimple.init(deviceState:)(uint64_t a1)
{
  outlined init with copy of AppDisplayInfo?(a1, v3, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  SiriKitFlowCATWrapperSimple.init(deviceState:)(v3);
  OUTLINED_FUNCTION_19_23();
  return v1;
}

void specialized CustomIntentContinueInAppResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_40_0();
  v47 = v25;
  v48 = v26;
  v45 = v27;
  v46 = v28;
  v30 = v29;
  v44 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_13_1();
  v37 = v36;
  v39 = __chkstk_darwin(v38);
  v41 = &v44 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v44 - v42;
  (*(v37 + 32))(&v44 - v42);
  outlined init with copy of DeviceState(v30, v49);
  (*(v37 + 16))(v41, v43, a24);
  specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v35, v33, v44, v49, v45, v46, v47, v48, a21, v41, a23, a24, a25);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  (*(v37 + 8))(v43, a24);
  OUTLINED_FUNCTION_42();
}

unint64_t lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity()
{
  result = lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity;
  if (!lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity)
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity);
  }

  return result;
}

uint64_t type metadata accessor for ContinueInAppCATWrapperSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContinueInAppCATWrapperSimple;
  if (!type metadata singleton initialization cache for ContinueInAppCATWrapperSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OUTLINED_FUNCTION_10_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  v31 = *(v29 - 112);
  v32 = *(v29 - 104);
  v33 = *(v29 - 96);
  v34 = *(v29 - 88);

  specialized CustomIntentContinueInAppResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v28, v27, v26, v25, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t OUTLINED_FUNCTION_19_23()
{

  return outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, v1, v2);
}

uint64_t AppNameResolver.resolveAppName(app:)(uint64_t a1)
{
  v2 = static SAAppInfoFactory.createAppInfo(app:)();
  v3 = (*(*v1 + 88))();

  return v3;
}

uint64_t AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(void *a1)
{
  if (!a1 || (result = outlined bridged method (pb) of @objc SAAppInfo.displayAppName.getter(a1), !v2))
  {

    return 0;
  }

  return result;
}

void CustomIntentNeedsConfirmationFlowStrategy.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_40_0();
  v39 = v22;
  v40 = v23;
  v38 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_5_40();
  v27 = swift_allocObject();
  v28 = a21[3];
  v29 = a21[4];
  __swift_mutable_project_boxed_opaque_existential_1(a21, v28);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v32 = OUTLINED_FUNCTION_24_25(v31);
  v33(v32);
  v34 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(v34, v35, v36, v37, v26, v38, v39, v40, v21, v27, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_40_0();
  v39 = v23;
  v40 = v24;
  v38 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_5_40();
  v28 = a21[3];
  v29 = a21[4];
  __swift_mutable_project_boxed_opaque_existential_1(a21, v28);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v32 = OUTLINED_FUNCTION_25_19(v31);
  v33(v32);
  v34 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(v34, v35, v36, v37, v27, v38, v39, v40, v22, v21, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsConfirmIntentResponseGenerator.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  OUTLINED_FUNCTION_40_0();
  v40 = v23;
  v41 = v24;
  v38 = v25;
  v39 = v26;
  OUTLINED_FUNCTION_5_40();
  v27 = swift_allocObject();
  v28 = a22[3];
  v29 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v28);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v32 = OUTLINED_FUNCTION_24_25(v31);
  v33(v32);
  v34 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v34, v35, v36, v37, v38, v39, v40, v41, a21, v22, v27, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsConfirmationFlowStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v22[1] = v2;
  v22[2] = v3;
  v4 = type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_13_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_13_1();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v22 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  (*(v6 + 8))(v10, v4);
  CustomIntentNeedsConfirmationFlowStrategy.makeConfirmationStateFromInput(input:parameterName:)();

  v20 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  swift_beginAccess();
  (*(v13 + 40))(v1 + v20, v19, v11);
  swift_endAccess();
  (*(v13 + 16))(v17, v1 + v20, v11);
  v21 = (*(v13 + 88))(v17, v11);
  if (v21 == enum case for SiriKitConfirmationState.unset(_:))
  {
    static ActionForInput.ignore()();
  }

  else if (v21 == enum case for SiriKitConfirmationState.cancelled(_:))
  {
    static ActionForInput.cancel()();
  }

  else
  {
    static ActionForInput.handle()();
    (*(v13 + 8))(v17, v11);
  }

  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v1[20] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for SiriKitConfirmationState();
  v1[21] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[22] = v5;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v6 = type metadata accessor for ParameterIdentifier();
  v1[25] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[26] = v7;
  v1[27] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_5();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 208);
  v28 = *(v24 + 216);
  v29 = *(v24 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v30 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v89 = ParameterIdentifier.name.getter();
  v32 = v31;
  (*(v27 + 8))(v28, v29);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.voiceCommands);
  v34 = v30;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v90 = v34;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    a11 = v38;
    *v37 = 136315138;
    v39 = INIntent.debugDescriptionLite.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &a11);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_0, v35, v36, "Intent prior to confirmation: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    OUTLINED_FUNCTION_15_0(v38);
    OUTLINED_FUNCTION_15_0(v37);
  }

  v42 = *(v24 + 192);
  v44 = *(v24 + 168);
  v43 = *(v24 + 176);
  v45 = *(v24 + 152);
  v46 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  swift_beginAccess();
  v47 = *(v43 + 16);
  v47(v42, v45 + v46, v44);
  v48 = (*(v43 + 88))(v42, v44);
  if (v48 == enum case for SiriKitConfirmationState.unset(_:) || v48 == enum case for SiriKitConfirmationState.cancelled(_:))
  {
    v50 = *(v24 + 176);
    v51 = *(v24 + 184);
    v52 = *(v24 + 168);

    OUTLINED_FUNCTION_36_17();
    v53 = a12;
    *(v24 + 120) = a11;
    *(v24 + 128) = v53;
    v54._countAndFlagsBits = OUTLINED_FUNCTION_16_34();
    String.append(_:)(v54);
    v55 = OUTLINED_FUNCTION_31_19();
    (v47)(v55);
    OUTLINED_FUNCTION_31_19();
    _print_unlocked<A, B>(_:_:)();
    (*(v50 + 8))(v51, v52);
    v56._object = 0x8000000000235430;
    v56._countAndFlagsBits = 0xD00000000000003CLL;
    String.append(_:)(v56);
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v57 = OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_9_32();
    lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v58, v59, &protocol conformance descriptor for CommandFailure);
    swift_allocError();
    *v60 = v57;
    swift_willThrow();

    goto LABEL_11;
  }

  if (v48 != enum case for SiriKitConfirmationState.confirmed(_:))
  {
    if (v48 == enum case for SiriKitConfirmationState.rejected(_:))
    {
      v61 = v24 + 48;
      *(v24 + 48) = 0u;
      *(v24 + 64) = 0u;
      v64 = &enum case for ConfirmationResponse.rejected(_:);
      goto LABEL_16;
    }

    v77 = *(v24 + 184);
    v89 = *(v24 + 192);
    v79 = *(v24 + 168);
    v78 = *(v24 + 176);

    OUTLINED_FUNCTION_36_17();
    v80 = a12;
    *(v24 + 104) = a11;
    *(v24 + 112) = v80;
    v81._countAndFlagsBits = OUTLINED_FUNCTION_16_34();
    String.append(_:)(v81);
    v82 = OUTLINED_FUNCTION_31_19();
    (v47)(v82);
    OUTLINED_FUNCTION_31_19();
    _print_unlocked<A, B>(_:_:)();
    v83 = *(v78 + 8);
    v83(v77, v79);
    v84._object = 0x8000000000235430;
    v84._countAndFlagsBits = 0xD00000000000003CLL;
    String.append(_:)(v84);
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v85 = OUTLINED_FUNCTION_19_24();
    OUTLINED_FUNCTION_9_32();
    lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v86, v87, &protocol conformance descriptor for CommandFailure);
    swift_allocError();
    *v88 = v85;
    swift_willThrow();

    v83(v89, v79);
LABEL_11:

    OUTLINED_FUNCTION_6_0();
    goto LABEL_17;
  }

  v61 = v24 + 16;
  v62 = ParameterResolutionRecord.result.getter();
  v63 = [v62 itemToConfirm];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v64 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_16:
  v89 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v90, v89, v32, v61, 0, 1);

  outlined destroy of SpeakableString?(v61, &_sypSgMd, &_sypSgMR);
  v65 = *(v24 + 160);
  v66 = *v64;
  v67 = type metadata accessor for ConfirmationResponse();
  (*(*(v67 - 8) + 104))(v65, v66, v67);
  __swift_storeEnumTagSinglePayload(v65, 0, 1, v67);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

  OUTLINED_FUNCTION_6_0();
LABEL_17:
  OUTLINED_FUNCTION_58();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, v89, v90, a11, a12, a13, a14, a15, a16);
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  v6 = (*(**(v0[4] + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) + 192) + **(**(v0[4] + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock();
  v3 = v0[2];
  v4 = v0[3];

  return v6(v3, v4);
}

void CustomIntentNeedsConfirmationFlowStrategy.makeConfirmationStateFromInput(input:parameterName:)()
{
  OUTLINED_FUNCTION_40_0();
  v71 = v0;
  v72 = v1;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_13_1();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v65 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v63 - v20;
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  v67 = v3;
  static FlowStrategyUtils.makeConfirmationStateFromInput(input:)(v3, &v63 - v22);
  v25 = v15 + 104;
  v24 = *(v15 + 104);
  v68 = enum case for SiriKitConfirmationState.unset(_:);
  v66 = v24;
  (v24)(v21);
  lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(&lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState, &type metadata accessor for SiriKitConfirmationState, &protocol conformance descriptor for SiriKitConfirmationState);
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = *(v15 + 8);
  v70 = v15 + 8;
  v69(v21, v13);
  if (v3)
  {
    v64 = v23;
    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v26 = type metadata accessor for Logger();
      v63 = __swift_project_value_buffer(v26, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = v25;
        v30 = v5;
        v31 = OUTLINED_FUNCTION_52();
        *v31 = 0;
        OUTLINED_FUNCTION_81(&dword_0, v32, v33, "Waiting for a confirmation response but there is no confirmation state in the input. Checking for server side resolution.");
        v34 = v31;
        v5 = v30;
        v25 = v29;
        OUTLINED_FUNCTION_15_0(v34);
      }

      Input.parse.getter();
      if ((*(v8 + 88))(v12, v6) != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        OUTLINED_FUNCTION_30_18();
        v43();
        (*(v8 + 8))(v12, v6);
        v66(v5, v68, v13);
        goto LABEL_36;
      }

      (*(v8 + 96))(v12, v6);
      v35 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));
      type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_23_0();
      (*(v36 + 8))(v12);
      v37 = v65;
      Parse.ServerConversion.confirmationState.getter();
      v38 = (*(v15 + 88))(v37, v13);
      v39 = v69;
      v69(v37, v13);
      if (v38 != v68)
      {
        break;
      }

      v15 = v25;
      v67 = v5;
      v65 = v35;
      v25 = Parse.ServerConversion.parameterMetadata.getter();
      v12 = specialized Array.count.getter(v25);
      v6 = 0;
      v8 = v25 & 0xC000000000000001;
      v5 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v12 == v6)
        {

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = OUTLINED_FUNCTION_52();
            *v46 = 0;
            _os_log_impl(&dword_0, v44, v45, "Could not find the current parameter in the parameter metadata sent from the server. Treating input as not understood.", v46, 2u);
            OUTLINED_FUNCTION_15_0(v46);
          }

          OUTLINED_FUNCTION_30_18();
          v47();
          v48 = v67;
          v49 = v68;
          goto LABEL_35;
        }

        if (v8)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_38;
          }
        }

        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (SiriKitParameterMetadata.parameterName.getter() == v71 && v40 == v72)
        {

LABEL_27:

          v50 = SiriKitParameterMetadata.shouldResolve.getter();
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.debug.getter();
          v53 = os_log_type_enabled(v51, v52);
          if (v50)
          {
            if (v53)
            {
              v54 = OUTLINED_FUNCTION_52();
              *v54 = 0;
              OUTLINED_FUNCTION_81(&dword_0, v55, v56, "Received parameter metadata for the expected parameter from the server and it is marked shouldResolve. Treating as rejected");
              OUTLINED_FUNCTION_15_0(v54);
            }

            OUTLINED_FUNCTION_30_18();
            v57();
            v58 = &enum case for SiriKitConfirmationState.rejected(_:);
          }

          else
          {
            if (v53)
            {
              v59 = OUTLINED_FUNCTION_52();
              *v59 = 0;
              OUTLINED_FUNCTION_81(&dword_0, v60, v61, "Received parameter metadata for the expected parameter from the server and shouldResolve is false. Treating as confirmed");
              OUTLINED_FUNCTION_15_0(v59);
            }

            OUTLINED_FUNCTION_30_18();
            v62();
            v58 = &enum case for SiriKitConfirmationState.confirmed(_:);
          }

          v49 = *v58;
          v48 = v67;
LABEL_35:
          v66(v48, v49, v13);
          goto LABEL_36;
        }

        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v42)
        {
          goto LABEL_27;
        }

        ++v6;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    Parse.ServerConversion.confirmationState.getter();

    v39(v64, v13);
  }

  else
  {
    (*(v15 + 32))(v5, v23, v13);
  }

LABEL_36:
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_23_0();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_deviceState));

  return v0;
}

uint64_t CustomIntentNeedsConfirmationFlowStrategy.__deallocating_deinit()
{
  CustomIntentNeedsConfirmationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 152) + **(**v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 160) + **(**v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v12 = v6;
  v12[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v12 = v6;
  v12[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(0);
  *v14 = v7;
  v14[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v1[17] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[18] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for DialogPhase();
  v1[19] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[20] = v5;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[23] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[24] = v7;
  v1[25] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for NLContextUpdate();
  v1[26] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[27] = v9;
  v1[28] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for ParameterIdentifier();
  v1[29] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[30] = v11;
  v1[31] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v7 + 312) = v6;
  *(v7 + 320) = v0;

  if (v0)
  {
    v8 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  else
  {
    v8 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 336) = v0;

  if (v0)
  {
    v7 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  else
  {
    v7 = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  }

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);

  v3 = OUTLINED_FUNCTION_17_34();
  v4(v3);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);

  (*(v4 + 8))(v3, v5);
  v6 = OUTLINED_FUNCTION_17_34();
  v7(v6);

  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = *(v14 + 240);
  v16 = *(v14 + 248);
  v17 = *(v14 + 232);
  v37 = *(v14 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  *(v14 + 256) = ParameterResolutionRecord.app.getter();
  v18 = ParameterResolutionRecord.intent.getter();
  *(v14 + 264) = v18;
  ParameterResolutionRecord.parameter.getter();
  v36 = ParameterIdentifier.name.getter();
  v20 = v19;
  *(v14 + 272) = v19;
  (*(v15 + 8))(v16, v17);
  *(v14 + 280) = ParameterResolutionRecord.result.getter();
  type metadata accessor for WFDialogState();
  v21 = App.appIdentifier.getter();
  static WFDialogState.isAppFirstRun(appId:)(v21, v22);

  outlined init with copy of DeviceState(v37 + 16, v14 + 72);
  type metadata accessor for CustomIntentNLContextProvider();
  inited = swift_initStackObject();
  *(v14 + 288) = inited;
  outlined init with take of Output((v14 + 72), inited + 16);
  CustomIntentNLContextProvider.makeNeedsConfirmationContextFor(intent:parameter:resolutionResult:)(v18, v36, v20);
  *(v14 + 344) = INIntent.isRestricted()();
  v24 = *(v37 + 56);
  *(v14 + 296) = v24;
  v38 = (*v24 + 288);
  v39 = *v38 + **v38;
  v25 = swift_task_alloc();
  *(v14 + 304) = v25;
  *v25 = v14;
  v25[1] = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  OUTLINED_FUNCTION_6_1();

  return v32(v26, v27, v28, v29, v30, v31, v32, v33, v36, v38, v39, a12, a13, a14);
}

uint64_t CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_32_5();
  v17 = v16[39];
  v18 = v16[27];
  v37 = v16[26];
  v38 = v16[28];
  v20 = v16[21];
  v19 = v16[22];
  v21 = v16[20];
  v36 = v16[19];
  v22 = v16[18];
  static DialogPhase.confirmation.getter();
  v23 = [v17 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v21 + 16))(v20, v19, v36);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v21 + 8))(v19, v36);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(v18 + 16))(v22, v38, v37);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v37);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v16[41] = v24;
  *v24 = v25;
  v24[1] = CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(resolveRecord:);
  OUTLINED_FUNCTION_58();

  return static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)(v26, v27, v28, v29, v30, v31, v32, v33);
}

{
  OUTLINED_FUNCTION_32_5();
  v18 = *(v16 + 280);
  v17 = *(v16 + 288);
  v19 = *(v16 + 264);
  v20 = *(v16 + 216);
  v21 = *(v16 + 224);
  v22 = *(v16 + 200);
  v34 = *(v16 + 208);
  v35 = *(v16 + 248);
  v24 = *(v16 + 184);
  v23 = *(v16 + 192);
  v36 = *(v16 + 176);
  v37 = *(v16 + 168);
  v38 = *(v16 + 144);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v17 + 16));

  (*(v23 + 8))(v22, v24);
  (*(v20 + 8))(v21, v34);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, v38, a14, a15, a16);
}

uint64_t static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __swift_project_boxed_opaque_existential_1(*(v12 + 104), *(*(v12 + 104) + 24));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = *(v12 + 112);
    v14 = *(v12 + 120);
    v15 = v13[3];
    v16 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v12 + 304) = v17;
    *(v17 + 16) = xmmword_216010;
    *(v17 + 32) = v14;
    v18 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 312) = v22;
    *v22 = v23;
    v22[1] = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
    v24 = *(v12 + 128);
    v25 = *(v12 + 96);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v17, v24, v15, v16, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    v26 = *(v12 + 144);
    v27 = INIntent.verb()();
    *(v12 + 160) = v27._object;
    v30 = (*(*v26 + 152) + **(*v26 + 152));
    v28 = swift_task_alloc();
    *(v12 + 168) = v28;
    *v28 = v12;
    v28[1] = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);

    return v30(v27._countAndFlagsBits, v27._object);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v13 = *(v12 + 136);
  v14 = *(v12 + 104);
  v15 = [v13 _title];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v12 + 216) = v18;
  v19 = [v13 _keyImage];
  *(v12 + 224) = v19;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v20 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  *(v12 + 232) = v20;
  v21 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v23 = *(v12 + 192);
    v22 = *(v12 + 200);
    v55 = *(v12 + 176);
    v24 = *(v12 + 136);

    v25 = [v24 _title];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v12 + 40) = &type metadata for WorkflowDataModels.WatchModel;
    *(v12 + 48) = &protocol witness table for WorkflowDataModels.WatchModel;
    v29 = swift_allocObject();
    *(v12 + 16) = v29;

    *(v29 + 16) = v26;
    *(v29 + 24) = v28;
    *(v29 + 32) = v55;
    *(v29 + 48) = v23;
    *(v29 + 56) = v22;
    *(v29 + 64) = 0u;
    *(v29 + 80) = 0u;
    *(v12 + 80) = OUTLINED_FUNCTION_18_31();
    OUTLINED_FUNCTION_10_40();
    *(v12 + 88) = lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v30, v31, &protocol conformance descriptor for WorkflowDataModels);
    __swift_allocate_boxed_opaque_existential_1((v12 + 56));
    v21(v28, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v32 = swift_allocObject();
    *(v12 + 288) = v32;
    *(v32 + 16) = xmmword_216010;
    *(v32 + 32) = v23;
    v33 = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 296) = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_6_38(v34);
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v36, v37, v38, v39, v40, v41, v42, v43, v55, *(&v55 + 1), a11, a12);
  }

  else
  {
    v44 = *(v12 + 136);
    *(v12 + 240) = v16;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v45 = v44;
    v56.value.super.isa = 0;
    isa = INInteraction.__allocating_init(intent:response:)(v45, v56).super.isa;
    *(v12 + 248) = isa;
    v47 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    *(v12 + 256) = v47;
    *(v12 + 40) = v47;
    *(v12 + 48) = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
    *(v12 + 264) = __swift_allocate_boxed_opaque_existential_1((v12 + 16));
    v48 = v20;
    CodableAceObject.init(wrappedValue:)();
    *(v12 + 272) = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    v49 = isa;
    CodableINInteraction.init(wrappedValue:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 280) = v50;
    *v50 = v51;
    v50[1] = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
    OUTLINED_FUNCTION_6_1();

    return INImage.convertToVisualProperty()(v52);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v13 = *(v12 + 264);
  v14 = *(v12 + 272);
  v16 = *(v12 + 248);
  v15 = *(v12 + 256);
  v17 = *(v12 + 240);
  v19 = *(v12 + 216);
  v18 = *(v12 + 224);
  v40 = *(v12 + 192);
  v41 = *(v12 + 200);
  v21 = *(v12 + 176);
  v20 = *(v12 + 184);

  v22 = (v13 + *(v14 + 28));
  *v22 = v17;
  v22[1] = v19;
  v23 = (v13 + *(v15 + 20));
  *v23 = v21;
  v23[1] = v20;
  v24 = (v13 + *(v15 + 24));
  *v24 = v40;
  v24[1] = v41;
  *(v12 + 80) = OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_10_40();
  *(v12 + 88) = lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(v25, v26, &protocol conformance descriptor for WorkflowDataModels);
  __swift_allocate_boxed_opaque_existential_1((v12 + 56));
  v21(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v12 + 288) = v27;
  *(v27 + 16) = xmmword_216010;
  *(v27 + 32) = v19;
  v28 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v12 + 296) = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_6_38(v29);
  OUTLINED_FUNCTION_6_1();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, a12);
}

uint64_t static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  v3[22] = v5;
  v3[23] = v6;
  v3[24] = v7;
  v3[25] = v8;
  v3[26] = v0;

  if (v0)
  {
    v9 = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
  }

  else
  {

    v9 = static CustomIntentNeedsConfirmIntentResponseGenerator.makePromptForConfirmation(deviceState:responseFactory:dialogResult:manifest:intent:dialogTemplating:app:);
  }

  return _swift_task_switch(v9);
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
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v1();
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

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  OUTLINED_FUNCTION_40_0();
  v40 = v24;
  v41 = v25;
  v38 = v26;
  v39 = v27;
  OUTLINED_FUNCTION_5_40();
  v28 = a22[3];
  v29 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v28);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v32 = OUTLINED_FUNCTION_25_19(v31);
  v33(v32);
  v34 = OUTLINED_FUNCTION_4_55();
  specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v34, v35, v36, v37, v38, v39, v40, v41, a21, v23, v22, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

uint64_t specialized CustomIntentNeedsConfirmationFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v31 = a3;
  v30 = a12;
  v15 = *(a11 - 8);
  v16 = __chkstk_darwin(a1);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  (*(v15 + 32))(&v29 - v19);
  v21 = (a10 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_voiceCommandName);
  *v21 = a1;
  v21[1] = a2;
  outlined init with copy of DeviceState(a4, a10 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_deviceState);
  v22 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  v23 = enum case for SiriKitConfirmationState.unset(_:);
  v24 = type metadata accessor for SiriKitConfirmationState();
  (*(*(v24 - 8) + 104))(a10 + v22, v23, v24);
  outlined init with copy of DeviceState(a4, v39);
  type metadata accessor for ContinueInAppCATWrapperSimple(0);
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  swift_allocObject();
  outlined init with copy of DeviceState?(v37, v36);

  v25 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v36);
  outlined destroy of SpeakableString?(v37, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  type metadata accessor for CustomIntentNeedsConfirmIntentResponseGenerator();
  v26 = swift_allocObject();
  (*(v15 + 16))(v18, v20, a11);
  v27 = specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(a1, a2, v31, v39, v32, v33, v34, v35, v25, v18, v26, a11, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v15 + 8))(v20, a11);
  *(a10 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) = v27;
  return a10;
}

void *specialized CustomIntentNeedsConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v24 = a3;
  v16 = *(a12 - 8);
  v17 = __chkstk_darwin(a1);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v24 - v20;
  (*(v16 + 32))(&v24 - v20);
  outlined init with copy of DeviceState(a4, v29);
  (*(v16 + 16))(v19, v21, a12);
  v22 = specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(a1, a2, v24, v29, v25, v26, v27, v28, a9, v19, a11, a12, a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v16 + 8))(v21, a12);
  return v22;
}

uint64_t sub_1F1910()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for CustomIntentNeedsConfirmationFlowStrategy;
  if (!type metadata singleton initialization cache for CustomIntentNeedsConfirmationFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CustomIntentNeedsConfirmationFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for SiriKitConfirmationState();
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

uint64_t lazy protocol witness table accessor for type CommandFailure and conformance CommandFailure(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_18_31()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 112), *(*(v0 + 112) + 24));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return type metadata accessor for WorkflowDataModels(0);
}

uint64_t OUTLINED_FUNCTION_19_24()
{

  return CommandFailure.init(errorCode:reason:errorDomain:underlyingError:)(-1, v0, v1, 0, 0, 0);
}

void OUTLINED_FUNCTION_36_17()
{

  _StringGuts.grow(_:)(77);
}

uint64_t EmptyOutputAndCloseFlow.__allocating_init(shouldClose:aceServiceInvoker:applicationSessionID:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = swift_allocObject();
  EmptyOutputAndCloseFlow.init(shouldClose:aceServiceInvoker:applicationSessionID:)(v7, a2, a3, a4);
  return v8;
}

uint64_t EmptyOutputAndCloseFlow.init(shouldClose:aceServiceInvoker:applicationSessionID:)(char a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  outlined init with take of AceServiceInvokerAsync(a2, v4 + 24);
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return v4;
}

unint64_t lazy protocol witness table accessor for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow()
{
  result = lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow;
  if (!lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow)
  {
    type metadata accessor for EmptyOutputAndCloseFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow);
  }

  return result;
}

uint64_t EmptyOutputAndCloseFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(EmptyOutputAndCloseFlow.execute());
}

uint64_t EmptyOutputAndCloseFlow.execute()()
{
  v1 = static OutputUtils.makeEmptySnippet(correspondingSessionID:)(*(v0[3] + 64), *(v0[3] + 72));
  v0[4] = v1;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[5] = __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v5, v6, "Submitting empty output");
  }

  v7 = v0[3];

  v8 = v7[6];
  v9 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v8);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = type metadata accessor for SABaseCommand();
  *v10 = v0;
  v10[1] = EmptyOutputAndCloseFlow.execute();

  return AceServiceInvokerAsync.submit<A>(_:)(v1, v8, v11, v9);
}

uint64_t EmptyOutputAndCloseFlow.execute()(void *a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 56) = v1;

  if (v1)
  {
    v7 = EmptyOutputAndCloseFlow.execute();
  }

  else
  {

    v7 = EmptyOutputAndCloseFlow.execute();
  }

  return _swift_task_switch(v7);
}

uint64_t EmptyOutputAndCloseFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4[3] + 16) == 1)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Dismissing Siri for Empty Output", v7, 2u);
    }

    v8 = v4[3];

    __swift_project_boxed_opaque_existential_1((v8 + 24), *(v8 + 48));
    v9 = [objc_allocWithZone(SAUICloseAssistant) init];
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  v10 = v4[4];
  static ExecuteResponse.complete()();

  v11 = v4[1];

  return v11();
}

{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_40(&dword_0, v7, v8, "Error submitting empty dialog");
  }

  v9 = *(v4 + 32);
  static ExecuteResponse.complete()();

  v10 = *(v4 + 8);

  return v10();
}

uint64_t EmptyOutputAndCloseFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t EmptyOutputAndCloseFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance EmptyOutputAndCloseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance EmptyOutputAndCloseFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance EmptyOutputAndCloseFlow(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t protocol witness for Flow.execute() in conformance EmptyOutputAndCloseFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance EmptyOutputAndCloseFlow;

  return EmptyOutputAndCloseFlow.execute()(a1);
}

uint64_t protocol witness for Flow.execute() in conformance EmptyOutputAndCloseFlow()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t VoiceCommandsNLIntent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandConfirmation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return OUTLINED_FUNCTION_12_34();
    case 2:
      return 0x6472696874;
    case 3:
      v7 = 1920298854;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607653;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_28;
    case 13:
      v6 = 1920298854;
      goto LABEL_28;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_28;
    case 18:
      v6 = 1701734766;
LABEL_28:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

void VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 10:
      OUTLINED_FUNCTION_38_17();
      break;
    default:
      return;
  }
}

uint64_t VoiceCommandsNLIntent.voiceCommandContact.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v0);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v1);
  v3 = &v21 - v2;
  v4 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  if (one-time initialization token for voiceCommandContactNode != -1)
  {
    OUTLINED_FUNCTION_9_33(&one-time initialization token for voiceCommandContactNode);
  }

  v13 = static VoiceCommandsNLIntent.voiceCommandContactNode;
  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v14, v15, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of Any?(v3, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    return 0;
  }

  else
  {
    v17 = *(v6 + 32);
    v17(v12, v3, v4);
    (*(v6 + 16))(v10, v12, v4);
    v18 = *(v6 + 8);

    v18(v12, v4);
    v19 = type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode(0);
    v16 = OUTLINED_FUNCTION_66(v19);
    v17((v16 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode), v10, v4);
    *(v16 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode) = v13;
  }

  return v16;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandUnit_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandUnit.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x58)
  {
    return 88;
  }

  else
  {
    return v1;
  }
}

void VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter(char a1)
{
  switch(a1)
  {
    case '2':
    case '3':
    case '@':
    case 'A':
      OUTLINED_FUNCTION_38_17();
      break;
    case 'U':
      OUTLINED_FUNCTION_12_34();
      break;
    default:
      return;
  }
}

uint64_t VoiceCommandsNLIntent.voiceCommandConfirmation.getter()
{
  OUTLINED_FUNCTION_8_37();
  if (!v0)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v1, v2, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v4;
}

uint64_t one-time initialization function for voiceCommandVerbNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMR);
  OUTLINED_FUNCTION_66(v0);
  result = OUTLINED_FUNCTION_10_41();
  static VoiceCommandsNLIntent.voiceCommandVerbNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandVerbNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandVerbNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandVerbNode;
}

uint64_t one-time initialization function for voiceCommandConfirmationNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22(24, v1);
  static VoiceCommandsNLIntent.voiceCommandConfirmationNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandConfirmationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandConfirmationNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandConfirmationNode;
}

uint64_t one-time initialization function for voiceCommandNameNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_66(v0);
  result = OUTLINED_FUNCTION_10_41();
  static VoiceCommandsNLIntent.voiceCommandNameNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandNameNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandNameNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandNameNode;
}

uint64_t one-time initialization function for voiceCommandNounNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandNounNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandNounNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandNounNode != -1)
  {
    OUTLINED_FUNCTION_7_38(&one-time initialization token for voiceCommandNounNode);
  }

  return &static VoiceCommandsNLIntent.voiceCommandNounNode;
}

uint64_t one-time initialization function for voiceCommandCategoryNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandCategoryNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandCategoryNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandCategoryNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandCategoryNode;
}

uint64_t one-time initialization function for voiceCommandDateTimeNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22(20, v1);
  static VoiceCommandsNLIntent.voiceCommandDateTimeNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandDateTimeNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandDateTimeNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandDateTimeNode;
}

uint64_t one-time initialization function for voiceCommandLocationValueNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandLocationValueNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandLocationValueNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandLocationValueNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandLocationValueNode;
}

uint64_t one-time initialization function for voiceCommandLocationIdNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandLocationIdNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandLocationIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandLocationIdNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandLocationIdNode;
}

uint64_t one-time initialization function for voiceCommandLocationNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216840;
  if (one-time initialization token for voiceCommandLocationValueNode != -1)
  {
    swift_once();
  }

  v1 = static VoiceCommandsNLIntent.voiceCommandLocationValueNode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 56) = v2;
  v3 = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = one-time initialization token for voiceCommandLocationIdNode;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static VoiceCommandsNLIntent.voiceCommandLocationIdNode;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  type metadata accessor for NonTerminalOntologyNode();
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static VoiceCommandsNLIntent.voiceCommandLocationNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandLocationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandLocationNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandLocationNode;
}

uint64_t one-time initialization function for voiceCommandReferenceNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22(21, v1);
  static VoiceCommandsNLIntent.voiceCommandReferenceNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandReferenceNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandReferenceNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandReferenceNode;
}

uint64_t one-time initialization function for voiceCommandIdNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.voiceCommandIdNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandIdNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandIdNode;
}

uint64_t one-time initialization function for voiceCommandPaginationNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22(22, v1);
  static VoiceCommandsNLIntent.voiceCommandPaginationNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandPaginationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandPaginationNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandPaginationNode;
}

uint64_t one-time initialization function for voiceCommandTextNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_66(v0);
  result = OUTLINED_FUNCTION_10_41();
  static VoiceCommandsNLIntent.voiceCommandTextNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandTextNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandTextNode;
}

uint64_t one-time initialization function for voiceCommandScalarNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMd, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMR);
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_11_38();
  result = OUTLINED_FUNCTION_20_22(18, v1);
  static VoiceCommandsNLIntent.voiceCommandScalarNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandScalarNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandScalarNode;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandUnitNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandUnitNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandUnitNode;
}

uint64_t one-time initialization function for voiceCommandUnitNode(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_66(v5);
  result = OUTLINED_FUNCTION_20_22(16, 0x80000000002321C0);
  *a4 = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandCurrencyUnitNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandCurrencyUnitNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.voiceCommandCurrencyUnitNode;
}

uint64_t one-time initialization function for voiceCommandContactNode()
{
  type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactOntologyNode(0);
  swift_allocObject();
  result = VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.init(name:multicardinal:)(0xD000000000000013, 0x8000000000232220, 0);
  static VoiceCommandsNLIntent.voiceCommandContactNode = result;
  return result;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.init(name:multicardinal:)(a1, a2, v3);
}

uint64_t *VoiceCommandsNLIntent.voiceCommandContactNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactNode != -1)
  {
    OUTLINED_FUNCTION_9_33(&one-time initialization token for voiceCommandContactNode);
  }

  return &static VoiceCommandsNLIntent.voiceCommandContactNode;
}

uint64_t one-time initialization function for voiceCommandsDomainNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217F00;
  if (one-time initialization token for voiceCommandVerbNode != -1)
  {
    swift_once();
  }

  v1 = static VoiceCommandsNLIntent.voiceCommandVerbNode;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMR);
  *(v0 + 64) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.Verb> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV4VerbOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v2 = one-time initialization token for voiceCommandConfirmationNode;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static VoiceCommandsNLIntent.voiceCommandConfirmationNode;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMR);
  *(v0 + 104) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandConfirmation> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandConfirmationOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 72) = v3;
  v4 = one-time initialization token for voiceCommandNameNode;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static VoiceCommandsNLIntent.voiceCommandNameNode;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 136) = v6;
  v7 = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = one-time initialization token for voiceCommandNounNode;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static VoiceCommandsNLIntent.voiceCommandNounNode;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMR);
  *(v0 + 184) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandNoun> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandNounOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 152) = v9;
  v10 = one-time initialization token for voiceCommandCategoryNode;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static VoiceCommandsNLIntent.voiceCommandCategoryNode;
  *(v0 + 216) = v6;
  *(v0 + 224) = v7;
  *(v0 + 192) = v11;
  v12 = one-time initialization token for voiceCommandDateTimeNode;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static VoiceCommandsNLIntent.voiceCommandDateTimeNode;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR);
  *(v0 + 264) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<TerminalElement.DateTimeValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMd, &_s12SiriOntology08TerminalB4NodeCyAA0C7ElementV13DateTimeValueVGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 232) = v13;
  v14 = one-time initialization token for voiceCommandLocationNode;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static VoiceCommandsNLIntent.voiceCommandLocationNode;
  *(v0 + 296) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 304) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 272) = v15;
  v16 = one-time initialization token for voiceCommandReferenceNode;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static VoiceCommandsNLIntent.voiceCommandReferenceNode;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMR);
  *(v0 + 344) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandReference> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H16CommandReferenceOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 312) = v17;
  v18 = one-time initialization token for voiceCommandIdNode;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static VoiceCommandsNLIntent.voiceCommandIdNode;
  *(v0 + 376) = v6;
  *(v0 + 384) = v7;
  *(v0 + 352) = v19;
  v20 = one-time initialization token for voiceCommandPaginationNode;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static VoiceCommandsNLIntent.voiceCommandPaginationNode;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMR);
  *(v0 + 424) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandPagination> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H17CommandPaginationOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 392) = v21;
  v22 = one-time initialization token for voiceCommandTextNode;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static VoiceCommandsNLIntent.voiceCommandTextNode;
  *(v0 + 456) = v6;
  *(v0 + 464) = v7;
  *(v0 + 432) = v23;
  v24 = one-time initialization token for voiceCommandScalarNode;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static VoiceCommandsNLIntent.voiceCommandScalarNode;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMd, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMR);
  *(v0 + 504) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<Scalar<Double, VoiceCommandsNLIntent.VoiceCommandScalarUnit>> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMd, &_s12SiriOntology08TerminalB4NodeCyAA6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0i7CommandE4UnitOGGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 472) = v25;
  v26 = one-time initialization token for voiceCommandUnitNode;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = static VoiceCommandsNLIntent.voiceCommandUnitNode;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMR);
  *(v0 + 544) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandUnit> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H11CommandUnitOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 512) = v27;
  v28 = one-time initialization token for voiceCommandCurrencyUnitNode;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = static VoiceCommandsNLIntent.voiceCommandCurrencyUnitNode;
  *(v0 + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMR);
  *(v0 + 584) = lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceCommandsNLIntent.VoiceCommandCurrencyUnit> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMd, &_s12SiriOntology08TerminalB4NodeCy0A14LinkFlowPlugin21VoiceCommandsNLIntentV0H19CommandCurrencyUnitOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 552) = v29;
  v30 = one-time initialization token for voiceCommandContactNode;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = static VoiceCommandsNLIntent.voiceCommandContactNode;
  *(v0 + 616) = type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactOntologyNode(0);
  *(v0 + 624) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 592) = v31;
  type metadata accessor for DomainOntologyNode();
  swift_allocObject();

  result = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  static VoiceCommandsNLIntent.voiceCommandsDomainNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.voiceCommandsDomainNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandsDomainNode != -1)
  {
    OUTLINED_FUNCTION_6_39(&one-time initialization token for voiceCommandsDomainNode);
  }

  return &static VoiceCommandsNLIntent.voiceCommandsDomainNode;
}

uint64_t static VoiceCommandsNLIntent.voiceCommandVerbNode.getter()
{
  OUTLINED_FUNCTION_8_37();
  if (!v0)
  {
    swift_once();
  }
}

uint64_t VoiceCommandsNLIntent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t VoiceCommandsNLIntent.domainOntologyNode.getter()
{
  if (one-time initialization token for voiceCommandsDomainNode != -1)
  {
    OUTLINED_FUNCTION_6_39(&one-time initialization token for voiceCommandsDomainNode);
  }
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::Verb_optional __swiftcall VoiceCommandsNLIntent.Verb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceCommandsNLIntent.Verb.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t VoiceCommandsNLIntent.Verb.rawValue.getter(char a1)
{
  result = 0x796669646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 7239026;
      break;
    case 3:
      result = 1684957542;
      break;
    case 4:
      v3 = 1634038371;
      goto LABEL_7;
    case 5:
      v3 = 1701602660;
LABEL_7:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      result = 7827304;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::Verb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.Verb@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::Verb_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.Verb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.Verb()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = VoiceCommandsNLIntent.Verb.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandUnit_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandUnit@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandUnit_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandUnit.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandUnit()
{
  v1 = OUTLINED_FUNCTION_46_3();
  VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandCurrencyUnit_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x59)
  {
    return 89;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandCurrencyUnit_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandCurrencyUnit_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit()
{
  v1 = OUTLINED_FUNCTION_46_3();
  VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

BOOL VoiceCommandsNLIntent.VoiceCommandNoun.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceCommandsNLIntent.VoiceCommandNoun.init(rawValue:), v2);
  OUTLINED_FUNCTION_48_3();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandNoun@<W0>(_BYTE *a1@<X8>)
{
  result = VoiceCommandsNLIntent.VoiceCommandNoun.init(rawValue:)();
  *a1 = result;
  return result;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandReference_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandReference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_48_3();
  if (v1 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v1;
  }
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandReference_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandReference@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandReference_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandReference.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandReference()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandConfirmation_optional __swiftcall VoiceCommandsNLIntent.VoiceCommandConfirmation.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceCommandsNLIntent.VoiceCommandConfirmation.init(rawValue:), v3);
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

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandConfirmation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceCommandsNLIntent.VoiceCommandConfirmation@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandConfirmation_optional *a2@<X8>)
{
  result.value = VoiceCommandsNLIntent.VoiceCommandConfirmation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceCommandsNLIntent.VoiceCommandConfirmation()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = VoiceCommandsNLIntent.VoiceCommandConfirmation.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance VoiceCommandsNLIntent.Verb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v8 = a4(a1, a2, a3);
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

uint64_t VoiceCommandsNLIntent.voiceCommandDateTime.getter(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v4, v5, &protocol conformance descriptor for VoiceCommandsNLIntent);
  v6 = OUTLINED_FUNCTION_95();

  return a3(v6);
}

uint64_t VoiceCommandsNLIntent.voiceCommandNoun.getter()
{
  if (one-time initialization token for voiceCommandNounNode != -1)
  {
    OUTLINED_FUNCTION_7_38(&one-time initialization token for voiceCommandNounNode);
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v0, v1, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v3;
}

uint64_t VoiceCommandsNLIntent.voiceCommandName.getter()
{
  OUTLINED_FUNCTION_8_37();
  if (!v0)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_0_51();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v1, v2, &protocol conformance descriptor for VoiceCommandsNLIntent);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v4;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.__allocating_init(intentNode:ontologyNode:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(v4 + v5, a1);
  *(v4 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode) = a2;
  return v4;
}

uint64_t one-time initialization function for personNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216850;
  v1 = type metadata accessor for PersonOntologyNode();
  swift_allocObject();
  v2 = PersonOntologyNode.init(name:multicardinal:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v2;
  type metadata accessor for NonTerminalOntologyNode();
  swift_allocObject();
  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode.unsafeMutableAddressor()
{
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_2_63(&one-time initialization token for personNode);
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode;
}

uint64_t one-time initialization function for voiceCommandContactIdNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactIdNode = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactIdNode != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactIdNode;
}

uint64_t one-time initialization function for voiceCommandContactName()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactName = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactName.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactName != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactName;
}

uint64_t one-time initialization function for voiceCommandContactReference()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactReference = result;
  return result;
}

uint64_t *VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactReference.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommandContactReference != -1)
  {
    swift_once();
  }

  return &static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.voiceCommandContactReference;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_216850;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_2_63(&one-time initialization token for personNode);
  }

  v4 = static VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.personNode;
  *(v3 + 56) = type metadata accessor for NonTerminalOntologyNode();
  *(v3 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v3 + 32) = v4;

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactOntologyNode.__deallocating_deinit()
{
  NonTerminalOntologyNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t key path setter for VoiceCommandsNLIntent.VoiceCommandContactIntentNode.intentNode : VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonTerminalIntentNode();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 104))(v6);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.intentNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  swift_beginAccess();
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.intentNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  swift_beginAccess();
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t key path setter for VoiceCommandsNLIntent.VoiceCommandContactIntentNode.ontologyNode : VoiceCommandsNLIntent.VoiceCommandContactIntentNode(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.ontologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.init(intentNode:ontologyNode:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_ontologyNode) = a2;
  return v2;
}

uint64_t static VoiceCommandsNLIntent.VoiceCommandContactIntentNode.from(intentNode:ontologyNode:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7_1();
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *(v2 + 144);

  return v9(v7, a2);
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v24 = v1;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_2_63(&one-time initialization token for personNode);
  }

  type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode(0);
  OUTLINED_FUNCTION_4_56();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v16, v17, &protocol conformance descriptor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_43_12(v6);
  if (v18)
  {
    outlined destroy of Any?(v6, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v20 = 1;
  }

  else
  {
    (*(v9 + 32))(v15, v6, v7);
    (*(v9 + 16))(v13, v15, v7);
    v19 = type metadata accessor for PersonOntologyNode();
    OUTLINED_FUNCTION_66(v19);
    PersonOntologyNode.init(name:multicardinal:)();
    PersonIntentNode.init(intentNode:ontologyNode:)();
    (*(v9 + 8))(v15, v7);
    v20 = 0;
  }

  v21 = type metadata accessor for PersonIntentNode();
  return __swift_storeEnumTagSinglePayload(a1, v20, 1, v21);
}

uint64_t _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.contactId.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode(0);
  OUTLINED_FUNCTION_4_56();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(v3, v4, &protocol conformance descriptor for VoiceCommandsNLIntent.VoiceCommandContactIntentNode);
  OUTLINED_FUNCTION_9_3();
  IntentNodeTraversable.value<A>(forNode:)();
  return v6;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.firstName.getter(uint64_t (*a1)(uint64_t, void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_48_12();
  VoiceCommandsNLIntent.VoiceCommandContactIntentNode.person.getter(v1);
  v6 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_42_14(v6);
  if (v7)
  {
    outlined destroy of Any?(v1, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    return 0;
  }

  else
  {
    v8 = a1(v2, &protocol witness table for PersonIntentNode);
    OUTLINED_FUNCTION_21_2();
    v9 = OUTLINED_FUNCTION_95();
    v10(v9);
  }

  return v8;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.namePrefix.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_48_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_41_15();
  v6 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_42_14(v6);
  if (v12)
  {
    v7 = &_s12SiriOntology16PersonIntentNodeVSgMd;
    v8 = &_s12SiriOntology16PersonIntentNodeVSgMR;
    v9 = v1;
LABEL_7:
    outlined destroy of Any?(v9, v7, v8);
    return 0;
  }

  PersonIntentNodeContaining.namePrefix.getter();
  OUTLINED_FUNCTION_21_2();
  v10 = OUTLINED_FUNCTION_95();
  v11(v10);
  type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  OUTLINED_FUNCTION_43_12(v0);
  if (v12)
  {
    v7 = &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd;
    v8 = &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR;
    v9 = v0;
    goto LABEL_7;
  }

  v13 = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
  OUTLINED_FUNCTION_21_2();
  v14 = OUTLINED_FUNCTION_9_3();
  v15(v14);
  return v13;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.nameSuffix.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_48_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_41_15();
  v6 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_42_14(v6);
  if (v12)
  {
    v7 = &_s12SiriOntology16PersonIntentNodeVSgMd;
    v8 = &_s12SiriOntology16PersonIntentNodeVSgMR;
    v9 = v1;
LABEL_7:
    outlined destroy of Any?(v9, v7, v8);
    return 0;
  }

  PersonIntentNodeContaining.namePostfix.getter();
  OUTLINED_FUNCTION_21_2();
  v10 = OUTLINED_FUNCTION_95();
  v11(v10);
  type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  OUTLINED_FUNCTION_43_12(v0);
  if (v12)
  {
    v7 = &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd;
    v8 = &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR;
    v9 = v0;
    goto LABEL_7;
  }

  v13 = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
  OUTLINED_FUNCTION_21_2();
  v14 = OUTLINED_FUNCTION_9_3();
  v15(v14);
  return v13;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.deinit()
{
  v1 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t VoiceCommandsNLIntent.VoiceCommandContactIntentNode.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV18SiriLinkFlowPlugin21VoiceCommandsNLIntent29VoiceCommandContactIntentNode_intentNode;
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.Verb and conformance VoiceCommandsNLIntent.Verb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandScalarUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandUnit and conformance VoiceCommandsNLIntent.VoiceCommandUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyScalarUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandCurrencyUnit and conformance VoiceCommandsNLIntent.VoiceCommandCurrencyUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandNoun and conformance VoiceCommandsNLIntent.VoiceCommandNoun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandReference and conformance VoiceCommandsNLIntent.VoiceCommandReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandConfirmation and conformance VoiceCommandsNLIntent.VoiceCommandConfirmation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent.VoiceCommandPagination and conformance VoiceCommandsNLIntent.VoiceCommandPagination);
  }

  return result;
}

uint64_t protocol witness for static NonTerminalIntentNodeWrapper.from(intentNode:ontologyNode:) in conformance VoiceCommandsNLIntent.VoiceCommandContactIntentNode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static VoiceCommandsNLIntent.VoiceCommandContactIntentNode.from(intentNode:ontologyNode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance VoiceCommandsNLIntent@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NLIntent();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance VoiceCommandsNLIntent(uint64_t a1)
{
  v2 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance VoiceCommandsNLIntent(uint64_t a1)
{
  v2 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceCommandsNLIntent(uint64_t a1)
{
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);

  return NLIntentWrapper.description.getter();
}

uint64_t sub_1F8870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1F88D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLIntent();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1F8930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLIntent();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata completion function for VoiceCommandsNLIntent(uint64_t a1)
{
  result = type metadata accessor for NLIntent();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1F8AB4);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA9)
  {
    if (a2 + 87 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 87) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 88;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x58;
  v5 = v6 - 88;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 87 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 87) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA8)
  {
    v6 = ((a2 - 169) >> 8) + 1;
    *result = a2 + 87;
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
        JUMPOUT(0x1F8C50);
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
          *result = a2 + 87;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandCurrencyUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA8)
  {
    if (a2 + 88 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 88) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 89;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v5 = v6 - 89;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandCurrencyUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA7)
  {
    v6 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
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
        JUMPOUT(0x1F8DECLL);
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
          *result = a2 + 88;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandNoun(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1F8EC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
        JUMPOUT(0x1F904CLL);
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsNLIntent.VoiceCommandConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1F9164);
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

uint64_t type metadata completion function for VoiceCommandsNLIntent.VoiceCommandContactIntentNode(uint64_t a1)
{
  result = type metadata accessor for NonTerminalIntentNode();
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

uint64_t OUTLINED_FUNCTION_2_63(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_38(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_41()
{

  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t OUTLINED_FUNCTION_20_22(uint64_t a1, uint64_t a2)
{

  return TerminalOntologyNode.init(name:multicardinal:)();
}

uint64_t OUTLINED_FUNCTION_41_15()
{

  return VoiceCommandsNLIntent.VoiceCommandContactIntentNode.person.getter(v0);
}

uint64_t OUTLINED_FUNCTION_42_15()
{

  return swift_beginAccess();
}

uint64_t CustomIntentStateAttachment.init(customIntent:isConfirming:appBundleId:parameterName:selectionItems:customIntentResponse:pageSize:pageIndex:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13)
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
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  return result;
}

id CustomIntentStateAttachment.asAttachment()(uint64_t a1)
{
  CustomIntentStateAttachment.asDictionary()();
  v1 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v2);
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CustomIntentStateAttachment.parameterName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CustomIntentStateAttachment.selectionItems.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t CustomIntentStateAttachment.pageSize.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t CustomIntentStateAttachment.pageIndex.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

_OWORD *CustomIntentStateAttachment.asDictionary()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_218720;
  *(inited + 32) = 0x70756F726724;
  *(inited + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v3[6] = 0xD000000000000026;
  v3[7] = v4;
  v3[9] = &type metadata for String;
  v3[10] = 0x7373616C6324;
  OUTLINED_FUNCTION_26_3();
  v5[11] = 0xE600000000000000;
  v5[12] = 0xD00000000000001ALL;
  v5[13] = v6;
  v5[15] = &type metadata for String;
  v5[16] = 0x656D614E65707974;
  v5[17] = 0xE800000000000000;
  v145 = *v1;
  v7 = [*v1 typeName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 144) = v8;
  *(inited + 152) = v10;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "integrationApp");
  *(inited + 191) = -18;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_218630;
  *(v11 + 32) = 0x70756F726724;
  *(v11 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v12[6] = 0xD000000000000014;
  v12[7] = v13;
  v12[9] = &type metadata for String;
  v12[10] = 0x7373616C6324;
  v12[11] = 0xE600000000000000;
  v12[12] = 0x6F666E49707041;
  v12[13] = 0xE700000000000000;
  v12[15] = &type metadata for String;
  v12[16] = 0xD000000000000012;
  v12[17] = 0x8000000000235840;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A520;
  *(v14 + 32) = 0x70756F726724;
  *(v14 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v15[6] = 0xD000000000000012;
  v15[7] = v16;
  v15[8] = 0x7373616C6324;
  v15[9] = 0xE600000000000000;
  OUTLINED_FUNCTION_26_3();
  v17[10] = 0xD000000000000012;
  v17[11] = v18;
  v17[12] = 30244;
  v17[13] = 0xE200000000000000;
  v17[14] = 808333361;
  v17[15] = 0xE400000000000000;
  v17[16] = 0x6449656C646E7562;
  v17[17] = 0xE800000000000000;
  v19 = *(v1 + 24);
  *(v14 + 144) = *(v1 + 16);
  *(v14 + 152) = v19;

  v20 = Dictionary.init(dictionaryLiteral:)();
  *(v11 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *(v11 + 144) = v20;
  OUTLINED_FUNCTION_26_9();
  v21 = Dictionary.init(dictionaryLiteral:)();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  *(inited + 192) = v21;
  *(inited + 216) = v22;
  *(inited + 224) = 0x696D7269666E6F63;
  *(inited + 232) = 0xEA0000000000676ELL;
  v23 = *(v1 + 8);
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = v23;
  v24 = Dictionary.init(dictionaryLiteral:)();
  v32 = v24;
  v33 = *(v1 + 40);
  if (v33)
  {
    *&v161 = *(v1 + 32);
    *(&v161 + 1) = v33;
    OUTLINED_FUNCTION_4_57(v24, v25, v26, v27, v28, v29, v30, v31, v138, v145, v152, v158, v159, v160, v161);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    v41 = OUTLINED_FUNCTION_6_40(v34, v35, 0x656D614E72, v36, v37, v38, v39, v40, v139, v146, v153, v158);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, 0x6574656D61726170, v42);
    v43 = v154;
    v44 = CustomIntentStateAttachment.parameterType()();
    OUTLINED_FUNCTION_3_64(v44._countAndFlagsBits, v44._object, v45, v46, v47, v48, v49, v50, v140, v147, v154, v158, v159, v160, v161);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = OUTLINED_FUNCTION_6_40(isUniquelyReferenced_nonNull_native, v52, 0x6570795472, isUniquelyReferenced_nonNull_native, v53, v54, v55, v56, v141, v148, v43, v158);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, 0x6574656D61726170, v58);
    v59 = CustomIntentStateAttachment.isMulticardinal()();
    v162 = &type metadata for Bool;
    LOBYTE(v161) = v59;
    OUTLINED_FUNCTION_4_57(v59, v60, v61, v62, v63, v64, v65, v66, v142, v149, v155, v158, v159, v160, v161);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    v73 = OUTLINED_FUNCTION_6_40(v67, 0x72614369746C756DLL, 0x6C616E6964, v68, v69, v70, v71, v72, v143, v150, v156, v158);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v74, v75);
    v32 = v152;
  }

  if (one-time initialization token for setCachedLanguage != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for setCachedLanguage);
  }

  v76 = [v145 _JSONDictionaryRepresentation];
  v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v77);
  v79._rawValue = v78;

  v80 = CustomIntentStateAttachment.dictionaryAsString(hash:)(v79);

  if (v80.value._object)
  {
    v162 = &type metadata for String;
    OUTLINED_FUNCTION_4_57(v81, v82, v83, v84, v85, v86, v87, v88, v138, v145, v152, v158, v159, v160, *&v80);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v158, 0xD000000000000011, 0x8000000000235900);
    v32 = v152;
  }

  v95 = CustomIntentStateAttachment.intentDefinitionAsJsonString()();
  if (v95.value._object)
  {
    v162 = &type metadata for String;
    OUTLINED_FUNCTION_3_64(v95.value._countAndFlagsBits, v95.value._object, v89, v90, v91, v92, v93, v94, v138, v145, v152, v158, v159, v160, v161);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v158, 0xD00000000000001BLL, 0x80000000002358E0);
    v32 = v152;
  }

  v102 = CustomIntentStateAttachment.intentResponseAsJsonString()();
  if (v102.value._object)
  {
    v162 = &type metadata for String;
    OUTLINED_FUNCTION_3_64(v102.value._countAndFlagsBits, v102.value._object, v96, v97, v98, v99, v100, v101, v138, v145, v152, v158, v159, v160, v161);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_9_34(v103, v104, v105, v106, v107, v108);
    v32 = v152;
  }

  v117 = CustomIntentStateAttachment.selectionItemsAsJsonString()();
  object = v117.value._object;
  countAndFlagsBits = v117.value._countAndFlagsBits;
  if (v117.value._object)
  {
    v162 = &type metadata for String;
    OUTLINED_FUNCTION_3_64(v117.value._countAndFlagsBits, v117.value._object, v111, v112, v113, v114, v115, v116, v138, v145, v152, v158, v159, v160, v161);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    countAndFlagsBits = OUTLINED_FUNCTION_9_34(v118, v119, v120, v121, v122, v123);
    v32 = v152;
  }

  if ((*(v1 + 72) & 1) == 0 && (*(v1 + 88) & 1) == 0)
  {
    v124 = *(v1 + 64);
    v125 = *(v1 + 80);
    v162 = &type metadata for Int;
    *&v161 = v124;
    OUTLINED_FUNCTION_4_57(countAndFlagsBits, object, v111, v112, v113, v114, v115, v116, v138, v145, v152, v158, v159, v160, v161);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_68();
    v126 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v158, 0x657A695365676170, 0xE800000000000000);
    v127 = v157;
    v162 = &type metadata for Int;
    *&v161 = v125;
    OUTLINED_FUNCTION_4_57(v126, v128, v129, v130, v131, v132, v133, v134, v144, v151, v157, v158, v159, v160, v161);
    swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v158, 0x65646E4965676170, 0xE900000000000078);
    v32 = v127;
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v32);
  v136 = v135;

  return v136;
}

Swift::String __swiftcall CustomIntentStateAttachment.parameterType()()
{
  v1 = [*v0 _codableDescription];

  v2 = OUTLINED_FUNCTION_22();
  v4 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v2, v3, v1);

  if (v4)
  {
    if ([v4 valueType] || (v10 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v4)) == 0)
    {
      v21 = static CustomTypeReference.fromSlotValueType(valueType:)([v4 valueType]);
      v22 = v5;

      v6._countAndFlagsBits = 46;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);

      v7._countAndFlagsBits = OUTLINED_FUNCTION_26_9();
      String.append(_:)(v7);
    }

    else
    {
      v11 = static CustomTypeReference.buildFromAttributeHash(attributeHash:)(v10);
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v21 = v11;
      v22 = v13;

      v18._countAndFlagsBits = 46;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);

      v19._countAndFlagsBits = v15;
      v19._object = v17;
      String.append(_:)(v19);
    }

    v8 = v21;
    v9 = v22;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::Bool __swiftcall CustomIntentStateAttachment.isMulticardinal()()
{
  v1 = [*v0 _codableDescription];
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = v2;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v3, v4, v1);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 modifier];

  return v6 == 0;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.intentAsJsonString()()
{
  v1 = *v0;
  if (one-time initialization token for setCachedLanguage != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for setCachedLanguage);
  }

  v2 = [v1 _JSONDictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);
  v5._rawValue = v4;

  v6 = CustomIntentStateAttachment.dictionaryAsString(hash:)(v5);

  countAndFlagsBits = v6.value._countAndFlagsBits;
  object = v6.value._object;
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.intentDefinitionAsJsonString()()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_3();
  v2 = [*v0 _codableDescription];
  INCodableDescription.asCustomIntentDescription()();

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMd, &_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMR);
  lazy protocol witness table accessor for type CustomIntentDefinition? and conformance <A> A?();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  outlined consume of Data._Representation(v3, v5);
  v6 = OUTLINED_FUNCTION_22();
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.intentResponseAsJsonString()()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    countAndFlagsBits = 0;
LABEL_6:
    object = 0;
    goto LABEL_7;
  }

  v2 = objc_allocWithZone(INJSONEncoder);
  v3 = v1;
  v4 = [v2 init];
  v5 = v3;
  v6 = [v5 _codableDescription];
  countAndFlagsBits = [v4 encodeObject:v5 withCodableDescription:v6];

  if (!countAndFlagsBits)
  {

    goto LABEL_6;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  v10._rawValue = v9;

  v11 = CustomIntentStateAttachment.dictionaryAsString(hash:)(v10);
  countAndFlagsBits = v11.value._countAndFlagsBits;
  object = v11.value._object;

LABEL_7:
  v13 = countAndFlagsBits;
  v14 = object;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.selectionItemsAsJsonString()()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_3();
  v2 = [*v0 _codableDescription];
  if (*(v0 + 40))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v3, v4, v2);

  if (!v5)
  {
LABEL_20:
    if (*(v0 + 48))
    {
      v17 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v29[0] = 0;
      v19 = [v17 dataWithJSONObject:isa options:0 error:v29];

      v20 = v29[0];
      if (v19)
      {
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        static String.Encoding.utf8.getter();
        OUTLINED_FUNCTION_26_9();
        String.init(data:encoding:)();
        v21 = OUTLINED_FUNCTION_26_9();
        outlined consume of Data._Representation(v21, v22);
      }

      else
      {
        v23 = v20;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    goto LABEL_26;
  }

  if ([v5 valueType] != &stru_20.vmsize + 1 || (v6 = *(v0 + 48)) == 0)
  {

    goto LABEL_20;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = (v6 + 32);
    while (1)
    {
      v9 = *v8;

      AnyHashable.init<A>(_:)();
      if (!*(v9 + 16))
      {
        break;
      }

      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
      if ((v11 & 1) == 0)
      {
        break;
      }

      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v30);
      outlined destroy of AnyHashable(v29);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v12 = 0x616C756261636F76;
      v13 = 0xEF65756C61567972;
LABEL_15:
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      ++v8;
      if (!--v7)
      {
        goto LABEL_25;
      }
    }

    outlined destroy of AnyHashable(v29);
LABEL_14:

    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_15;
  }

LABEL_25:
  v29[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v29[0] = &stru_20 + 59;
  v29[1] = 0xE100000000000000;
  v24._countAndFlagsBits = OUTLINED_FUNCTION_26_9();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 93;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);

LABEL_26:
  v26 = OUTLINED_FUNCTION_22();
  result.value._object = v27;
  result.value._countAndFlagsBits = v26;
  return result;
}

id CustomIntentStateAttachment.asAceSerializable(hash:)()
{
  v0 = objc_allocWithZone(SABaseAceObject);

  result = @nonobjc SABaseAceObject.init(dictionary:)(v1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall CustomIntentStateAttachment.dictionaryAsString(hash:)(Swift::OpaquePointer hash)
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_3();
  v2 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v13 = 0;
  v4 = [v2 dataWithJSONObject:isa options:2 error:&v13];

  v5 = v13;
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    outlined consume of Data._Representation(v6, v8);
  }

  else
  {
    v9 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10 = OUTLINED_FUNCTION_22();
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDefinition? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMd, &_s18SiriLinkFlowPlugin22CustomIntentDefinitionVSgMR);
    lazy protocol witness table accessor for type CustomIntentDefinition and conformance CustomIntentDefinition();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDefinition and conformance CustomIntentDefinition()
{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition and conformance CustomIntentDefinition;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition and conformance CustomIntentDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition and conformance CustomIntentDefinition);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentStateAttachment(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t storeEnumTagSinglePayload for CustomIntentStateAttachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *OUTLINED_FUNCTION_3_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *&a15 = a1;
  *(&a15 + 1) = a2;

  return outlined init with take of Any(&a15, &a12);
}

_OWORD *OUTLINED_FUNCTION_4_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return outlined init with take of Any(&a15, &a12);
}

_OWORD *OUTLINED_FUNCTION_9_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(va, v7 + 7, v6 | 0x8000000000000000);
}

uint64_t Signposter.voiceCommands.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static Signposter.voiceCommands);
}

uint64_t static Signposter.voiceCommands.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static Signposter.voiceCommands);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  return OUTLINED_FUNCTION_37_15(0x6C69614D646E6553);
}

{
  return OUTLINED_FUNCTION_8_38(2003134838);
}

{
  return specialized RawRepresentable<>.hashValue.getter(0x7250747065636361, 0xED00007963617669);
}

{
  return OUTLINED_FUNCTION_2_64(0x64656C646E6168);
}

{
  return OUTLINED_FUNCTION_3_65(0x6E4F6E727574);
}

{
  return OUTLINED_FUNCTION_8_38(1701998445);
}

{
  return OUTLINED_FUNCTION_2_64(0x73657361726870);
}

{
  return OUTLINED_FUNCTION_3_65(0x6465696E6564);
}

{
  return OUTLINED_FUNCTION_8_38(1835365481);
}

{
  return OUTLINED_FUNCTION_3_65(0x6B636F6C6E75);
}

{
  return OUTLINED_FUNCTION_2_64(0x74754F656D6974);
}

{
  return OUTLINED_FUNCTION_2_64(0x646F50656D6F68);
}

{
  return OUTLINED_FUNCTION_19_25(0x6F72746E69);
}

{
  return OUTLINED_FUNCTION_19_25(0x736D657469);
}

{
  return OUTLINED_FUNCTION_19_25(0x726F727265);
}

{
  return OUTLINED_FUNCTION_37_15(0x74756374726F6873);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    v4 = 0x6974736567677573;
  }

  else
  {
    v4 = 0x7470697263736564;
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ListShortcutsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_28_8();
    if (v4)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = 0x62726556736168;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_31_21(v2, v5, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_32_19();
  v4 = v3 | 0x65756E69746E0000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6D6F74737563;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x726F727265;
    }

    else
    {
      v4 = 0x6D617261506C696ELL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_28_8();
    if (v4)
    {
      v5 = 0x74706D6F7270;
    }

    else
    {
      v5 = 0x6341686372616573;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21(v2, v5, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_32_19();
  v4 = v3 | 0x6D7269666E0000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6D6F74737563;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    v4 = 27503;
  }

  else
  {
    v4 = 0x6D7269666E6F63;
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_47_9();
  v4 = v3 | 0x6E616C7078450000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C70784568746977;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_33_16();
  v4 = v3 | 0x65446D6F74730000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656E6F68506E6FLL;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  v1 = a1;
  OUTLINED_FUNCTION_34_19(a1);
  OUTLINED_FUNCTION_29_25();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_15_29();
      break;
    case 2:
      OUTLINED_FUNCTION_21_25();
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_12_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v2, v3, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_33_16();
  v4 = v3 | 0x65446D6F74730000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64656C696166;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v4)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 7562617;
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_23();
  }

  OUTLINED_FUNCTION_31_21(v2, v5, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  v1 = a1;
  OUTLINED_FUNCTION_34_19(a1);
  OUTLINED_FUNCTION_26_29();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_1_69();
      break;
    case 2:
      OUTLINED_FUNCTION_22_29();
      break;
    case 3:
      OUTLINED_FUNCTION_13_30();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v2, v3, v4);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6C62616E45736177;
    }

    else
    {
      v4 = 0x6863746177;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_21();
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    v4 = 0x656C62616E65;
  }

  else
  {
    v4 = 0x656C6261736964;
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x66664F7470656BLL;
    }

    else
    {
      v4 = 0x6E4F7470656BLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_69();
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_32_19();
  v4 = v3 | 0x616D7269666E0000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7845657361726870;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_47_9();
  v4 = v3 | 0x6D614E7070410000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4E707041776F6873;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.rawValue.getter);
}

{
  v1 = a1;
  OUTLINED_FUNCTION_34_19(a1);
  OUTLINED_FUNCTION_11_39();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_0_53();
      break;
    case 2:
      OUTLINED_FUNCTION_14_30();
      break;
    case 3:
      OUTLINED_FUNCTION_16_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v2, v3, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_34_19(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x656C7069746C756DLL;
    }

    else
    {
      v4 = 0x72746E49776F6873;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_21();
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x656761507473616CLL;
    }

    else
    {
      v4 = 0x726F4D726566666FLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    v4 = 0x726F4D726566666FLL;
  }

  else
  {
    v4 = 0x656761507478656ELL;
  }

  OUTLINED_FUNCTION_31_21(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_33_16();
  v4 = v3 & 0xFFFF00000000FFFFLL | 0x6D6F74730000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4E707041776F6873;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_33_16();
  v4 = v3 | 0x61506D6F74730000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x50746C7561666564;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_44_17();
  v4 = v3 | 0x4E707041776F0000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, InstallShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, WorkflowRunnerCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, WorkflowRunnerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter);
}

{
  v1 = a1;
  OUTLINED_FUNCTION_34_19(a1);
  OUTLINED_FUNCTION_0_53();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_42_16();
      break;
    case 2:
      OUTLINED_FUNCTION_30_20();
      break;
    case 3:
      OUTLINED_FUNCTION_41_16();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v2, v3, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_20_23(a1);
  OUTLINED_FUNCTION_32_19();
  v4 = v3 | 0x61756E69746E0000;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6D6F74737563;
  }

  OUTLINED_FUNCTION_31_21(v1, v6, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.Verb.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

{
  OUTLINED_FUNCTION_20_23(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v4)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }
  }

  else
  {
    OUTLINED_FUNCTION_40_12();
  }

  OUTLINED_FUNCTION_31_21(v2, v5, v3);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  OUTLINED_FUNCTION_34_19(a1);
  v4 = a2(v3 & 1);
  OUTLINED_FUNCTION_23_23(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_34_19(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_34_19(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_23_23(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_27_23();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_46_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_12();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_28_8();
  }

  else
  {
    OUTLINED_FUNCTION_24_27();
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_45_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_46_15();
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1)
{
  return OUTLINED_FUNCTION_6_41(a1, 0x64656C646E6168);
}

{
  OUTLINED_FUNCTION_29_25();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_15_29();
      break;
    case 2:
      OUTLINED_FUNCTION_21_25();
      break;
    case 3:
      OUTLINED_FUNCTION_12_35();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_6_41(a1, 0x646F50656D6F68);
}

{
  return OUTLINED_FUNCTION_17_35(a1, 0x6F72746E69);
}

{
  return OUTLINED_FUNCTION_17_35(a1, 0x736D657469);
}

{
  return OUTLINED_FUNCTION_6_41(a1, 0x74754F656D6974);
}

{
  return OUTLINED_FUNCTION_4_58(a1, 0x6B636F6C6E75);
}

{
  return OUTLINED_FUNCTION_9_35(a1, 1835365481);
}

{
  OUTLINED_FUNCTION_0_53();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_11_39();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_0_53();
      break;
    case 2:
      OUTLINED_FUNCTION_14_30();
      break;
    case 3:
      OUTLINED_FUNCTION_16_35();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_17_35(a1, 0x726F727265);
}

{
  OUTLINED_FUNCTION_0_53();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_42_16();
      break;
    case 2:
      OUTLINED_FUNCTION_30_20();
      break;
    case 3:
      OUTLINED_FUNCTION_41_16();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_0_53();
  switch(v1)
  {
    case 3:
      OUTLINED_FUNCTION_30_20();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_9_35(a1, 2003134838);
}

{
  return OUTLINED_FUNCTION_9_35(a1, 1701998445);
}

{
  OUTLINED_FUNCTION_26_29();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_1_69();
      break;
    case 2:
      OUTLINED_FUNCTION_22_29();
      break;
    case 3:
      OUTLINED_FUNCTION_13_30();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_4_58(a1, 0x6465696E6564);
}

{
  return OUTLINED_FUNCTION_4_58(a1, 0x6E4F6E727574);
}

{
  return OUTLINED_FUNCTION_6_41(a1, 0x73657361726870);
}

{
  return OUTLINED_FUNCTION_35_21(a1, 0x74756374726F6873);
}

{
  return OUTLINED_FUNCTION_35_21(a1, 0x6C69614D646E6553);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_53();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_28_21();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_69();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_25_21();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_53();
  }

  String.hash(into:)();
}

uint64_t _sSYsSHRzSH8RawValueSYRpzrlE4hash4intoys6HasherVz_tF18SiriLinkFlowPlugin21SuggestionsCATsSimpleC17PreviousDialogIdsO_Tgq5_0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x726F727265;
    }

    else
    {
      v5 = 0x6D617261506C696ELL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_28_8();
    if (v5)
    {
      v6 = 0x6D6F74737563;
    }

    else
    {
      v6 = 0x62726556736168;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_27();
  }

  OUTLINED_FUNCTION_31_21(v3, v6, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_28_8();
    if (v5)
    {
      v6 = 0x74706D6F7270;
    }

    else
    {
      v6 = 0x6341686372616573;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21(v3, v6, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_32_19();
  v5 = v4 | 0x65756E69746E0000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6F74737563;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_32_19();
  v5 = v4 | 0x6D7269666E0000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6F74737563;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    v5 = 0x6974736567677573;
  }

  else
  {
    v5 = 0x7470697263736564;
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_46_8();
    if (v5)
    {
      v6 = 28526;
    }

    else
    {
      v6 = 0x6C65636E6163;
    }
  }

  else
  {
    OUTLINED_FUNCTION_40_12();
  }

  OUTLINED_FUNCTION_31_21(v3, v6, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceCommandsNLIntent.Verb.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x6C62616E45736177;
    }

    else
    {
      v5 = 0x6863746177;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_21();
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_48_14(a1, a2);
  OUTLINED_FUNCTION_26_29();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_1_69();
      break;
    case 2:
      OUTLINED_FUNCTION_22_29();
      break;
    case 3:
      OUTLINED_FUNCTION_13_30();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v3, v4, v5);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_32_19();
  v5 = v4 | 0x616D7269666E0000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7845657361726870;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    v5 = 0x656C62616E65;
  }

  else
  {
    v5 = 0x656C6261736964;
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x66664F7470656BLL;
    }

    else
    {
      v5 = 0x6E4F7470656BLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_69();
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ListShortcutsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, WorkflowRunnerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter);
}

{
  OUTLINED_FUNCTION_48_14(a1, a2);
  OUTLINED_FUNCTION_0_53();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_42_16();
      break;
    case 2:
      OUTLINED_FUNCTION_30_20();
      break;
    case 3:
      OUTLINED_FUNCTION_41_16();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v3, v4, v5);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_32_19();
  v5 = v4 | 0x61756E69746E0000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6F74737563;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, InstallShortcutCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_48_14(a1, a2);
  OUTLINED_FUNCTION_11_39();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_0_53();
      break;
    case 2:
      OUTLINED_FUNCTION_14_30();
      break;
    case 3:
      OUTLINED_FUNCTION_16_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v3, v4, v5);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_47_9();
  v5 = v4 | 0x6D614E7070410000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E707041776F6873;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_33_16();
  v5 = v4 & 0xFFFF00000000FFFFLL | 0x6D6F74730000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E707041776F6873;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_44_17();
  v5 = v4 | 0x4E707041776F0000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.DisambiguateSlotValueWithCustomTextDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    v5 = 0x726F4D726566666FLL;
  }

  else
  {
    v5 = 0x656761507478656ELL;
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_33_16();
  v5 = v4 | 0x61506D6F74730000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x50746C7561666564;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x656761507473616CLL;
    }

    else
    {
      v5 = 0x726F4D726566666FLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_53();
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_47_9();
  v5 = v4 | 0x6E616C7078450000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C70784568746977;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_46_8();
    if (v5)
    {
      v6 = 28526;
    }

    else
    {
      v6 = 7562617;
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_23();
  }

  OUTLINED_FUNCTION_31_21(v3, v6, v4);

  return Hasher._finalize()();
}

{
  v3 = OUTLINED_FUNCTION_38_18(a1, a2);
  if (v2)
  {
    v5 = 27503;
  }

  else
  {
    v5 = 0x6D7269666E6F63;
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_33_16();
  v5 = v4 | 0x65446D6F74730000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656C696166;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_48_14(a1, a2);
  OUTLINED_FUNCTION_29_25();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_15_29();
      break;
    case 2:
      OUTLINED_FUNCTION_21_25();
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_12_35();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_31_21(v3, v4, v5);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  OUTLINED_FUNCTION_38_18(a1, a2);
  OUTLINED_FUNCTION_33_16();
  v5 = v4 | 0x65446D6F74730000;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6F68506E6FLL;
  }

  OUTLINED_FUNCTION_31_21(v2, v7, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, WorkflowRunnerCATPatternsIdentifiers.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v3 = Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x656C7069746C756DLL;
    }

    else
    {
      v5 = 0x72746E49776F6873;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_21();
  }

  OUTLINED_FUNCTION_31_21(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  return OUTLINED_FUNCTION_36_19(a1, 0x6C69614D646E6553);
}

{
  return OUTLINED_FUNCTION_36_19(a1, 0x74756374726F6873);
}

{
  return OUTLINED_FUNCTION_7_39(a1, 0x73657361726870);
}

{
  return OUTLINED_FUNCTION_5_41(a1, 0x6E4F6E727574);
}

{
  return OUTLINED_FUNCTION_5_41(a1, 0x6465696E6564);
}

{
  return OUTLINED_FUNCTION_10_42(a1, 1701998445);
}

{
  return OUTLINED_FUNCTION_10_42(a1, 2003134838);
}

{
  return OUTLINED_FUNCTION_18_32(a1, 0x726F727265);
}

{
  return OUTLINED_FUNCTION_10_42(a1, 1835365481);
}

{
  return OUTLINED_FUNCTION_5_41(a1, 0x6B636F6C6E75);
}

{
  return OUTLINED_FUNCTION_7_39(a1, 0x74754F656D6974);
}

{
  return OUTLINED_FUNCTION_18_32(a1, 0x736D657469);
}

{
  return OUTLINED_FUNCTION_18_32(a1, 0x6F72746E69);
}

{
  return OUTLINED_FUNCTION_7_39(a1, 0x646F50656D6F68);
}

{
  return OUTLINED_FUNCTION_7_39(a1, 0x64656C646E6168);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  Hasher.init(_seed:)();
  v5 = a3(a2 & 1);
  OUTLINED_FUNCTION_23_23(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_14();
  return specialized RawRepresentable<>._rawHashValue(seed:)(v3, v4, v5);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  OUTLINED_FUNCTION_23_23(v5, v6, v7);

  return Hasher._finalize()();
}

SiriLinkFlowPlugin::AskForInputType_optional __swiftcall AskForInputType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AskForInputType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AskForInputType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1954047348;
  }

  OUTLINED_FUNCTION_28_8();
  if (v1)
  {
    return 0x7265626D756ELL;
  }

  else
  {
    return 7107189;
  }
}

unint64_t lazy protocol witness table accessor for type AskForInputType and conformance AskForInputType()
{
  result = lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType;
  if (!lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType;
  if (!lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AskForInputType and conformance AskForInputType);
  }

  return result;
}

SiriLinkFlowPlugin::AskForInputType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AskForInputType@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AskForInputType_optional *a2@<X8>)
{
  result.value = AskForInputType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AskForInputType@<X0>(uint64_t *a1@<X8>)
{
  result = AskForInputType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AskForInputType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1FF4D0);
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

void *OUTLINED_FUNCTION_20_23(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_23_23(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

void *OUTLINED_FUNCTION_34_19(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

void *OUTLINED_FUNCTION_38_18(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

void *OUTLINED_FUNCTION_48_14(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t CustomIntentNeedsValueFlowStrategy.__allocating_init(deviceState:catWrapper:catWrapperSimple:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CustomIntentNeedsValueFlowStrategy.init(deviceState:catWrapper:catWrapperSimple:)(a1, a2, a3);
  return v6;
}

void *CustomIntentNeedsValueFlowStrategy.init(deviceState:catWrapper:catWrapperSimple:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  outlined init with take of Output(a1, (v3 + 3));
  v3[8] = a2;
  v3[9] = a3;
  return v3;
}

void CustomIntentNeedsValueFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a3;
  type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_7_1();
  v63 = v5;
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  v16 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7_1();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FlowStrategyUtils.makeConfirmationStateFromInput(input:)(a1, v21);
  v22 = (*(v18 + 88))(v21, v16);
  v23 = enum case for SiriKitConfirmationState.cancelled(_:);
  (*(v18 + 8))(v21, v16);
  if (v22 == v23)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.voiceCommands);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_52();
      *v27 = 0;
      OUTLINED_FUNCTION_79(&dword_0, v28, v29, "User cancelled the prompt");
      OUTLINED_FUNCTION_15_0(v27);
    }

    static ActionForInput.cancel()();
  }

  else
  {
    Input.parse.getter();
    v30 = OUTLINED_FUNCTION_20_24();
    v32 = v31(v30);
    if (v32 == enum case for Parse.NLv3IntentOnly(_:))
    {
      v33 = OUTLINED_FUNCTION_20_24();
      v34(v33);
    }

    else
    {
      if (v32 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v32 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
        {
          static ActionForInput.handle()();
        }

        else
        {
          static ActionForInput.ignore()();
        }

        v53 = OUTLINED_FUNCTION_20_24();
        v54(v53);
        return;
      }

      v35 = OUTLINED_FUNCTION_20_24();
      v36(v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

      type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_23_0();
      (*(v37 + 8))(v15);
    }

    Input.parse.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
    v38 = ParameterResolutionRecord.intent.getter();
    v39 = static FlowStrategyUtils.makeIntentFromParse(parse:currentIntent:)(v13);

    (*(v9 + 8))(v13, v7);
    v40 = v65;
    v41 = *(v65 + 16);
    *(v65 + 16) = v39;
    v42 = v39;

    if (v39)
    {
      v43 = v62;
      ParameterResolutionRecord.parameter.getter();
      v44 = ParameterIdentifier.name.getter();
      v46 = v45;
      (*(v63 + 8))(v43, v64);
      static INIntentParameterHelper.extractParameterValue(_:_:)(v42, &v68, v44, v46);
      if (v69)
      {

        outlined destroy of SpeakableString?(&v68, &_sypSgMd, &_sypSgMR);
        static ActionForInput.handle()();
      }

      else
      {
        outlined destroy of SpeakableString?(&v68, &_sypSgMd, &_sypSgMR);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logger.voiceCommands);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_48();
          v59 = OUTLINED_FUNCTION_85();
          *&v68 = v59;
          *v58 = 136315138;
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v68);

          *(v58 + 4) = v60;
          _os_log_impl(&dword_0, v56, v57, "Updated intent still contains a nil value for %s. Assuming that the user did not answer the prompt and ignoring the input", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          OUTLINED_FUNCTION_17();
          OUTLINED_FUNCTION_15_0(v58);
        }

        else
        {
        }

        v61 = *(v40 + 16);
        *(v40 + 16) = 0;

        static ActionForInput.ignore()();
      }
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.voiceCommands);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_52();
        *v50 = 0;
        OUTLINED_FUNCTION_79(&dword_0, v51, v52, "CustomIntentNeedsValueFlowStrategy was not able to update intent from parse");
        OUTLINED_FUNCTION_15_0(v50);
      }

      static ActionForInput.ignore()();
    }
  }
}

uint64_t CustomIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[44] = v2;
  v1[45] = v0;
  v1[42] = v3;
  v1[43] = v4;
  v5 = type metadata accessor for Locale();
  v1[46] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[47] = v6;
  v1[48] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for USOParse();
  v1[49] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[50] = v8;
  v1[51] = OUTLINED_FUNCTION_28();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v1[52] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[53] = v10;
  v1[54] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Parse();
  v1[55] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[56] = v12;
  v1[57] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for ParameterIdentifier();
  v1[58] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[59] = v14;
  v1[60] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Input();
  v1[61] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[62] = v16;
  v1[63] = OUTLINED_FUNCTION_28();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17);
}

{
  v135 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 344);
  v5 = type metadata accessor for Logger();
  *(v0 + 512) = __swift_project_value_buffer(v5, static Logger.voiceCommands);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 496);
  v10 = *(v0 + 504);
  v11 = *(v0 + 488);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_85();
    *&v134[0] = v13;
    *v12 = 136315138;
    v14 = Input.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v134);

    *(v12 + 4) = v17;
    OUTLINED_FUNCTION_101(&dword_0, v18, v19, "CustomIntentNeedsValueFlowStrategy on input: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_15_0(v13);
    OUTLINED_FUNCTION_15_0(v12);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = *(v0 + 472);
  v21 = *(v0 + 480);
  v23 = *(v0 + 456);
  v22 = *(v0 + 464);
  v25 = *(v0 + 440);
  v24 = *(v0 + 448);
  ParameterResolutionRecord.parameter.getter();
  v26 = ParameterIdentifier.name.getter();
  v28 = v27;
  v132 = v26;
  *(v0 + 520) = v26;
  *(v0 + 528) = v27;
  v131 = *(v20 + 8);
  v131(v21, v22);
  Input.parse.getter();
  v29 = (*(v24 + 88))(v23, v25);
  if (v29 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
LABEL_10:
    v32 = *(*(v0 + 360) + 16);
    if (v32)
    {
      v33 = v32;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_48();
        v37 = OUTLINED_FUNCTION_85();
        *&v134[0] = v37;
        *v36 = 136315138;
        v38 = INIntent.debugDescriptionLite.getter();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v134);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_0, v34, v35, "IntentFromParse: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        OUTLINED_FUNCTION_15_0(v37);
        OUTLINED_FUNCTION_15_0(v36);
      }

      static INIntentParameterHelper.extractParameterValue(_:_:)(v33, (v0 + 240), v132, v28);
      if (*(v0 + 264))
      {
        outlined init with take of Any((v0 + 240), (v0 + 208));
        outlined init with copy of Any(v0 + 208, v0 + 272);
        v41 = v33;
        v42 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v33, v132, v28, v0 + 272, 0, 1);

        outlined destroy of SpeakableString?(v0 + 272, &_sypSgMd, &_sypSgMR);
        v43 = v42;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = OUTLINED_FUNCTION_48();
          v47 = OUTLINED_FUNCTION_85();
          *&v134[0] = v47;
          *v46 = 136315138;
          v48 = INIntent.debugDescriptionLite.getter();
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v134);

          *(v46 + 4) = v50;
          _os_log_impl(&dword_0, v44, v45, "Applying value to intent was successful. Transitioning to complete. Updated intent: %s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          OUTLINED_FUNCTION_15_0(v47);
          OUTLINED_FUNCTION_15_0(v46);
        }

        v51 = *(v0 + 336);
        outlined init with copy of Any(v0 + 208, v0 + 304);
        type metadata accessor for INIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      }

      else
      {
        v79 = v33;
        v80 = *(v0 + 424);
        v81 = *(v0 + 432);
        v82 = *(v0 + 416);
        v83 = *(v0 + 352);

        outlined destroy of SpeakableString?(v0 + 240, &_sypSgMd, &_sypSgMR);
        (*(v80 + 16))(v81, v83, v82);
        v84 = v79;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = *(v0 + 480);
          v129 = *(v0 + 464);
          v88 = *(v0 + 424);
          v89 = *(v0 + 432);
          v90 = *(v0 + 416);
          v91 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *&v134[0] = v133;
          *v91 = 136315394;
          v130 = v86;
          v92 = INIntent.debugDescriptionLite.getter();
          v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v134);

          *(v91 + 4) = v94;
          *(v91 + 12) = 2080;
          ParameterResolutionRecord.parameter.getter();
          v95 = ParameterIdentifier.name.getter();
          v97 = v96;
          v131(v87, v129);
          (*(v88 + 8))(v89, v90);
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v134);

          *(v91 + 14) = v98;
          _os_log_impl(&dword_0, v85, v130, "Unable to extract parameter value. Intent: %s, parameterName: %s", v91, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0(v133);
          OUTLINED_FUNCTION_15_0(v91);
        }

        else
        {
          v113 = *(v0 + 424);
          v112 = *(v0 + 432);
          v114 = *(v0 + 416);

          (*(v113 + 8))(v112, v114);
        }

        v51 = *(v0 + 336);
        type metadata accessor for INIntent();
        memset(v134, 0, sizeof(v134));
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      }

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
      v62 = v51;
      v63 = 0;
      goto LABEL_34;
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v53))
    {
      v54 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v54);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v55, v56, v57, v58, v59, 2u);
      OUTLINED_FUNCTION_17();
    }

    v60 = *(v0 + 336);

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v62 = v60;
LABEL_20:
    v63 = 1;
LABEL_34:
    __swift_storeEnumTagSinglePayload(v62, v63, 1, v61);
    goto LABEL_35;
  }

  if (v29 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v30 = *(v0 + 456);
    (*(*(v0 + 448) + 96))(v30, *(v0 + 440));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_0();
    (*(v31 + 8))(v30);
    goto LABEL_10;
  }

  if (v29 != enum case for Parse.uso(_:))
  {

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v100))
    {
      v101 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v101);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      OUTLINED_FUNCTION_17();
    }

    v108 = *(v0 + 448);
    v107 = *(v0 + 456);
    v109 = *(v0 + 440);
    v110 = *(v0 + 336);

    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    __swift_storeEnumTagSinglePayload(v110, 1, 1, v111);
    (*(v108 + 8))(v107, v109);
LABEL_35:
    OUTLINED_FUNCTION_18_33();

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X1, X16 }
  }

  v64 = *(v0 + 456);
  v65 = *(v0 + 400);
  v66 = *(v0 + 408);
  v67 = *(v0 + 392);
  (*(*(v0 + 448) + 96))(v64, *(v0 + 440));
  (*(v65 + 32))(v66, v64, v67);
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v118))
    {
      v119 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v119);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v120, v121, v122, v123, v124, 2u);
      OUTLINED_FUNCTION_17();
    }

    v126 = *(v0 + 400);
    v125 = *(v0 + 408);
    v127 = *(v0 + 392);
    v128 = *(v0 + 336);

    (*(v126 + 8))(v125, v127);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v62 = v128;
    goto LABEL_20;
  }

  v68 = *(v0 + 360);
  *(v0 + 536) = ParameterResolutionRecord.intent.getter();
  __swift_project_boxed_opaque_existential_1((v68 + 24), *(v68 + 48));
  dispatch thunk of DeviceState.siriLocale.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 544) = v69;
  *v69 = v70;
  v69[1] = CustomIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  OUTLINED_FUNCTION_35_4();

  return static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:)(v71, v72, v73, v74, v75, v76);
}

{
  OUTLINED_FUNCTION_9_0();
  v2 = v1[48];
  v3 = v1[47];
  v4 = v1[46];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  v45 = v1;
  if (*(v1 + 72))
  {
    outlined init with take of Any((v1 + 48), (v1 + 16));
    outlined init with copy of Any(v1 + 16, v1 + 80);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v3))
    {
      v4 = OUTLINED_FUNCTION_48();
      v5 = OUTLINED_FUNCTION_85();
      *&v44[0] = v5;
      *v4 = 136315138;
      outlined init with copy of Any(v1 + 80, v1 + 176);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 80));
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, v44);

      *(v4 + 4) = v9;
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      OUTLINED_FUNCTION_15_0(v5);
      OUTLINED_FUNCTION_17();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 80));
    }

    v24 = *(v1 + 536);
    v25 = *(v1 + 528);
    v26 = *(v1 + 520);
    outlined init with copy of Any(v1 + 16, v1 + 112);
    v27 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v24, v26, v25, v1 + 112, 0, 1);

    outlined destroy of SpeakableString?(v1 + 112, &_sypSgMd, &_sypSgMR);
    v28 = v27;
    v29 = Logger.logObject.getter();
    LOBYTE(v24) = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v24))
    {
      v30 = OUTLINED_FUNCTION_48();
      v31 = OUTLINED_FUNCTION_85();
      *&v44[0] = v31;
      *v30 = 136315138;
      v32 = INIntent.debugDescriptionLite.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v44);

      *(v30 + 4) = v34;
      OUTLINED_FUNCTION_101(&dword_0, v35, v36, "Applying value to intent was successful. Transitioning to complete. Updated intent: updatedIntent: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_15_0(v31);
      OUTLINED_FUNCTION_15_0(v30);
    }

    v37 = *(v1 + 536);
    v39 = *(v1 + 400);
    v38 = *(v1 + 408);
    v40 = *(v1 + 392);
    v41 = *(v1 + 336);
    outlined init with copy of Any(v1 + 16, v1 + 144);
    type metadata accessor for INIntent();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
    (*(v39 + 8))(v38, v40);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v23 = v41;
  }

  else
  {

    outlined destroy of SpeakableString?(v1 + 48, &_sypSgMd, &_sypSgMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v17);
      _os_log_impl(&dword_0, v15, v16, "Could not extract parameter value from USO parse and apply it to INIntent", v0, 2u);
      OUTLINED_FUNCTION_17();
    }

    v18 = *(v1 + 536);
    v19 = *(v1 + 336);

    memset(v44, 0, sizeof(v44));
    ParameterResolutionRecord.intent.getter();
    type metadata accessor for INIntent();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();

    v20 = OUTLINED_FUNCTION_20_1();
    v21(v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
    v23 = v19;
  }

  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  OUTLINED_FUNCTION_18_33();

  OUTLINED_FUNCTION_6_7();

  return v42();
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[15] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for DialogPhase();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[17] = v5;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[20] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[23] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[24] = v9;
  v1[25] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for NLContextUpdate();
  v1[26] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[27] = v11;
  v1[28] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for ParameterIdentifier();
  v1[29] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[30] = v13;
  v1[31] = OUTLINED_FUNCTION_28();
  type metadata accessor for CATOption();
  v1[32] = OUTLINED_FUNCTION_28();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14);
}

{
  v1 = *(v0 + 112);
  type metadata accessor for WFDialogState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v2 = App.appIdentifier.getter();
  v4 = v3;

  *(v0 + 392) = static WFDialogState.isAppFirstRun(appId:)(v2, v4) & 1;

  outlined init with copy of DeviceState(v1 + 24, v0 + 16);
  v5 = *(v1 + 72);
  v6 = one-time initialization token for shared;
  v25 = *(v1 + 64);

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = *(v0 + 240);
  v26 = *(v0 + 232);
  v9 = static WFDialogState.shared;
  type metadata accessor for RunVoiceCommandCATs(0);

  static CATOption.defaultMode.getter();
  v23 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  v11 = type metadata accessor for AppNameResolver();
  v12 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v13 = swift_allocObject();
  *(v0 + 264) = v13;
  *(v13 + 136) = v11;
  *(v13 + 144) = &protocol witness table for AppNameResolver;
  *(v13 + 112) = v12;
  *(v13 + 56) = v9;
  outlined init with take of Output((v0 + 16), v13 + 16);
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 80) = v25;
  *(v13 + 88) = v24;
  *(v13 + 96) = v23;
  *(v13 + 104) = v10;
  outlined init with copy of DeviceState(v1 + 24, v0 + 56);
  type metadata accessor for CustomIntentNLContextProvider();
  v14 = swift_allocObject();
  *(v0 + 272) = v14;
  outlined init with take of Output((v0 + 56), v14 + 16);
  *(v0 + 280) = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v15 = ParameterIdentifier.name.getter();
  v17 = v16;
  *(v0 + 288) = v15;
  *(v0 + 296) = v16;
  (*(v8 + 8))(v7, v26);
  v18 = ParameterResolutionRecord.intent.getter();
  *(v0 + 304) = v18;
  *(v0 + 393) = INIntent.isRestricted()();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 312) = v19;
  *v19 = v20;
  v19[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  v21 = *(v0 + 224);

  return CustomIntentNLContextProvider.makeNeedsValueContextFor(intent:parameter:)(v21, v18, v15, v17);
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
  *(v3 + 320) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    *(v0 + 328) = v5;
    *v5 = v0;
    v5[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);

    return CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:)();
  }

  else
  {
    v7 = *(v0 + 393);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 376) = v8;
    *v8 = v9;
    v8[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    v12 = *(v0 + 280);
    v13 = *(v0 + 288);
    v14 = *(v0 + 264);
    v15 = *(v0 + 392);
    v16 = *(v0 + 96);

    return CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)(v16, v14, v12, v13, v10, v11, v15, (v7 & 1) == 0);
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
  v1 = v0[43];
  v2 = v0[38];
  OUTLINED_FUNCTION_19_26();
  v3 = v0[27];

  v4 = OUTLINED_FUNCTION_20_1();
  v5(v4);
  v6 = v0[28];
  OUTLINED_FUNCTION_4_59();
  (*(v3 + 8))(v6);

  OUTLINED_FUNCTION_6_7();

  return v7();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 336) = v1;

  if (!v1)
  {
    *(v5 + 344) = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v2 = v1[43];
  v3 = v1[27];
  v19 = v1[28];
  v21 = v2;
  v18 = v1[26];
  v4 = v1[19];
  v6 = v1[16];
  v5 = v1[17];
  v17 = v1[15];
  static DialogPhase.clarification.getter();
  v7 = [v2 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = OUTLINED_FUNCTION_20_24();
  v9(v8);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v5 + 8))(v4, v6);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  (*(v3 + 16))(v17, v19, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  OutputGenerationManifest.nlContextUpdate.setter();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v1[44] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  v1[45] = v10;
  *(v10 + 16) = xmmword_216010;
  *(v10 + 32) = v21;
  v20 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v11 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[46] = v12;
  *v12 = v13;
  v12[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  v14 = v1[22];
  v15 = v1[12];

  return v20(v15, v10, v14);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 304);
  OUTLINED_FUNCTION_19_26();

  v12 = *(v10 + 224);
  OUTLINED_FUNCTION_4_59();
  (*(v13 + 8))(v12);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 304);
  OUTLINED_FUNCTION_19_26();

  OUTLINED_FUNCTION_4_59();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 304);
  OUTLINED_FUNCTION_19_26();

  v12 = OUTLINED_FUNCTION_20_1();
  v13(v12);
  OUTLINED_FUNCTION_4_59();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 304);
  OUTLINED_FUNCTION_19_26();

  v12 = OUTLINED_FUNCTION_20_1();
  v13(v12);
  OUTLINED_FUNCTION_4_59();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 64) = v26;
  *(v9 + 72) = v8;
  *(v9 + 152) = a8;
  *(v9 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  *(v9 + 80) = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for AceOutput();
  *(v9 + 88) = v16;
  OUTLINED_FUNCTION_5_0(v16);
  *(v9 + 96) = v17;
  *(v9 + 104) = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for TemplatingResult();
  *(v9 + 112) = v18;
  OUTLINED_FUNCTION_5_0(v18);
  *(v9 + 120) = v19;
  v20 = OUTLINED_FUNCTION_28();
  *(v9 + 128) = v20;
  v24 = (*(*a2 + 184) + **(*a2 + 184));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v9 + 136) = v21;
  *v21 = v22;
  v21[1] = CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:);

  return v24(v20, a3, a4, a5, a6, a7);
}

uint64_t CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void CustomIntentNeedsValueFlowStrategy.makePromptForValue_preRFv2(dialogTemplating:app:parameterName:intent:shouldShowAppAttribution:isTTSEnabled:context:)()
{
  v1 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 24), *(*(v0 + 72) + 48));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v17 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v17);
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of SpeakableString?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of SpeakableString?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2 = AceOutput.commands.getter();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = v4;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v6 = *(v0 + 120);
  v15 = *(v0 + 112);
  v16 = *(v0 + 128);
  v14 = *(v0 + 104);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(*(v17 - 8) + 16))(v9, v11, v17);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v10[3] = v8;
  v10[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v10);
  AceOutput.init(commands:flowActivity:nlContextUpdate:)();

  (*(v7 + 8))(v14, v8);
  (*(v6 + 8))(v16, v15);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentNeedsValueFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t CustomIntentNeedsValueFlowStrategy.__deallocating_deinit()
{
  CustomIntentNeedsValueFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 152) + **(**v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 160) + **(**v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v12 = v6;
  v12[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CustomIntentNeedsValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  *v14 = v7;
  v14[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

unint64_t lazy protocol witness table accessor for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy()
{
  result = lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy;
  if (!lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy)
  {
    type metadata accessor for CustomIntentNeedsValueFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_33()
{
}

uint64_t CustomIntentConfirmIntentFlowStrategy.__allocating_init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  CustomIntentConfirmIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for CATOption();
  __chkstk_darwin(v10 - 8);
  v11 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  v12 = enum case for SiriKitConfirmationState.unset(_:);
  type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7();
  (*(v13 + 104))(v5 + v11, v12);
  outlined init with copy of DeviceState(a4, v5 + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_deviceState);
  outlined init with copy of DeviceState(a4, v49);
  v14 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_16_36(v14);
  OUTLINED_FUNCTION_31_1();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  v16 = OUTLINED_FUNCTION_10_23(v15, &v53);
  v17 = type metadata accessor for RunCustomIntentCATsSimple(v16);
  OUTLINED_FUNCTION_16_36(v17);
  OUTLINED_FUNCTION_31_1();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  v19 = OUTLINED_FUNCTION_10_23(v18, &v52);
  v20 = type metadata accessor for RunVoiceCommandCATs(v19);
  OUTLINED_FUNCTION_16_36(v20);
  OUTLINED_FUNCTION_31_1();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  v22 = OUTLINED_FUNCTION_10_23(v21, &v51);
  v23 = type metadata accessor for RunVoiceCommandCATsSimple(v22);
  OUTLINED_FUNCTION_16_36(v23);
  OUTLINED_FUNCTION_31_1();
  v24 = CATWrapperSimple.__allocating_init(options:globals:)();
  v25 = OUTLINED_FUNCTION_10_23(v24, &v50);
  type metadata accessor for ContinueInAppCATWrapperSimple(v25);
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  swift_allocObject();
  outlined init with copy of DeviceState?(v47, v46);
  v26 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v46);
  outlined destroy of DeviceState?(v47);
  v27 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v28 = ResponseFactory.init()();
  type metadata accessor for CustomIntentConfirmIntentResponseGenerator();
  v29 = swift_allocObject();
  outlined init with copy of DeviceState(v49, v47);
  v46[3] = v27;
  v46[4] = &protocol witness table for ResponseFactory;
  v46[0] = v28;
  v30 = a1;
  v29[10] = a1;
  v29[11] = a2;
  outlined init with copy of DeviceState(v47, (v29 + 2));
  v29[9] = a3;
  v29[12] = v26;
  outlined init with copy of DeviceState(v46, (v29 + 13));
  outlined init with copy of DeviceState(v47, v45);
  v31 = one-time initialization token for shared;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  v33 = type metadata accessor for AppNameResolver();
  v34 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v35 = swift_allocObject();
  v43 = v33;
  v44 = &protocol witness table for AppNameResolver;

  *&v42 = v34;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  *(v35 + 56) = v32;
  outlined init with take of AceServiceInvokerAsync(v45, v35 + 16);
  *(v35 + 64) = 0;
  *(v35 + 72) = 1;
  *(v35 + 80) = v41;
  *(v35 + 88) = v40;
  *(v35 + 96) = v39;
  *(v35 + 104) = v38;
  outlined init with take of AceServiceInvokerAsync(&v42, v35 + 112);
  v29[7] = v35;
  v36 = v29[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v29[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v30, a2, v35, v47, v36);
  *(v5 + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_responseGenerator) = v29;

  return v5;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.actionForInput(_:confirmParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v37 - v10;
  v11 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.voiceCommands);
  (*(v13 + 16))(v16, a1, v11);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = a2;
    v38 = v22;
    v44[0] = v22;
    *v21 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v6;
    v25 = v4;
    v27 = v26;
    (*(v13 + 8))(v16, v11);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v27, v44);
    v4 = v25;
    v6 = v24;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_0, v18, v19, "#CustomIntentConfirmIntentFlowStrategy actionForInput: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);

    a1 = v39;
  }

  else
  {

    (*(v13 + 8))(v16, v11);
  }

  v29 = v41;
  static FlowStrategyUtils.makeConfirmationStateFromInput(input:)(a1, v41);
  v30 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  v31 = v42;
  swift_beginAccess();
  (*(v6 + 40))(v31 + v30, v29, v4);
  swift_endAccess();
  v32 = v43;
  (*(v6 + 16))(v43, v31 + v30, v4);
  v33 = (*(v6 + 88))(v32, v4);
  if (v33 == enum case for SiriKitConfirmationState.unset(_:))
  {
    return static ActionForInput.ignore()();
  }

  v35 = v33;
  if (v33 == enum case for SiriKitConfirmationState.cancelled(_:))
  {
    return static ActionForInput.cancel()();
  }

  if (v33 == enum case for SiriKitConfirmationState.confirmed(_:))
  {
    return static ActionForInput.handle()();
  }

  v36 = enum case for SiriKitConfirmationState.rejected(_:);
  result = static ActionForInput.handle()();
  if (v35 != v36)
  {
    return (*(v6 + 8))(v32, v4);
  }

  return result;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.parseConfirmationResponse(input:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for SiriKitConfirmationState();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(CustomIntentConfirmIntentFlowStrategy.parseConfirmationResponse(input:confirmParameters:));
}

uint64_t CustomIntentConfirmIntentFlowStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v6(v1, v4 + v5, v3);
  v7 = (*(v2 + 88))(v1, v3);
  if (v7 == enum case for SiriKitConfirmationState.confirmed(_:))
  {
    v8 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_5:
    v9 = v0[8];
    v10 = *v8;
    v11 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_7();
    (*(v12 + 104))(v9, v10, v11);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
    IntentResolutionRecord.intent.getter();
    type metadata accessor for INIntent();
    ConfirmIntentAnswer.init(confirmationResponse:intent:)();

    OUTLINED_FUNCTION_6_7();
    goto LABEL_7;
  }

  if (v7 == enum case for SiriKitConfirmationState.rejected(_:))
  {
    v8 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_5;
  }

  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[9];
  type metadata accessor for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(0);
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_5(&lazy protocol witness table cache variable for type CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors and conformance CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors, type metadata accessor for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors, &protocol conformance descriptor for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors);
  swift_allocError();
  v6(v17, v4 + v5, v16);
  swift_willThrow();
  (*(v15 + 8))(v14, v16);

  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makePromptForConfirmation(confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v0 = IntentResolutionRecord.app.getter();
  v1 = OUTLINED_FUNCTION_8_21(v0);
  v2 = OUTLINED_FUNCTION_8_39(v1);
  OUTLINED_FUNCTION_9_20(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_70(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentConfirmIntentFlowStrategy.makeConfirmationRejectedResponse(confirmParameters:));
  }

  else
  {
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeConfirmationRejectedResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v0 = IntentResolutionRecord.app.getter();
  v1 = OUTLINED_FUNCTION_8_21(v0);
  v2 = OUTLINED_FUNCTION_8_39(v1);
  OUTLINED_FUNCTION_9_20(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_70(v4);

  return v7(v6);
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeFlowCancelledResponse(confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v0 = IntentResolutionRecord.app.getter();
  v1 = OUTLINED_FUNCTION_8_21(v0);
  v2 = OUTLINED_FUNCTION_8_39(v1);
  OUTLINED_FUNCTION_9_20(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_70(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentConfirmIntentFlowStrategy.makeFlowCancelledResponse(confirmParameters:));
  }

  else
  {
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeErrorResponse(error:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentConfirmIntentFlowStrategy.makeErrorResponse(error:confirmParameters:)()
{
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v0 = IntentResolutionRecord.app.getter();
  v1 = OUTLINED_FUNCTION_8_21(v0);
  v2 = OUTLINED_FUNCTION_8_39(v1);
  OUTLINED_FUNCTION_9_20(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_6(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_70(v4);

  return v7(v6);
}

uint64_t CustomIntentConfirmIntentFlowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_confirmationState;
  type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin37CustomIntentConfirmIntentFlowStrategy_deviceState));

  return v0;
}

uint64_t CustomIntentConfirmIntentFlowStrategy.__deallocating_deinit()
{
  CustomIntentConfirmIntentFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 144) + **(**v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makePromptForConfirmation(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 152) + **(**v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 160) + **(**v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 168) + **(**v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 176) + **(**v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for ConfirmIntentFlowStrategyAsync.parseConfirmationResponse(input:confirmParameters:) in conformance CustomIntentConfirmIntentFlowStrategy;

  return v10(a1, a2, a3);
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for CustomIntentConfirmIntentFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for SiriKitConfirmationState();
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

uint64_t getEnumTagSinglePayload for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitConfirmationState();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t storeEnumTagSinglePayload for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriKitConfirmationState();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t type metadata completion function for CustomIntentConfirmIntentFlowStrategy.ConfirmIntentErrors(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitConfirmationState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_8_39(uint64_t a1)
{
  *(v1 + 48) = a1;

  return IntentResolutionRecord.intentResponse.getter();
}

uint64_t OUTLINED_FUNCTION_16_36(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

void OUTLINED_FUNCTION_17_36()
{
  v2 = *(v0 + 56);
}

uint64_t AutoShortcutFirstRunWatchVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[69] = v0;
  v1[68] = v2;
  type metadata accessor for Separators();
  v1[70] = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for ComponentWrapper();
  v1[71] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[72] = v4;
  v1[73] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for BinaryButton();
  v1[74] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[75] = v6;
  v1[76] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for Button.LabelStyle();
  v1[77] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[78] = v8;
  v1[79] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for _ProtoButton.FormAction();
  v1[80] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[81] = v10;
  v1[82] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for ButtonRole();
  v1[83] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[84] = v12;
  v1[85] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for Button();
  v1[86] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[87] = v14;
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v15 = type metadata accessor for Command();
  v1[92] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[93] = v16;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v17 = type metadata accessor for CustomCanvas();
  v1[96] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[97] = v18;
  v1[98] = OUTLINED_FUNCTION_28();

  return _swift_task_switch(AutoShortcutFirstRunWatchVisual.response.getter);
}

{
  v1 = *(v0 + 552);
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  *(v0 + 312) = *v1;
  *(v0 + 320) = 3;
  *(v0 + 328) = v2;
  *(v0 + 336) = v3;
  *(v0 + 344) = v4;
  *(v0 + 352) = v5;
  *(v0 + 360) = v6;
  *(v0 + 368) = v7;
  *(v0 + 376) = 0;
  *(v0 + 384) = 0;
  v8 = one-time initialization token for encoder;

  if (v8 != -1)
  {
    swift_once();
  }

  memcpy((v0 + 224), (v0 + 312), 0x50uLL);
  *(v0 + 304) = 2;
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v59 = *(v0 + 776);
  v57 = *(v0 + 784);
  v58 = *(v0 + 768);
  v9 = *(v0 + 760);
  v49 = *(v0 + 752);
  v10 = *(v0 + 744);
  v40 = v10;
  v11 = *(v0 + 736);
  v62 = *(v0 + 728);
  v50 = *(v0 + 720);
  v54 = *(v0 + 712);
  v55 = *(v0 + 704);
  v51 = *(v0 + 696);
  v52 = *(v0 + 688);
  v12 = *(v0 + 680);
  v13 = *(v0 + 672);
  v44 = *(v0 + 664);
  v47 = *(v0 + 656);
  v60 = *(v0 + 648);
  v45 = *(v0 + 640);
  v48 = *(v0 + 632);
  v61 = *(v0 + 624);
  v53 = *(v0 + 608);
  v41 = *(v0 + 600);
  v38 = *(v0 + 616);
  v39 = *(v0 + 592);
  v56 = *(v0 + 584);
  v43 = *(v0 + 576);
  v42 = *(v0 + 568);
  v14 = *(v0 + 552);
  CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_6_3(inited, xmmword_216850);
  *(v0 + 512) = v16;
  *(v0 + 520) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  inited[6].n128_u64[0] = &type metadata for String;
  inited[4].n128_u64[1] = 7562617;
  inited[5].n128_u64[0] = 0xE300000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  v46 = v11;
  *(v0 + 416) = v11;
  *(v0 + 424) = &protocol witness table for Command;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 392));
  v36 = *(v10 + 16);
  v36(boxed_opaque_existential_1, v9, v11);
  v18 = OUTLINED_FUNCTION_5_32(*(v14 + 8));
  v37 = *(v13 + 104);
  v37(v12, enum case for ButtonRole.preferred(_:), v44, v18);
  v34 = enum case for _ProtoButton.FormAction.none(_:);
  v35 = *(v60 + 104);
  v35(v47);
  v19 = enum case for Button.LabelStyle.automatic(_:);
  v20 = *(v61 + 104);
  v20(v48, enum case for Button.LabelStyle.automatic(_:), v38);

  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v21 = swift_initStackObject();
  OUTLINED_FUNCTION_6_3(v21, xmmword_216850);
  *(v0 + 528) = v22;
  *(v0 + 536) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v21[6].n128_u64[0] = &type metadata for String;
  v21[4].n128_u64[1] = 28526;
  v21[5].n128_u64[0] = 0xE200000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  *(v0 + 456) = v46;
  *(v0 + 464) = &protocol witness table for Command;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  v36(v23, v49, v46);
  v24 = OUTLINED_FUNCTION_5_32(*(v14 + 24));
  (v35)(v47, v34, v45, v24);
  v20(v48, v19, v38);
  (v37)(v12, enum case for ButtonRole.standard(_:), v44);

  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v25 = *(v51 + 16);
  v25(v54, v62, v52);
  v25(v55, v50, v52);
  BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)();
  *(v0 + 496) = v39;
  *(v0 + 504) = &protocol witness table for BinaryButton;
  v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 472));
  (*(v41 + 16))(v26, v53, v39);
  static Separators.none.getter();
  ComponentWrapper.init(_:separators:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_216840;
  *(v27 + 56) = v58;
  *(v27 + 64) = &protocol witness table for CustomCanvas;
  v28 = __swift_allocate_boxed_opaque_existential_1((v27 + 32));
  (*(v59 + 16))(v28, v57, v58);
  *(v27 + 96) = v42;
  *(v27 + 104) = &protocol witness table for ComponentWrapper;
  v29 = __swift_allocate_boxed_opaque_existential_1((v27 + 72));
  (*(v43 + 16))(v29, v56, v42);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  outlined destroy of AutoShortcutAppPhrasesViewModel(v0 + 312);
  (*(v43 + 8))(v56, v42);
  (*(v41 + 8))(v53, v39);
  v30 = *(v51 + 8);
  v30(v50, v52);
  v31 = *(v40 + 8);
  v31(v49, v46);
  v30(v62, v52);
  v31(v9, v46);
  (*(v59 + 8))(v57, v58);

  OUTLINED_FUNCTION_6_0();

  return v32();
}

uint64_t AutoShortcutFirstRunWatchVisual.data.getter()
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

  return AutoShortcutFirstRunWatchVisual.response.getter();
}

uint64_t RouteDialogRequestResponseFlow.__allocating_init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(uint64_t a1, uint64_t a2, void *a3, void *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v14 = swift_allocObject();
  RouteDialogRequestResponseFlow.init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t RouteDialogRequestResponseFlow.exitValue.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v3 = v1;
    }

    else
    {
      lazy protocol witness table accessor for type RouteDialogRequestError and conformance RouteDialogRequestError();
      v3 = swift_allocError();
      *v4 = 0;
    }
  }

  else
  {
    v3 = v1;
  }

  outlined copy of RouteDialogRequestResponseFlow.State(v1, v2);
  return v3;
}

uint64_t RouteDialogRequestResponseFlow.init(shortcutName:dialogRequest:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(uint64_t a1, uint64_t a2, void *a3, void *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v8 = v7;
  v13 = type metadata accessor for CATOption();
  __chkstk_darwin(v13 - 8);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  outlined init with copy of DeviceState(a4, v8 + 32);
  *(v8 + 72) = a3;
  outlined init with copy of DeviceState(a4, v35);
  v14 = one-time initialization token for shared;
  v31 = a3;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_2();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v16);
  OUTLINED_FUNCTION_19_2();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  v18 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_32_8(v18);
  OUTLINED_FUNCTION_19_2();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  v20 = type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v20);
  OUTLINED_FUNCTION_19_2();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  v22 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_32_8(v22);
  OUTLINED_FUNCTION_19_2();
  v23 = CATWrapper.__allocating_init(options:globals:)();
  v24 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v24);
  OUTLINED_FUNCTION_19_2();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  v26 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_32_8(v26);
  OUTLINED_FUNCTION_19_2();
  v27 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(v8 + 80) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v35, v15, v30, v17, v19, v21, v23, v25, v27);
  type metadata accessor for WorkflowSnippetProvider();
  v28 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a4);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  *(v8 + 88) = v28;
  outlined init with take of AceServiceInvokerAsync(a5, v8 + 96);
  outlined init with take of AceServiceInvokerAsync(a6, v8 + 136);
  outlined init with take of AceServiceInvokerAsync(a7, v8 + 176);
  *(v8 + 216) = 0;
  *(v8 + 224) = 0x80;
  return v8;
}

unint64_t lazy protocol witness table accessor for type RouteDialogRequestError and conformance RouteDialogRequestError()
{
  result = lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError;
  if (!lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError;
  if (!lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteDialogRequestError and conformance RouteDialogRequestError);
  }

  return result;
}

id outlined copy of RouteDialogRequestResponseFlow.State(id result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return swift_errorRetain();
  }

  if (!(a2 >> 6))
  {
    return outlined copy of Result<INIntent, Error>(result, a2 & 1);
  }

  return result;
}

uint64_t RouteDialogRequestResponseFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RouteDialogRequestResponseFlow();
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow, v2, type metadata accessor for RouteDialogRequestResponseFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t RouteDialogRequestResponseFlow.execute()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RouteDialogRequestResponseFlow.execute()()
{
  v24 = v0;
  v1 = v0[7];
  v2 = *(v1 + 224);
  if (!(v2 >> 6))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v14))
    {
      v15 = OUTLINED_FUNCTION_52();
      *v15 = 0;
      OUTLINED_FUNCTION_26(&dword_0, v16, v17, "#RouteDialogRequestResponseFlow completed");
      OUTLINED_FUNCTION_15_0(v15);
    }

    static ExecuteResponse.complete()();
    goto LABEL_13;
  }

  if (v2 >> 6 == 1)
  {
    v3 = *(v1 + 216);
    swift_errorRetain();
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v4, static Logger.voiceCommands);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    outlined consume of RouteDialogRequestResponseFlow.State(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_0, v5, v6, "#RouteDialogRequestResponseFlow in error state: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_15_0(v8);
      OUTLINED_FUNCTION_15_0(v7);
    }

    static ExecuteResponse.complete()();
    outlined consume of RouteDialogRequestResponseFlow.State(v3, v2);
LABEL_13:
    OUTLINED_FUNCTION_6_0();

    return v18();
  }

  v20 = *(v1 + 72);
  v21 = swift_task_alloc();
  v0[8] = v21;
  *v21 = v0;
  v21[1] = RouteDialogRequestResponseFlow.execute();
  v22 = v0[6];

  return RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:)(v22, v20);
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

void outlined consume of RouteDialogRequestResponseFlow.State(void *result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
    outlined consume of DialogResponse(result, a2 & 1);
  }
}

void outlined consume of DialogResponse(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:)()
{
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_7_40();
    OUTLINED_FUNCTION_4_60();
    RouteDialogRequestResponseFlow.handleShowAlertRequest(request:)();
    goto LABEL_5;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_7_40();
    OUTLINED_FUNCTION_4_60();
    RouteDialogRequestResponseFlow.handleConfirmInteraction(request:)();
    goto LABEL_5;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_7_40();
      OUTLINED_FUNCTION_4_60();
      RouteDialogRequestResponseFlow.handleChooseFromList(request:)();
    }

    else
    {
      objc_opt_self();
      OUTLINED_FUNCTION_71();
      if (swift_dynamicCastObjCClass())
      {
        OUTLINED_FUNCTION_7_40();
        OUTLINED_FUNCTION_4_60();
        RouteDialogRequestResponseFlow.handleInputDate(request:)();
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_71();
        if (!swift_dynamicCastObjCClass())
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
          }

          v7 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v7, static Logger.voiceCommands);
          v8 = Logger.logObject.getter();
          v9 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_30_1(v9))
          {
            v10 = OUTLINED_FUNCTION_52();
            *v10 = 0;
            OUTLINED_FUNCTION_26(&dword_0, v11, v12, "#RouteDialogRequestResponseFlow Cannot convert WFDialogRequest to known types");
            OUTLINED_FUNCTION_15_0(v10);
          }

          v13 = *(v0 + 32);

          lazy protocol witness table accessor for type RouteDialogRequestError and conformance RouteDialogRequestError();
          v14 = swift_allocError();
          *v15 = 1;
          v16 = *(v13 + 216);
          *(v13 + 216) = v14;
          LOBYTE(v15) = *(v13 + 224);
          *(v13 + 224) = 64;
          outlined consume of RouteDialogRequestResponseFlow.State(v16, v15);
          static ExecuteResponse.complete()();
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_7_40();
        OUTLINED_FUNCTION_4_60();
        RouteDialogRequestResponseFlow.handleInputText(request:)();
      }
    }

LABEL_5:

LABEL_6:
    OUTLINED_FUNCTION_6_0();

    return v2();
  }

  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:);
  v6 = *(v0 + 16);

  return RouteDialogRequestResponseFlow.handleHandleInteraction(request:)(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  return _swift_task_switch(RouteDialogRequestResponseFlow.handleDialogRequest(dialogRequest:));
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t RouteDialogRequestResponseFlow.handleShowAlertRequest(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFShowAlertDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v8 = dispatch thunk of DeviceState.isWatch.getter();
  if (v8)
  {
    v9 = 0xD000000000000019;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (v8)
  {
    v10 = "CHFlowStrategy.swift";
  }

  else
  {
    v10 = "rCodeUnsupportedInCarPlay";
  }

  v11 = v0[2];
  v12 = v0[3];
  outlined init with copy of DeviceState((v0 + 4), v14);
  type metadata accessor for WFShowAlertFlow();
  swift_allocObject();

  *v14 = WFShowAlertFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(v11, v12, v1, v9, v10 | 0x8000000000000000, 0, v14);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFShowAlertFlow and conformance WFShowAlertFlow, 255, type metadata accessor for WFShowAlertFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66(v14, partial apply for closure #1 in RouteDialogRequestResponseFlow.handleShowAlertRequest(request:));
}

uint64_t RouteDialogRequestResponseFlow.handleConfirmInteraction(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFConfirmInteractionDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  outlined init with copy of DeviceState(v0 + 32, v16);
  type metadata accessor for WFConfirmInteractionFlow();
  swift_allocObject();

  v8 = v1;
  v9 = OUTLINED_FUNCTION_22_30();
  v16[0] = WFConfirmInteractionFlow.init(shortcutName:request:appBundleId:deviceState:)(v9, v10, v11, v12, v13, v14);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow, 255, type metadata accessor for WFConfirmInteractionFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66(v16, partial apply for closure #1 in RouteDialogRequestResponseFlow.handleInputText(request:));
}

uint64_t RouteDialogRequestResponseFlow.handleHandleInteraction(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RouteDialogRequestResponseFlow.handleHandleInteraction(request:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#RouteDialogRequestResponseFlow Handling WFHandleInteractionDialogRequest");
    OUTLINED_FUNCTION_15_0(v4);
  }

  v7 = *(v0 + 24);

  v8 = [objc_allocWithZone(WFHandleInteractionDialogResponse) initWithInteractionResponseCode:0];
  v9 = *(v7 + 216);
  *(v7 + 216) = v8;
  v10 = *(v7 + 224);
  *(v7 + 224) = 0;
  v11 = v8;
  outlined consume of RouteDialogRequestResponseFlow.State(v9, v10);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

uint64_t RouteDialogRequestResponseFlow.handleChooseFromList(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFChooseFromListDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  outlined init with copy of DeviceState(v0 + 32, v11);
  type metadata accessor for WFChooseFromListFlow();
  swift_allocObject();

  v11[0] = WFChooseFromListFlow.init(shortcutName:request:deviceState:)(v8, v9, v1, v11);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFChooseFromListFlow and conformance WFChooseFromListFlow, 255, type metadata accessor for WFChooseFromListFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66(v11, partial apply for closure #1 in RouteDialogRequestResponseFlow.handleInputText(request:));
}

uint64_t RouteDialogRequestResponseFlow.handleInputDate(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFInputDateDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  outlined init with copy of DeviceState(v0 + 32, v12);
  outlined init with copy of DeviceState(v0 + 96, v11);
  outlined init with copy of DeviceState(v0 + 136, v10);
  outlined init with copy of DeviceState(v0 + 176, v9);
  type metadata accessor for WFInputDateFlow(0);
  swift_allocObject();
  v12[0] = WFInputDateFlow.init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(v1, v12, v11, v10, v9);
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFInputDateFlow and conformance WFInputDateFlow, 255, type metadata accessor for WFInputDateFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66(v12, partial apply for closure #1 in RouteDialogRequestResponseFlow.handleInputText(request:));
}

uint64_t RouteDialogRequestResponseFlow.handleInputText(request:)()
{
  OUTLINED_FUNCTION_2_65();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_26_16(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_41_7(v5);
    OUTLINED_FUNCTION_81(&dword_0, v6, v7, "#RouteDialogRequestResponseFlow Handling WFInputTextDialogRequest");
    OUTLINED_FUNCTION_11_0();
  }

  outlined init with copy of DeviceState(v0 + 32, v12);
  outlined init with copy of DeviceState(v0 + 96, &v11);
  type metadata accessor for WFInputTextFlow();
  swift_allocObject();

  v8 = v1;
  OUTLINED_FUNCTION_22_30();
  WFInputTextFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:outputPublisher:)();
  v12[0] = v9;
  lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(&lazy protocol witness table cache variable for type WFInputTextFlow and conformance WFInputTextFlow, 255, type metadata accessor for WFInputTextFlow);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_3_66(v12, partial apply for closure #1 in RouteDialogRequestResponseFlow.handleInputText(request:));
}

void closure #1 in RouteDialogRequestResponseFlow.handleShowAlertRequest(request:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 216);
  *(a2 + 216) = *a1;
  v5 = *(a2 + 224);
  *(a2 + 224) = v3;
  outlined copy of Result<INIntent, Error>(v2, v3);

  outlined consume of RouteDialogRequestResponseFlow.State(v4, v5);
}

uint64_t RouteDialogRequestResponseFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  outlined consume of RouteDialogRequestResponseFlow.State(*(v0 + 216), *(v0 + 224));
  return v0;
}

uint64_t RouteDialogRequestResponseFlow.__deallocating_deinit()
{
  RouteDialogRequestResponseFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance RouteDialogRequestResponseFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RouteDialogRequestResponseFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for DialogResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DialogResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *storeEnumTagSinglePayload for RouteDialogRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x207A24);
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

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin026RouteDialogRequestResponseC0C5State33_DC87C00F65912B4D4F384B0FA0B01CC5LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for RouteDialogRequestResponseFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for RouteDialogRequestResponseFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for RouteDialogRequestResponseFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type RouteDialogRequestResponseFlow and conformance RouteDialogRequestResponseFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_66(uint64_t a1, uint64_t a2)
{

  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

id OUTLINED_FUNCTION_7_40()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t OUTLINED_FUNCTION_21_26()
{
}

uint64_t static OutputUtils.makeTemporaryOutput()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v5 = [objc_allocWithZone(SAUIAddViews) init];
  v6 = [objc_allocWithZone(SAAceView) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_216010;
  *(v7 + 32) = v6;
  v8 = v6;
  outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(v7, v5);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v9, v10, v5, &selRef_setDialogPhase_);
  [v5 setTemporary:1];
  v11 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  v12 = type metadata accessor for AceOutput();
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  a1[3] = v12;
  a1[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(a1);
  static AceOutputHelper.makeAceOutput(addViews:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v14, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

id static OutputUtils.makeRequestFromDirectInvocation(payload:appId:deviceState:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = static OutputUtils.makeRSKECommandFromDirectInvocation(payload:appId:deviceState:)(a1, a2, a3, a4);
  v5 = [objc_opt_self() wrapCommandInStartLocalRequest:v4];

  return v5;
}

id static OutputUtils.makeEmptySnippet(correspondingSessionID:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  if (a2)
  {
    outlined bridged method (mbgnn) of @objc SAAceView.correspondingSessionID.setter(a1, a2, v4);
  }

  v5 = [objc_allocWithZone(SAUIAddViews) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v4;
  v7 = v4;
  outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(v6, v5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v8, v9, v5, &selRef_setDialogPhase_);

  return v5;
}

uint64_t static OutputUtils.shouldReadItemsInDisambiguationList(siriEnvironment:)()
{
  v0 = type metadata accessor for ResponseMode();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  SiriEnvironment.currentRequest.getter();
  CurrentRequest.responseMode.getter();
  static ResponseMode.voiceOnly.getter();
  v7 = static ResponseMode.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {

    v9 = 1;
  }

  else
  {
    CurrentRequest.responseMode.getter();
    static ResponseMode.voiceForward.getter();
    v9 = static ResponseMode.== infix(_:_:)();

    v8(v4, v0);
    v8(v6, v0);
  }

  return v9 & 1;
}

id static OutputUtils.makeRSKECommandFromDirectInvocation(payload:appId:deviceState:)(uint64_t a1, uint64_t a2, NSString a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v6 = DeviceState.asInvocationContext.getter();
  [v6 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v7 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v6 payload:a1];
  v8 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v9 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v9 setBundleId:a3];

  [v8 setRequestedApp:v9];
  [v7 setAppSelectionState:v8];

  return v7;
}

id static OutputUtils.buildNanoImage(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = [objc_allocWithZone(SAUINanoImageResource) init];
  v6 = outlined bridged method (pb) of @objc INImage._imageData.getter(a1);
  if (v7 >> 60 != 15)
  {
    v8 = v6;
    v9 = v7;
    v10 = v5;
    outlined bridged method (mbgnn) of @objc SAUIImageResource.imageData.setter(v8, v9, v10);

    outlined consume of Data?(v8, v9);
  }

  outlined bridged method (pb) of @objc INImage._identifier.getter(a1);
  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v12, v13, v5, &selRef_setImageDownloadType_);
    v14 = v5;
    URL.init(string:)();

    v15 = type metadata accessor for URL();
    v17 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v15) != 1)
    {
      URL._bridgeToObjectiveC()(v16);
      v17 = v18;
      (*(*(v15 - 8) + 8))(v4, v15);
    }

    [v14 setResourceUrl:v17];
  }

  OUTLINED_FUNCTION_0_54();
  if (v19 <= 0.0 || (OUTLINED_FUNCTION_0_54(), v20 <= 0.0))
  {
    v23 = 30.0;
    [v5 setPixelWidth:30.0];
  }

  else
  {
    v21 = v5;
    OUTLINED_FUNCTION_0_54();
    [v21 setPixelWidth:?];
    OUTLINED_FUNCTION_0_54();
    v23 = v22;
  }

  [v5 setPixelHeight:v23];

  [v5 setBackgroundNeeded:0];
  return v5;
}

uint64_t static OutputUtils.machineUtteranceForDisambiguationItemIndex(index:fallbackString:)(unint64_t a1, uint64_t a2)
{
  if (a1 > 0x18)
  {
    v2 = a2;
  }

  else
  {
    type metadata accessor for MachineUtteranceBuilder();
    swift_allocObject();

    MachineUtteranceBuilder.init()();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

    v2 = dispatch thunk of MachineUtteranceBuilder.build()();
  }

  return v2;
}

id static OutputUtils.makeSendCommandsFromUtterance(utterances:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = objc_allocWithZone(SAStartRequest);

      v7 = [v6 init];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v8, v9, v7, &selRef_setOrigin_);
      outlined bridged method (mbgnn) of @objc SAStartRequest.utterance.setter(v4, v5, v7);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  v10 = [objc_allocWithZone(SASendCommands) init];

  if (_swiftEmptyArrayStorage >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, _sSo20SAServerBoundCommand_pMR);
    v11 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v11 = _swiftEmptyArrayStorage;
  }

  outlined bridged method (mbnn) of @objc SASendCommands.commands.setter(v11, v10);
  return v10;
}

void outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(uint64_t a1, void *a2)
{
  type metadata accessor for SAAceView();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setViews:isa];
}

void outlined bridged method (mbgnn) of @objc SAAceView.correspondingSessionID.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setCorrespondingSessionID:v4];
}

uint64_t outlined bridged method (pb) of @objc INImage._identifier.getter(void *a1)
{
  v1 = [a1 _identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbgnn) of @objc SAUIImageResource.imageData.setter(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setImageData:isa];
}

void outlined bridged method (mbgnn) of @objc SAStartRequest.utterance.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setUtterance:v4];
}

void outlined bridged method (mbnn) of @objc SASendCommands.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, _sSo20SAServerBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

id OUTLINED_FUNCTION_0_54()
{
  v3 = *(v1 + 2528);

  return [v0 v3];
}

uint64_t WFOpenInteractionFlow.__allocating_init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t WFOpenInteractionFlow.exitValue.getter()
{
  v1 = *(v0 + 208);
  if (!(v1 >> 62))
  {
    return *(v0 + 208) & 1 | 0x4000000000000000;
  }

  if (v1 >> 62 == 1)
  {
    v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    swift_errorRetain();
  }

  else
  {
    v2 = 0x8000000000000000;
    if (v1 == 0x8000000000000000)
    {
      v3 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
      v2 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v3);
      *v4 = 3;
    }
  }

  return v2;
}

void *WFOpenInteractionFlow.init(interaction:runner:deviceState:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:aceServiceInvoker:outputPublisher:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v14 = type metadata accessor for CATOption();
  v15 = OUTLINED_FUNCTION_14(v14);
  __chkstk_darwin(v15);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v18))
  {
    v19 = OUTLINED_FUNCTION_52();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#WFOpenInteractionFlow initiated", v19, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v38 = a7;

  v8[2] = a1;
  outlined init with copy of DeviceState(a2, (v8 + 21));
  outlined init with copy of DeviceState(a3, (v8 + 6));
  v36 = a2;
  outlined init with copy of DeviceState(a6, (v8 + 16));
  outlined init with copy of DeviceState(a7, (v8 + 11));
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v37 = a1;
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v20 = type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_66(v20);
  v8[3] = ViewFactory.init(ttsEnabled:)();
  outlined init with copy of DeviceState(a3, v41);
  v21 = one-time initialization token for shared;

  v22 = a4;
  if (v21 != -1)
  {
    OUTLINED_FUNCTION_6(&one-time initialization token for shared);
  }

  v23 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  v25 = type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_34(v25);
  OUTLINED_FUNCTION_8_1();
  v26 = CATWrapperSimple.__allocating_init(options:globals:)();
  v27 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_34(v27);
  OUTLINED_FUNCTION_8_1();
  v28 = CATWrapper.__allocating_init(options:globals:)();
  v29 = type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_34(v29);
  OUTLINED_FUNCTION_8_1();
  v30 = CATWrapperSimple.__allocating_init(options:globals:)();
  v31 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_34(v31);
  OUTLINED_FUNCTION_8_1();
  v32 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  v8[4] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v41, v23, v24, v26, v28, v30, v22, a5, v32);
  type metadata accessor for WorkflowSnippetProvider();
  v33 = OUTLINED_FUNCTION_3_21();
  v34 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(v33);

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  v8[5] = v34;
  v8[26] = 0x8000000000000000;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v8;
}

unint64_t lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError()
{
  result = lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError;
  if (!lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError;
  if (!lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError);
  }

  return result;
}

uint64_t WFOpenInteractionFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[35] = v2;
  v1[36] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v3);
  v1[37] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
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
  if (OUTLINED_FUNCTION_50(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_22_31(&dword_0, v5, v3, "#WFOpenInteractionFlow execute");
    OUTLINED_FUNCTION_17();
  }

  v6 = *(v0 + 288);

  v7 = *(v6 + 16);
  v8 = [v7 intent];
  *(v0 + 304) = v8;
  outlined bridged method (pb) of @objc INIntent.launchId.getter(v8);
  if (!v9)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v22))
    {
      v23 = OUTLINED_FUNCTION_52();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#WFOpenInteractionFlow do not have app bundle id", v23, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    v24 = *(v0 + 288);

    v25 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v26 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v25);
    *v27 = 0;
    v28 = v26 | 0x4000000000000000;
    v29 = *(v24 + 208);
    *(v24 + 208) = v28;
    outlined consume of WFOpenInteractionFlow.State(v29);
    static ExecuteResponse.complete()();

LABEL_27:

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v10 = *(v0 + 288);
  type metadata accessor for App();
  OUTLINED_FUNCTION_38_19();
  *(v0 + 312) = App.__allocating_init(appIdentifier:)();
  v11 = [v7 intentResponse];
  *(v0 + 320) = v11;
  __swift_project_boxed_opaque_existential_1((v10 + 48), *(v10 + 72));
  OUTLINED_FUNCTION_37_16();
  if (dispatch thunk of DeviceState.isLockedWithPasscode.getter())
  {
    __swift_project_boxed_opaque_existential_1((v10 + 48), *(v10 + 72));
    OUTLINED_FUNCTION_37_16();
    if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v40))
      {
        v41 = OUTLINED_FUNCTION_52();
        *v41 = 0;
        _os_log_impl(&dword_0, v39, v40, "#WFOpenInteractionFlow unlock device", v41, 2u);
        OUTLINED_FUNCTION_24_28();
      }

      v60 = v11;

      static Device.current.getter();
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_6(&one-time initialization token for shared);
      }

      v58 = *(v0 + 288);
      v42 = static WFDialogState.shared;
      type metadata accessor for RunCustomIntentCATs(0);

      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v57 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunCustomIntentCATsSimple(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v43 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATs(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v44 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATsSimple(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_10_8();
      v45 = CATWrapperSimple.__allocating_init(options:globals:)();
      v46 = type metadata accessor for AppNameResolver();
      v47 = swift_allocObject();
      type metadata accessor for CustomIntentsDialogTemplating();
      v48 = swift_allocObject();
      *(v48 + 136) = v46;
      *(v48 + 144) = &protocol witness table for AppNameResolver;
      *(v48 + 112) = v47;
      *(v48 + 56) = v42;
      outlined init with take of AceServiceInvokerAsync((v0 + 176), v48 + 16);
      *(v48 + 64) = 0;
      *(v48 + 72) = 1;
      *(v48 + 80) = v57;
      *(v48 + 88) = v43;
      *(v48 + 96) = v44;
      *(v48 + 104) = v45;
      outlined init with copy of DeviceState(v10 + 48, v0 + 216);
      type metadata accessor for ShortcutsUnlockDeviceStrategy();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      outlined init with take of AceServiceInvokerAsync((v0 + 216), v49 + 24);
      *(v0 + 272) = ShortcutsUnlockDeviceStrategy.makeShortcutsUnlockDeviceFlow()();
      v50 = swift_allocObject();
      *(v50 + 16) = partial apply for implicit closure #3 in implicit closure #2 in WFOpenInteractionFlow.execute();
      *(v50 + 24) = v58;
      type metadata accessor for GuardFlow();

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_26;
    }
  }

  __swift_project_boxed_opaque_existential_1((v10 + 48), *(v10 + 72));
  OUTLINED_FUNCTION_3_21();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v59 = v11;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v13))
    {
      v14 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v14);
      OUTLINED_FUNCTION_22_31(&dword_0, v15, v13, "#WFOpenInteractionFlow handoff for HomePod");
      OUTLINED_FUNCTION_17();
    }

    v16 = *(v0 + 288);

    outlined init with copy of DeviceState(v16 + 168, v0 + 16);
    outlined init with copy of DeviceState(v10 + 48, v0 + 56);
    type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy();
    v17 = swift_allocObject();
    outlined init with take of AceServiceInvokerAsync((v0 + 16), v17 + 56);
    outlined init with take of AceServiceInvokerAsync((v0 + 56), v17 + 16);
    outlined init with copy of DeviceState(v10 + 48, v0 + 96);
    outlined init with copy of DeviceState(v16 + 88, v0 + 136);
    *(v0 + 256) = v17;
    v18 = type metadata accessor for HandoffSessionToCompanionFlowAsync();
    OUTLINED_FUNCTION_66(v18);
    lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(&lazy protocol witness table cache variable for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy, 255, type metadata accessor for CustomIntentHandoffToCompanionFlowStrategy, &protocol conformance descriptor for CustomIntentHandoffToCompanionFlowStrategy);

    v19 = HandoffSessionToCompanionFlowAsync.init<A>(strategy:deviceState:outputPublisher:)();
    v20 = *(v16 + 208);
    *(v16 + 208) = 0x8000000000000001;
    outlined consume of WFOpenInteractionFlow.State(v20);
    *(v0 + 264) = v19;
    static ExecuteResponse.complete<A>(next:)();

LABEL_26:

    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1((v10 + 48), *(v10 + 72));
  OUTLINED_FUNCTION_3_21();
  v30 = dispatch thunk of DeviceState.isCarPlay.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = OUTLINED_FUNCTION_50(v32);
  if (v30)
  {
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v34);
      OUTLINED_FUNCTION_22_31(&dword_0, v35, v32, "#WFOpenInteractionFlow launch app in Carplay");
      OUTLINED_FUNCTION_17();
    }

    v36 = swift_task_alloc();
    *(v0 + 328) = v36;
    *v36 = v0;
    OUTLINED_FUNCTION_33_17(v36);
    OUTLINED_FUNCTION_58();

    return WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)();
  }

  else
  {
    if (v33)
    {
      v53 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v53);
      OUTLINED_FUNCTION_22_31(&dword_0, v54, v32, "#WFOpenInteractionFlow automatic punch out");
      OUTLINED_FUNCTION_17();
    }

    v55 = swift_task_alloc();
    *(v0 + 336) = v55;
    *v55 = v0;
    OUTLINED_FUNCTION_33_17(v55);
    OUTLINED_FUNCTION_58();

    return WFOpenInteractionFlow.submitLaunchAppPunchout(intent:intentResponse:app:)();
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
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v3();
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

unint64_t WFOpenInteractionFlow.onUnlockFinished(exitValue:)(char a1)
{
  if (a1)
  {
    v2 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v3 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v2);
    *v4 = 6;
    v5 = v3 | 0x4000000000000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v1 + 208);
  *(v1 + 208) = v5;

  return outlined consume of WFOpenInteractionFlow.State(v6);
}

uint64_t WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_15_2();
  v1[11] = v2;
  v1[12] = v0;
  v1[13] = *v0;
  v3 = type metadata accessor for SubmitCommandError();
  v1[14] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[15] = v4;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[20] = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_44_18(v5);

  return WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v4;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[12];
  v3 = v1[19];
  v2 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v4 = v0;
  v4[1] = WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:);
  v6 = v0[21];

  return AceServiceInvokerAsync.submit<A>(_:)(v6, v3, v5, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 96);

  v2 = *(v1 + 208);
  *(v1 + 208) = 1;
  outlined consume of WFOpenInteractionFlow.State(v2);
  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
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
  if (OUTLINED_FUNCTION_50(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_22_31(&dword_0, v5, v3, "#WFOpenInteractionFlow makeUnlockForCarplay error code 1305");
    OUTLINED_FUNCTION_17();
  }

  v6 = v0[25];

  v7 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v8 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v7);
  *v9 = 5;

  v10 = v0[12];
  (*(v0[15] + 8))(v0[18], v0[14]);
  v11 = *(v10 + 208);
  *(v10 + 208) = v8 | 0x4000000000000000;
  outlined consume of WFOpenInteractionFlow.State(v11);

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

{
  OUTLINED_FUNCTION_14_0();
  v19 = v0;

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_85();
    v18 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v18);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_25_0(&dword_0, v9, v10, "#WFOpenInteractionFlow makeUnlockForCarplay submit error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v11 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v12 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v11);
  *v13 = 2;

  v14 = *(v0 + 96);
  (*(*(v0 + 120) + 8))(*(v0 + 144), *(v0 + 112));
  v15 = *(v14 + 208);
  *(v14 + 208) = v12 | 0x4000000000000000;
  outlined consume of WFOpenInteractionFlow.State(v15);

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();

  return v16();
}

uint64_t WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v28;
  a22 = v29;
  a20 = v23;
  v30 = v23[22];
  OUTLINED_FUNCTION_50_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_38_19();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_67_10();
    v31 = OUTLINED_FUNCTION_47_10();
    v27(v31);
    v32 = *(v26 + 16);
    v33 = OUTLINED_FUNCTION_21_27();
    v32(v33);
    v34 = (*(v26 + 88))(v24, v25);
    v35 = v23[17];
    v36 = v23[14];
    v37 = v23[15];
    if (v34 == enum case for SubmitCommandError.failedResponse(_:))
    {
      (*(v37 + 96))(v23[17], v36);
      v38 = *v35;
      v23[25] = v38;
      if ([v38 errorCode] == &stru_518.sectname[1])
      {
        v39 = swift_task_alloc();
        v23[26] = v39;
        *v39 = v23;
        OUTLINED_FUNCTION_11_40(v39);
        OUTLINED_FUNCTION_6_1();

        return static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:)();
      }
    }

    else
    {
      (*(v37 + 8))(v23[17], v36);
    }

    a9 = v27;
    a10 = v30;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v57 = OUTLINED_FUNCTION_63_11();
    __swift_project_value_buffer(v57, static Logger.voiceCommands);
    v58 = OUTLINED_FUNCTION_57_8();
    v32(v58);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_48();
      v62 = OUTLINED_FUNCTION_85();
      a11 = v62;
      *v61 = 136315138;
      OUTLINED_FUNCTION_1_71();
      lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v63, 255, v64, &protocol conformance descriptor for SubmitCommandError);
      Error.localizedDescription.getter();
      OUTLINED_FUNCTION_55_6();
      v65 = OUTLINED_FUNCTION_18_34();
      v66(v65);
      v67 = OUTLINED_FUNCTION_60_0();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v69);

      *(v61 + 4) = v70;
      OUTLINED_FUNCTION_25_0(&dword_0, v71, v72, "#WFOpenInteractionFlow makeUnlockForCarplay generic error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      v73 = OUTLINED_FUNCTION_18_34();
      v74(v73);
    }

    v75 = v23[14];
    v76 = v23[12];
    OUTLINED_FUNCTION_1_71();
    v79 = lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v77, 255, v78, &protocol conformance descriptor for SubmitCommandError);
    v80 = OUTLINED_FUNCTION_16_6(v75, v79);
    v82 = OUTLINED_FUNCTION_48_15(v80, v81);
    v83(v82);
    v84 = *(v76 + 208);
    *(v76 + 208) = v60 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v84);
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_48();
      v46 = OUTLINED_FUNCTION_85();
      a11 = v46;
      OUTLINED_FUNCTION_65_11(4.8149e-34);
      v47 = Error.localizedDescription.getter();
      v22 = v48;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &a11);

      *(v45 + 4) = v49;
      OUTLINED_FUNCTION_66_10(&dword_0, v50, v51, "#WFOpenInteractionFlow makeUnlockForCarplay unknown error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      OUTLINED_FUNCTION_15_0(v46);
      OUTLINED_FUNCTION_24_28();
    }

    v52 = v23[12];
    v53 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v54 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v53);
    OUTLINED_FUNCTION_16_37(v54, v55);
    v56 = *(v52 + 208);
    *(v52 + 208) = v22 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v56);
  }

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
}

uint64_t WFOpenInteractionFlow.makeUnlockForCarplay(intent:intentResponse:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v28;
  a22 = v29;
  a20 = v23;

  v30 = *(v23 + 192);
  OUTLINED_FUNCTION_50_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_38_19();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_67_10();
    v31 = OUTLINED_FUNCTION_47_10();
    v27(v31);
    v32 = *(v26 + 16);
    v33 = OUTLINED_FUNCTION_21_27();
    v32(v33);
    v34 = (*(v26 + 88))(v24, v25);
    v35 = *(v23 + 136);
    v36 = *(v23 + 112);
    v37 = *(v23 + 120);
    if (v34 == enum case for SubmitCommandError.failedResponse(_:))
    {
      (*(v37 + 96))(*(v23 + 136), v36);
      v38 = *v35;
      *(v23 + 200) = v38;
      if ([v38 errorCode] == &stru_518.sectname[1])
      {
        v39 = swift_task_alloc();
        *(v23 + 208) = v39;
        *v39 = v23;
        OUTLINED_FUNCTION_11_40(v39);
        OUTLINED_FUNCTION_6_1();

        return static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:)();
      }
    }

    else
    {
      (*(v37 + 8))(*(v23 + 136), v36);
    }

    a9 = v27;
    a10 = v30;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v57 = OUTLINED_FUNCTION_63_11();
    __swift_project_value_buffer(v57, static Logger.voiceCommands);
    v58 = OUTLINED_FUNCTION_57_8();
    v32(v58);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_48();
      v62 = OUTLINED_FUNCTION_85();
      a11 = v62;
      *v61 = 136315138;
      OUTLINED_FUNCTION_1_71();
      lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v63, 255, v64, &protocol conformance descriptor for SubmitCommandError);
      Error.localizedDescription.getter();
      OUTLINED_FUNCTION_55_6();
      v65 = OUTLINED_FUNCTION_18_34();
      v66(v65);
      v67 = OUTLINED_FUNCTION_60_0();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v69);

      *(v61 + 4) = v70;
      OUTLINED_FUNCTION_25_0(&dword_0, v71, v72, "#WFOpenInteractionFlow makeUnlockForCarplay generic error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      v73 = OUTLINED_FUNCTION_18_34();
      v74(v73);
    }

    v75 = *(v23 + 112);
    v76 = *(v23 + 96);
    OUTLINED_FUNCTION_1_71();
    v79 = lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(v77, 255, v78, &protocol conformance descriptor for SubmitCommandError);
    v80 = OUTLINED_FUNCTION_16_6(v75, v79);
    v82 = OUTLINED_FUNCTION_48_15(v80, v81);
    v83(v82);
    v84 = *(v76 + 208);
    *(v76 + 208) = v60 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v84);
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_48();
      v46 = OUTLINED_FUNCTION_85();
      a11 = v46;
      OUTLINED_FUNCTION_65_11(4.8149e-34);
      v47 = Error.localizedDescription.getter();
      v22 = v48;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &a11);

      *(v45 + 4) = v49;
      OUTLINED_FUNCTION_66_10(&dword_0, v50, v51, "#WFOpenInteractionFlow makeUnlockForCarplay unknown error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      OUTLINED_FUNCTION_15_0(v46);
      OUTLINED_FUNCTION_24_28();
    }

    v52 = *(v23 + 96);
    v53 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
    v54 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v53);
    OUTLINED_FUNCTION_16_37(v54, v55);
    v56 = *(v52 + 208);
    *(v52 + 208) = v22 | 0x4000000000000000;
    outlined consume of WFOpenInteractionFlow.State(v56);
  }

  OUTLINED_FUNCTION_51_12();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
}

uint64_t static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v0[16] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v0[17] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v0[18] = v7;
  v0[19] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for DialogPhase();
  v0[20] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v0[21] = v9;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v0[24] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v0[25] = v11;
  v0[26] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v0[27] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v0[28] = v13;
  v0[29] = OUTLINED_FUNCTION_28();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[14];
  (*(v0[28] + 104))(v0[29], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[27]);
  v2 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v3 = OUTLINED_FUNCTION_22_4();
  v4(v3);
  v5 = *v1;
  if (v2)
  {
    v13 = (*(v5 + 240) + **(v5 + 240));
    v6 = swift_task_alloc();
    v0[30] = v6;
    *v6 = v0;
    v6[1] = static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:);
    v7 = v0[12];

    return v13(v7);
  }

  else
  {
    v14 = (*(v5 + 248) + **(v5 + 248));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[36] = v9;
    *v9 = v10;
    v9[1] = static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:);
    v11 = v0[19];
    v12 = v0[12];

    return v14(v11, v12);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v1 = v0[32];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  static DialogPhase.error.getter();
  v5 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_55_6();

  v6 = OUTLINED_FUNCTION_21_27();
  v7(v6);
  OUTLINED_FUNCTION_15_30();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v4 + 8))(v2, v3);
  v8 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v8);
  v0[33] = ResponseFactory.init()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_64(v9);
  v0[34] = v10;
  *(v10 + 16) = xmmword_216010;
  *(v10 + 32) = v1;
  OUTLINED_FUNCTION_59_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[35] = v11;
  *v11 = v12;
  v11[1] = static WFOpenInteractionFlow.publishContinueInApp(app:deviceState:dialogTemplating:outputPublisher:);
  v13 = v0[26];

  return v15(v0 + 2, v10, v13);
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

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_31(v3);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  OUTLINED_FUNCTION_37_16();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v5 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = v6;
  *(v0 + 48) = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 304) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_13_31(v7);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v9, v10, v11);
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
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_8_40();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_8_40();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_8_40();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_8_40();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v5);
}

uint64_t WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_12_0();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  *(v0 + 48) = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:);

  return WFOpenInteractionFlow.makeErrorCallback()();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[9];
  v2 = v0[6];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = OUTLINED_FUNCTION_64(v3);
  *(v4 + 16) = xmmword_216010;
  *(v4 + 32) = v1;
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(v4, v2);
  v5 = v0[1];
  v6 = v0[6];

  return v5(v6);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackCommands()()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v1[14] = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for AceOutput();
  v1[15] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[18] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  (*(v0[19] + 104))(v0[20], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[18]);
  v1 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  if (v1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[21] = v4;
    *v4 = v5;
    v4[1] = WFOpenInteractionFlow.makeErrorCallbackCommands();

    return WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2()();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = WFOpenInteractionFlow.makeErrorCallbackCommands();

    return WFOpenInteractionFlow.makeErrorCallbackViews_preRFv2()();
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
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 192);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 192);
    }

    else
    {
      v2 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    _bridgeCocoaArray<A>(_:)();
    OUTLINED_FUNCTION_1_18();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v2 = *(v0 + 192);
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackCommands()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  outlined init with copy of DeviceState((v22 + 2), (v22 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  if (swift_dynamicCast())
  {
    v26 = v22[16];
    v25 = v22[17];
    v28 = v22[14];
    v27 = v22[15];
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v27);
    (*(v26 + 32))(v25, v28, v27);
    v29 = AceOutput.commands.getter();
    a11 = _swiftEmptyArrayStorage;
    v30 = specialized Array.count.getter(v29);
    for (i = 0; v30 != i; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }

        v32 = *(v29 + 8 * i + 32);
      }

      v33 = v32;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22[12] = &OBJC_PROTOCOL___SAClientBoundCommand;
      v34 = swift_dynamicCastObjCProtocolConditional();
      if (v34)
      {
        v35 = v34;
        swift_getObjectType();
        specialized Array.append(_:)(v35, &a11);
      }

      else
      {
      }
    }

    if (specialized Array.count.getter(a11))
    {
      v43 = v22[16];
      v42 = v22[17];
      v44 = v22[15];

      (*(v43 + 8))(v42, v44);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.voiceCommands);
      OUTLINED_FUNCTION_3_21();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      v48 = os_log_type_enabled(v46, v47);
      v50 = v22[16];
      v49 = v22[17];
      v51 = v22[15];
      if (v48)
      {
        a10 = v22[15];
        v52 = OUTLINED_FUNCTION_48();
        v53 = OUTLINED_FUNCTION_85();
        a11 = v53;
        *v52 = 136315138;
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        v54 = Array.description.getter();
        a9 = v49;
        v56 = v55;

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &a11);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_0, v46, v47, "no error-callback clientCmds; outputCmds=%s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        OUTLINED_FUNCTION_15_0(v53);
        OUTLINED_FUNCTION_15_0(v52);

        (*(v50 + 8))(a9, a10);
      }

      else
      {

        (*(v50 + 8))(v49, v51);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  }

  else
  {
    v36 = v22[14];
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v22[15]);
    outlined destroy of String?(v36, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.voiceCommands);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_50(v39))
    {
      v40 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v40);
      OUTLINED_FUNCTION_17();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  }

  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_6_1();

  return v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for DialogPhase();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[8] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = (*(**(*(v0 + 24) + 32) + 256) + **(**(*(v0 + 24) + 32) + 256));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2();

  return v3();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v9();
  }

  else
  {
    *(v5 + 96) = v3;
    v11 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v11);
  }
}

{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  static DialogPhase.error.getter();
  v5 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_55_6();

  v6 = OUTLINED_FUNCTION_21_27();
  v7(v6);
  OUTLINED_FUNCTION_15_30();
  OUTLINED_FUNCTION_60_0();
  OutputGenerationManifest.responseViewId.setter();
  (*(v4 + 8))(v2, v3);
  v8 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v8);
  v0[13] = ResponseFactory.init()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_64(v9);
  v0[14] = v10;
  *(v10 + 16) = xmmword_216010;
  *(v10 + 32) = v1;
  OUTLINED_FUNCTION_59_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[15] = v11;
  *v11 = v12;
  v11[1] = WFOpenInteractionFlow.makeErrorCallbackOutput_RFv2();
  v13 = v0[10];
  v14 = v0[2];

  return v16(v14, v10, v13);
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

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t WFOpenInteractionFlow.makeErrorCallbackViews_preRFv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  v5 = (*(**(v0[2] + 32) + 264) + **(**(v0[2] + 32) + 264));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[6] = v1;
  *v1 = v2;
  v1[1] = WFOpenInteractionFlow.makeErrorCallbackViews_preRFv2();
  v3 = v0[5];

  return v5(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_14_0();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  if (dispatch thunk of ViewFactory.makeUtteranceViews(template:listenAfterSpeaking:canUseServerTTS:)() >> 62)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = dispatch thunk of ViewFactory.makeErrorView(aceViews:)();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_64(v5);
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v4;
  (*(v2 + 8))(v1, v3);

  v7 = OUTLINED_FUNCTION_24_14();

  return v8(v7);
}

uint64_t WFOpenInteractionFlow.submitLaunchAppPunchout(intent:intentResponse:app:)()
{
  OUTLINED_FUNCTION_12_0();
  v1[16] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v1[17] = OUTLINED_FUNCTION_28();
  v3 = type metadata accessor for AceOutput();
  v1[18] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[19] = v4;
  v1[20] = OUTLINED_FUNCTION_28();
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_44_18(v5);

  return WFOpenInteractionFlow.makeLaunchAppCommand(intent:intentResponse:app:)(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  [v1 setDoNotDismissSiri:1];
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = OUTLINED_FUNCTION_64(v8);
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = v1;
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v11 = v6[14];
  v12 = v6[15];
  __swift_project_boxed_opaque_existential_1(v6 + 11, v11);
  *(v0 + 80) = v4;
  *(v0 + 88) = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 192) = v14;
  *v14 = v15;
  v14[1] = WFOpenInteractionFlow.submitLaunchAppPunchout(intent:intentResponse:app:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 56, v11, v12);
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
  *(v3 + 200) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  v3 = *(v0 + 128);
  v4 = *(v3 + 208);
  *(v3 + 208) = 1;
  outlined consume of WFOpenInteractionFlow.State(v4);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_14_0();
  v17 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_85();
    v16 = v5;
    OUTLINED_FUNCTION_62_11(4.8149e-34);
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v16);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_101(&dword_0, v9, v10, "#WFOpenInteractionFlow submitLaunchAppPunchout unknown error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_24_28();
    OUTLINED_FUNCTION_11_0();
  }

  v11 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v12 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v11);
  OUTLINED_FUNCTION_16_37(v12, v13);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_6_0();

  return v14();
}

{
  OUTLINED_FUNCTION_14_0();
  v19 = v0;

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v18 = v7;
    OUTLINED_FUNCTION_62_11(4.8149e-34);
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v18);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_101(&dword_0, v11, v12, "#WFOpenInteractionFlow submitLaunchAppPunchout unknown error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_24_28();
    OUTLINED_FUNCTION_11_0();
  }

  v13 = lazy protocol witness table accessor for type WFOpenInteractionFlowError and conformance WFOpenInteractionFlowError();
  v14 = OUTLINED_FUNCTION_16_6(&type metadata for WFOpenInteractionFlowError, v13);
  OUTLINED_FUNCTION_16_37(v14, v15);
  OUTLINED_FUNCTION_58_11();

  OUTLINED_FUNCTION_6_0();

  return v16();
}

uint64_t WFOpenInteractionFlow.makeErrorCallback()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = WFOpenInteractionFlow.makeErrorCallback();

  return WFOpenInteractionFlow.makeErrorCallbackCommands()();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
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
    *(v5 + 24) = v3;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v0 = [objc_allocWithZone(SAResultCallback) init];
  [v0 setCode:SAResultCallbackAnyErrorCodeValue];
  v1 = OUTLINED_FUNCTION_22_4();
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v1, v2);
  v3 = OUTLINED_FUNCTION_24_14();

  return v4(v3);
}

uint64_t WFOpenInteractionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFOpenInteractionFlow();
  lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(&lazy protocol witness table cache variable for type WFOpenInteractionFlow and conformance WFOpenInteractionFlow, v2, type metadata accessor for WFOpenInteractionFlow, &protocol conformance descriptor for WFOpenInteractionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFOpenInteractionFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  outlined consume of WFOpenInteractionFlow.State(*(v0 + 208));
  return v0;
}

uint64_t WFOpenInteractionFlow.__deallocating_deinit()
{
  WFOpenInteractionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFOpenInteractionFlow(uint64_t a1)
{
  v6 = (*(**v1 + 200) + **(**v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFOpenInteractionFlow@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  return result;
}

unint64_t outlined consume of WFOpenInteractionFlow.State(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_20DF2C()
{

  return _swift_deallocObject(v0);
}

_BYTE *storeEnumTagSinglePayload for WFOpenInteractionFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x20E0BCLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin25WFOpenInteractionResponseO_0(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

uint64_t getEnumTagSinglePayload for WFOpenInteractionResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 8))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void *storeEnumTagSinglePayload for WFOpenInteractionResponse(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      return OUTLINED_FUNCTION_49_15(result, ((v3 << 58) | (2 * v3)) & 0xF000000000000007);
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WFOpenInteractionResponse(void *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    v2 = (4 * (a2 - 2)) & 0x3FFFFFFF8 | (a2 - 2) & 1 | 0x8000000000000000;
  }

  return OUTLINED_FUNCTION_49_15(a1, v2);
}

void outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(uint64_t a1, void *a2)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCallbacks:isa];
}

uint64_t specialized Array.append(_:)(uint64_t a1, void *a2)
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)));
  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t lazy protocol witness table accessor for type CustomIntentHandoffToCompanionFlowStrategy and conformance CustomIntentHandoffToCompanionFlowStrategy(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_15_30()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_16_37(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;
}

void OUTLINED_FUNCTION_22_31(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_24_28()
{
}

uint64_t OUTLINED_FUNCTION_50_9()
{
  *(v1 + 64) = v0;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_51_12()
{
}

uint64_t OUTLINED_FUNCTION_58_11()
{
  v2 = *(v1 + 128);
  v3 = *(v2 + 208);
  *(v2 + 208) = v0 | 0x4000000000000000;
  outlined consume of WFOpenInteractionFlow.State(v3);
}

uint64_t OUTLINED_FUNCTION_62_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_63_11()
{

  return type metadata accessor for Logger();
}

uint64_t OUTLINED_FUNCTION_65_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_66_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_10()
{
}

uint64_t UsoTaskBuilder.asUsoGraph()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v2 = __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v0;

  UsoBuilderOptions.init(longhandDefinedValues:)();
  v7 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of String?(v5, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
}

uint64_t LNActionParameterMetadata.measurementDefaultUnitSymbol.getter()
{
  v1 = [v0 typeSpecificMetadata];
  type metadata accessor for LNValueTypeSpecificMetadataKey(0);
  lazy protocol witness table accessor for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey();
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.getter(v2, &v5, LNValueTypeSpecificMetadataKeyMeasurementDefaultUnitSymbol);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(&v5);
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey()
{
  result = lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey;
  if (!lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey)
  {
    type metadata accessor for LNValueTypeSpecificMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey);
  }

  return result;
}

uint64_t LNActionParameterMetadata.measurementUnitType.getter()
{
  v1 = [v0 typeSpecificMetadata];
  type metadata accessor for LNValueTypeSpecificMetadataKey(0);
  lazy protocol witness table accessor for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey();
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.getter(v2, &v5, LNValueTypeSpecificMetadataKeyMeasurementUnitType);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    outlined destroy of Any?(&v5);
  }

  return 0;
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = Measurement._bridgeToObjectiveC()();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static ExecuteResponse.ongoing<A>(next:childCompletion:)()
{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

CLPlacemark_optional __swiftcall Location.toCLPlacemark()()
{
  v0 = Location.toCLPlacemark()();
  result.value._internal = v1;
  result.value.super.isa = v0;
  result.is_nil = v2;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t LNCodableValue.init(_:)()
{
  return LNCodableValue.init(_:)();
}

{
  return LNCodableValue.init(_:)();
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = Substring.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}