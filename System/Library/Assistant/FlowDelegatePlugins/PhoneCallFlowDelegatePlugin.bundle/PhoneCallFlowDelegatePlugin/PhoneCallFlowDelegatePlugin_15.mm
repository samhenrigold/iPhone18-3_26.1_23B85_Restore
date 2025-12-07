uint64_t LocalEmergencyCallDisambiguationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x736D657469;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x74706D6F7270;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LocalEmergencyCallDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LocalEmergencyCallDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LocalEmergencyCallDisambiguationModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PhoneCallConfirmationSemantics.associatedSemantic.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocalEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LocalEmergencyCallDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LocalEmergencyCallDisambiguationModel.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin014LocalEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin014LocalEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v4 = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_15_26();
  v6 = lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();
  OUTLINED_FUNCTION_23_11(&unk_521070, v7, v6);
  OUTLINED_FUNCTION_43_12();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMR);
    lazy protocol witness table accessor for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A]);
    OUTLINED_FUNCTION_6_35();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_0_54();
    _s10Foundation4UUIDVACSHAAWlTm_1(v8);
    OUTLINED_FUNCTION_6_35();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v9);
    OUTLINED_FUNCTION_6_35();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_43_12();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

void LocalEmergencyCallDisambiguationModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_30_1();
  a25 = v27;
  a26 = v28;
  v84 = v26;
  v30 = v29;
  v77 = v31;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_7();
  v78 = v32;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  v35 = &v75 - v34;
  v81 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v79 = v36;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_4();
  v40 = v39 - v38;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin014LocalEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin014LocalEmergencyE19DisambiguationModelV10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLOGMR);
  OUTLINED_FUNCTION_7();
  v42 = v41;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v43);
  v45 = &v75 - v44;
  v83 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_4();
  v49 = v48 - v47;
  v85 = v30;
  OUTLINED_FUNCTION_15_26();
  lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys();
  v50 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v50)
  {
    __swift_destroy_boxed_opaque_existential_1(v85);
  }

  else
  {
    v84 = v40;
    v76 = v35;
    a16 = 0;
    v51 = v82;
    *v49 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v49 + 8) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMR);
    a15 = 1;
    v53 = lazy protocol witness table accessor for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A]);
    OUTLINED_FUNCTION_25_14(v53, &a15, v54, v55, v53);
    *(v49 + 16) = v86;
    OUTLINED_FUNCTION_42_9();
    *(v49 + 24) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_0_54();
    v57 = _s10Foundation4UUIDVACSHAAWlTm_1(v56);
    v58 = v84;
    v59 = v81;
    OUTLINED_FUNCTION_25_14(v57, &a13, v60, v61, v57);
    v62 = v49;
    v63 = v83;
    (*(v79 + 32))(v62 + *(v83 + 28), v58, v59);
    a12 = 4;
    OUTLINED_FUNCTION_17_15();
    v65 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v64);
    v66 = v76;
    v67 = v80;
    OUTLINED_FUNCTION_25_14(v65, &a12, v68, v69, v65);
    (*(v78 + 32))(v62 + *(v63 + 32), v66, v67);
    v70 = KeyedDecodingContainer.decode(_:forKey:)();
    v72 = v71;
    v73 = v42;
    v74 = (v62 + *(v63 + 36));
    (*(v73 + 8))(v45, v51);
    *v74 = v70;
    v74[1] = v72;
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(v62, v77, type metadata accessor for LocalEmergencyCallDisambiguationModel);
    __swift_destroy_boxed_opaque_existential_1(v85);
    outlined destroy of DisambiguationItemWithDirectInvocationModel();
  }

  OUTLINED_FUNCTION_29_2();
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance LocalEmergencyCallDisambiguationModel(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LocalEmergencyCallDisambiguationModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0P4TypeO10CodingKeys33_F44E941AF32BBDA1F326E41B35FA69B1LLO_Tt1g5(uint64_t result, uint64_t a2)
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.CodingKeys and conformance DisambiguationItemWithDirectInvocationModel.CodingKeys);
  }

  return result;
}

unint64_t _s10Foundation4UUIDVACSHAAWlTm_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMd, &_s10SnippetKit8LoggableVyAA16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGGMR);
    _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    result = OUTLINED_FUNCTION_24_16();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<DisambiguationItemWithDirectInvocationModel.ItemType> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMd, &_s10SnippetKit8LoggableVy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelV0J4TypeOGMR);
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType();
    lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType();
    result = OUTLINED_FUNCTION_24_16();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType;
  if (!lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemWithDirectInvocationModel.ItemType and conformance DisambiguationItemWithDirectInvocationModel.ItemType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<String?> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    result = OUTLINED_FUNCTION_24_16();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of DisambiguationItemWithDirectInvocationModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel.CodingKeys and conformance ForeignEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of DisambiguationItemWithDirectInvocationModel?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DisambiguationItemWithDirectInvocationModel(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  v4 = OUTLINED_FUNCTION_19_0();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of DisambiguationItemWithDirectInvocationModel()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t lazy protocol witness table accessor for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel.CodingKeys and conformance LocalEmergencyCallDisambiguationModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DisambiguationItemWithDirectInvocationModel] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMR);
    OUTLINED_FUNCTION_4_27();
    _s10Foundation4UUIDVACSHAAWlTm_1(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ForeignEmergencyCallDisambiguationModel(uint64_t a1)
{
  result = _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type ForeignEmergencyCallDisambiguationModel and conformance ForeignEmergencyCallDisambiguationModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for LocalEmergencyCallDisambiguationModel(uint64_t a1)
{
  result = _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type LocalEmergencyCallDisambiguationModel and conformance LocalEmergencyCallDisambiguationModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for DisambiguationItemWithDirectInvocationModel(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Loggable<String?>(319, &lazy cache variable for type metadata for Loggable<String?>, &_sSSSgMd, &_sSSSgMR);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>, &type metadata for String);
      if (v6 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>, &type metadata for Bool);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        type metadata accessor for Loggable<String?>(319, &lazy cache variable for type metadata for Loggable<CodableAceObject<SAIntentGroupRunSiriKitExecutor>>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<DisambiguationItemWithDirectInvocationModel.ItemType>, &type metadata for DisambiguationItemWithDirectInvocationModel.ItemType);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void type metadata accessor for Loggable<String?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Loggable();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for DisambiguationItemWithDirectInvocationModel.ItemType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for DisambiguationItemWithDirectInvocationModel.ItemType(void *result, int a2)
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

void type metadata completion function for ForeignEmergencyCallDisambiguationModel(uint64_t a1)
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel?(319, &lazy cache variable for type metadata for DisambiguationItemWithDirectInvocationModel?, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for LocalEmergencyCallDisambiguationModel(uint64_t a1)
{
  type metadata accessor for DisambiguationItemWithDirectInvocationModel?(319, &lazy cache variable for type metadata for [DisambiguationItemWithDirectInvocationModel], &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>, &type metadata for String);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for DisambiguationItemWithDirectInvocationModel?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LocalEmergencyCallDisambiguationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for LocalEmergencyCallDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for ForeignEmergencyCallDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for DisambiguationItemWithDirectInvocationModel.ItemType.PhoneNumberCodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
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

uint64_t OUTLINED_FUNCTION_36_12()
{
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_45_7@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_47_11(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.type.getter()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_55();
  outlined copy of EmergencyDuringOngoingCallPromptType(v2, v3, v1);
  return OUTLINED_FUNCTION_55();
}

id outlined copy of EmergencyDuringOngoingCallPromptType(id result, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.__allocating_init(type:sharedGlobals:startCallCats:ongoingCallCats:startCallCATsSimple:ongoingCallCATsSimple:)()
{
  OUTLINED_FUNCTION_18_13();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  *(v12 + 32) = v7;
  outlined init with take of PhoneCallFeatureFlagProviding(v5, v12 + 40);
  *(v12 + 80) = v3;
  *(v12 + 88) = v2;
  *(v12 + 96) = v1;
  *(v12 + 104) = v0;
  return v12;
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.init(type:sharedGlobals:startCallCats:ongoingCallCats:startCallCATsSimple:ongoingCallCATsSimple:)()
{
  OUTLINED_FUNCTION_18_13();
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  outlined init with take of PhoneCallFeatureFlagProviding(v8, v1 + 40);
  *(v1 + 80) = v4;
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return v1;
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.actionForInput(_:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of SignalProviding(v0 + 40, v8);
  Input.parse.getter();
  v5 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v4, 1);
  (*(v2 + 8))(v4, v1);
  outlined destroy of ContactPromptResponseParser(v8);
  if ((v5 - 5) >= 4u)
  {
    return static ActionForInput.handle()();
  }

  else
  {
    return static ActionForInput.ignore()();
  }
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[10] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[11] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[12] = OUTLINED_FUNCTION_45();
  v1[13] = type metadata accessor for Parse();
  OUTLINED_FUNCTION_24_5();
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[15];
  outlined init with copy of SignalProviding(v0[9] + 40, (v0 + 2));
  Input.parse.getter();
  v2 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v1, 1);
  v3 = OUTLINED_FUNCTION_55();
  v4(v3);
  outlined destroy of ContactPromptResponseParser((v0 + 2));
  if (v2 >= 3u)
  {
    v9 = v0[11];
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_5(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v10);
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_4(v9, type metadata accessor for PhoneError);
    swift_willThrow();
  }

  else
  {
    v5 = v0[12];
    v6 = **(&off_5212E0 + v2);
    v7 = type metadata accessor for ConfirmationResponse();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    SimpleConfirmationResponseProvider.init(_:)();
  }

  OUTLINED_FUNCTION_11();

  return v8();
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_15();
  v1[225] = v0;
  v1[219] = v2;
  v3 = type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_21(v3);
  v1[231] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v1[237] = OUTLINED_FUNCTION_45();
  v1[238] = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_24_5();
  v1[239] = v5;
  v1[240] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for YesNoConfirmationModel(0);
  v1[241] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[242] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v21 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045B370, &v20);
    _os_log_impl(&dword_0, v2, v3, "#EmergencyDuringOngoingCallConfirmationStrategy %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_project_boxed_opaque_existential_1((v0[225] + 40), *(v0[225] + 64));
  v6 = OUTLINED_FUNCTION_55();
  v7(v6);
  __swift_project_boxed_opaque_existential_1(v0 + 167, v0[170]);
  v8 = OUTLINED_FUNCTION_55();
  if (v9(v8))
  {
    swift_getObjectType();
    v10 = SPHCall.toPhoneCallRecord()();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  v0[243] = v10;
  v11 = v0[225];
  __swift_destroy_boxed_opaque_existential_1(v0 + 167);
  LODWORD(v11) = *(v11 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  v0[244] = v12;
  *(v12 + 16) = xmmword_427BB0;
  if (v11 >= 2)
  {
    OUTLINED_FUNCTION_24_5();
    v19 = (v16 + *v16);
    v17 = swift_task_alloc();
    v0[245] = v17;
    *v17 = v0;
    v17[1] = EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v19();
  }

  else
  {
    v0[251] = *(v0[225] + 104);
    OUTLINED_FUNCTION_24_5();
    v18 = (v13 + *v13);
    v14 = swift_task_alloc();
    v0[252] = v14;
    *v14 = v0;
    v14[1] = EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

    return v18(v10);
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 1968) = v0;

  if (!v0)
  {
    *(v4 + 1976) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  *(v0[244] + 32) = v0[247];
  OUTLINED_FUNCTION_24_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[248] = v2;
  *v2 = v0;
  v2[1] = EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v3 = v0[243];

  return v5(v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 1992) = v0;

  if (!v0)
  {
    *(v4 + 2000) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  *(v0[244] + 40) = v0[250];
  v0[258] = static SiriPhoneActionFactory.makeConfirmAndRejectActions()();
  v0[259] = v1;
  OUTLINED_FUNCTION_5_38();
  OUTLINED_FUNCTION_6_36();
  v2 = OUTLINED_FUNCTION_4_28();

  return _swift_asyncLet_get_throwing(v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 2024) = v0;

  if (!v0)
  {
    *(v4 + 2032) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  *(v0[244] + 32) = v0[254];
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[255] = v2;
  *v2 = v0;
  v2[1] = EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 2048) = v0;

  if (!v0)
  {
    *(v4 + 2056) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  *(v0[244] + 40) = v0[257];
  v0[258] = static SiriPhoneActionFactory.makeConfirmAndRejectActions()();
  v0[259] = v1;
  OUTLINED_FUNCTION_5_38();
  OUTLINED_FUNCTION_6_36();
  v2 = OUTLINED_FUNCTION_4_28();

  return _swift_asyncLet_get_throwing(v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  v1[260] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    v1[261] = v1[207];
    v1[262] = v1[208];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 209, EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), v1 + 192);
  }
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 2104) = v0;
  if (v0)
  {

    v2 = EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  }

  else
  {
    v2 = EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 2096);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2064);
  v5 = *(v0 + 1936);
  v6 = *(v0 + 1928);
  v26 = *(v0 + 1800);
  v25 = *(v0 + 1672);
  v7 = *(v0 + 1680);
  *(v0 + 1688) = 0u;

  v24 = v3;
  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v9 = (v5 + *(v6 + 36));
  *v9 = 0xD000000000000011;
  v9[1] = 0x8000000000456DF0;
  *(v0 + 1704) = v2;
  *(v0 + 1712) = v1;
  Loggable.init(wrappedValue:)();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v10 = v8;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 1720) = v25;
  *(v0 + 1728) = v7;
  Loggable.init(wrappedValue:)();
  v11 = v24;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 1736) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();

  *(v0 + 1440) = v6;
  *(v0 + 1448) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_5(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1416));
  outlined init with copy of YesNoConfirmationModel(v5, boxed_opaque_existential_1);
  static DialogPhase.confirmation.getter();
  *(swift_task_alloc() + 16) = v0 + 1416;
  OutputGenerationManifest.init(dialogPhase:_:)();

  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  static ResponseMode.voiceForward.getter();
  OutputGenerationManifest.responseMode.setter();
  outlined destroy of PhoneSnippetModel?(v0 + 1416);
  v13 = v26[8];
  v14 = v26[9];
  __swift_project_boxed_opaque_existential_1(v26 + 5, v13);
  (*(v14 + 136))(v13, v14);
  v15 = *(v0 + 1520);
  v16 = *(v0 + 1528);
  __swift_project_boxed_opaque_existential_1((v0 + 1496), v15);
  *(v0 + 1600) = type metadata accessor for PhoneSnippetDataModels(0);
  *(v0 + 1608) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_5(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 1576));
  outlined init with copy of YesNoConfirmationModel(v5, v17);
  swift_storeEnumTagMultiPayload();
  v18 = *(v16 + 8);
  v19 = swift_task_alloc();
  *(v0 + 2112) = v19;
  *v19 = v0;
  v19[1] = EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v20 = *(v0 + 1952);
  v21 = *(v0 + 1920);
  v22 = *(v0 + 1752);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v22, v0 + 1576, v20, v21, v15, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 1576));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[242];
  (*(v0[239] + 8))(v0[240], v0[238]);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_4(v1, type metadata accessor for YesNoConfirmationModel);
  __swift_destroy_boxed_opaque_existential_1(v0 + 187);

  return _swift_asyncLet_finish(v0 + 82, v0 + 209, EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), v0 + 226);
}

{
  return OUTLINED_FUNCTION_0_1(EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), v0 + 1856);
}

{
  return OUTLINED_FUNCTION_0_1(EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

{
  v1 = *(v0 + 2072);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_3_42();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_21_14();

  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_3_42();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_3_42();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_21_14();

  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_3_42();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 1672, EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), v0 + 1376);
}

{
  return OUTLINED_FUNCTION_0_1(EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), v0 + 1456);
}

{
  return OUTLINED_FUNCTION_0_1(EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 2072);

  OUTLINED_FUNCTION_3_42();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 1672, EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), v0 + 1616);
}

{
  return OUTLINED_FUNCTION_0_1(EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), v0 + 1760);
}

{
  return OUTLINED_FUNCTION_0_1(EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 2072);

  OUTLINED_FUNCTION_3_42();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t implicit closure #2 in EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

  return static LabelTemplates.yes()();
}

uint64_t implicit closure #2 in EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v2)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;
    v13 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t implicit closure #2 in EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  OUTLINED_FUNCTION_11();
  return v3();
}

uint64_t implicit closure #3 in EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #3 in EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

  return static LabelTemplates.no()();
}

uint64_t implicit closure #3 in EmergencyDuringOngoingCallConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v2)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;
    v13 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.deinit()
{
  outlined consume of EmergencyDuringOngoingCallPromptType(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return v0;
}

uint64_t EmergencyDuringOngoingCallConfirmationStrategy.__deallocating_deinit()
{
  EmergencyDuringOngoingCallConfirmationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance EmergencyDuringOngoingCallConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance EmergencyDuringOngoingCallConfirmationStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance EmergencyDuringOngoingCallConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EmergencyDuringOngoingCallConfirmationStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance EmergencyDuringOngoingCallConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EmergencyDuringOngoingCallConfirmationStrategy();
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance EmergencyDuringOngoingCallConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance EmergencyDuringOngoingCallConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #2 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance EmergencyDuringOngoingCallConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t outlined init with copy of YesNoConfirmationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YesNoConfirmationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PhoneSnippetModel?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void outlined consume of EmergencyDuringOngoingCallPromptType(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE012VoiceTriggerkL8Behavior33_416F2237FA2027A36B62186071826756LLO3for011isEmergencyE6Intent13sharedGlobalsAJyAdE_pAG_Gqd__m_SbAD06SharedY9Providing_ptcSo8INIntentCRbd__lufCSo08INAnswereW0C_Ttt2g5(uint64_t a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#VoiceTriggerAudioRouteBehavior heySiriAudioRoute is enabled for INAnswerCallIntent.", v6, 2u);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return 0;
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE012VoiceTriggerkL8Behavior33_416F2237FA2027A36B62186071826756LLO3for011isEmergencyE6Intent13sharedGlobalsAJyAdE_pAG_Gqd__m_SbAD06SharedY9Providing_ptcSo8INIntentCRbd__lufCSo07INStarteW0C_Ttt2g5(char a1, void *a2)
{
  if (a1)
  {
    v3 = a2[3];
    v4 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v3);
    (*(v4 + 8))(v10, v3, v4);
    v5 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v5);
    v7 = (*(v6 + 112))(v5, v6);
    v8 = static Transformer<>.VoiceTriggerAudioRouteBehavior.chooseBehaviorForEmergencyCall(deviceState:currentRequest:)(v10, v7);

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 2;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So08INAnswereS0C_Tt1t4g5(void *a1, void *a2, void *a3)
{
  OUTLINED_FUNCTION_86(a1);
  v6 = PhoneCallNLIntent.isEmergencyCall()();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v184);
  HIDWORD(v183) = _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE012VoiceTriggerkL8Behavior33_416F2237FA2027A36B62186071826756LLO3for011isEmergencyE6Intent13sharedGlobalsAJyAdE_pAG_Gqd__m_SbAD06SharedY9Providing_ptcSo8INIntentCRbd__lufCSo08INAnswereW0C_Ttt2g5(v6, v184);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 8))(v184, v7, v8);
  OUTLINED_FUNCTION_86(v184);
  if (DeviceState.isVoiceTrigger.getter())
  {
    v9 = 1;
  }

  else if (a3 && (v10 = [a3 _metadata]) != 0)
  {
    v11 = v10;
    v12 = [v10 triggerMethod];

    v9 = v12 == 30;
  }

  else
  {
    v9 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v184);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 152))(v184, v13, v14);
  v15 = v185;
  v16 = v186;
  __swift_project_boxed_opaque_existential_1(v184, v185);
  if ((*(v16 + 24))(v15, v16))
  {
    OUTLINED_FUNCTION_24_2();
    v18 = (*(v17 + 104))();
  }

  else
  {
    v18 = 4;
  }

  __swift_destroy_boxed_opaque_existential_1(v184);
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  if ((*(v20 + 112))(v19, v20))
  {
    if (CurrentRequest.isInAmbient.getter())
    {
      OUTLINED_FUNCTION_11_8();
      if (!v21)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
      static os_log_type_t.debug.getter();
      v24 = OUTLINED_FUNCTION_4_29();
      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_49_3();
        *a2 = 136315138;
        v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v34 = OUTLINED_FUNCTION_34_8(v26, v27, v28, v29, v30, v31, v32, v33, v182, v183);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v184);

        *(a2 + 4) = v36;
        OUTLINED_FUNCTION_21_15(&dword_0, v37, v38, "#%s Request is made in ambient mode. Routing to HS audio route.");
        __swift_destroy_boxed_opaque_existential_1(a1);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      v39 = _INCallAudioRouteHeySiriAudioRoute;

      goto LABEL_35;
    }
  }

  LODWORD(v183) = v9;
  v40 = 0xEC000000656E6F68;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = OUTLINED_FUNCTION_40_0();
  switch(v43(v42, v41))
  {
    case 1u:
    case 2u:
      goto LABEL_21;
    case 3u:
      OUTLINED_FUNCTION_17_18();
LABEL_21:
      OUTLINED_FUNCTION_6_37();
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v44)
      {
        goto LABEL_22;
      }

      break;
    case 4u:
      break;
    default:

LABEL_22:
      OUTLINED_FUNCTION_8_39();
      if (!v21)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      v46 = OUTLINED_FUNCTION_12_1(v45, static Logger.siriPhone);
      static os_log_type_t.debug.getter();
      v47 = OUTLINED_FUNCTION_4_29();
      if (os_log_type_enabled(v47, v48))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_49_3();
        *a2 = 136315138;
        v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v57 = OUTLINED_FUNCTION_34_8(v49, v50, v51, v52, v53, v54, v55, v56, v182, v183);
        OUTLINED_FUNCTION_40_11(v57, v58, v59, v60, v61, v62, v63, v64);
        OUTLINED_FUNCTION_39_14();
        *(a2 + 4) = 0xEC000000656E6F68;
        v67 = "#%s Speakerphone specified in intent";
LABEL_33:
        OUTLINED_FUNCTION_21_15(&dword_0, v65, v66, v67);
        __swift_destroy_boxed_opaque_existential_1(a1);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      goto LABEL_34;
  }

  switch(v18)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_6_37();
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v68 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_29;
    case 4:
LABEL_44:
      if (!BYTE4(v183))
      {
        if (v183)
        {
          OUTLINED_FUNCTION_11_8();
          if (!v21)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v134 = type metadata accessor for Logger();
          v135 = OUTLINED_FUNCTION_12_1(v134, static Logger.siriPhone);
          static os_log_type_t.debug.getter();
          v136 = OUTLINED_FUNCTION_4_29();
          if (!os_log_type_enabled(v136, v137))
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_49_3();
          *a2 = 136315138;
          v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
          v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
          v146 = OUTLINED_FUNCTION_34_8(v138, v139, v140, v141, v142, v143, v144, v145, v182, v183);
          OUTLINED_FUNCTION_40_11(v146, v147, v148, v149, v150, v151, v152, v153);
          OUTLINED_FUNCTION_39_14();
          *(a2 + 4) = 0xEC000000656E6F68;
          v156 = "#%s HeySiriAudioRoute: User used HS for this request or the initial request";
          goto LABEL_68;
        }

LABEL_63:
        v157 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v158 = OUTLINED_FUNCTION_40_0();
        v159(v158, v157);
        __swift_project_boxed_opaque_existential_1(v184, v185);
        v160 = OUTLINED_FUNCTION_19_0();
        v162 = DeviceState.isTriggerlessFollowup.getter(v160, v161);
        __swift_destroy_boxed_opaque_existential_1(v184);
        if ((v162 & 1) == 0)
        {
          v39 = 0;
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_11_8();
        if (!v21)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v163 = type metadata accessor for Logger();
        v135 = OUTLINED_FUNCTION_12_1(v163, static Logger.siriPhone);
        static os_log_type_t.debug.getter();
        v164 = OUTLINED_FUNCTION_4_29();
        if (!os_log_type_enabled(v164, v165))
        {
LABEL_69:

          v39 = _INCallAudioRouteHeySiriAudioRoute;
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_49_3();
        *a2 = 136315138;
        v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v174 = OUTLINED_FUNCTION_34_8(v166, v167, v168, v169, v170, v171, v172, v173, v182, v183);
        OUTLINED_FUNCTION_40_11(v174, v175, v176, v177, v178, v179, v180, v181);
        OUTLINED_FUNCTION_39_14();
        *(a2 + 4) = v40;
        v156 = "#%s Triggerless follow-up to call announcement: Using HeySiriAudioRoute instead of default to force audio route to headphones w/o IED.";
LABEL_68:
        OUTLINED_FUNCTION_21_15(&dword_0, v154, v155, v156);
        __swift_destroy_boxed_opaque_existential_1(a1);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();

        goto LABEL_69;
      }

      v40 = v183;
      if (BYTE4(v183) != 1 || !v183)
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_11_8();
      if (!v21)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      v46 = OUTLINED_FUNCTION_12_1(v108, static Logger.siriPhone);
      static os_log_type_t.debug.getter();
      v109 = OUTLINED_FUNCTION_4_29();
      if (os_log_type_enabled(v109, v110))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_49_3();
        *a2 = 136315138;
        v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v119 = OUTLINED_FUNCTION_34_8(v111, v112, v113, v114, v115, v116, v117, v118, v182, v183);
        OUTLINED_FUNCTION_40_11(v119, v120, v121, v122, v123, v124, v125, v126);
        OUTLINED_FUNCTION_39_14();
        *(a2 + 4) = v40;
        v67 = "#%s Speakerphone AudioRoute: User used HS for this request or the initial request";
        goto LABEL_33;
      }

LABEL_34:

      v39 = 1;
LABEL_35:
      OUTLINED_FUNCTION_11_8();
      if (!v21)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      v89 = OUTLINED_FUNCTION_12_1(v88, static Logger.siriPhone);
      static os_log_type_t.debug.getter();
      v90 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v184[0] = swift_slowAlloc();
        *v92 = 136315394;
        v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v101 = OUTLINED_FUNCTION_34_8(v93, v94, v95, v96, v97, v98, v99, v100, v182, v183);
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v184);

        *(v92 + 4) = v103;
        *(v92 + 12) = 2080;
        if (!v39)
        {
          v106 = 0xE700000000000000;
          v107 = 0x4E574F4E4B4E55;
LABEL_56:
          v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v106, v184);

          *(v92 + 14) = v130;
          OUTLINED_FUNCTION_50_10(&dword_0, v131, v132, "#%s --> %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_8();

          OUTLINED_FUNCTION_5_39();

          goto LABEL_57;
        }

        BackingType = INCallAudioRouteGetBackingType();
        switch(BackingType)
        {
          case 4:
            v105 = @"HEY_SIRI_AUDIO_ROUTE";
            break;
          case 3:
            v105 = @"BLUETOOTH_AUDIO_ROUTE";
            break;
          case 2:
            v105 = @"SPEAKERPHONE_AUDIO_ROUTE";
            break;
          default:
            v105 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
            goto LABEL_55;
        }

        v127 = v105;
LABEL_55:
        v128 = v105;
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v129;

        goto LABEL_56;
      }

LABEL_57:

      return v39;
    default:

LABEL_29:
      OUTLINED_FUNCTION_8_39();
      if (!v21)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      v46 = OUTLINED_FUNCTION_12_1(v69, static Logger.siriPhone);
      static os_log_type_t.debug.getter();
      v70 = OUTLINED_FUNCTION_4_29();
      if (!os_log_type_enabled(v70, v71))
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_49_3();
      *a2 = 136315138;
      v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
      v80 = OUTLINED_FUNCTION_34_8(v72, v73, v74, v75, v76, v77, v78, v79, v182, v183);
      OUTLINED_FUNCTION_40_11(v80, v81, v82, v83, v84, v85, v86, v87);
      OUTLINED_FUNCTION_39_14();
      *(a2 + 4) = 0xEC000000656E6F68;
      v67 = "#%s Speakerphone is specified in the initial request";
      goto LABEL_33;
  }
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStarteS0C_Tt1t4g5(void *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = PhoneCallNLIntent.isEmergencyCall()();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v86);
  v85 = _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE012VoiceTriggerkL8Behavior33_416F2237FA2027A36B62186071826756LLO3for011isEmergencyE6Intent13sharedGlobalsAJyAdE_pAG_Gqd__m_SbAD06SharedY9Providing_ptcSo8INIntentCRbd__lufCSo07INStarteW0C_Ttt2g5(v6, v86);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 8))(v86, v7, v8);
  __swift_project_boxed_opaque_existential_1(v86, v87);
  if (DeviceState.isVoiceTrigger.getter())
  {
    v9 = 1;
  }

  else if (a3 && (v10 = [a3 _metadata]) != 0)
  {
    v11 = v10;
    v12 = [v10 triggerMethod];

    v9 = v12 == 30;
  }

  else
  {
    v9 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 152))(v86, v13, v14);
  v15 = v87;
  v16 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v17 = (*(v16 + 24))(v15, v16);
  if (v17)
  {
    v18 = (*(*v17 + 104))(v17);
  }

  else
  {
    v18 = 4;
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  if ((*(v20 + 112))(v19, v20))
  {
    if (CurrentRequest.isInAmbient.getter())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.siriPhone);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v86[0] = v25;
        *v24 = 136315138;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v86);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_0, v22, v23, "#%s Request is made in ambient mode. Routing to HS audio route.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
      }

      v29 = _INCallAudioRouteHeySiriAudioRoute;

      goto LABEL_34;
    }
  }

  v84 = v9;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  switch((*(v31 + 48))(v30, v31))
  {
    case 1u:
    case 2u:
    case 3u:
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_21;
      }

      break;
    case 4u:
      break;
    default:

LABEL_21:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.siriPhone);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v86[0] = v37;
        *v36 = 136315138;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v38 = String.init<A>(describing:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v86);

        *(v36 + 4) = v40;
        v41 = "#%s Speakerphone specified in intent";
LABEL_32:
        _os_log_impl(&dword_0, v34, v35, v41, v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      goto LABEL_33;
  }

  switch(v18)
  {
    case 1:
    case 2:
    case 3:
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_28;
    case 4:
LABEL_43:
      if (v85 != 1)
      {
        if (!v85 && v84)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          __swift_project_value_buffer(v58, static Logger.siriPhone);
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v59, v60))
          {
            goto LABEL_68;
          }

          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v86[0] = v62;
          *v61 = 136315138;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
          v63 = String.init<A>(describing:)();
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v86);

          *(v61 + 4) = v65;
          v66 = "#%s HeySiriAudioRoute: User used HS for this request or the initial request";
          goto LABEL_67;
        }

LABEL_62:
        v76 = a2[3];
        v77 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v76);
        (*(v77 + 8))(v86, v76, v77);
        v78 = v87;
        v79 = v88;
        __swift_project_boxed_opaque_existential_1(v86, v87);
        LOBYTE(v78) = DeviceState.isTriggerlessFollowup.getter(v78, v79);
        __swift_destroy_boxed_opaque_existential_1(v86);
        if ((v78 & 1) == 0)
        {
          v29 = 0;
          goto LABEL_34;
        }

        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, static Logger.siriPhone);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v59, v60))
        {
LABEL_68:

          v29 = _INCallAudioRouteHeySiriAudioRoute;
          goto LABEL_34;
        }

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v86[0] = v62;
        *v61 = 136315138;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v81 = String.init<A>(describing:)();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v86);

        *(v61 + 4) = v83;
        v66 = "#%s Triggerless follow-up to call announcement: Using HeySiriAudioRoute instead of default to force audio route to headphones w/o IED.";
LABEL_67:
        _os_log_impl(&dword_0, v59, v60, v66, v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);

        goto LABEL_68;
      }

      if (!v84)
      {
        goto LABEL_62;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.siriPhone);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v86[0] = v37;
        *v36 = 136315138;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v73 = String.init<A>(describing:)();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v86);

        *(v36 + 4) = v75;
        v41 = "#%s Speakerphone AudioRoute: User used HS for this request or the initial request";
        goto LABEL_32;
      }

LABEL_33:

      v29 = 1;
LABEL_34:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.siriPhone);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v50 = 136315394;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v51 = String.init<A>(describing:)();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v86);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2080;
        if (!v29)
        {
          v56 = 0xE700000000000000;
          v57 = 0x4E574F4E4B4E55;
LABEL_55:
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v86);

          *(v50 + 14) = v70;
          _os_log_impl(&dword_0, v48, v49, "#%s --> %s", v50, 0x16u);
          swift_arrayDestroy();

          goto LABEL_56;
        }

        BackingType = INCallAudioRouteGetBackingType();
        switch(BackingType)
        {
          case 4:
            v55 = @"HEY_SIRI_AUDIO_ROUTE";
            break;
          case 3:
            v55 = @"BLUETOOTH_AUDIO_ROUTE";
            break;
          case 2:
            v55 = @"SPEAKERPHONE_AUDIO_ROUTE";
            break;
          default:
            v55 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
            goto LABEL_54;
        }

        v67 = v55;
LABEL_54:
        v68 = v55;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v69;

        goto LABEL_55;
      }

LABEL_56:

      return v29;
    default:

LABEL_28:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.siriPhone);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_33;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v86[0] = v37;
      *v36 = 136315138;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v86);

      *(v36 + 4) = v46;
      v41 = "#%s Speakerphone is specified in the initial request";
      goto LABEL_32;
  }
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStartkeS0C_Tt1t4g5Tm(void *a1, void *a2, void *a3)
{
  OUTLINED_FUNCTION_86(a1);
  PhoneCallNLIntent.isEmergencyCall()();
  v6 = a2[3];
  v7 = a2[4];
  v8 = (v7 + 8);
  v114 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v115 = *(v7 + 8);
  v115(v117, v6, v7);
  OUTLINED_FUNCTION_86(v117);
  if ((DeviceState.isVoiceTrigger.getter() & 1) == 0)
  {
    v9 = [a3 _metadata];
    [v9 triggerMethod];
  }

  __swift_destroy_boxed_opaque_existential_1(v117);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = OUTLINED_FUNCTION_40_0();
  v12(v11, v10);
  v13 = v119;
  __swift_project_boxed_opaque_existential_1(v117, v118);
  v14 = OUTLINED_FUNCTION_40_0();
  if (v15(v14, v13))
  {
    OUTLINED_FUNCTION_24_2();
    v17 = (*(v16 + 104))();
  }

  else
  {
    v17 = 4;
  }

  __swift_destroy_boxed_opaque_existential_1(v117);
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = OUTLINED_FUNCTION_40_0();
  if (v21(v20, v19))
  {
    if (CurrentRequest.isInAmbient.getter())
    {
      OUTLINED_FUNCTION_11_8();
      if (!v22)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      v24 = OUTLINED_FUNCTION_12_1(v23, static Logger.siriPhone);
      static os_log_type_t.debug.getter();
      v25 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_25_15();
        OUTLINED_FUNCTION_45_8();
        *v18 = 136315138;
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v28 = OUTLINED_FUNCTION_38_10(v27);
        OUTLINED_FUNCTION_52_8(v28, v29, v30, v31, v32, v33, v34, v35, v109, v110, v111, v112, v114, v115, v116);
        OUTLINED_FUNCTION_113_0();
        *(v18 + 4) = a1;
        OUTLINED_FUNCTION_22_11(&dword_0, v36, v37, "#%s Request is made in ambient mode. Routing to HS audio route.");
        __swift_destroy_boxed_opaque_existential_1((v7 + 8));
        OUTLINED_FUNCTION_5_39();

        OUTLINED_FUNCTION_8();
      }

      v38 = _INCallAudioRouteHeySiriAudioRoute;

      goto LABEL_31;
    }
  }

  v113 = v7;
  v39 = 0x746F6F7465756C62;
  v41 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  switch((*(v40 + 48))(v41, v40))
  {
    case 1u:
    case 2u:
      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_17_18();
LABEL_17:
      OUTLINED_FUNCTION_6_37();
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v42)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    case 4u:
LABEL_22:
      switch(v17)
      {
        case 1:
        case 2:
        case 3:
          OUTLINED_FUNCTION_6_37();
          OUTLINED_FUNCTION_94_0();
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_25;
        case 4:
LABEL_40:
          v115(v117, v6, v113);
          __swift_project_boxed_opaque_existential_1(v117, v118);
          v84 = OUTLINED_FUNCTION_19_0();
          v86 = DeviceState.isTriggerlessFollowup.getter(v84, v85);
          __swift_destroy_boxed_opaque_existential_1(v117);
          if (v86)
          {
            OUTLINED_FUNCTION_8_39();
            if (!v22)
            {
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v87 = type metadata accessor for Logger();
            v88 = OUTLINED_FUNCTION_12_1(v87, static Logger.siriPhone);
            static os_log_type_t.debug.getter();
            v89 = OUTLINED_FUNCTION_10_6();
            if (os_log_type_enabled(v89, v90))
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_25_15();
              OUTLINED_FUNCTION_45_8();
              *v86 = 136315138;
              v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
              v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
              v92 = OUTLINED_FUNCTION_38_10(v91);
              OUTLINED_FUNCTION_52_8(v92, v93, v94, v95, v96, v97, v98, v99, v109, v110, v6, v113, v114, v115, v116);
              OUTLINED_FUNCTION_113_0();
              *(v86 + 4) = "not_speakerphone";
              OUTLINED_FUNCTION_22_11(&dword_0, v100, v101, "#%s Triggerless follow-up to call announcement: Using HeySiriAudioRoute instead of default to force audio route to headphones w/o IED.");
              __swift_destroy_boxed_opaque_existential_1(v8);
              OUTLINED_FUNCTION_5_39();

              OUTLINED_FUNCTION_8();
            }

            v38 = _INCallAudioRouteHeySiriAudioRoute;
          }

          else
          {
            v38 = 0;
          }

          goto LABEL_31;
        default:

LABEL_25:
          OUTLINED_FUNCTION_8_39();
          if (!v22)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v59 = type metadata accessor for Logger();
          v44 = OUTLINED_FUNCTION_12_1(v59, static Logger.siriPhone);
          static os_log_type_t.debug.getter();
          v60 = OUTLINED_FUNCTION_10_6();
          if (!os_log_type_enabled(v60, v61))
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_25_15();
          OUTLINED_FUNCTION_45_8();
          *v39 = 136315138;
          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
          v63 = OUTLINED_FUNCTION_38_10(v62);
          OUTLINED_FUNCTION_52_8(v63, v64, v65, v66, v67, v68, v69, v70, v109, v110, v6, v113, v114, v115, v116);
          OUTLINED_FUNCTION_113_0();
          *(v39 + 4) = "not_speakerphone";
          v58 = "#%s Speakerphone is specified in the initial request";
          break;
      }

      goto LABEL_29;
    default:

LABEL_18:
      OUTLINED_FUNCTION_8_39();
      if (!v22)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      v44 = OUTLINED_FUNCTION_12_1(v43, static Logger.siriPhone);
      static os_log_type_t.debug.getter();
      v45 = OUTLINED_FUNCTION_10_6();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_25_15();
      OUTLINED_FUNCTION_45_8();
      MEMORY[0x746F6F7465756C62] = 136315138;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
      v48 = OUTLINED_FUNCTION_38_10(v47);
      OUTLINED_FUNCTION_52_8(v48, v49, v50, v51, v52, v53, v54, v55, v109, v110, v6, v113, v114, v115, v116);
      OUTLINED_FUNCTION_113_0();
      MEMORY[0x746F6F7465756C66] = "not_speakerphone";
      v58 = "#%s Speakerphone specified in intent";
LABEL_29:
      OUTLINED_FUNCTION_22_11(&dword_0, v56, v57, v58);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_8();

LABEL_30:

      v38 = 1;
      break;
  }

LABEL_31:
  OUTLINED_FUNCTION_11_8();
  if (!v22)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  v72 = OUTLINED_FUNCTION_12_1(v71, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  v73 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v75 = 136315394;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
    v77 = OUTLINED_FUNCTION_38_10(v76);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v117);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    if (!v38)
    {
      v82 = 0xE700000000000000;
      v83 = 0x4E574F4E4B4E55;
LABEL_52:
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v82, v117);

      *(v75 + 14) = v105;
      OUTLINED_FUNCTION_50_10(&dword_0, v106, v107, "#%s --> %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_5_39();

      goto LABEL_53;
    }

    BackingType = INCallAudioRouteGetBackingType();
    switch(BackingType)
    {
      case 4:
        v81 = @"HEY_SIRI_AUDIO_ROUTE";
        break;
      case 3:
        v81 = @"BLUETOOTH_AUDIO_ROUTE";
        break;
      case 2:
        v81 = @"SPEAKERPHONE_AUDIO_ROUTE";
        break;
      default:
        v81 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_51;
    }

    v102 = v81;
LABEL_51:
    v103 = v81;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v104;

    goto LABEL_52;
  }

LABEL_53:

  return v38;
}

uint64_t EmergencyDuringOngoingCallOfferFlow.State.description.getter()
{
  v1 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(v0, v0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 2, v1);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0x74656C706D6F632ELL;
    }
  }

  else
  {
    (*(v3 + 32))(v7, v0, v1);
    lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v11 = 0x65726577736E612ELL;
    (*(v3 + 8))(v7, v1);
  }

  return v11;
}

uint64_t outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static EmergencyDuringOngoingCallOfferFlow.State.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C5StateO_AEtMd, &_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C5StateO_AEtMR);
  OUTLINED_FUNCTION_21(v17);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_73();
  v20 = *(v19 + 56);
  outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(a1, v2);
  outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(a2, v2 + v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 2, v5);
  if (!EnumTagSinglePayload)
  {
    outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(v2, v16);
    if (!OUTLINED_FUNCTION_35_8())
    {
      (*(v7 + 32))(v11, v2 + v20, v5);
      v22 = static ConfirmationResponse.== infix(_:_:)();
      v24 = *(v7 + 8);
      v24(v11, v5);
      v24(v16, v5);
      outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v2);
      return v22 & 1;
    }

    (*(v7 + 8))(v16, v5);
    goto LABEL_9;
  }

  if (EnumTagSinglePayload == 1)
  {
    if (OUTLINED_FUNCTION_35_8() != 1)
    {
      goto LABEL_9;
    }
  }

  else if (OUTLINED_FUNCTION_35_8() != 2)
  {
LABEL_9:
    outlined destroy of SpeakableString?(v2, &_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C5StateO_AEtMd, &_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C5StateO_AEtMR);
    v22 = 0;
    return v22 & 1;
  }

  outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v2);
  v22 = 1;
  return v22 & 1;
}

uint64_t outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path setter for EmergencyDuringOngoingCallOfferFlow.state : EmergencyDuringOngoingCallOfferFlow(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(a1, v4);
  return EmergencyDuringOngoingCallOfferFlow.state.setter(v4);
}

void EmergencyDuringOngoingCallOfferFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);

  v16 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_state;
    swift_beginAccess();
    outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(v1 + v9, v4);
    v10 = EmergencyDuringOngoingCallOfferFlow.State.description.getter();
    v12 = v11;
    outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v4);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v16, v6, "#EmergencyDuringOngoingCallOfferFlow transitioning to state = %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t EmergencyDuringOngoingCallOfferFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_state;
  swift_beginAccess();
  return outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(v1 + v3, a1);
}

uint64_t EmergencyDuringOngoingCallOfferFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_state;
  swift_beginAccess();
  outlined assign with copy of EmergencyDuringOngoingCallOfferFlow.State(a1, v1 + v3);
  swift_endAccess();
  EmergencyDuringOngoingCallOfferFlow.state.didset();
  return outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(a1);
}

void EmergencyDuringOngoingCallOfferFlow.__allocating_init(emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)()
{
  OUTLINED_FUNCTION_66();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = *(v13 + 24);
  v14 = *(v13 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v15);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17);
  specialized EmergencyDuringOngoingCallOfferFlow.__allocating_init(emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)(v12, v10, v8, v6, v4, v2, v19, v22, v15, v14);
  v21 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_65();
}

void EmergencyDuringOngoingCallOfferFlow.__allocating_init(state:emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v23 = v3;
  v24 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = swift_allocObject();
  v17 = *(v2 + 24);
  v16 = *(v2 + 32);
  v18 = OUTLINED_FUNCTION_94_0();
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  (*(v21 + 16))(v0);
  specialized EmergencyDuringOngoingCallOfferFlow.init(state:emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)(v14, v12, v10, v8, v6, v23, v24, v0, v15, v17, v16);
  v22 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_65();
}

void EmergencyDuringOngoingCallOfferFlow.init(state:emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)()
{
  OUTLINED_FUNCTION_66();
  v22 = v1;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = *(v13 + 24);
  v14 = *(v13 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v15);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17);
  specialized EmergencyDuringOngoingCallOfferFlow.init(state:emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)(v12, v10, v8, v6, v4, v22, v23, v19, v0, v15, v14);
  v21 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_65();
}

uint64_t EmergencyDuringOngoingCallOfferFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in EmergencyDuringOngoingCallOfferFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = type metadata accessor for ExecuteResponse();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v12 = (*(*a6 + 176) + **(*a6 + 176));
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = closure #1 in EmergencyDuringOngoingCallOfferFlow.execute(completion:);

  return v12(v9);
}

uint64_t closure #1 in EmergencyDuringOngoingCallOfferFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(closure #1 in EmergencyDuringOngoingCallOfferFlow.execute(completion:), 0, 0);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t EmergencyDuringOngoingCallOfferFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[20] = v2;
  v1[21] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v1[22] = swift_task_alloc();
  v4 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  OUTLINED_FUNCTION_21(v4);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(EmergencyDuringOngoingCallOfferFlow.execute(), 0, 0);
}

{
  v1 = v0[21];
  OUTLINED_FUNCTION_2_0();
  (*(v2 + 128))();
  type metadata accessor for ConfirmationResponse();
  v3 = OUTLINED_FUNCTION_40_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 2, v1);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v5 = v0[21];
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      v8 = (v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals);
      v9 = *(v5 + 32);
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals, (v0 + 8));
      type metadata accessor for StartCallCATs(0);
      outlined copy of EmergencyDuringOngoingCallPromptType(v6, v7, v9);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_46_9();
      CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for OngoingCallCATs(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_46_9();
      CATWrapper.__allocating_init(options:globals:)();
      v10 = OUTLINED_FUNCTION_47_4();
      type metadata accessor for StartCallCATsSimple(v10);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_46_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for OngoingCallCATsSimple(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_46_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      OUTLINED_FUNCTION_88();
      type metadata accessor for EmergencyDuringOngoingCallConfirmationStrategy();
      swift_allocObject();
      EmergencyDuringOngoingCallConfirmationStrategy.init(type:sharedGlobals:startCallCats:ongoingCallCats:startCallCATsSimple:ongoingCallCATsSimple:)();
      v11 = v8[3];
      v12 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v11);
      v13 = *(v12 + 16);

      v13(v11, v12);
      v14 = v0[5];
      v15 = v0[7];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
      v0[16] = v14;
      v0[17] = v15;
      __swift_allocate_boxed_opaque_existential_1(v0 + 13);
      OUTLINED_FUNCTION_40();
      (*(v16 + 16))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
      swift_allocObject();
      lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(&lazy protocol witness table cache variable for type EmergencyDuringOngoingCallConfirmationStrategy and conformance EmergencyDuringOngoingCallConfirmationStrategy, type metadata accessor for EmergencyDuringOngoingCallConfirmationStrategy, &protocol conformance descriptor for EmergencyDuringOngoingCallConfirmationStrategy);
      v17 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      v0[19] = v17;
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_8:

      goto LABEL_11;
    }
  }

  else
  {
    outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(v0[24], v0[23]);
    v18 = *(v1 - 8);
    v19 = OUTLINED_FUNCTION_19_0();
    v21 = v20(v19);
    if (v21 == enum case for ConfirmationResponse.confirmed(_:))
    {
      EmergencyDuringOngoingCallOfferFlow.chooseNextFlowForComplete()();
      static ExecuteResponse.complete(next:)();
      goto LABEL_8;
    }

    if (v21 == enum case for ConfirmationResponse.rejected(_:))
    {
      v0[18] = EmergencyDuringOngoingCallOfferFlow.makePromptCancelledOutputFlow()();
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
      goto LABEL_8;
    }

    (*(v18 + 8))(v0[23], v1);
  }

  static ExecuteResponse.complete()();
LABEL_11:
  outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v0[24]);

  OUTLINED_FUNCTION_11();

  return v22();
}

void EmergencyDuringOngoingCallOfferFlow.onPromptComplete(_:)()
{
  OUTLINED_FUNCTION_66();
  v59 = v0;
  v1 = OUTLINED_FUNCTION_88();
  v2 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(v1);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_7();
  v57 = v12;
  __chkstk_darwin(v13);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = &v56 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for SimpleConfirmationResponseProvider();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  v27 = OUTLINED_FUNCTION_19_0();
  v28(v27);
  v29 = OUTLINED_FUNCTION_94_0();
  if (v30(v29) != enum case for PromptResult.answered<A>(_:))
  {
    v35 = OUTLINED_FUNCTION_94_0();
    v36(v35);
    goto LABEL_5;
  }

  v31 = OUTLINED_FUNCTION_94_0();
  v32(v31);
  (*(v22 + 32))(v26, v19, v20);
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v33 = OUTLINED_FUNCTION_29_16();
    v34(v33);
    outlined destroy of SpeakableString?(v10, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_5:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "#EmergencyDuringOngoingCallOfferFlow Did not receive .answered from child confirmation flow", v40, 2u);
      OUTLINED_FUNCTION_5_39();
    }

    OUTLINED_FUNCTION_27_12(v6, 2);
    goto LABEL_10;
  }

  v42 = v56;
  v41 = v57;
  (*(v57 + 32))(v56, v10, v11);
  v43 = v58;
  v44 = OUTLINED_FUNCTION_94_0();
  v45(v44);
  v46 = (*(v41 + 88))(v43, v11);
  if (v46 == enum case for ConfirmationResponse.confirmed(_:) || v46 == enum case for ConfirmationResponse.rejected(_:))
  {
    (*(v41 + 104))(v6, v46, v11);
    OUTLINED_FUNCTION_27_12(v6, 0);
    (*(v41 + 8))(v42, v11);
    v47 = OUTLINED_FUNCTION_29_16();
    v48(v47);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.siriPhone);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, v50, v51, "#EmergencyDuringOngoingCallOfferFlow Received an unknown ConfirmationResponse", v52, 2u);
      OUTLINED_FUNCTION_8();
    }

    OUTLINED_FUNCTION_27_12(v6, 2);
    v53 = *(v41 + 8);
    v53(v42, v11);
    v54 = OUTLINED_FUNCTION_29_16();
    v55(v54);
    v53(v58, v11);
  }

LABEL_10:
  OUTLINED_FUNCTION_65();
}

uint64_t EmergencyDuringOngoingCallOfferFlow.makePromptCancelledOutputFlow()()
{
  v1 = type metadata accessor for DialogPhase();
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for CATOption();
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_73();
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals;
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v0 + v5, v9);
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  OUTLINED_FUNCTION_24_2();
  v7 = (*(v6 + 112))();

  return v7;
}

void EmergencyDuringOngoingCallOfferFlow.chooseNextFlowForComplete()()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals, v76);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  v73 = &type metadata for PhoneCallFeatureFlags;
  v74 = &protocol witness table for PhoneCallFeatureFlags;
  *&v72 = swift_allocObject();
  memcpy((v72 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v72, v75);
  outlined init with copy of PhoneCallFeatureFlags(__dst, v70);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v3 = OUTLINED_FUNCTION_7_1();
  v5 = v4(v3);
  v6 = v71;
  v14 = OUTLINED_FUNCTION_44_7(v5, v7, v8, v9, v10, v11, v12, v13, v68, v70[0]);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  OUTLINED_FUNCTION_7_1();
  v16 = dispatch thunk of DeviceState.isMac.getter();
  if (v16)
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v24 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    v6 = v71;
    v25 = OUTLINED_FUNCTION_44_7(v16, v17, v18, v19, v20, v21, v22, v23, v69, v70[0]);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    OUTLINED_FUNCTION_7_1();
    v27 = dispatch thunk of DeviceState.isWatch.getter();
    if (v27)
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v24 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      v6 = v71;
      v35 = OUTLINED_FUNCTION_44_7(v27, v28, v29, v30, v31, v32, v33, v34, v69, v70[0]);
      __swift_project_boxed_opaque_existential_1(v35, v36);
      OUTLINED_FUNCTION_7_1();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v24 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v24 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v37 = *v24;

  __swift_destroy_boxed_opaque_existential_1(v70);
  type metadata accessor for StartCallRCHFlowDelegate(0);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v2, v70);

  v46 = OUTLINED_FUNCTION_44_7(v38, v39, v40, v41, v42, v43, v44, v45, v69, v70[0]);
  v48 = StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(v46, v47);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.siriPhone);
  v50 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v51 = OUTLINED_FUNCTION_4_29();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v50, v6, "#EmergencyDuringOngoingCallOfferFlow choosing next flow", v53, 2u);
    OUTLINED_FUNCTION_8();
  }

  v55 = *(v1 + 16);
  v54 = *(v1 + 24);
  if (!*(v1 + 32))
  {
    v60 = *(v1 + 40);
    v61 = v55;
    v62 = EmergencyDuringOngoingCallOfferFlow.makeEmergencyStartCallIntent(localEmergencyPerson:previousIntent:)(v55, v60);
    *v70 = OngoingCallRCHFlowFactory.makePreConfirmedRCHFlow(delegate:intent:app:)(v48, v62, v37);
    v63 = OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
    OUTLINED_FUNCTION_13_28(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INStartCallIntent, INStartCallIntentResponse>> and conformance AnyValueFlow<A>);
    Flow.eraseToAnyFlow()();

    outlined consume of EmergencyDuringOngoingCallPromptType(v55, v54, 0);

LABEL_27:

    goto LABEL_28;
  }

  if (*(v1 + 32) != 1)
  {
    v65 = EmergencyDuringOngoingCallOfferFlow.makeEmergencyStartCallIntent(localEmergencyPerson:previousIntent:)(0, *(v1 + 40));
    *v70 = OngoingCallRCHFlowFactory.makePreConfirmedRCHFlow(delegate:intent:app:)(v48, v65, v37);
    v66 = OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
    OUTLINED_FUNCTION_13_28(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INStartCallIntent, INStartCallIntentResponse>> and conformance AnyValueFlow<A>);
    Flow.eraseToAnyFlow()();

    goto LABEL_27;
  }

  v56 = v55;
  v57 = v54;
  *v70 = OngoingCallRCHFlowFactory.makeHandleIntentFlow(app:intent:intentResponse:)(v37, v56, v57);
  v58 = OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyHandleIntentFlow<INStartCallIntent, INStartCallIntentResponse> and conformance AnyHandleIntentFlow<A, B>, &_s11SiriKitFlow015AnyHandleIntentC0CySo011INStartCallF0CSo0ghF8ResponseCGMd, &_s11SiriKitFlow015AnyHandleIntentC0CySo011INStartCallF0CSo0ghF8ResponseCGMR, &protocol conformance descriptor for AnyHandleIntentFlow<A, B>);
  Flow.eraseToAnyFlow()();

LABEL_28:
  outlined destroy of OngoingCallRCHFlowFactory(v76);
  OUTLINED_FUNCTION_65();
}

id EmergencyDuringOngoingCallOfferFlow.makeEmergencyStartCallIntent(localEmergencyPerson:previousIntent:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals, &v23);
  v11 = swift_allocObject();
  outlined init with take of SPHConversation(&v23, v11 + 16);
  *(v11 + 56) = a2;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v13 = OUTLINED_FUNCTION_47_4();
  type metadata accessor for INCallAudioRoute(v13);
  Transformer.init(transform:)();
  v14 = Transformer.transform.getter();
  v24 = &type metadata for PhoneCallDirectInvocationNLIntent;
  v25 = &protocol witness table for PhoneCallDirectInvocationNLIntent;
  v15 = swift_allocObject();
  *&v23 = v15;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v15 + 56) = _swiftEmptyArrayStorage;
  *(v15 + 64) = 2;
  *(v15 + 72) = 0;
  *(v15 + 80) = 0x1123030901050204;
  *(v15 + 88) = 518;
  *(v15 + 96) = _swiftEmptyArrayStorage;
  *(v15 + 104) = _swiftEmptyArrayStorage;
  *(v15 + 112) = _swiftEmptyArrayStorage;
  v14(&v22, &v23);

  v16 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v23);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_426260;
    *(v17 + 32) = a1;
  }

  else
  {
    v17 = 0;
  }

  objc_allocWithZone(INStartCallIntent);
  v18 = a1;
  v19 = @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:)(0, 0, v16, 2, 1, v17, 0, 1);
  (*(v7 + 8))(v10, v5);
  return v19;
}

uint64_t EmergencyDuringOngoingCallOfferFlow.toAnyConfirmIntentFlow<A>()()
{
  OUTLINED_FUNCTION_88();
  type metadata accessor for AnyConfirmIntentFlow();
  v1 = OUTLINED_FUNCTION_47_4();
  type metadata accessor for EmergencyDuringOngoingCallOfferFlow.ConfirmIntentFlowAdapter(v1, v0, v2, v3);
  v4 = OUTLINED_FUNCTION_40_0();
  v15 = TrialSmartAppSelectionConfigProvider.__allocating_init(trialConfigSource:)(v4);

  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_49_8(WitnessTable, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  return AnyConfirmIntentFlow.__allocating_init<A>(_:)();
}

uint64_t EmergencyDuringOngoingCallOfferFlow.toAnyUnsupportedValueFlow<A>()()
{
  OUTLINED_FUNCTION_88();
  type metadata accessor for AnyUnsupportedValueFlow();
  v1 = OUTLINED_FUNCTION_47_4();
  type metadata accessor for EmergencyDuringOngoingCallOfferFlow.UnsupportedValueFlowAdapter(v1, v0, v2, v3);
  v4 = OUTLINED_FUNCTION_40_0();
  v15 = TrialSmartAppSelectionConfigProvider.__allocating_init(trialConfigSource:)(v4);

  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_49_8(WitnessTable, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  return AnyUnsupportedValueFlow.__allocating_init<A>(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance EmergencyDuringOngoingCallOfferFlow.ConfirmIntentFlowAdapter<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #2 in ActionableCallControlFlow.execute();

  return Flow.execute()(a1, a2, a3);
}

uint64_t EmergencyDuringOngoingCallOfferFlow.ConfirmIntentFlowAdapter.exitValue.getter@<X0>(uint64_t (*a1)(uint64_t, void)@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for PromptResult.cancelled<A>(_:);
  a1(255, *(*v2 + 80));
  type metadata accessor for PromptResult();
  OUTLINED_FUNCTION_40();
  v7 = *(v6 + 104);

  return v7(a2, v4, v5);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance EmergencyDuringOngoingCallOfferFlow.UnsupportedValueFlowAdapter<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance EmergencyDuringOngoingCallOfferFlow.UnsupportedValueFlowAdapter<A1>;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance EmergencyDuringOngoingCallOfferFlow.UnsupportedValueFlowAdapter<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #1 in ActionableCallControlFlow.execute();

  return Flow.execute()(a1, a2, a3);
}

uint64_t EmergencyDuringOngoingCallOfferFlow.deinit()
{
  outlined consume of EmergencyDuringOngoingCallPromptType(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_commonCatPatterns));
  return v0;
}

uint64_t EmergencyDuringOngoingCallOfferFlow.__deallocating_deinit()
{
  EmergencyDuringOngoingCallOfferFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance EmergencyDuringOngoingCallOfferFlow(uint64_t a1)
{
  v6 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance EmergencyDuringOngoingCallOfferFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStarteS0C_Tt1t4G5@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So07INStarteS0C_Tt1t4g5(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t specialized EmergencyDuringOngoingCallOfferFlow.__allocating_init(emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a6;
  v17 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v27[3] = a9;
  v27[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a7, a9);
  v21 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v19, 1, 2, v21);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a5, v26);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v27, v25);
  v22 = (*(a8 + 152))(v19, a1, a2, a3, a4, v26, v24, v25);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v22;
}

uint64_t specialized EmergencyDuringOngoingCallOfferFlow.init(state:emergencyPromptType:previousIntent:sharedGlobals:commonCats:commonCatPatterns:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a4;
  v37[3] = a10;
  v37[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a8, a10);
  outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(a1, a9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_state);
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = v15;
  *(a9 + 40) = a5;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a6, a9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals);
  *(a9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_commonCats) = a7;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v37, a9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_commonCatPatterns);
  outlined copy of EmergencyDuringOngoingCallPromptType(a2, a3, v15);
  v20 = one-time initialization token for siriPhone;
  v21 = a5;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  outlined copy of EmergencyDuringOngoingCallPromptType(a2, a3, v15);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  outlined consume of EmergencyDuringOngoingCallPromptType(a2, a3, v15);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = v21;
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    outlined copy of EmergencyDuringOngoingCallPromptType(a2, a3, v15);
    v33 = a6;
    v27 = EmergencyDuringOngoingCallPromptType.description.getter(a2, a3, v15);
    v35 = a1;
    v29 = v28;
    outlined consume of EmergencyDuringOngoingCallPromptType(a2, a3, v15);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "#EmergencyDuringOngoingCallOfferFlow initialized with promptType: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);

    outlined consume of EmergencyDuringOngoingCallPromptType(a2, a3, v15);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v31 = v35;
  }

  else
  {

    outlined consume of EmergencyDuringOngoingCallPromptType(a2, a3, v15);
    __swift_destroy_boxed_opaque_existential_1(a6);
    v31 = a1;
  }

  outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v31);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return a9;
}

uint64_t partial apply for closure #1 in EmergencyDuringOngoingCallOfferFlow.execute(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in EmergencyDuringOngoingCallOfferFlow.execute(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata completion function for EmergencyDuringOngoingCallOfferFlow(uint64_t a1)
{
  result = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(319);
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

uint64_t type metadata completion function for EmergencyDuringOngoingCallOfferFlow.State(uint64_t a1)
{
  v1 = type metadata accessor for ConfirmationResponse();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t outlined assign with copy of EmergencyDuringOngoingCallOfferFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_38_10(uint64_t a1)
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_39_14()
{
}

unint64_t OUTLINED_FUNCTION_40_11(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

void OUTLINED_FUNCTION_50_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t EmergencyDuringOngoingCallPromptType.description.getter(void *a1, void *a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(19);

    OUTLINED_FUNCTION_0_55();
    v22 = v17;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
    v19._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v19);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(31);

    OUTLINED_FUNCTION_0_55();
    v22 = v5 | 8;
    v6 = [a1 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 8236;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12 = [a2 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);
LABEL_5:

    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    return v22;
  }

  return 0xD000000000000011;
}

void *static EmergencyDuringOngoingCallPromptType.from(intent:intentResolutionResult:)(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_13;
    }

    v13 = [a2 unsupportedReason];
    if (_INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation != v13)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v4 = v3;
  v5 = [a2 unsupportedReason];
  if (v5 == &dword_4 + 2)
  {
    return 0;
  }

  if (v5 != &dword_4 + 1)
  {
LABEL_13:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#EmergencyDuringOngoingCallPromptType Intent and resolutionResult do not correspond to an emergency usecase.", v17, 2u);
    }

    return 0;
  }

  v6 = outlined bridged method (pb) of @objc INAddCallParticipantIntent.participants.getter(v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!specialized Array.count.getter(v6))
  {

    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = [v9 personHandle];
  if (v10)
  {
    v10 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v10);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v18 = specialized Optional<A>.isNilOrEmpty.getter(v10, v12);

  if (v18)
  {

    return 0;
  }

  return v9;
}

uint64_t outlined bridged method (pb) of @objc INAddCallParticipantIntent.participants.getter(void *a1)
{
  v1 = [a1 participants];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingB10PromptTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for EmergencyDuringOngoingCallPromptType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for EmergencyDuringOngoingCallPromptType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for EmergencyDuringOngoingCallPromptType(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t static CallEmergencyResourceDirectInvocation.invocation(for:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000000045B5A0;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  Dictionary.init(dictionaryLiteral:)();
  return Parse.DirectInvocation.init(identifier:userData:)();
}

void static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = &unk_548000;
  v7 = &unk_548000;
  while (v2 != v3)
  {
    if (v4)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_27;
      }

      v8 = *(v1 + 8 * v3 + 32);
    }

    v9 = v8;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v10 = [v8 personHandle];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 emergencyType];

      if (v12 == &dword_0 + 2)
      {
        v13 = 0;
        v25 = v1;
        while (v2 != v13)
        {
          if (v4)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *(v5 + 16))
            {
              goto LABEL_29;
            }

            v14 = *(v1 + 8 * v13 + 32);
          }

          v15 = v14;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_28;
          }

          v16 = [v14 v6[265]];
          if (v16)
          {
            v17 = v16;
            v18 = v2;
            v19 = v4;
            v20 = v5;
            v21 = v6;
            v22 = v7;
            v23 = [v16 v7[276]];

            v24 = v23 == &dword_0 + 1;
            v7 = v22;
            v6 = v21;
            v5 = v20;
            v4 = v19;
            v2 = v18;
            v1 = v25;
            if (v24)
            {
              return;
            }
          }

          else
          {
          }

          ++v13;
        }

        return;
      }
    }

    else
    {
    }

    ++v3;
  }
}

void static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v7 = [v5 personHandle];
    if (!v7)
    {

      return;
    }

    v8 = v7;
    v9 = [v7 emergencyType];

    v3 = v4 + 1;
  }

  while (v9 == &dword_0 + 1);
}

uint64_t static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(void *a1, void *a2)
{
  v3 = [a1 destinationType];
  v4 = [a2 shouldDoEmergencyCountdown];
  type metadata accessor for NSNumber();
  v5.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  if (v4)
  {
    v6 = static NSObject.== infix(_:_:)();

    v5.super.super.isa = v4;
  }

  else
  {
    v6 = 0;
  }

  return (v3 == &dword_0 + 2) | v6 & 1u;
}

uint64_t static EmergencyUtils.shouldConfirmEmergencyCallAsPrompt(intent:intentResponse:deviceState:)(void *a1, void *a2, uint64_t a3)
{
  if ((static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(a1);
}

id closure #1 in static EmergencyUtils.checkForEmergencyType(_:)(void *a1, id a2)
{
  result = [a1 personHandle];
  if (result)
  {
    v4 = result;
    v5 = [result emergencyType];

    return (v5 == a2);
  }

  return result;
}

uint64_t static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(void *a1)
{
  if ([a1 destinationType] == &dword_4)
  {
    return 1;
  }

  if ([a1 destinationType] == &dword_4 + 1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_56();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_56();
  if (dispatch thunk of DeviceState.isEyesFree.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_56();
  return dispatch thunk of DeviceState.isCarDNDMode.getter() & 1;
}

uint64_t static EmergencyUtils.shouldShowEmergencyCountdown(intent:intentResponse:deviceState:)(void *a1, void *a2)
{
  if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(a1, a2))
  {
    v3 = static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(a1) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
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

Swift::Bool __swiftcall EntitlementChecker.isEntitledToAnswerCallNotificationsFromBackground(appIdentifier:)(Swift::String appIdentifier)
{
  object = appIdentifier._object;
  countAndFlagsBits = appIdentifier._countAndFlagsBits;
  static Signpost.begin(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for RBSProcessPredicate, RBSProcessPredicate_ptr);
  OUTLINED_FUNCTION_5_40();
  v11 = @nonobjc RBSProcessPredicate.__allocating_init(matchingBundleIdentifier:)(countAndFlagsBits, object);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for RBSProcessHandle, RBSProcessHandle_ptr);
  v12 = v11;
  v13 = @nonobjc RBSProcessHandle.__allocating_init(for:)(v12);
  v22 = v13;
  if (!v13)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    OUTLINED_FUNCTION_5_40();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_62();
      *token.val = v17;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &token);
      OUTLINED_FUNCTION_1_9(&dword_0, v18, v19, "#EntitlementChecker: Could not find processHandle for App %s");
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_26_0(v6);

LABEL_8:
      Signpost.OpenSignpost.end()();

      return 0;
    }

LABEL_7:
    goto LABEL_8;
  }

  v83 = v8;
  [v13 auditToken];
  v23 = SecTaskCreateWithAuditToken(0, &token);
  if (!v23)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    OUTLINED_FUNCTION_5_40();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_62();
      *token.val = v40;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &token);
      OUTLINED_FUNCTION_1_9(&dword_0, v41, v42, "#EntitlementChecker: Could not create SecTask for App %s");
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_26_0(v40);
      OUTLINED_FUNCTION_26_0(v6);
    }

    goto LABEL_7;
  }

  v24 = v23;
  HIDWORD(v81) = v10;
  v82 = v6;
  *token.val = 0;
  v25 = String._bridgeToObjectiveC()();
  v26 = SecTaskCopyValueForEntitlement(v24, v25, &token);

  v80 = v4;
  if (!v26)
  {
    if (*token.val)
    {
      v79 = v24;
      v43 = one-time initialization token for siriPhone;
      v44 = *token.val;
      if (v43 != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);
      v46 = v44;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v86 = v50;
        *v49 = 136315394;
        *(v49 + 4) = OUTLINED_FUNCTION_4_30(v50, v51, v52, v53, v54, v55, v56, v57, v74, v75, v79, v80, v81, v82, v83, v84, v85);
        *(v49 + 12) = 2080;
        type metadata accessor for CFErrorRef(0);
        v58 = v46;
        v59 = String.init<A>(describing:)();
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v86);

        *(v49 + 14) = v61;
        _os_log_impl(&dword_0, v47, v48, "#EntitlementChecker: Could not get value for entitlement %s: %s", v49, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v50);
        OUTLINED_FUNCTION_26_0(v49);
      }

      else
      {
      }

      v24 = v79;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.siriPhone);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        swift_slowAlloc();
        v86 = OUTLINED_FUNCTION_62();
        dword_0 = 136315138;
        *&dword_4 = OUTLINED_FUNCTION_4_30(v86, v65, v66, v67, v68, v69, v70, v71, v74, v75, v77, v4, v81, v82, v83, v84, v85);
        OUTLINED_FUNCTION_1_9(&dword_0, v72, v73, "#EntitlementChecker: Missing value for entitlement %s");
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_26_0(v86);
        OUTLINED_FUNCTION_26_0(0);
      }
    }

    if (*token.val)
    {
    }

    goto LABEL_8;
  }

  v78 = v24;
  v27 = swift_unknownObjectRetain();
  v28 = CFEqual(v27, kCFBooleanTrue);
  v20 = v28 != 0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriPhone);
  OUTLINED_FUNCTION_5_40();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v28;
    v33 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v86 = v76;
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v86);
    *(v33 + 12) = 2080;
    if (v32)
    {
      v34 = 0;
    }

    else
    {
      v34 = 544501614;
    }

    if (v32)
    {
      v35 = 0xE000000000000000;
    }

    else
    {
      v35 = 0xE400000000000000;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v86);

    *(v33 + 14) = v36;
    _os_log_impl(&dword_0, v30, v31, "#EntitlementChecker: App %s is %sentitled to answer call notifications from background.", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v76);
    OUTLINED_FUNCTION_26_0(v33);
  }

  swift_unknownObjectRelease();
  if (*token.val)
  {
  }

  swift_unknownObjectRelease();
  Signpost.OpenSignpost.end()();

  return v20;
}

id @nonobjc RBSProcessPredicate.__allocating_init(matchingBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() predicateMatchingBundleIdentifier:v2];

  return v3;
}

id @nonobjc RBSProcessHandle.__allocating_init(for:)(void *a1)
{
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v6];
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

uint64_t static StartCallViewBuilders.makeSiriSettingsButton(templatingService:sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = [objc_allocWithZone(SAUIOpenLink) init];
  URL.init(string:)();
  v8 = type metadata accessor for URL();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setRef:v10];

  outlined init with copy of SignalProviding(a1, v16);
  *(a2 + 24) = &type metadata for ButtonBuilder;
  *(a2 + 32) = &protocol witness table for ButtonBuilder;
  OUTLINED_FUNCTION_70();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_2_52(v12);
  outlined init with take of SPHConversation(v16, v15);
  OUTLINED_FUNCTION_36_4();
  v13 = swift_allocObject();
  result = outlined init with take of SPHConversation(v15, v13 + 16);
  v12[2] = partial apply for implicit closure #2 in implicit closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:);
  v12[3] = v13;
  v12[4] = v7;
  return result;
}

uint64_t (*ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)(uint64_t a1, unint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      outlined init with copy of SignalProviding(a1, v32);
      OUTLINED_FUNCTION_102_0();
      v4 = swift_allocObject();
      OUTLINED_FUNCTION_6_38(v4, v5, v6, v7, v8, v9, v10, v11, v31, v32[0]);
      *(v2 + 56) = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = partial apply for closure #2 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:);
    }

    else
    {
      outlined init with copy of SignalProviding(a1, v32);
      OUTLINED_FUNCTION_36_4();
      v21 = swift_allocObject();
      OUTLINED_FUNCTION_6_38(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32[0]);
      v12 = implicit closure #2 in implicit closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
    }
  }

  else
  {
    outlined init with copy of SignalProviding(a1, v32);
    OUTLINED_FUNCTION_102_0();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_6_38(v13, v14, v15, v16, v17, v18, v19, v20, v31, v32[0]);
    *(v2 + 56) = a2;
    v12 = partial apply for closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:);
  }

  v29 = v12;
  outlined copy of ErrorButtonLabelOptions(a2);
  return v29;
}

uint64_t closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  return (*(v8 + 72))(a4, a1, a2, v7, v8);
}

uint64_t closure #2 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  return (*(v8 + 80))(a4, a1, a2, v7, v8);
}

uint64_t implicit closure #2 in implicit closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  return (*(v6 + 88))(a1, a2, v5, v6);
}

uint64_t static StartCallViewBuilders.makeErrorButtonBuilder(templatingService:app:intent:intentResponse:sharedGlobals:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#StartCallViewBuilders Providing ErrorButtonBuilder", v13, 2u);
  }

  v14 = App.isFirstParty()();
  if (!v14)
  {
    OUTLINED_FUNCTION_10_32(v14, v15, v16, v17, v18, v19, v20, v21, v105, v114);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v54 = OUTLINED_FUNCTION_8_40();
    *(a5 + 24) = &type metadata for ButtonBuilder;
    *(a5 + 32) = &protocol witness table for ButtonBuilder;
    OUTLINED_FUNCTION_70();
    v55 = swift_allocObject();
    v56 = OUTLINED_FUNCTION_2_52(v55);
    OUTLINED_FUNCTION_9_30(v56, v57, v58, v59, v60, v61, v62, v63, v108, v116, v119, v120, v121, v122[0]);
    OUTLINED_FUNCTION_102_0();
    v64 = swift_allocObject();
    OUTLINED_FUNCTION_4_31(v64, v65, v66, v67, v68, v69, v70, v71, v109);
    a4[7] = a1;
    v55[2] = closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
    v55[3] = a4;
    v55[4] = v54;
  }

  v22 = [a2 preferredCallProvider];
  v23 = a4[3];
  v24 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v23);
  (*(v24 + 8))(v122, v23, v24);
  v25 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(a1, v22, v122);
  v26 = __swift_destroy_boxed_opaque_existential_1(v122);
  if (!a3)
  {
    goto LABEL_11;
  }

  v26 = [a3 code];
  if (v26 == (&dword_4 + 2))
  {
    OUTLINED_FUNCTION_10_32(6, v27, v28, v29, v30, v31, v32, v33, v105, v114);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);

    v34 = OUTLINED_FUNCTION_8_40();
    *(a5 + 24) = &type metadata for ButtonBuilder;
    *(a5 + 32) = &protocol witness table for ButtonBuilder;
    OUTLINED_FUNCTION_70();
    v35 = swift_allocObject();
    v89 = OUTLINED_FUNCTION_2_52(v35);
    OUTLINED_FUNCTION_9_30(v89, v90, v91, v92, v93, v94, v95, v96, v112, v118, v119, v120, v121, v122[0]);
    OUTLINED_FUNCTION_102_0();
    v97 = swift_allocObject();
    OUTLINED_FUNCTION_4_31(v97, v98, v99, v100, v101, v102, v103, v104, v113);
    a4[7] = v25;

    v53 = closure #2 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
    goto LABEL_13;
  }

  if (v26 == &dword_8)
  {
    OUTLINED_FUNCTION_10_32(8, v27, v28, v29, v30, v31, v32, v33, v105, v114);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v34 = OUTLINED_FUNCTION_8_40();
    *(a5 + 24) = &type metadata for ButtonBuilder;
    *(a5 + 32) = &protocol witness table for ButtonBuilder;
    OUTLINED_FUNCTION_70();
    v35 = swift_allocObject();
    v36 = OUTLINED_FUNCTION_2_52(v35);
    OUTLINED_FUNCTION_9_30(v36, v37, v38, v39, v40, v41, v42, v43, v106, v115, v119, v120, v121, v122[0]);
    OUTLINED_FUNCTION_36_4();
    v44 = swift_allocObject();
    OUTLINED_FUNCTION_4_31(v44, v45, v46, v47, v48, v49, v50, v51, v107);

    v53 = implicit closure #2 in implicit closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_10_32(v26, v27, v28, v29, v30, v31, v32, v33, v105, v114);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);
    v72 = swift_retain_n();
    v34 = SAAppsLaunchApp.init(app:)(v72);
    *(a5 + 24) = &type metadata for ButtonBuilder;
    *(a5 + 32) = &protocol witness table for ButtonBuilder;
    OUTLINED_FUNCTION_70();
    v35 = swift_allocObject();
    v73 = OUTLINED_FUNCTION_2_52(v35);
    OUTLINED_FUNCTION_9_30(v73, v74, v75, v76, v77, v78, v79, v80, v110, v117, v119, v120, v121, v122[0]);
    OUTLINED_FUNCTION_102_0();
    v81 = swift_allocObject();
    OUTLINED_FUNCTION_4_31(v81, v82, v83, v84, v85, v86, v87, v88, v111);
    a4[7] = v25;

    v53 = closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
  }

LABEL_13:
  v35[2] = v53;
  v35[3] = a4;
  v35[4] = v34;
  return result;
}

uint64_t ButtonBuilder.init(label:templatingService:command:sharedGlobals:)@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)()@<X2>, __int128 *a4@<X3>, uint64_t (**a5)()@<X8>)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      outlined init with take of SPHConversation(a2, v37);
      OUTLINED_FUNCTION_102_0();
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_7_32(v10, v11, v12, v13, v14, v15, v16, v17, v36, v37[0]);
      *(v5 + 56) = a1 & 0x3FFFFFFFFFFFFFFFLL;
      v18 = closure #2 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
    }

    else
    {
      outlined init with take of SPHConversation(a2, v37);
      OUTLINED_FUNCTION_36_4();
      v27 = swift_allocObject();
      OUTLINED_FUNCTION_7_32(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37[0]);
      v18 = implicit closure #2 in implicit closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
    }
  }

  else
  {
    outlined init with take of SPHConversation(a2, v37);
    OUTLINED_FUNCTION_102_0();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_7_32(v19, v20, v21, v22, v23, v24, v25, v26, v36, v37[0]);
    *(v5 + 56) = a1;
    v18 = closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
  }

  *a5 = v18;
  a5[1] = v5;
  a5[2] = a3;
  return outlined init with take of SPHConversation(a4, (a5 + 3));
}

uint64_t static SCHViewBuilders.makeErrorButtonBuilder(templatingService:app:preferredCallProvider:sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#SCHViewBuilders Providing ErrorButtonBuilder", v13, 2u);
  }

  if (App.isFirstParty()())
  {
    v14 = a4[3];
    v15 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v14);
    (*(v15 + 8))(v33, v14, v15);
    a2 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(a2, a3, v33);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
  }

  outlined init with copy of SignalProviding(a1, v33);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);
  v16 = swift_retain_n();
  v17 = SAAppsLaunchApp.init(app:)(v16);
  a5[3] = &type metadata for ButtonBuilder;
  a5[4] = &protocol witness table for ButtonBuilder;
  OUTLINED_FUNCTION_70();
  v18 = swift_allocObject();
  *a5 = v18;
  v19 = outlined init with copy of SignalProviding(a4, (v18 + 5));
  OUTLINED_FUNCTION_9_30(v19, v20, v21, v22, v23, v24, v25, v26, v29, *(&v29 + 1), v30, v31, v32, v33[0]);
  OUTLINED_FUNCTION_102_0();
  v27 = swift_allocObject();
  outlined init with take of SPHConversation(&v29, v27 + 16);
  *(v27 + 56) = a2;

  v18[2] = closure #1 in ErrorButtonLabelOptions.getTemplatingFunction(templatingService:)partial apply;
  v18[3] = v27;
  v18[4] = v17;
  return result;
}

uint64_t ButtonBuilder.labelProvider.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t outlined copy of ErrorButtonLabelOptions(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

void *closure #1 in closure #1 in ButtonBuilder.makeViewsForWatch(utteranceViews:_:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1;
  if (a1 >> 62)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    v12 = _bridgeCocoaArray<A>(_:)();

    v4 = v12;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_426260;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTItemGroup, SASTItemGroup_ptr);
  result = TemplatingResult.print.getter();
  if (result[2])
  {
    v8 = result[4];
    v9 = result[5];

    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_426260;
    *(v10 + 32) = *(a2 + 16);
    swift_unknownObjectRetain();
    v11 = static SASTItemGroup.makeButtonGroup(label:commands:centered:)(v8, v9, v10, 1);

    *(inited + 32) = v11;
    result = specialized Array.append<A>(contentsOf:)(inited);
    *a3 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ButtonBuilder.makeViewsForCar(utteranceViews:_:)(unint64_t a1, void (*a2)(uint64_t, void))
{
  if (a1 >> 62)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v4 = a1;
  }

  a2(v4, 0);
}

uint64_t ButtonBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  outlined init with copy of ButtonBuilder(v5, v15);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a1;
  v12 = v15[1];
  *(v11 + 40) = v15[0];
  *(v11 + 56) = v12;
  v13 = v15[3];
  *(v11 + 72) = v15[2];
  *(v11 + 88) = v13;

  v10(a5, v11);
}

void closure #1 in closure #1 in ButtonBuilder.makeViewsForTV(utteranceViews:_:)(unint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *(TemplatingResult.sections.getter() + 16);

  if (v8)
  {
    v9 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIButton, SAUIButton_ptr);
    v10 = TemplatingResult.print.getter();
    if (v10[2])
    {
      v11 = v10[4];
      v12 = v10[5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_426260;
      *(v13 + 32) = a3[2];
      swift_unknownObjectRetain();
      a3 = SAUIButton.init(text:commands:)(v11, v12, v13);
      v9 = [objc_allocWithZone(SAUIDialogPunchout) init];
      [v9 setButtonView:a3];
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_426260;
      *(v4 + 32) = v9;
      if (!(a2 >> 62))
      {
        v14 = v9;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
LABEL_5:
        specialized Array.append<A>(contentsOf:)(v4);

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v15 = v9;

    v16 = _bridgeCocoaArray<A>(_:)();

    a2 = v16;
    goto LABEL_5;
  }

  if (a2 >> 62)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    v17 = _bridgeCocoaArray<A>(_:)();

    a2 = v17;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

LABEL_8:
  *a4 = a2;
}

uint64_t closure #1 in ButtonBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *))
{
  v7 = _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSaySo9SAAceViewCGTg5(a6);
  v9 = v8;
  a2(v7, v8 & 1);
  return outlined consume of Result<[INPerson], Error>(v7, v9 & 1);
}

uint64_t closure #1 in closure #1 in ButtonBuilder.makeViewsForIOS(utteranceViews:_:)@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *(TemplatingResult.sections.getter() + 16);

  v8 = a2 >> 62;
  if (!v7)
  {
    if (!v8)
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      goto LABEL_8;
    }

LABEL_11:
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    v16 = _bridgeCocoaArray<A>(_:)();

    a2 = v16;
    goto LABEL_8;
  }

  if (v8)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    v15 = _bridgeCocoaArray<A>(_:)();

    a2 = v15;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_426260;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIButton, SAUIButton_ptr);
  v10 = TemplatingResult.print.getter();
  if (!v10[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10[4];
  v12 = v10[5];

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_426260;
  *(v13 + 32) = *(a3 + 16);
  swift_unknownObjectRetain();
  *(inited + 32) = SAUIButton.init(text:commands:)(v11, v12, v13);
  result = specialized Array.append<A>(contentsOf:)(inited);
LABEL_8:
  *a4 = a2;
  return result;
}

uint64_t objectdestroy_52Tm()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin23ErrorButtonLabelOptionsO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for ErrorButtonLabelOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
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

uint64_t storeEnumTagSinglePayload for ErrorButtonLabelOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *destructiveInjectEnumTag for ErrorButtonLabelOptions(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t static ExecutionPath.choosePath(for:sharedGlobals:app:)(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_7_33();
  if (!PhoneCallNLIntent.isEmergencyResourceCall()())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_7_33();
    if (PhoneCallNLIntent.isEmergencyCall()())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v13 = type metadata accessor for Logger();
      v14 = OUTLINED_FUNCTION_12_1(v13, static Logger.siriPhone);
      v15 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v15))
      {
        goto LABEL_25;
      }

      v16 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v16);
      v19 = "#ExecutionPath: Parse should be routed for local execution for emergency calling";
    }

    else if (static ExecutionPath.shouldRouteToLocalSearch(nlIntent:sharedGlobals:app:)(a1, a2, a3))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.siriPhone);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_47_1(&dword_0, v23, v24, "#ExecutionPath: should route to local search");
      }

      if (static ExecutionPath.isCompositionFlowEnabled(sharedGlobals:)(a2))
      {
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v12 = 2;
          v27 = OUTLINED_FUNCTION_65_0();
          *v27 = 0;
          _os_log_impl(&dword_0, v25, v26, "#ExecutionPath: Returning BusinessComposition.", v27, 2u);
        }

        else
        {

          return 2;
        }

        return v12;
      }

      v32 = a2[3];
      v33 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v32);
      (*(v33 + 8))(v37, v32, v33);
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v34 = dispatch thunk of DeviceState.isXRDevice.getter();
      __swift_destroy_boxed_opaque_existential_1(v37);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      v14 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v35))
      {
LABEL_25:

        return 5;
      }

      v36 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v36);
      v19 = "#ExecutionPath: Returning .localExecution.";
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v28 = type metadata accessor for Logger();
      v14 = OUTLINED_FUNCTION_12_1(v28, static Logger.siriPhone);
      v29 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v29))
      {
        goto LABEL_25;
      }

      v30 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v30);
      v19 = "#ExecutionPath: Parse can be processed locally";
    }

    OUTLINED_FUNCTION_33(&dword_0, v17, v18, v19);
    OUTLINED_FUNCTION_12_3();
    goto LABEL_25;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  v7 = OUTLINED_FUNCTION_12_1(v6, static Logger.siriPhone);
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v8))
  {
    v9 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v9);
    OUTLINED_FUNCTION_33(&dword_0, v10, v11, "#ExecutionPath: Parse should be routed to emergency resource flow");
    OUTLINED_FUNCTION_12_3();
  }

  return 4;
}

uint64_t static ExecutionPath.choosePath(for:sharedGlobals:app:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 72))(v6, v7);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 120))(v35, v9, v10);
  (*(*v8 + 184))(v36, a1, v35);

  __swift_destroy_boxed_opaque_existential_1(v35);
  outlined init with copy of AnyPhoneNLIntent?(v36, v30);
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        outlined init with take of PhoneCallFeatureFlagProviding(&v32, v35);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v11 = type metadata accessor for Logger();
        v12 = OUTLINED_FUNCTION_12_1(v11, static Logger.siriPhone);
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_47_1(&dword_0, v14, v15, "#ExecutionPath successfully transformed parse to phoneCallNLIntent");
        }

        v16 = static ExecutionPath.choosePath(for:sharedGlobals:app:)(v35, a2, a3);
        __swift_destroy_boxed_opaque_existential_1(v35);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v36, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
        return v16;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v30, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v32, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  outlined init with copy of AnyPhoneNLIntent?(v36, v35);
  if (v35[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
    type metadata accessor for PhoneCallControlNLIntent();
    if (swift_dynamicCast())
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v17 = type metadata accessor for Logger();
      v18 = OUTLINED_FUNCTION_12_1(v17, static Logger.siriPhone);
      v19 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v19))
      {
        v20 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v20);
        OUTLINED_FUNCTION_12_3();
      }

      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v36, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
      return 5;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v35, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v23 = type metadata accessor for Logger();
  v24 = OUTLINED_FUNCTION_12_1(v23, static Logger.siriPhone);
  v25 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v25))
  {
    v26 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v26);
    OUTLINED_FUNCTION_33(&dword_0, v27, v28, "#ExecutionPath: Could not create NL intent from current parse. We should reject this parse.");
    OUTLINED_FUNCTION_12_3();
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v36, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
  return 3;
}

uint64_t static ExecutionPath.shouldRouteToLocalSearch(nlIntent:sharedGlobals:app:)(void *a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of SignalProviding(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v5 = swift_dynamicCast();
  if (v5)
  {
    outlined destroy of PhoneCallNLv4Intent(v16);
    if (!a3)
    {
LABEL_5:
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      LOBYTE(v5) = PhoneCallNLIntent.isBusinessNameCall()();
      return v5 & 1;
    }

    if (App.isFirstParty()())
    {

      goto LABEL_5;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 136315138;
      v11 = App.appIdentifier.getter();
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v11 = 0x64497070416F6ELL;
        v13 = 0xE700000000000000;
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_0, v7, v8, "#ExecutionPath: shouldn't route to business search since current app is %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
    }

    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t static ExecutionPath.isCompositionFlowEnabled(sharedGlobals:)(void *a1)
{
  v2 = type metadata accessor for Locale();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v48 - v6;
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = *(v7 + 56);
  v10 = v9(v8, v7);
  v49 = (*(*v10 + 224))(v10);

  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v11 + 8))(v53, v12, v11);
  __swift_project_boxed_opaque_existential_1(v53, v54);
  if (dispatch thunk of DeviceState.isPhone.getter())
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_6:
    v22 = 1;
    goto LABEL_7;
  }

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 8))(v52, v13, v14);
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  v15 = dispatch thunk of DeviceState.isPad.getter();
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  if (v15)
  {
    goto LABEL_6;
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 8))(v53, v16, v17);
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v18 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1(v53);
  if (v18)
  {
    goto LABEL_6;
  }

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 8))(v53, v19, v20);
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v21 = dispatch thunk of DeviceState.isMac.getter();
  __swift_destroy_boxed_opaque_existential_1(v53);
  if (v21)
  {
    goto LABEL_6;
  }

  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  (*(v47 + 8))(v53, v46, v47);
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v22 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_7:
  v23 = v9(v8, v7);
  v24 = (*(*v23 + 248))(v23);

  if (v24)
  {
    v25 = 1;
    v27 = v50;
    v26 = v51;
  }

  else
  {
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    (*(v29 + 8))(v53, v28, v29);
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v30 = v48;
    DeviceState.siriInputLocale.getter();
    v31 = Locale.identifier.getter();
    v33 = v32;
    v27 = v50;
    v34 = v30;
    v26 = v51;
    (*(v50 + 8))(v34, v51);
    if (v31 == 0x53552D6E65 && v33 == 0xE500000000000000)
    {

      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  (*(v37 + 8))(v53, v36, v37);
  __swift_project_boxed_opaque_existential_1(v53, v54);
  DeviceState.siriInputLocale.getter();
  v38 = Locale.identifier.getter();
  v40 = v39;
  (*(v27 + 8))(v4, v26);
  if (v38 == 0x524B2D6F6BLL && v40 == 0xE500000000000000)
  {

    v43 = 0;
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v43 = v42 ^ 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  if (v49 & v22)
  {
    v44 = v25 & v43;
  }

  else
  {
    v44 = 0;
  }

  return v44 & 1;
}

BOOL static ExecutionPath.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 5u:
      return a2 == 5;
    case 4u:
      return a2 == 4;
    case 3u:
      return a2 == 3;
  }

  if (a2 - 3 < 3)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t outlined init with copy of AnyPhoneNLIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ExecutionPath.FallbackLocation and conformance ExecutionPath.FallbackLocation()
{
  result = lazy protocol witness table cache variable for type ExecutionPath.FallbackLocation and conformance ExecutionPath.FallbackLocation;
  if (!lazy protocol witness table cache variable for type ExecutionPath.FallbackLocation and conformance ExecutionPath.FallbackLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionPath.FallbackLocation and conformance ExecutionPath.FallbackLocation);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ExecutionPath(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExecutionPath(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExecutionPath.FallbackLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t FaceTimeMessageControllerFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  if ((*(*v1 + 160))(v4) == 2)
  {
    v7 = enum case for ConfirmationResponse.confirmed(_:);
    v8 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_23_1();
    (*(v9 + 104))(v6, v7, v8);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v10 = v1[3];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    v11 = v10;
    ConfirmIntentAnswer.init(confirmationResponse:intent:)();
    v12 = enum case for PromptResult.answered<A>(_:);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMd, &_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMR);
    OUTLINED_FUNCTION_23_1();
    return (*(v13 + 104))(a1, v12);
  }

  else
  {
    v15 = enum case for PromptResult.cancelled<A>(_:);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMd, &_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMR);
    OUTLINED_FUNCTION_23_1();
    v18 = *(v17 + 104);

    return v18(a1, v15, v16);
  }
}

uint64_t FaceTimeMessageControllerFlow.State.description.getter(char a1)
{
  result = 0x46676E6974696177;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_13_29();
      break;
    case 3:
      result = OUTLINED_FUNCTION_12_32();
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::FaceTimeMessageControllerFlow::State_optional __swiftcall FaceTimeMessageControllerFlow.State.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FaceTimeMessageControllerFlow.State.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::FaceTimeMessageControllerFlow::State_optional protocol witness for RawRepresentable.init(rawValue:) in conformance FaceTimeMessageControllerFlow.State@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::FaceTimeMessageControllerFlow::State_optional *a2@<X8>)
{
  result.value = FaceTimeMessageControllerFlow.State.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FaceTimeMessageControllerFlow.State@<X0>(uint64_t *a1@<X8>)
{
  result = FaceTimeMessageControllerFlow.State.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for FaceTimeMessageControllerFlow.state : FaceTimeMessageControllerFlow(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 168) = v2;
  return result;
}

void FaceTimeMessageControllerFlow.promptResponse.didset()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMR);
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_0, oslog, v1, "#FaceTimeMessageControllerFlow promptResponse: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
  }
}

uint64_t FaceTimeMessageControllerFlow.__allocating_init(app:skIntent:intentResponse:sharedGlobals:state:startCallCATsSimple:flowFinder:siriKitEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v9 = a5;
  v14 = swift_allocObject();
  v16 = *(a7 + 24);
  v15 = *(a7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a7, v16);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  specialized FaceTimeMessageControllerFlow.init(app:skIntent:intentResponse:sharedGlobals:state:startCallCATsSimple:flowFinder:siriKitEventSender:)(a1, a2, a3, a4, v9, a6, v20, a8, v14, v16, v15);
  v22 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v20;
}

uint64_t FaceTimeMessageControllerFlow.init(app:skIntent:intentResponse:sharedGlobals:state:startCallCATsSimple:flowFinder:siriKitEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v9 = a5;
  v15 = *(a7 + 24);
  v14 = *(a7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17);
  specialized FaceTimeMessageControllerFlow.init(app:skIntent:intentResponse:sharedGlobals:state:startCallCATsSimple:flowFinder:siriKitEventSender:)(a1, a2, a3, a4, v9, a6, v19, a8, v8, v15, v14);
  v21 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v8;
}

uint64_t FaceTimeMessageControllerFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v88 = a1;
  v3 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_9_1();
  v5 = v4;
  __chkstk_darwin(v6);
  v87 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v85 - v9;
  v11 = type metadata accessor for Input();
  OUTLINED_FUNCTION_9_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  (*(*v1 + 160))();
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_15_27();
  switch(v18)
  {
    case 1:

      goto LABEL_6;
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_12_32();
      OUTLINED_FUNCTION_14_30();
      break;
    default:
      OUTLINED_FUNCTION_19_21();
      break;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_47;
    }

    v35 = OUTLINED_FUNCTION_65_0();
    *v35 = 0;
    goto LABEL_46;
  }

LABEL_6:
  v85[1] = v10;
  v86 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.siriPhone);
  (*(v13 + 16))(v17, v88, v11);
  v85[2] = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v85[0] = v3;
    v26 = v25;
    v90[0] = v25;
    *v24 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v13 + 8))(v17, v11);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v90);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_0, v22, v23, "#FaceTimeMessageControllerFlow got input: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    v3 = v85[0];
    OUTLINED_FUNCTION_26_0(v31);
    OUTLINED_FUNCTION_52();
  }

  else
  {

    (*(v13 + 8))(v17, v11);
  }

  Input.parse.getter();
  v37 = v86;
  v38 = OUTLINED_FUNCTION_22();
  v40 = v39(v38);
  if (v40 == enum case for Parse.NLv3IntentOnly(_:))
  {
    OUTLINED_FUNCTION_3((v2 + 40));
    v41 = OUTLINED_FUNCTION_1_1();
    v43 = v42(v41);
    v44 = v87;
    Input.parse.getter();
    (*(*v43 + 192))(v90, v44);

    v45 = *(v37 + 8);
    v45(v44, v3);
    outlined init with copy of PhoneCallNLIntent?(v90, v89);
    if (v89[3])
    {
      OUTLINED_FUNCTION_3(v89);
      v46 = OUTLINED_FUNCTION_1_1();
      v48 = v47(v46);
      __swift_destroy_boxed_opaque_existential_1(v89);
      if (v48 != 5)
      {
LABEL_33:
        *(v2 + 169) = v48;
        FaceTimeMessageControllerFlow.promptResponse.didset();
        outlined destroy of PhoneCallNLIntent?(v90);
        v72 = OUTLINED_FUNCTION_22();
        (v45)(v72);
        goto LABEL_36;
      }
    }

    else
    {
      outlined destroy of PhoneCallNLIntent?(v89);
    }

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v68))
    {
      v69 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v69);
      OUTLINED_FUNCTION_36_0(&dword_0, v70, v71, "#FaceTimeMessageControllerFlow invalid NLv3 input");
      OUTLINED_FUNCTION_52();
    }

    v48 = 5;
    goto LABEL_33;
  }

  if (v40 == enum case for Parse.NLv4IntentOnly(_:) || v40 == enum case for Parse.uso(_:))
  {
    v50 = *(v37 + 8);
    v51 = OUTLINED_FUNCTION_22();
    v50(v51);
    OUTLINED_FUNCTION_3((v2 + 40));
    v52 = OUTLINED_FUNCTION_1_1();
    v54 = v53(v52);
    v55 = v87;
    Input.parse.getter();
    (*(*v54 + 192))(v90, v55);

    (v50)(v55, v3);
    if (v90[3])
    {
      OUTLINED_FUNCTION_3(v90);
      v56 = OUTLINED_FUNCTION_1_1();
      v58 = v57(v56);
      __swift_destroy_boxed_opaque_existential_1(v90);
    }

    else
    {
      outlined destroy of PhoneCallNLIntent?(v90);
      v58 = 5;
    }

    *(v2 + 169) = v58;
    FaceTimeMessageControllerFlow.promptResponse.didset();
  }

  else
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v60))
    {
      v62 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v62);
      OUTLINED_FUNCTION_36_0(&dword_0, v63, v64, "#FaceTimeMessageControllerFlow input received is of wrong type");
      OUTLINED_FUNCTION_52();
    }

    *(v2 + 169) = 5;
    FaceTimeMessageControllerFlow.promptResponse.didset();
    v65 = OUTLINED_FUNCTION_22();
    v66(v65);
  }

LABEL_36:
  if (*(v2 + 169) - 1 < 2)
  {
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v74))
    {
      v75 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v75);
      OUTLINED_FUNCTION_36_0(&dword_0, v76, v77, "#FaceTimeMessageControllerFlow user rejected. Cancelling flow..");
      OUTLINED_FUNCTION_52();
    }

    OUTLINED_FUNCTION_20_21();
    *(v2 + 168) = 3;
    return 1;
  }

  if (*(v2 + 169))
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_47:

      return 0;
    }

    v35 = OUTLINED_FUNCTION_65_0();
    *v35 = 0;
    v36 = "#FaceTimeMessageControllerFlow unexpected input reprompt";
LABEL_46:
    _os_log_impl(&dword_0, v33, v34, v36, v35, 2u);
    OUTLINED_FUNCTION_26_0(v35);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_20_21();
  *(v2 + 168) = 2;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v80))
  {
    v81 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_103(v81);
    OUTLINED_FUNCTION_36_0(&dword_0, v82, v83, "#FaceTimeMessageControllerFlow user confirmation received. Switching to telephony call..");
    OUTLINED_FUNCTION_52();
  }

  v78 = 1;
  INStartCallIntent.updatePreferredCallProvider(preferredCallProvider:)(1);
  INStartCallIntent.updateDestinationType(destinationType:)(1);
  INStartCallIntent.updateCallCapability(callCapability:)(1);
  return v78;
}

uint64_t FaceTimeMessageControllerFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FaceTimeMessageControllerFlow();
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type FaceTimeMessageControllerFlow and conformance FaceTimeMessageControllerFlow, v2, type metadata accessor for FaceTimeMessageControllerFlow, &protocol conformance descriptor for FaceTimeMessageControllerFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t FaceTimeMessageControllerFlow.execute()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for CATOption();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(FaceTimeMessageControllerFlow.execute(), 0, 0);
}

uint64_t FaceTimeMessageControllerFlow.execute()()
{
  v31 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, &v30);
    *(v6 + 12) = 2080;
    v8 = (*(*v5 + 160))();
    v9 = 0x46676E6974696177;
    switch(v8)
    {
      case 1:
        break;
      case 2:
        OUTLINED_FUNCTION_15_27();
        v9 = OUTLINED_FUNCTION_13_29();
        break;
      case 3:
        OUTLINED_FUNCTION_14_30();
        v9 = OUTLINED_FUNCTION_12_32();
        break;
      default:
        v9 = OUTLINED_FUNCTION_19_21();
        break;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, 0xEF7475706E49726FLL, &v30);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_0, v2, v3, "#FaceTimeMessageControllerFlow %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  else
  {
  }

  v11 = (*(*v0[12] + 160))();
  if ((v11 - 2) >= 2)
  {
    if (v11)
    {
      static ExecuteResponse.ongoing(requireInput:)();
    }

    else
    {
      v12 = v0[12];
      v29 = v12[20];
      __swift_project_boxed_opaque_existential_1(v12 + 16, v12[19]);
      type metadata accessor for SiriKitEvent();
      v13 = v12[3];
      v14 = [v13 typeName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      v15 = [v13 faceTimeLink];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xE000000000000000;
      }

      v20 = [v13 contacts];
      if (v20)
      {
        v21 = v20;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v22 = _swiftEmptyArrayStorage;
      }

      v23 = v0[12];
      type metadata accessor for MessagesFaceTimeLinkCompletionFlow(0);
      v24 = *(v23 + 16);
      outlined init with copy of SignalProviding(v23 + 40, (v0 + 2));
      type metadata accessor for StartCallCATs(0);

      static CATOption.defaultMode.getter();
      v25 = CATWrapper.__allocating_init(options:globals:)();
      v26 = MessagesFaceTimeLinkCompletionFlow.__allocating_init(faceTimeLink:recipients:app:sharedGlobals:startCallCATs:)(v17, v19, v22, v24, v0 + 2, v25);
      swift_beginAccess();
      *(v23 + 168) = 2;
      v0[10] = v26;
      _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type MessagesFaceTimeLinkCompletionFlow and conformance MessagesFaceTimeLinkCompletionFlow, 255, type metadata accessor for MessagesFaceTimeLinkCompletionFlow, &protocol conformance descriptor for MessagesFaceTimeLinkCompletionFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    }
  }

  else
  {
    static ExecuteResponse.complete()();
  }

  v27 = v0[1];

  return v27();
}

uint64_t closure #1 in FaceTimeMessageControllerFlow.execute()()
{

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  static PhoneDomainContextMetricsUtils.populatePhoneDomainContextForThirdPartyFaceTime()();
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

uint64_t FaceTimeMessageControllerFlow.messagesFlowOnComplete(exitValue:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  (*(v6 + 16))(v42 - v9 + 24, a1, v4, v8);
  v10 = OUTLINED_FUNCTION_23_6();
  v12 = v11(v10);
  if (v12 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v13 = OUTLINED_FUNCTION_23_6();
    v14(v13);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v17))
    {
      v18 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v18);
      OUTLINED_FUNCTION_36_0(&dword_0, v19, v20, "#FaceTimeMessageControllerFlow handle messages flow was successful and confirmed");
      OUTLINED_FUNCTION_52();
    }

    result = OUTLINED_FUNCTION_6_39();
    v22 = 2;
    goto LABEL_20;
  }

  if (v12 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    v23 = OUTLINED_FUNCTION_23_6();
    v24(v23);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42[0] = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v42);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v26, v27, "#FaceTimeMessageControllerFlow handle messages flow encountered an error: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_26_0(v29);
      OUTLINED_FUNCTION_26_0(v28);
    }

    else
    {
    }

LABEL_19:
    result = OUTLINED_FUNCTION_6_39();
    v22 = 3;
LABEL_20:
    *(v2 + 168) = v22;
    return result;
  }

  if (v12 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.siriPhone);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v35))
    {
      v36 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v36);
      OUTLINED_FUNCTION_36_0(&dword_0, v37, v38, "#FaceTimeMessageControllerFlow handle messages flow was cancelled or unanswered or encountered a generic error");
      OUTLINED_FUNCTION_52();
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_39();
  *(v2 + 168) = 3;
  v39 = OUTLINED_FUNCTION_23_6();
  return v40(v39);
}

uint64_t FaceTimeMessageControllerFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  return v0;
}

uint64_t FaceTimeMessageControllerFlow.__deallocating_deinit()
{
  FaceTimeMessageControllerFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance FaceTimeMessageControllerFlow(uint64_t a1)
{
  v6 = (*(**v1 + 232) + **(**v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t specialized FaceTimeMessageControllerFlow.init(app:skIntent:intentResponse:sharedGlobals:state:startCallCATsSimple:flowFinder:siriKitEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a9 + 112) = a10;
  *(a9 + 120) = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a9 + 88));
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a7, a10);
  *(a9 + 169) = 5;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  outlined init with take of SPHConversation(a4, a9 + 40);
  *(a9 + 168) = a5;
  *(a9 + 80) = a6;
  outlined init with take of SPHConversation(a8, a9 + 128);
  return a9;
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type FaceTimeMessageControllerFlow.State and conformance FaceTimeMessageControllerFlow.State()
{
  result = lazy protocol witness table cache variable for type FaceTimeMessageControllerFlow.State and conformance FaceTimeMessageControllerFlow.State;
  if (!lazy protocol witness table cache variable for type FaceTimeMessageControllerFlow.State and conformance FaceTimeMessageControllerFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FaceTimeMessageControllerFlow.State and conformance FaceTimeMessageControllerFlow.State);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FaceTimeMessageControllerFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t static StartCallViewBuilders.makeFaceTimeSettingsViewBuilder(templatingService:sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  OUTLINED_FUNCTION_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "#StartCallViewBuilders Providing FaceTimeSettingsBuilder", v10, 2u);
  }

  outlined init with copy of SignalProviding(a2, (a3 + 1));
  *a3 = a1;
  type metadata accessor for PhoneCallDisplayTextCATs(0);

  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  a3[6] = result;
  return result;
}

uint64_t FaceTimeSettingsBuilder.init(templatingService:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  OUTLINED_FUNCTION_4();
  *a3 = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, (a3 + 1));
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  a3[6] = result;
  return result;
}

uint64_t FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  outlined init with copy of FaceTimeSettingsBuilder(v4, v13);
  v9 = swift_allocObject();
  v10 = v13[1];
  *(v9 + 16) = v13[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v13[2];
  *(v9 + 64) = v14;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  v11 = *(*v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 120);

  v11(partial apply for closure #1 in FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:), v9);
}

void *closure #1 in FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void))
{
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for TemplatingResult();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v15);
  v17 = (&v39 - v16);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v39 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = a4;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_0, v20, v21, "#FaceTimeSettingsBuilder failed to generate templating result for appSettings: %@", v23, 0xCu);
      outlined destroy of NSObject?(v24);

      a4 = v22;
    }

    swift_errorRetain();
    a4(v18, 1);
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    v27 = [objc_allocWithZone(SAUIOpenLink) init];
    URL.init(string:)();
    v28 = type metadata accessor for URL();
    v30 = 0;
    if (__swift_getEnumTagSinglePayload(v9, 1, v28) != 1)
    {
      URL._bridgeToObjectiveC()(v29);
      v30 = v31;
      (*(*(v28 - 8) + 8))(v9, v28);
    }

    [v27 setRef:v30];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIButton, SAUIButton_ptr);
    result = TemplatingResult.print.getter();
    if (result[2])
    {
      v40 = a4;
      v33 = result[4];
      v32 = result[5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_426260;
      *(v34 + 32) = v27;
      v39 = v27;
      v35 = SAUIButton.init(text:commands:)(v33, v32, v34);
      type metadata accessor for SiriKitAceViewBuilder();
      v37 = a2[4];
      v36 = a2[5];
      __swift_project_boxed_opaque_existential_1(a2 + 1, v37);
      (*(v36 + 8))(v42, v37, v36);
      dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
      __swift_destroy_boxed_opaque_existential_1(v42);
      dispatch thunk of SiriKitAceViewBuilder.addButton(button:)();

      dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

      v38 = dispatch thunk of SiriKitAceViewBuilder.build()();

      v40(v38, 0);

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, NSObject *a7)
{
  v49 = a2;
  v50 = a7;
  v43 = a5;
  v47 = a4;
  v48 = a1;
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_7();
  v44 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, &_s19SiriFlowEnvironment17RadarFilingExtrasVSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = v42 - v15;
  v17 = type metadata accessor for RadarFilingExtras();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRComponentInfo();
  OUTLINED_FUNCTION_7();
  v45 = v24;
  v46 = v23;
  __chkstk_darwin(v23);
  v26 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    type metadata accessor for TapToRadarManager();
    swift_allocObject();
    v42[2] = a3;
    v42[1] = TapToRadarManager.init()();
    TTRComponentInfo.init(componentName:componentVersion:componentID:)();

    RadarFilingExtras.init(attachmentURLs:extensionIDs:deviceIDs:displayReason:)();
    v43 = "SingleResultVoicemail";
    (*(v19 + 16))(v16, v22, v17);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    v27 = v44;
    (*(v44 + 16))(v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v8);
    v28 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v29 = swift_allocObject();
    (*(v27 + 32))(v29 + v28, v13, v8);
    dispatch thunk of TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)();

    outlined destroy of RadarFilingExtras?(v16);
    (*(v19 + 8))(v22, v17);
    (*(v45 + 8))(v26, v46);
LABEL_6:
    OUTLINED_FUNCTION_65();
    return;
  }

  v30 = v49;

  v50 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v50, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51 = v33;
    *v32 = 136315394;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v30, &v51);
    *(v32 + 12) = 2080;
    v34 = [objc_opt_self() processInfo];
    v35 = [v34 processName];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v51);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_0, v50, v31, "#FileRadarUtils tapToRadar: not an internal build. Skipping filing radar for %s, process=%s", v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v33);
    OUTLINED_FUNCTION_26_0(v32);

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_65();
}

void static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a1;
  v30 = a3;
  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    type metadata accessor for AutoBugCaptureManager();
    swift_allocObject();
    AutoBugCaptureManager.init(domain:sessionDuration:)();
    (*(v12 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v10);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = swift_allocObject();
    (*(v12 + 32))(v17 + v16, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    dispatch thunk of AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)();

LABEL_6:
    OUTLINED_FUNCTION_65();
    return;
  }

  v31 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315650;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, a2, &v32);
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, a4, &v32);
    *(v19 + 22) = 2080;
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v32);

    *(v19 + 24) = v26;
    _os_log_impl(&dword_0, v31, v18, "#FileRadarUtils autoBugCapture: not an internal build. Skipping filing radar for %s/%s, process=%s", v19, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v20);
    OUTLINED_FUNCTION_26_0(v19);

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_65();
}

void closure #1 in static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), const char *a4)
{
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = a3();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v6 & 1;
    _os_log_impl(&dword_0, oslog, v7, a4, v8, 8u);
    OUTLINED_FUNCTION_26_0(v8);
  }
}

uint64_t outlined destroy of RadarFilingExtras?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, &_s19SiriFlowEnvironment17RadarFilingExtrasVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void specialized Sequence.contains(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_17_19(a1, a2, a3);
  specialized Array.count.getter(v8);
  OUTLINED_FUNCTION_16_28();
  while (1)
  {
    v10 = v9;
    if (v4 == v9)
    {
      break;
    }

    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_13;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_18_14();
    v14 = v13();

    if (!v3)
    {
      v9 = v10 + 1;
      if ((v14 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

{
  v7 = OUTLINED_FUNCTION_17_19(a1, a2, a3);
  specialized Array.count.getter(v7);
  OUTLINED_FUNCTION_16_28();
  while (1)
  {
    v9 = v8;
    if (v4 == v8)
    {
      break;
    }

    if (v6)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_18_14();
    v11 = v10();

    if (!v3)
    {
      v8 = v9 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t FirstPartyAnnotatedAppStore.getDefaultApp(for:avMode:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (a2 == 2 || (a2 & 1) != 0)
    {
      if (one-time initialization token for siriFaceTimeMacExtension != -1)
      {
        OUTLINED_FUNCTION_5_41(&one-time initialization token for siriFaceTimeMacExtension);
      }

      v5 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
    }

    else
    {
      if (one-time initialization token for siriPhoneMacExtension != -1)
      {
        OUTLINED_FUNCTION_3_43(&one-time initialization token for siriPhoneMacExtension);
      }

      v5 = &static DefaultPhoneApps.siriPhoneMacExtension;
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_12();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        OUTLINED_FUNCTION_4_32(&one-time initialization token for siriPhoneWatchExtension);
      }

      v5 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      OUTLINED_FUNCTION_22_12();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          OUTLINED_FUNCTION_2_53(&one-time initialization token for siriPhoneFaceTimeExtension);
        }

        v5 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          OUTLINED_FUNCTION_1_62(&one-time initialization token for siriPhoneExtension);
        }

        v5 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v6 = *v5;
  v7 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  v10 = *(v5 + 32);
  v11 = v5[5];

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

void FirstPartyAnnotatedAppStore.getApp(for:device:avMode:)(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, unint64_t *a5@<X8>, char a6@<W3>, uint64_t a7@<X6>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000000045B6A0, &v77);
    *(v13 + 12) = 2080;
    v14 = OUTLINED_FUNCTION_104();
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v16);
    _os_log_impl(&dword_0, v11, v12, "#FirstPartyAnnotatedAppStore %s identifier=%s", v13, 0x16u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_12_3();
  }

  if (one-time initialization token for defaultFirstPartyBundleIds != -1)
  {
    v17 = swift_once();
  }

  v77 = a1;
  v78 = a2;
  __chkstk_darwin(v17);
  if (specialized Sequence.contains(where:)())
  {
    v18 = OUTLINED_FUNCTION_104();
    FirstPartyAnnotatedAppStore.getDefaultApp(for:device:avMode:)(v18, v19, a3, a6, a4, a7, v20);
    v21 = v78;
    v69 = v77;
    v22 = v79;
    v23 = v80;
    v24 = v81;
    v25 = v82;
    outlined init with copy of AnnotatedApp?(&v77, &v70);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_104();
    if ((a4)(v26))
    {
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 && (v77 = a1, v78 = a2, v70 = 0xD000000000000010, v71 = 0x8000000000458F10, lazy protocol witness table accessor for type String and conformance String(), lazy protocol witness table accessor for type String and conformance String(), (BidirectionalCollection<>.starts<A>(with:)()))
      {
        if (one-time initialization token for walkieTalkieWatchExtension != -1)
        {
          OUTLINED_FUNCTION_6_40(&one-time initialization token for walkieTalkieWatchExtension);
        }

        v27 = static DefaultPhoneApps.walkieTalkieWatchExtension;
        v21 = *algn_599A68;
        v22 = qword_599A70;
        v23 = unk_599A78;
        v24 = byte_599A80;
        v25 = qword_599A88;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v69 = v27;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_33(&dword_0, v34, v35, "#FirstPartyAnnotatedAppStore 1P app found on device, returning app with no supported intents.");
          OUTLINED_FUNCTION_12_3();
        }

        type metadata accessor for App();

        OUTLINED_FUNCTION_104();
        v36 = App.__allocating_init(appIdentifier:)();
        v22 = App.appIdentifier.getter();
        v23 = v37;

        v69 = v36;

        v24 = 0;
        v21 = _swiftEmptySetSingleton;
        v25 = _swiftEmptySetSingleton;
      }
    }

    else
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_33(&dword_0, v30, v31, "#FirstPartyAnnotatedAppStore 1P app not found on device, returning nil.");
        OUTLINED_FUNCTION_12_3();
      }

      v69 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  OUTLINED_FUNCTION_7_34();
  outlined copy of AnnotatedApp?(v38, v39, v40, v41, v42, v43);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_7_34();
  outlined consume of AnnotatedApp?(v46, v47, v48, v49, v50, v51);
  if (os_log_type_enabled(v44, v45))
  {
    v52 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v52 = 136315394;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000000045B6A0, v76);
    *(v52 + 12) = 2080;
    v70 = v69;
    v71 = v21;
    v72 = v22;
    v73 = v23;
    v74 = v24;
    v75 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    v53 = String.init<A>(describing:)();
    v55 = v21;
    v56 = v24;
    v57 = v22;
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v76);

    *(v52 + 14) = v58;
    v22 = v57;
    v24 = v56;
    v21 = v55;
    _os_log_impl(&dword_0, v44, v45, "#FirstPartyAnnotatedAppStore %s => %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    OUTLINED_FUNCTION_7_34();
    outlined consume of AnnotatedApp?(v59, v60, v61, v62, v63, v64);
  }

  *a5 = v69;
  a5[1] = v21;
  a5[2] = v22;
  a5[3] = v23;
  a5[4] = v24;
  a5[5] = v25;
}

uint64_t one-time initialization function for defaultFirstPartyBundleIds()
{
  result = closure #1 in variable initialization expression of static FirstPartyAnnotatedAppStore.defaultFirstPartyBundleIds();
  static FirstPartyAnnotatedAppStore.defaultFirstPartyBundleIds = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static FirstPartyAnnotatedAppStore.defaultFirstPartyBundleIds()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_431D00;
  *(v0 + 32) = 0xD000000000000017;
  *(v0 + 40) = 0x8000000000459750;
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x80000000004574F0;
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    swift_once();
  }

  v1 = *algn_599C28;
  *(v0 + 64) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0xD000000000000012;
  *(v0 + 88) = 0x800000000045B6E0;
  *(v0 + 96) = 0xD000000000000012;
  *(v0 + 104) = 0x800000000045B700;
  *(v0 + 112) = 0xD000000000000013;
  *(v0 + 120) = 0x800000000045B720;
  *(v0 + 128) = 0xD000000000000015;
  *(v0 + 136) = 0x8000000000452BD0;

  return v0;
}

uint64_t *DefaultPhoneApps.siriPhoneMacExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneMacExtension != -1)
  {
    OUTLINED_FUNCTION_3_43(&one-time initialization token for siriPhoneMacExtension);
  }

  return &static DefaultPhoneApps.siriPhoneMacExtension;
}

uint64_t *DefaultPhoneApps.siriFaceTimeMacExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriFaceTimeMacExtension != -1)
  {
    OUTLINED_FUNCTION_5_41(&one-time initialization token for siriFaceTimeMacExtension);
  }

  return &static DefaultPhoneApps.siriFaceTimeMacExtension;
}

uint64_t *DefaultPhoneApps.siriPhoneWatchExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneWatchExtension != -1)
  {
    OUTLINED_FUNCTION_4_32(&one-time initialization token for siriPhoneWatchExtension);
  }

  return &static DefaultPhoneApps.siriPhoneWatchExtension;
}

uint64_t *DefaultPhoneApps.siriPhoneFaceTimeExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
  {
    OUTLINED_FUNCTION_2_53(&one-time initialization token for siriPhoneFaceTimeExtension);
  }

  return &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
}

uint64_t *DefaultPhoneApps.siriPhoneExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneExtension != -1)
  {
    OUTLINED_FUNCTION_1_62(&one-time initialization token for siriPhoneExtension);
  }

  return &static DefaultPhoneApps.siriPhoneExtension;
}

void FirstPartyAnnotatedAppStore.getDefaultApp(for:device:avMode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v11 = a2;
  v12 = a1;
  v14 = static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2);
  if (v14)
  {
    v11 = 0x80000000004574F0;
    v12 = 0xD000000000000012;
  }

  else
  {
  }

  if ((*(*a6 + 168))(v14) & 1) != 0 && (__swift_project_boxed_opaque_existential_1(a3, a3[3]), (DeviceState.requiresAppForFaceTime.getter()) && (, v15 = static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v12, v11), , (v15) && (a5(v12, v11) & 1) == 0)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#FirstPartyAnnotatedAppStore Device requires that FaceTime app is installed for FaceTime calls, returning nil.", v25, 2u);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  else
  {
    FirstPartyAnnotatedAppStore.getDefaultApp(for:avMode:)(a3, a4, v26);
    App.systemExtensionBundleId.getter();
    App.systemUIExtensionBundleId.getter();
    App.pluginIdentifier.getter();
    type metadata accessor for App();
    swift_allocObject();

    v16 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
    v17 = v26[1];
    v18 = v26[2];
    v19 = v26[3];
    v20 = v28;

    v21 = v27;
  }

  *a7 = v16;
  a7[1] = v17;
  a7[2] = v18;
  a7[3] = v19;
  a7[4] = v21;
  a7[5] = v20;
}

uint64_t *DefaultPhoneApps.walkieTalkieWatchExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for walkieTalkieWatchExtension != -1)
  {
    OUTLINED_FUNCTION_6_40(&one-time initialization token for walkieTalkieWatchExtension);
  }

  return &static DefaultPhoneApps.walkieTalkieWatchExtension;
}

void one-time initialization function for supportedFirstPartyIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_431D00;
  v1 = [objc_allocWithZone(INStartCallIntent) init];
  v2 = [v1 _className];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = [objc_allocWithZone(INSearchCallHistoryIntent) init];
  v7 = [v6 _className];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 48) = v8;
  *(inited + 56) = v10;
  v11 = [objc_allocWithZone(INHangUpCallIntent) init];
  v12 = [v11 _className];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
  v17 = [v16 _className];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(inited + 80) = v18;
  *(inited + 88) = v20;
  v21 = [objc_allocWithZone(INAnswerCallIntent) init];
  v22 = [v21 _className];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(inited + 96) = v23;
  *(inited + 104) = v25;
  v26 = [objc_allocWithZone(INJoinCallIntent) init];
  v27 = [v26 _className];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(inited + 112) = v28;
  *(inited + 120) = v30;
  v31 = [objc_allocWithZone(INAddCallParticipantIntent) init];
  v32 = [v31 _className];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(inited + 128) = v33;
  *(inited + 136) = v35;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  static DefaultPhoneApps.supportedFirstPartyIntents = v43;
}

uint64_t one-time initialization function for siriPhoneExtension()
{
  v0 = type metadata accessor for App();
  OUTLINED_FUNCTION_41_1(v0);
  App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  if (one-time initialization token for supportedFirstPartyIntents != -1)
  {
    OUTLINED_FUNCTION_9_31(&one-time initialization token for supportedFirstPartyIntents);
  }

  v1 = App.appIdentifier.getter();
  result = OUTLINED_FUNCTION_10_33(v1, v2, &static DefaultPhoneApps.siriPhoneExtension);
  *(v4 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriPhoneExtension.getter()
{
  if (one-time initialization token for siriPhoneExtension != -1)
  {
    OUTLINED_FUNCTION_1_62(&one-time initialization token for siriPhoneExtension);
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneExtension);
}

uint64_t one-time initialization function for siriPhoneWatchExtension()
{
  v1 = type metadata accessor for App();
  OUTLINED_FUNCTION_41_1(v1);
  OUTLINED_FUNCTION_8_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_42BF20;
  v3 = [objc_allocWithZone(INStartCallIntent) init];
  v4 = [v3 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 32) = v3;
  *(inited + 40) = v0;
  v5 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INSearchCallHistoryIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 48) = v3;
  *(inited + 56) = v0;
  v6 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INHangUpCallIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 64) = v3;
  *(inited + 72) = v0;
  v7 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INIdentifyIncomingCallerIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 80) = v3;
  *(inited + 88) = v0;
  v8 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INAnswerCallIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 96) = v3;
  *(inited + 104) = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  v16 = App.appIdentifier.getter();
  result = OUTLINED_FUNCTION_10_33(v16, v17, &static DefaultPhoneApps.siriPhoneWatchExtension);
  *(v19 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriPhoneWatchExtension.getter()
{
  if (one-time initialization token for siriPhoneWatchExtension != -1)
  {
    OUTLINED_FUNCTION_4_32(&one-time initialization token for siriPhoneWatchExtension);
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneWatchExtension);
}

uint64_t one-time initialization function for siriPhoneFaceTimeExtension()
{
  v0 = type metadata accessor for App();
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_8_41();
  if (one-time initialization token for supportedFirstPartyIntents != -1)
  {
    OUTLINED_FUNCTION_9_31(&one-time initialization token for supportedFirstPartyIntents);
  }

  v1 = App.appIdentifier.getter();
  result = OUTLINED_FUNCTION_10_33(v1, v2, &static DefaultPhoneApps.siriPhoneFaceTimeExtension);
  *(v4 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriPhoneFaceTimeExtension.getter()
{
  if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
  {
    OUTLINED_FUNCTION_2_53(&one-time initialization token for siriPhoneFaceTimeExtension);
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneFaceTimeExtension);
}

uint64_t static DefaultPhoneApps.siriPhoneMacExtension.getter()
{
  if (one-time initialization token for siriPhoneMacExtension != -1)
  {
    OUTLINED_FUNCTION_3_43(&one-time initialization token for siriPhoneMacExtension);
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneMacExtension);
}

uint64_t static DefaultPhoneApps.siriFaceTimeMacExtension.getter()
{
  if (one-time initialization token for siriFaceTimeMacExtension != -1)
  {
    OUTLINED_FUNCTION_5_41(&one-time initialization token for siriFaceTimeMacExtension);
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriFaceTimeMacExtension);
}

uint64_t static DefaultPhoneApps.walkieTalkieWatchExtension.getter()
{
  if (one-time initialization token for walkieTalkieWatchExtension != -1)
  {
    OUTLINED_FUNCTION_6_40(&one-time initialization token for walkieTalkieWatchExtension);
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.walkieTalkieWatchExtension);
}

double ForcedAppDisambiguationHistory.init(phase:date:apps:)(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v4 = v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationHistory __swiftcall ForcedAppDisambiguationHistory.init()()
{
  v0 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v2 + 8))(v5, v0);
  v8 = _swiftEmptyArrayStorage;
  v9 = PhoneCallFlowDelegatePlugin_ForcedAppDisambiguationPhase_showedForcedAppDisambiguation;
  v10 = v7;
  result.timestamp = v10;
  result.apps._rawValue = v8;
  result.phase = v9;
  return result;
}

PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationPhase_optional __swiftcall ForcedAppDisambiguationPhase.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ForcedAppDisambiguationPhase.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_ForcedAppDisambiguationPhase_loggedForcedAppDisambiguation;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_ForcedAppDisambiguationPhase_unknownDefault;
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

PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationPhase_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ForcedAppDisambiguationPhase@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationPhase_optional *a2@<X8>)
{
  result.value = ForcedAppDisambiguationPhase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ForcedAppDisambiguationPhase@<X0>(void *a1@<X8>)
{
  result = ForcedAppDisambiguationPhase.rawValue.getter();
  *a1 = 0xD00000000000001DLL;
  a1[1] = v3;
  return result;
}

void ForcedAppDisambiguationHistory.daysSinceLastShowed.getter(double a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.distance(to:)();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v8, v3);
  v14(v11, v3);
  v15 = v13 / 86400.0;
  if (v13 / 86400.0 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v13 / 86400.0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v28 = v15;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136315650;
    v29 = 0;
    v30 = 0xE000000000000000;
    v31 = v21;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for ForcedAppDisambiguationHistory, &outlined read-only object #0 of ForcedAppDisambiguationHistory.daysSinceLastShowed.getter, 0, 0);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v31);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    Date.init(timeIntervalSince1970:)();
    lazy protocol witness table accessor for type Date and conformance Date();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v14(v11, v3);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v31);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2048;
    if (v15 >= 0.0 && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    if (v16 <= -9.22337204e18)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v16 >= 9.22337204e18)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v27 = fabs(v15);
    *(v20 + 24) = v16;
    _os_log_impl(&dword_0, v18, v19, "%s is shown at %s, which is %ld days ago last time", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v27 = fabs(v15);
  }

  if (v15 >= 0.0 && v27 == INFINITY)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t ForcedAppDisambiguationHistory.description.getter(char a1, double a2)
{
  _StringGuts.grow(_:)(28);
  v3._countAndFlagsBits = 0x3A65736168700A7BLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  v4 = "showedForcedAppDisambiguation";
  if (a1)
  {
    v4 = "loggedForcedAppDisambiguation";
  }

  v5._object = ((v4 - 32) | 0x8000000000000000);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x7473656D69740A2CLL;
  v6._object = 0xED0000203A706D61;
  String.append(_:)(v6);
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 32010;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t ForcedAppDisambiguationHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1936748641 && a2 == 0xE400000000000000)
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

uint64_t ForcedAppDisambiguationHistory.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6573616870;
  }

  if (a1 == 1)
  {
    return 0x6D617473656D6974;
  }

  return 1936748641;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ForcedAppDisambiguationHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ForcedAppDisambiguationHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForcedAppDisambiguationHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForcedAppDisambiguationHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static ForcedAppDisambiguationHistory.__derived_struct_equals(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, double a5, double a6)
{
  if ((specialized == infix<A>(_:_:)(a1 & 1, a3 & 1) & 1) == 0 || a5 != a6)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(a2, a4);
}

uint64_t ForcedAppDisambiguationHistory.encode(to:)(void *a1, char a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMR);
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v15[-v12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2 & 1;
  v18 = 0;
  lazy protocol witness table accessor for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = a3;
    v15[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v8);
}

double ForcedAppDisambiguationHistory.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMR);
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11[30] = 0;
  lazy protocol witness table accessor for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11[29] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v11[28] = 2;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t protocol witness for SiriPhoneDefaultsCodable.init() in conformance ForcedAppDisambiguationHistory@<X0>(uint64_t a1@<X8>)
{
  v3 = ForcedAppDisambiguationHistory.init()();
  *a1 = 0;
  *(a1 + 8) = v3.timestamp;
  *(a1 + 16) = _swiftEmptyArrayStorage;
  LOBYTE(result) = v3.phase;
  return result;
}

void protocol witness for Decodable.init(from:) in conformance ForcedAppDisambiguationHistory(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ForcedAppDisambiguationHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

unint64_t lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase()
{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ForcedAppDisambiguationHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  a1[2] = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  result = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ForcedAppDisambiguationHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  result = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ForcedAppDisambiguationPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for ForcedAppDisambiguationHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t static StartCallViewBuilders.makeForeignEmergencyButtonsBuilder(templatingService:disambiguationList:sharedGlobals:isDirectInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#StartCallViewBuilders Providing ForeignEmergencyButtonsBuilder", v13, 2u);
  }

  outlined init with copy of SignalProviding(a3, a5 + 16);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 56) = a4 & 1;
}

uint64_t ForeignEmergencyButtonsBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  SiriKitDisambiguationList.disambiguationItems.getter();
  v6 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v7 = OUTLINED_FUNCTION_11_0();
  v8(v7, v6);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  OUTLINED_FUNCTION_11_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v9 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)();

  __swift_destroy_boxed_opaque_existential_1(v13);
  type metadata accessor for SiriKitAceViewBuilder();
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  (*(v11 + 8))(v13, v10, v11);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v13);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();
  OUTLINED_FUNCTION_34_0();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  dispatch thunk of SiriKitAceViewBuilder.build()();
  OUTLINED_FUNCTION_34_0();

  a2(a1, 0);
}

uint64_t ForeignEmergencyButtonsBuilder.makeViewsForCar(utteranceViews:_:)(unint64_t a1, void (*a2)(uint64_t, void))
{
  SiriKitDisambiguationList.disambiguationItems.getter();
  static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();
  OUTLINED_FUNCTION_34_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v2;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v9 = v2;

    _bridgeCocoaArray<A>(_:)();
    OUTLINED_FUNCTION_11_0();

    a1 = v8;
  }

  else
  {
    v6 = v2;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  specialized Array.append<A>(contentsOf:)(a1);
  a2(v5, 0);
}

uint64_t specialized ForeignEmergencyButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, uint64_t a8)
{
  v13 = SiriKitDisambiguationList.rawItems.getter();
  v14 = specialized _arrayConditionalCast<A, B>(_:)(v13);

  v15 = SiriKitDisambiguationList.disambiguationItems.getter();
  v16 = specialized Array.count.getter(v15);
  if (!v16)
  {

    v30 = _swiftEmptyArrayStorage;
LABEL_21:
    type metadata accessor for SiriKitAceViewBuilder();
    v31 = a2[5];
    v32 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v31);
    (*(v32 + 8))(v40, v31, v32);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v40);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.withButtons(buttons:)();
    OUTLINED_FUNCTION_11_0();

    dispatch thunk of SiriKitAceViewBuilder.build()();
    OUTLINED_FUNCTION_34_0();

    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v30, 0, a3, a4, a5, a6 & 0x1FF, a7);
  }

  v17 = v16;
  v40[0] = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v17 < 0)
  {
    goto LABEL_26;
  }

  v33 = a4;
  v34 = a5;
  v35 = a7;
  v36 = a3;
  v37 = a8;
  result = specialized Array.count.getter(v15);
  v19 = -v17;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v21 = 4;
  v22 = result & ~(result >> 63);
  while (v22)
  {
    v23 = v21 - 4;
    if ((v15 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v24 = result;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v23 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v24 = *(v15 + 8 * v21);

      if (!v14)
      {
        goto LABEL_15;
      }
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v25 = *(v14 + 8 * v21);
    }

    v26 = v25;
    v27 = [v25 personHandle];

    if (v27)
    {
      v28 = [v27 emergencyType];

      v29 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v28 = 0;
    v29 = 1;
LABEL_16:
    ForeignEmergencyButtonsBuilder.makeButtonView(item:emergencyType:)(v24, v28, v29);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (!v20)
    {
      goto LABEL_23;
    }

    --v20;
    --v22;
    ++v21;
    if (v19 + v21 == 4)
    {

      v30 = v40[0];
      a3 = v36;
      a5 = v34;
      a7 = v35;
      a4 = v33;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t ForeignEmergencyButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = SiriKitDisambiguationList.rawItems.getter();
  v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

  v8 = SiriKitDisambiguationList.disambiguationItems.getter();
  v9 = specialized Array.count.getter(v8);
  if (!v9)
  {

LABEL_21:
    type metadata accessor for SiriKitAceViewBuilder();
    v23 = v29[5];
    v24 = v29[6];
    __swift_project_boxed_opaque_existential_1(v29 + 2, v23);
    (*(v24 + 8))(v30, v23, v24);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v30);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.withButtons(buttons:)();

    v25 = dispatch thunk of SiriKitAceViewBuilder.build()();

    a2(v25, 0);
  }

  v10 = v9;
  v30[0] = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v10 < 0)
  {
    goto LABEL_26;
  }

  v26 = a1;
  v27 = a3;
  v28 = a2;
  result = specialized Array.count.getter(v8);
  v12 = -v10;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = 4;
  v15 = result & ~(result >> 63);
  while (v15)
  {
    v16 = v14 - 4;
    if ((v8 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = result;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v16 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v17 = *(v8 + 8 * v14);

      if (!v7)
      {
        goto LABEL_15;
      }
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v18 = *(v7 + 8 * v14);
    }

    v19 = v18;
    v20 = [v18 personHandle];

    if (v20)
    {
      v21 = [v20 emergencyType];

      v22 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v21 = 0;
    v22 = 1;
LABEL_16:
    ForeignEmergencyButtonsBuilder.makeButtonView(item:emergencyType:)(v17, v21, v22);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (!v13)
    {
      goto LABEL_23;
    }

    --v13;
    --v15;
    ++v14;
    if (v12 + v14 == 4)
    {

      a2 = v28;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id ForeignEmergencyButtonsBuilder.makeButtonView(item:emergencyType:)(uint64_t a1, uint64_t a2, char a3)
{
  if (dispatch thunk of SiriKitDisambiguationItem.getFirstComponent()())
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIButton, SAUIButton_ptr);
    v5 = SiriKitDisambiguationItemComponent.print.getter();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_426260;
    *(v8 + 32) = ForeignEmergencyButtonsBuilder.getButtonCommands(_:)();
    v9 = SAUIButton.init(text:commands:)(v5, v7, v8);
    if ((a3 & 1) == 0 && a2 == 1)
    {
      v10 = static ColorFactory.white.getter();
      [v9 setTextColor:v10];

      v11 = static ColorFactory.emergencyRed.getter();
      [v9 setBackgroundColor:v11];
    }

    return v9;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Missing first component display text for Foreign Emergency Disambiguation button", v16, 2u);
    }

    v17 = objc_allocWithZone(SAUIButton);

    return [v17 init];
  }
}

uint64_t ForeignEmergencyButtonsBuilder.getButtonCommands(_:)()
{
  if (*(v0 + 56) == 1 && (v1 = SiriKitDisambiguationItem.directInvocation.getter()) != 0)
  {
    v2 = v1;
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    (*(v4 + 8))(v7, v3, v4);
    v5 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(v7);

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    SiriKitDisambiguationItem.utterance.getter();
    v5 = static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)();
  }

  return v5;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ForeignEmergencyButtonsBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ForeignEmergencyButtonsBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HandleIntentSubmitter.submit(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return _swift_task_switch(HandleIntentSubmitter.submit(app:intent:), 0, 0);
}

uint64_t HandleIntentSubmitter.submit(app:intent:)()
{
  v34 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  *(v0 + 104) = __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315650;
    *(v0 + 56) = v6;
    type metadata accessor for HandleIntentSubmitter(0, *(v7 + 80), *(v7 + 88), v12);

    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v33);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v0 + 64) = v9;
    type metadata accessor for App();
    lazy protocol witness table accessor for type App and conformance App();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v33);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v19 = [v8 typeName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v33);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_0, v4, v5, "#%s Submitting single HandleIntent for app: %s, intent: %s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_26_0(v10);
  }

  v24 = *(v0 + 88);
  v25 = *(v0 + 72);
  v26 = *(v0 + 80);
  HandleIntentSubmitter.applyAppToIntent(app:intent:)(v25, v26);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntent, SAIntentGroupHandleIntent_ptr);
  v27 = SAIntentGroupHandleIntent.init(intent:appIdentifier:)(v26, 0, 0);
  *(v0 + 112) = v27;
  v28 = v24[5];
  v29 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 2, v28);
  v30 = swift_task_alloc();
  *(v0 + 120) = v30;
  v31 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntentCompleted, SAIntentGroupHandleIntentCompleted_ptr);
  *v30 = v0;
  v30[1] = HandleIntentSubmitter.submit(app:intent:);

  return AceServiceInvokerAsync.submit<A>(_:)(v27, v28, v31, v29);
}

{
  v1 = v0[17];
  v2 = v0[14];
  v3 = HandleIntentSubmitter.makeIntentResponse(from:)(v1);

  v4 = v0[1];

  return v4(v3);
}

{
  v18 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v0[5] = v3;
    v17[0] = v6;
    *v5 = 136315394;
    type metadata accessor for HandleIntentSubmitter(0, *(v4 + 80), *(v4 + 88), v7);

    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v17);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v17);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_0, v1, v2, "#%s makeIntentResponse threw an error: %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v14 = v0[14];
  swift_willThrow();

  v15 = v0[1];

  return v15();
}