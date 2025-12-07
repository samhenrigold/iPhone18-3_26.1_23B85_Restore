uint64_t ReaderOntologyNode.__deallocating_deinit()
{
  NonTerminalOntologyNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallNLv3Intent.appNode.getter(void (*a1)(void))
{
  a1(0);
}

uint64_t SmsGroupIntentNode.smsGroupName.getter()
{
  OUTLINED_FUNCTION_63_10();
  return SmsGroupIntentNode.smsGroupName.getter();
}

{
  OUTLINED_FUNCTION_42_18();
  if (!v0)
  {
    swift_once();
  }

  type metadata accessor for SmsGroupIntentNode(0);
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type SmsGroupIntentNode and conformance SmsGroupIntentNode, type metadata accessor for SmsGroupIntentNode, &protocol conformance descriptor for SmsGroupIntentNode);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v2;
}

uint64_t *SmsGroupOntologyNode.smsGroupName.unsafeMutableAddressor()
{
  if (one-time initialization token for smsGroupName != -1)
  {
    OUTLINED_FUNCTION_36_20(&one-time initialization token for smsGroupName);
  }

  return &static SmsGroupOntologyNode.smsGroupName;
}

uint64_t *SmsGroupOntologyNode.smsGroupNameId.unsafeMutableAddressor()
{
  if (one-time initialization token for smsGroupNameId != -1)
  {
    OUTLINED_FUNCTION_35_19(&one-time initialization token for smsGroupNameId);
  }

  return &static SmsGroupOntologyNode.smsGroupNameId;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance SmsGroupIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type SmsGroupIntentNode and conformance SmsGroupIntentNode, type metadata accessor for SmsGroupIntentNode, &protocol conformance descriptor for SmsGroupIntentNode);

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance SmsGroupIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type SmsGroupIntentNode and conformance SmsGroupIntentNode, type metadata accessor for SmsGroupIntentNode, &protocol conformance descriptor for SmsGroupIntentNode);

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t one-time initialization function for appName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  OUTLINED_FUNCTION_23_6();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a4 = result;
  return result;
}

uint64_t SmsGroupOntologyNode.init(name:multicardinal:)()
{
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  if (one-time initialization token for smsGroupName != -1)
  {
    OUTLINED_FUNCTION_36_20(&one-time initialization token for smsGroupName);
  }

  v1 = static SmsGroupOntologyNode.smsGroupName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_76_7();
  v7 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v3, v4, v5, v6);
  *(v0 + 64) = v7;
  *(v0 + 32) = v1;
  v8 = one-time initialization token for smsGroupNameId;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_35_19(&one-time initialization token for smsGroupNameId);
  }

  v9 = static SmsGroupOntologyNode.smsGroupNameId;
  *(v0 + 96) = v2;
  *(v0 + 104) = v7;
  *(v0 + 72) = v9;

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_65();

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

uint64_t PhoneCallNLv3Intent.intent.getter(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_23_1();
  v1 = OUTLINED_FUNCTION_19_0();

  return v2(v1);
}

uint64_t static SmsGroupIntentNode.from(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_67_10();
  OUTLINED_FUNCTION_23_1();
  (*(v4 + 16))(v3, v2);
  *(v3 + *(v0(0) + 20)) = v1;
}

void AppIntentNode.applicationId.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV6OriginVSgMd, &_s12SiriOntology15TerminalElementV6OriginVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  v90 = &v85 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV12OriginDetailOSgMd, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v91 = &v85 - v6;
  v87 = type metadata accessor for TerminalElement.MatchingSpan();
  OUTLINED_FUNCTION_7();
  v89 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v88 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v93 = (&v85 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v14);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v18);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_29_3();
  v20 = type metadata accessor for TerminalElement();
  OUTLINED_FUNCTION_7();
  v92 = v21;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.applicationIdNode.getter();
  type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_28_18();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v26, v27, &protocol conformance descriptor for AppIntentNode);
  IntentNodeTraversable.value<A>(forNode:)();

  if (v95)
  {
    goto LABEL_9;
  }

  v28 = v93;
  v85 = v25;
  v86 = v20;
  static AppOntologyNode.appNameNode.getter();
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();

  v29 = type metadata accessor for TerminalIntentNode();
  OUTLINED_FUNCTION_9_40(v17, 1, v29);
  if (v38)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    v34 = v0;
    v30 = OUTLINED_FUNCTION_54_19();
    __swift_storeEnumTagSinglePayload(v30, v31, 1, v86);
LABEL_7:
    v39 = &_s12SiriOntology15TerminalElementVSgMd;
    v40 = &_s12SiriOntology15TerminalElementVSgMR;
    v41 = v34;
LABEL_8:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, v39, v40);
    goto LABEL_9;
  }

  v32 = TerminalIntentNode.elements.getter();
  OUTLINED_FUNCTION_40();
  (*(v33 + 8))(v17, v29);
  v34 = v0;
  specialized BidirectionalCollection.last.getter(v32, v0);

  v35 = OUTLINED_FUNCTION_54_19();
  v36 = v86;
  OUTLINED_FUNCTION_9_40(v35, v37, v86);
  if (v38)
  {
    goto LABEL_7;
  }

  (*(v92 + 32))(v85, v0, v36);
  v42 = v28;
  TerminalElement.value.getter();
  type metadata accessor for TerminalElement.Value();
  OUTLINED_FUNCTION_1_0(v28);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_24_28();
    v45(v44);
    v39 = &_s12SiriOntology15TerminalElementV5ValueOSgMd;
    v40 = &_s12SiriOntology15TerminalElementV5ValueOSgMR;
LABEL_23:
    v41 = v42;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_78();
  v46 = OUTLINED_FUNCTION_13_17();
  v48 = v47(v46);
  if (v48 != enum case for TerminalElement.Value.string(_:))
  {
    v58 = OUTLINED_FUNCTION_24_28();
    v59(v58);
LABEL_18:
    v60 = OUTLINED_FUNCTION_13_17();
    v61(v60);
    goto LABEL_9;
  }

  v49 = OUTLINED_FUNCTION_13_17();
  v50(v49);
  v52 = *v28;
  v51 = v28[1];
  v53 = v90;
  TerminalElement.origin.getter();
  v54 = type metadata accessor for TerminalElement.Origin();
  OUTLINED_FUNCTION_1_0(v53);
  if (v38)
  {
    v55 = OUTLINED_FUNCTION_24_28();
    v56(v55);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_s12SiriOntology15TerminalElementV6OriginVSgMd, &_s12SiriOntology15TerminalElementV6OriginVSgMR);
    v57 = type metadata accessor for TerminalElement.OriginDetail();
    v42 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v57);
LABEL_22:
    v39 = &_s12SiriOntology15TerminalElementV12OriginDetailOSgMd;
    v40 = &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR;
    goto LABEL_23;
  }

  v42 = v91;
  TerminalElement.Origin.originDetail.getter();
  OUTLINED_FUNCTION_40();
  (*(v62 + 8))(v53, v54);
  type metadata accessor for TerminalElement.OriginDetail();
  OUTLINED_FUNCTION_1_0(v42);
  if (v63)
  {
    v64 = OUTLINED_FUNCTION_24_28();
    v65(v64);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_78();
  v66 = OUTLINED_FUNCTION_13_17();
  v68 = v67(v66);
  if (v68 != enum case for TerminalElement.OriginDetail.matchingSpan(_:))
  {
    v83 = OUTLINED_FUNCTION_24_28();
    v84(v83);

    goto LABEL_18;
  }

  v69 = OUTLINED_FUNCTION_13_17();
  v70(v69);
  v72 = v88;
  v71 = v89;
  v73 = v42;
  v74 = v87;
  (*(v89 + 32))(v88, v73, v87);
  v75 = TerminalElement.MatchingSpan.matcherNames.getter();
  v94 = 0xD000000000000010;
  v95 = 0x800000000045E930;
  __chkstk_darwin(v75);
  OUTLINED_FUNCTION_6_49();
  *(v76 - 16) = &v94;
  v77 = specialized Sequence.contains(where:)();

  if (v77)
  {
    v78._object = 0x800000000045D960;
    v78._countAndFlagsBits = 0xD000000000000017;
    v79 = String.hasSuffix(_:)(v78);
    v80 = v86;
    v81 = v92;
    if (v79)
    {
      v82 = String.count.getter();
      specialized BidirectionalCollection.dropLast(_:)(v82, v52, v51);
      static String._fromSubstring(_:)();
    }

    (*(v71 + 8))(v72, v74);
    (*(v81 + 8))(v85, v80);
  }

  else
  {

    (*(v71 + 8))(v72, v74);
    (*(v92 + 8))(v85, v86);
  }

LABEL_9:
  OUTLINED_FUNCTION_65();
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v3 = String.subscript.getter();

    return v3;
  }

  return result;
}

uint64_t AppIntentNode.appName.getter()
{
  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.appNameNode.getter();
  type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_28_18();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for AppIntentNode);
  OUTLINED_FUNCTION_23_6();
  IntentNodeTraversable.value<A>(forNode:)();

  return v3;
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance PhoneCallNLv3Intent(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  (a3)(0, a2);
  OUTLINED_FUNCTION_23_1();
  v3 = OUTLINED_FUNCTION_19_0();

  return v4(v3);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance AppIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type AppIntentNode and conformance AppIntentNode, type metadata accessor for AppIntentNode, &protocol conformance descriptor for AppIntentNode);

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance AppIntentNode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type AppIntentNode and conformance AppIntentNode, type metadata accessor for AppIntentNode, &protocol conformance descriptor for AppIntentNode);

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, v2);
}

PhoneCallFlowDelegatePlugin::PhonePreferredCallProvider_optional __swiftcall PhonePreferredCallProvider.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhonePreferredCallProvider.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::PhonePreferredCallProvider_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhonePreferredCallProvider@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhonePreferredCallProvider_optional *a2@<X8>)
{
  result.value = PhonePreferredCallProvider.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhonePreferredCallProvider@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallPreferredProvider.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance PhonePreferredCallProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider();
  v13 = lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider();
  v14 = lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v12, v13, v14, v15, v16, v17, a9, a10);
}

BOOL SemanticTag.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SemanticTag.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SemanticTag@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SemanticTag.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider()
{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider;
  if (!lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonePreferredCallProvider and conformance PhonePreferredCallProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SemanticTag and conformance SemanticTag()
{
  result = lazy protocol witness table cache variable for type SemanticTag and conformance SemanticTag;
  if (!lazy protocol witness table cache variable for type SemanticTag and conformance SemanticTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SemanticTag and conformance SemanticTag);
  }

  return result;
}

void type metadata completion function for PhoneCallNLv3Intent(uint64_t a1)
{
  type metadata accessor for NLIntent();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppOntologyNode();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DomainOntologyNode();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallAttribute>, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallAudioRoute>, lazy protocol witness table accessor for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
          if (v5 <= 0x3F)
          {
            type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallCapability>, lazy protocol witness table accessor for type PhoneCallCapability and conformance PhoneCallCapability);
            if (v6 <= 0x3F)
            {
              type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallPreferredProvider>, lazy protocol witness table accessor for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
              if (v7 <= 0x3F)
              {
                type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallDestinationType>, lazy protocol witness table accessor for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for PhoneCallContactOntologyNode(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for TerminalOntologyNode<String>();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallNoun>, lazy protocol witness table accessor for type PhoneCallNoun and conformance PhoneCallNoun);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(319, &lazy cache variable for type metadata for TerminalOntologyNode<PhoneCallVerb>, lazy protocol witness table accessor for type PhoneCallVerb and conformance PhoneCallVerb);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for NonTerminalOntologyNode();
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for SmsGroupOntologyNode(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for TerminalOntologyNode<String>()
{
  if (!lazy cache variable for type metadata for TerminalOntologyNode<String>)
  {
    v0 = type metadata accessor for TerminalOntologyNode();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TerminalOntologyNode<String>);
    }
  }
}

void type metadata accessor for TerminalOntologyNode<PhoneCallAttribute>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    OUTLINED_FUNCTION_23_6();
    v4 = type metadata accessor for TerminalOntologyNode();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for PhoneCallContactIntentNode(uint64_t a1)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for SmsGroupIntentNode(uint64_t a1)
{
  result = type metadata accessor for NonTerminalIntentNode();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NonTerminalOntologyNode();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhonePreferredCallProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SemanticTag(_BYTE *result, int a2, int a3)
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

uint64_t outlined copy of PhoneCallEmergencyType?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined copy of PhoneCallEmergencyType(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_36_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_19()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_80_6(unint64_t *a1)
{

  return lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(a1, v1, v2);
}

uint64_t specialized Collection.first.getter@<X0>(_OWORD *a3@<X8>)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_40_4();
  v4 = static AnyIndex.== infix(_:_:)();
  swift_unknownObjectRelease();
  if (v4)
  {
    result = swift_unknownObjectRelease();
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  else
  {
    dispatch thunk of _AnyCollectionBox.subscript.getter();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter();
}

{
  return specialized Collection.first.getter();
}

{
  return specialized Collection.first.getter();
}

{
  return specialized Collection.first.getter();
}

{
  return specialized Collection.first.getter();
}

{
  return specialized Collection.first.getter();
}

{
  return specialized Collection.first.getter();
}

uint64_t specialized Collection.first.getter()
{
  v3 = OUTLINED_FUNCTION_31_20();
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v3);
  if (v2)
  {
    OUTLINED_FUNCTION_19_1();
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(v1 + v4, v0);
  }

  OUTLINED_FUNCTION_29_22();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

{
  v3 = OUTLINED_FUNCTION_31_20();
  v5 = v4(v3);
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
  }

  OUTLINED_FUNCTION_29_22();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

Swift::Bool __swiftcall PhoneCallNLv4Intent.isCallLabelOnly()()
{
  v1 = *(v0 + 79);
  if (v1 == 17)
  {
    goto LABEL_12;
  }

  if (PhoneCallVerb.rawValue.getter(v1) == 1819042147 && v2 == 0xE400000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(v0 + 8);
  if (*(v5 + 16) != 1)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  _sSlsE5first7ElementQzSgvgSay27PhoneCallFlowDelegatePlugin04SiriC7Contact_pG_Tg5_0(v5, v9);
  v6 = v10;
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_19_0();
    isa = SiriPhoneContact.toINPerson()().super.isa;
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = INPerson.isUnnamedHandleLabel.getter();
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
  }

  return v6 & 1;
}

Swift::Bool __swiftcall PhoneCallNLv4Intent.isLabelOnlyRequest()()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16) == 1)
  {
    outlined init with copy of SignalProviding(v1 + 32, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    OUTLINED_FUNCTION_19_0();
    isa = SiriPhoneContact.toINPerson()().super.isa;
    __swift_destroy_boxed_opaque_existential_1(v5);
    v3 = INPerson.isUnnamedHandleLabel.getter();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

__n128 PhoneCallNLv4Intent.init(contactQueries:contacts:app:phoneCallAVMode:phoneCallAttributes:phoneCallAudioRoute:phoneCallCapability:phoneCallConfirmation:phoneCallDestinationType:phoneCallNoun:phoneCallPreferredProvider:phoneCallReference:phoneCallVerb:voiceMailVerb:voiceMailNoun:smsGroups:references:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  result = *a3;
  v13 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v13;
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 73) = a7;
  *(a9 + 74) = a8;
  *(a9 + 75) = a10;
  *(a9 + 76) = *(&a10 + 1);
  *(a9 + 78) = *(&a10 + 3);
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  return result;
}

uint64_t SiriPhoneContactImpl.__allocating_init(contactConvertible:contactRole:)(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = specialized SiriPhoneContactImpl.__allocating_init(contactConvertible:contactRole:)(v10, v3, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void UsoEntity_common_App.applicationId.getter()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  i = v4 - v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_13_5();
  v98 = v8;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v9);
  v11 = &v91 - v10;
  __chkstk_darwin(v12);
  v14 = &v91 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v16 = OUTLINED_FUNCTION_21(v15);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4_57(v21, v22, v23, v24, v25, v26, v27, v28, v91);
  __chkstk_darwin(v29);
  v31 = &v91 - v30;
  __chkstk_darwin(v32);
  v34 = &v91 - v33;
  v35 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v36 = v35;
  v95 = v34;
  v96 = i;
  v94 = v19;
  if (!v35)
  {
    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    goto LABEL_25;
  }

  v91 = v31;
  v92 = v11;
  v37 = *(v35 + 16);
  v34 = (v2 + 16);
  v97 = "Index";

  for (i = 0; ; ++i)
  {
    if (v37 == i)
    {

      v34 = v95;
      goto LABEL_23;
    }

    if (i >= *(v36 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v2 + 16))(v14, v36 + v38 + *(v2 + 72) * i, v0);
    v39 = UsoIdentifier.namespace.getter();
    if (!v40)
    {
      goto LABEL_21;
    }

    v41 = v39 == 0x64695F6D657469 && v40 == 0xE700000000000000;
    if (v41)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v43 = UsoIdentifier.appBundleId.getter();
    v45 = v44;
    v46._countAndFlagsBits = v43;
    v46._object = v45;
    v47 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundleType.init(rawValue:), v46);

    if (v47)
    {
      if (v47 != 1)
      {
        goto LABEL_21;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v48 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v49 = UsoIdentifier.value.getter();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      break;
    }

LABEL_21:
    (*(v2 + 8))(v14, v0);
  }

  OUTLINED_FUNCTION_15_39();
  v34 = v95;
  v89(v95, v14, v0);
LABEL_23:
  OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  i = v96;
  v19 = v94;
  v31 = v91;
  v11 = v92;
LABEL_25:
  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(v31);
  if (!v41)
  {

    OUTLINED_FUNCTION_15_39();
    v76(v11, v31, v0);
    UsoIdentifier.value.getter();
    v77 = OUTLINED_FUNCTION_16_41();
    v78(v77);
    v79 = v34;
    goto LABEL_55;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v31, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  if (!v36)
  {
    v36 = v93;
    goto LABEL_48;
  }

  v61 = 0;
  i = 0x656D614E707061;
  v62 = *(v36 + 16);
  v34 = (v2 + 16);
  v97 = "Index";
  while (2)
  {
    if (v62 == v61)
    {

      v34 = v95;
      v36 = v93;
      goto LABEL_46;
    }

    if (v61 >= *(v36 + 16))
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v2 + 16))(v98, v36 + v63 + *(v2 + 72) * v61, v0);
    v64 = UsoIdentifier.namespace.getter();
    if (!v65)
    {
      goto LABEL_44;
    }

    if (v64 == 0x656D614E707061 && v65 == 0xE700000000000000)
    {
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v67 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v68 = UsoIdentifier.appBundleId.getter();
    v70 = v69;
    v71._countAndFlagsBits = v68;
    v71._object = v70;
    v72 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierAppBundleType.init(rawValue:), v71);

    if (v72)
    {
      if (v72 == 1)
      {

        goto LABEL_43;
      }

LABEL_44:
      (*(v2 + 8))(v98, v0);
      ++v61;
      continue;
    }

    break;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v73 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  v101 = UsoIdentifier.value.getter();
  v102 = v74;
  v99 = 46;
  v100 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v75 = StringProtocol.contains<A>(_:)();

  if ((v75 & 1) == 0)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_15_39();
  v36 = v93;
  v90(v93, v98, v0);
  v34 = v95;
LABEL_46:
  v19 = v94;
  i = v96;
LABEL_48:
  OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(v19);
  if (v41)
  {
    OUTLINED_FUNCTION_9_20(v36);
    OUTLINED_FUNCTION_9_20(v34);
    OUTLINED_FUNCTION_9_20(v19);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_15_39();
  v84(i, v19, v0);
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_61:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v85 = type metadata accessor for Logger();
  __swift_project_value_buffer(v85, static Logger.siriPhone);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_0, v86, v87, "#UsoEntity_common_App falling back to appId from VocFile", v88, 2u);
    OUTLINED_FUNCTION_26_0(v88);
  }

  UsoIdentifier.value.getter();
  (*(v2 + 8))(i, v0);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v79 = v34;
LABEL_55:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v79, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
LABEL_56:
  OUTLINED_FUNCTION_65();
}

void UsoEntity_common_PhoneCallMode.phoneCallAVMode.getter()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v77 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v83 = v9 - v10;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v11);
  v13 = &v74[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v76 = v16 - v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  v81 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_13_5();
  v82 = v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  v24 = &v74[-v23];
  __chkstk_darwin(v25);
  v27 = &v74[-v26];
  __chkstk_darwin(v28);
  v30 = &v74[-v29];
  v80 = v1;
  dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();
  v84 = v3;
  v78 = *(v3 + 104);
  v78(v27, enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Audio(_:), v0);
  OUTLINED_FUNCTION_12_9();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v79 = v7;
  v35 = *(v7 + 48);
  outlined init with copy of PersonNameComponents?();
  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(v13);
  if (v36)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
    OUTLINED_FUNCTION_1_0(&v13[v35]);
    if (v36)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  outlined init with copy of PersonNameComponents?();
  OUTLINED_FUNCTION_1_0(&v13[v35]);
  if (v36)
  {
    OUTLINED_FUNCTION_16_25();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, v38, v39);
    OUTLINED_FUNCTION_16_25();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, v41, v42);
    (*(v84 + 8))(v24, v0);
LABEL_9:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
    goto LABEL_10;
  }

  v54 = v84;
  (*(v84 + 32))(v77, &v13[v35], v0);
  OUTLINED_FUNCTION_9_54();
  lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(v55, v56, &protocol conformance descriptor for UsoEntity_common_PhoneCallMode.DefinedValues);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v57 = *(v54 + 8);
  v58 = OUTLINED_FUNCTION_16_41();
  v57(v58);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  (v57)(v24, v0);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  if ((v75 & 1) == 0)
  {
LABEL_10:
    v43 = v82;
    dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();
    v44 = v81;
    v78(v81, enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Video(_:), v0);
    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    v49 = *(v79 + 48);
    v50 = v83;
    outlined init with copy of PersonNameComponents?();
    outlined init with copy of PersonNameComponents?();
    OUTLINED_FUNCTION_1_0(v50);
    if (v36)
    {
      OUTLINED_FUNCTION_77_1(v44);
      OUTLINED_FUNCTION_77_1(v43);
      OUTLINED_FUNCTION_1_0(v50 + v49);
      if (v36)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v50, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
        goto LABEL_20;
      }
    }

    else
    {
      outlined init with copy of PersonNameComponents?();
      OUTLINED_FUNCTION_1_0(v50 + v49);
      if (!v51)
      {
        v59 = v84;
        v60 = v77;
        (*(v84 + 32))(v77, v50 + v49, v0);
        OUTLINED_FUNCTION_9_54();
        lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(v61, v62, &protocol conformance descriptor for UsoEntity_common_PhoneCallMode.DefinedValues);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = *(v59 + 8);
        v63(v60, v0);
        OUTLINED_FUNCTION_40_4();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, v65, v66);
        OUTLINED_FUNCTION_40_4();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v67, v68, v69);
        v70 = OUTLINED_FUNCTION_16_41();
        (v63)(v70);
        OUTLINED_FUNCTION_40_4();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v71, v72, v73);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_77_1(v44);
      OUTLINED_FUNCTION_77_1(v43);
      v52 = OUTLINED_FUNCTION_16_41();
      v53(v52);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v50, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
  }

LABEL_20:
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallNLv4Intent.getMergedNLIntent(previousNLIntent:currentNLIntent:)@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  outlined init with copy of PersonNameComponents?();
  if (!*(&v61 + 1))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v60, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return outlined init with copy of SignalProviding(a1, a2);
  }

  outlined init with take of PhoneCallFeatureFlagProviding(&v60, v63);
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v4 = OUTLINED_FUNCTION_8_8();
  v5(v4);
  if (_s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE13isAppModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(v63, a1))
  {
    OUTLINED_FUNCTION_24_29();
    v6 = OUTLINED_FUNCTION_8_8();
    v7(v6);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v60, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
    v60 = v57;
    v61 = v58;
    v62 = v59;
  }

  OUTLINED_FUNCTION_24_29();
  OUTLINED_FUNCTION_15_39();
  v8 = OUTLINED_FUNCTION_8_8();
  v10 = v9(v8);
  if (v10 == 2)
  {
    __swift_project_boxed_opaque_existential_1(v63, v64);
    OUTLINED_FUNCTION_15_39();
    v11 = OUTLINED_FUNCTION_8_8();
    v10 = v12(v11);
  }

  v56 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = OUTLINED_FUNCTION_20_32();
  v15 = v14(v13);
  if (v15 == 4)
  {
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v16 = OUTLINED_FUNCTION_20_32();
    v15 = v17(v16);
  }

  v55 = v15;
  OUTLINED_FUNCTION_165(a1);
  v18 = OUTLINED_FUNCTION_25_0();
  if (v19(v18) == 5)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_165(a1);
  v22 = OUTLINED_FUNCTION_25_0();
  v24 = v23(v22);
  if (v24 != 5)
  {
    if (PhoneCallDestinationType.rawValue.getter(v24) == 0x6C616D726F6ELL && v50 == 0xE600000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_16_25();
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = v63;
    goto LABEL_13;
  }

LABEL_12:
  v20 = a1;
LABEL_13:
  OUTLINED_FUNCTION_165(v20);
  v25 = OUTLINED_FUNCTION_25_0();
  v54 = v26(v25);
  OUTLINED_FUNCTION_165(v63);
  v27 = OUTLINED_FUNCTION_25_0();
  v29 = v28(v27);
  if ((_s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE02isaB12VerbModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(v63, a1) & 1) != 0 || (v30 = v64, v31 = v65, __swift_project_boxed_opaque_existential_1(v63, v64), (*(v31 + 104))(v30, v31) == 17))
  {
    OUTLINED_FUNCTION_165(a1);
    v32 = OUTLINED_FUNCTION_25_0();
    v29 = v33(v32);
  }

  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v53 = (*(v35 + 128))(v34, v35);
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = (*(v37 + 24))(v36, v37);
  a2[3] = &type metadata for PhoneCallNLv4Intent;
  a2[4] = &protocol witness table for PhoneCallNLv4Intent;
  v39 = swift_allocObject();
  *a2 = v39;
  outlined init with copy of PersonNameComponents?();
  v40 = v29;
  OUTLINED_FUNCTION_24_29();
  v41 = OUTLINED_FUNCTION_8_8();
  v43 = v42(v41);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = (*(v45 + 136))(v44, v45);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v49 = (*(v48 + 144))(v47, v48);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v60, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
  *(v39 + 16) = v53;
  *(v39 + 24) = v38;
  *(v39 + 72) = v56;
  *(v39 + 80) = v43;
  *(v39 + 88) = v55;
  *(v39 + 89) = 1282;
  *(v39 + 91) = v54;
  *(v39 + 92) = 777;
  *(v39 + 94) = 35;
  *(v39 + 95) = v40;
  *(v39 + 96) = 518;
  *(v39 + 104) = v46;
  *(v39 + 112) = v49;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

void static PhoneCallNLv4Intent.appendNewContactQueries(contactQueries:persons:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_1_5();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = *(v4 + 16);
  if (v15 > 1 || specialized Array.count.getter(v2) >= 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = v15;

      *(v19 + 12) = 2048;
      *(v19 + 14) = specialized Array.count.getter(v2);

      _os_log_impl(&dword_0, v17, v18, "#PhoneCallNLv4Intent appendNewContactQueries is skipped since contactQueries array has size:%ld and persons array has size:%ld", v19, 0x16u);
      OUTLINED_FUNCTION_26_0(v19);
    }

    else
    {
    }

    goto LABEL_8;
  }

  if (!specialized Array.count.getter(v2))
  {
LABEL_8:

    goto LABEL_9;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v20 = *(v2 + 32);
  }

  v21 = v20;
  if ((INPerson.isUnnamedHandleLabel.getter() & 1) == 0)
  {

    goto LABEL_8;
  }

  specialized Collection.first.getter();
  OUTLINED_FUNCTION_1_0(v8);
  if (v22)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    goto LABEL_8;
  }

  (*(v10 + 32))(v14, v8, v0);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = v21;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v27 = 138412546;
    *(v27 + 4) = v24;
    *v28 = v24;
    *(v27 + 12) = 2080;
    swift_beginAccess();
    lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery, &protocol conformance descriptor for ContactQuery);
    v29 = v24;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v38);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_0, v25, v26, "#PhoneCallNLv4Intent append isMe to contact queries based on person:%@ contactQuery:%s", v27, 0x16u);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v28);
    v33 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_26_0(v33);
    OUTLINED_FUNCTION_26_0(v27);
  }

  swift_beginAccess();
  ContactQuery.isMe.setter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  v34 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_424FD0;
  (*(v10 + 16))(v35 + v34, v14, v0);
  (*(v10 + 8))(v14, v0);

LABEL_9:
  OUTLINED_FUNCTION_65();
}

BOOL _s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE13isAppModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = PhoneCallNLIntent.applicationId.getter(v4, v5);
  LOBYTE(v5) = specialized Optional<A>.isNilOrEmpty.getter(v6, v7);

  if ((v5 & 1) == 0)
  {
    v13 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v13);
    v15 = PhoneCallNLIntent.applicationId.getter(v13, v14);
    v17 = v16;
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v20 = PhoneCallNLIntent.applicationId.getter(v18, v19);
    if (v17)
    {
      if (!v21)
      {
        goto LABEL_23;
      }

      if (v15 == v20 && v17 == v21)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else if (v21)
    {
      goto LABEL_23;
    }
  }

  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = PhoneCallNLIntent.appName.getter(v8, v9);
  LOBYTE(v9) = specialized Optional<A>.isNilOrEmpty.getter(v10, v11);

  if (v9)
  {
    return 0;
  }

  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v26 = PhoneCallNLIntent.appName.getter(v24, v25);
  v28 = v27;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = PhoneCallNLIntent.appName.getter(v29, v30);
  if (!v28)
  {
    if (!v32)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (!v32)
  {
LABEL_23:

    return 1;
  }

  if (v26 == v31 && v28 == v32)
  {

    return 0;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v34 & 1) == 0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB8NLIntentPAAE02isaB12VerbModified08previousF007currentF0SbAaB_p_AaB_ptFZAA0aB10NLv4IntentV_Tt1g5(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = *(v4 + 104);
  v6 = v5(v3, v4);
  if (v6 != 17)
  {
    if (PhoneCallVerb.rawValue.getter(v6) == 1819042147 && v19 == 0xE400000000000000)
    {

      goto LABEL_22;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_22;
    }
  }

  if (v5(v3, v4) == 17)
  {
LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  v7 = v5(v3, v4);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 104))(v8, v9);
  v11 = v10 == 17 && v7 == 17;
  if (v7 != 17 && v10 != 17)
  {
    v13 = v10;
    v14 = PhoneCallVerb.rawValue.getter(v7);
    v16 = v15;
    if (v14 == PhoneCallVerb.rawValue.getter(v13) && v16 == v17)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v22 = v11 ^ 1;
  return v22 & 1;
}

BOOL PhoneNumberTag.init(tagName:)()
{
  OUTLINED_FUNCTION_1_15();

  specialized Collection.prefix(_:)(1);
  Substring.lowercased()();
  OUTLINED_FUNCTION_32_19();

  specialized Collection.dropFirst(_:)(1uLL);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  v2._countAndFlagsBits = v0;
  v2._object = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneNumberTag.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t PhoneCallNLv4Intent.phoneCallAttributes.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

double static PhoneCallNLv4Intent.getConfirmationNLIntent(phoneCallConfirmation:)@<D0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for PhoneCallNLv4Intent;
  a2[4] = &protocol witness table for PhoneCallNLv4Intent;
  v4 = swift_allocObject();
  *a2 = v4;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  *(v4 + 72) = 2;
  *(v4 + 80) = 0;
  *(v4 + 88) = 516;
  *(v4 + 90) = a1;
  *&result = 587401477;
  *(v4 + 91) = 587401477;
  *(v4 + 95) = 1553;
  *(v4 + 97) = 2;
  *(v4 + 104) = _swiftEmptyArrayStorage;
  *(v4 + 112) = _swiftEmptyArrayStorage;
  return result;
}

void UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  v4 = &v35 - v3;
  v5 = type metadata accessor for UsoIdentifier();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  if (dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)())
  {
    specialized Collection.first.getter();

    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      v18 = v40;
      (*(v40 + 32))(v17, v4, v5);
      UsoIdentifier.value.getter();
      OUTLINED_FUNCTION_32_19();
      (*(v18 + 8))(v17, v5);
LABEL_21:
      OUTLINED_FUNCTION_65();
      return;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  }

  v36 = v11;
  v37 = v14;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v38 = v0;
  v19 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v39 = *(v19 + 16);
  if (!v39)
  {
LABEL_15:

    dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter();
    if (v30)
    {
      OUTLINED_FUNCTION_32_19();
    }

    else if (dispatch thunk of UsoEntity_common_PersonRelationship.relationshipTypeAsExpression.getter())
    {
      dispatch thunk of CodeGenExpression.operand.getter();
    }

    goto LABEL_21;
  }

  v20 = 0;
  OUTLINED_FUNCTION_19_1();
  v22 = v19 + v21;
  v24 = (v23 + 8);
  while (v20 < *(v19 + 16))
  {
    v25 = v5;
    (*(v40 + 16))(v8, v22 + *(v40 + 72) * v20, v5);
    v26 = UsoIdentifier.namespace.getter();
    if (v27)
    {
      if (v26 == 0xD000000000000012 && v27 == 0x8000000000452860)
      {

LABEL_20:

        v32 = v40 + 32;
        v31 = *(v40 + 32);
        v33 = v36;
        v31(v36, v8, v25);
        v34 = v37;
        v31(v37, v33, v25);
        UsoIdentifier.value.getter();
        OUTLINED_FUNCTION_32_19();
        (*(v32 - 24))(v34, v25);
        goto LABEL_21;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_20;
      }
    }

    ++v20;
    v5 = v25;
    (*v24)(v8, v25);
    if (v39 == v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void UsoEntity_common_PhoneNumber.tags.getter()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v69 = v4 - v5;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4_57(v7, v8, v9, v10, v11, v12, v13, v14, v64);
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v19 = 0;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v70 = *(v20 + 2);
  v71 = (v2 + 16);
  v66 = (v2 + 32);
  v67 = _swiftEmptyArrayStorage;
  v21 = (v2 + 8);
  while (v70 != v19)
  {
    if (v19 >= *(v20 + 2))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v22 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v23 = *(v2 + 72);
    (*(v2 + 16))(v17, &v20[v22 + v23 * v19], v0);
    v24 = UsoIdentifier.namespace.getter();
    if (v25)
    {
      if (v24 == 0x6D754E656E6F6870 && v25 == 0xEB00000000726562)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v65 = *v66;
      v65(v68, v17, v0);
      v30 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1);
        v30 = v72;
      }

      v33 = v30[2];
      v32 = v30[3];
      v34 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        v67 = (v33 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v34 = v67;
        v30 = v72;
      }

      ++v19;
      v30[2] = v34;
      v67 = v30;
      v65(v30 + v22 + v33 * v23, v68, v0);
    }

    else
    {
LABEL_13:
      v28 = OUTLINED_FUNCTION_16_41();
      v29(v28);
      ++v19;
    }
  }

  v35 = v67[2];
  if (v35)
  {
    v72 = _swiftEmptyArrayStorage;
    v36 = v67;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v37 = v72;
    OUTLINED_FUNCTION_19_1();
    v39 = v36 + v38;
    v70 = *(v2 + 72);
    v68 = *(v2 + 16);
    do
    {
      v40 = v69;
      v68(v69, v39, v0);
      v41 = UsoIdentifier.value.getter();
      v43 = v42;
      (*v21)(v40, v0);
      v72 = v37;
      v44 = v37[2];
      if (v44 >= v37[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v37 = v72;
      }

      v37[2] = v44 + 1;
      v45 = &v37[2 * v44];
      v45[4] = v41;
      v45[5] = v43;
      v39 = v70 + v39;
      --v35;
    }

    while (v35);
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  v46 = 0;
  v47 = v37[2];
  v48 = v37 + 5;
  v70 = v37 + 5;
  v71 = _swiftEmptyArrayStorage;
LABEL_28:
  v49 = &v48[2 * v46];
  while (v47 != v46)
  {
    if (v46 >= v37[2])
    {
      goto LABEL_39;
    }

    ++v46;
    v50 = v49 + 2;

    String.index(_:offsetBy:limitedBy:)();
    String.subscript.getter();
    v51 = Substring.lowercased()();

    OUTLINED_FUNCTION_16_25();
    v53 = specialized Collection.dropFirst(_:)(v52);
    v76 = v51;
    v72 = v53;
    v73 = v54;
    v74 = v55;
    v75 = v56;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    v57 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoEntity_common_PhoneNumber.tags.getter, v76);

    v49 = v50;
    if (!v57)
    {
      v58 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v58 + 16) + 1, 1, v58);
        v58 = v62;
      }

      v60 = *(v58 + 16);
      v59 = *(v58 + 24);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v59 > 1, v60 + 1, 1, v58);
        v58 = v63;
      }

      v48 = v70;
      v71 = v58;
      *(v58 + 16) = v61;
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_65();
}

void UsoEntity_common_Group.smsGroupNameId.getter()
{
  OUTLINED_FUNCTION_66();
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_1_5();
  v103 = v2;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = v96 - v8;
  v96[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v98 = v11 - v12;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_13_5();
  v96[2] = v14;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_13_5();
  v97 = v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4_57(v18, v19, v20, v21, v22, v23, v24, v25, v96[0]);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_13_5();
  v99 = v27;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_13_5();
  v100 = v29;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v30);
  v32 = v96 - v31;
  v33 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  v104 = v0;
  v101 = v32;
  if (v33)
  {
    v34 = v33;
    v102 = *(v33 + 16);
    if (v102)
    {
      v96[1] = v1;
      v35 = 0;
      v36 = v104;
      OUTLINED_FUNCTION_19_1();
      v38 = v34 + v37;
      v40 = (v39 + 16);
      v41 = (v39 + 8);
      while (v35 < *(v34 + 16))
      {
        (*(v103 + 16))(v9, v38 + *(v103 + 72) * v35, v36);
        v42 = UsoIdentifier.namespace.getter();
        if (v43)
        {
          if (v42 == 0xD000000000000014 && v43 == 0x80000000004528E0)
          {

LABEL_18:

            (*(v103 + 32))(v101, v9, v104);
            OUTLINED_FUNCTION_12_9();
            __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
            goto LABEL_19;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {
            goto LABEL_18;
          }
        }

        ++v35;
        v36 = v104;
        (*v41)(v9, v104);
        if (v102 == v35)
        {

          v32 = v101;
          goto LABEL_15;
        }
      }

      goto LABEL_45;
    }

    v36 = v104;
LABEL_15:
    v46 = v32;
    v47 = 1;
    v48 = 1;
    v49 = v36;
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
  }

  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
LABEL_19:
  v54 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v36 = *(v54 + 16);
  v55 = v104;
  if (v36)
  {
    v56 = 0;
    OUTLINED_FUNCTION_19_1();
    v58 = v54 + v57;
    v40 = (v59 + 8);
    while (v56 < *(v54 + 16))
    {
      (*(v103 + 16))(v6, v58 + *(v103 + 72) * v56, v55);
      v60 = UsoIdentifier.namespace.getter();
      if (v61)
      {
        if (v60 == 0xD000000000000016 && v61 == 0x8000000000452910)
        {

LABEL_31:

          v55 = v104;
          (*(v103 + 32))(v100, v6, v104);
          v36 = v101;
          goto LABEL_32;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
          goto LABEL_31;
        }
      }

      ++v56;
      v55 = v104;
      (*v40)(v6, v104);
      if (v36 == v56)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_37;
  }

LABEL_29:

  v36 = v101;
LABEL_32:
  v64 = v96[4];
  v40 = v97;
  OUTLINED_FUNCTION_29_22();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  outlined init with copy of PersonNameComponents?();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v55);
  v6 = v99;
  if (EnumTagSinglePayload == 1)
  {
    outlined init with copy of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(v64, 1, v55) != 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }
  }

  else
  {
    (*(v103 + 32))(v99, v64, v55);
    OUTLINED_FUNCTION_29_22();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_46;
  }

LABEL_37:
  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, static Logger.siriPhone);
  outlined init with copy of PersonNameComponents?();
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v105 = v78;
    *v77 = 136315138;
    outlined init with copy of PersonNameComponents?();
    v79 = String.init<A>(describing:)();
    v81 = v80;
    v36 = v101;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v105);

    *(v77 + 4) = v82;
    v6 = v99;
    _os_log_impl(&dword_0, v75, v76, "#UsoEntity_common_Group smsGroupNameId UsoIdentifier: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_26_0(v78);
    OUTLINED_FUNCTION_26_0(v77);
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  }

  v83 = v98;
  outlined init with copy of PersonNameComponents?();
  v84 = v104;
  if (__swift_getEnumTagSinglePayload(v83, 1, v104) == 1)
  {
    OUTLINED_FUNCTION_9_20(v6);
    v85 = OUTLINED_FUNCTION_16_41();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v85, v86, &_s12SiriOntology13UsoIdentifierVSgMR);
    OUTLINED_FUNCTION_9_20(v36);
    OUTLINED_FUNCTION_9_20(v83);
  }

  else
  {
    UsoIdentifier.value.getter();
    OUTLINED_FUNCTION_40_4();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, v88, v89);
    OUTLINED_FUNCTION_40_4();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v90, v91, v92);
    OUTLINED_FUNCTION_40_4();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, v94, v95);
    (*(v103 + 8))(v83, v84);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t UsoEntity_common_App.appName.getter()
{
  result = dispatch thunk of UsoEntity_common_App.name.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    return 0;
  }

  return result;
}

BOOL PhoneNumber.isEmergencyNumber.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))(a1) + 16) != 0;

  return v2;
}

uint64_t PhoneNumberImpl.value.getter()
{
  OUTLINED_FUNCTION_1_15();

  return v0;
}

BOOL PhoneNumberTag.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneNumberTag.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneNumberTag@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = PhoneNumberTag.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized SiriPhoneContactImpl.__allocating_init(contactConvertible:contactRole:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v126 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  __chkstk_darwin(v9 - 8);
  v127 = &v113 - v10;
  v128 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
  v133 = *(v128 - 8);
  __chkstk_darwin(v128);
  v116 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
  __chkstk_darwin(v124);
  v121 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  __chkstk_darwin(v13 - 8);
  v119 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v134 = &v113 - v16;
  __chkstk_darwin(v17);
  v125 = &v113 - v18;
  v135 = type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues();
  v123 = *(v135 - 8);
  __chkstk_darwin(v135);
  v115 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
  __chkstk_darwin(v122);
  v137 = &v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  __chkstk_darwin(v21 - 8);
  v117 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v131 = &v113 - v24;
  __chkstk_darwin(v25);
  v132 = &v113 - v26;
  v27 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v130 = *(v27 - 8);
  __chkstk_darwin(v27);
  v114 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  __chkstk_darwin(v120);
  v30 = &v113 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  __chkstk_darwin(v31 - 8);
  v118 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v129 = &v113 - v34;
  __chkstk_darwin(v35);
  v37 = &v113 - v36;
  v142[3] = a4;
  v142[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
  v39 = (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v40 = (*(a3 + 656))(v39);
  v41 = a5[3];
  v138 = boxed_opaque_existential_1;
  v139 = a4;
  v42 = v41(a4, a5);
  v136 = a5;
  if (v42)
  {
    CodeGenBase.entity.getter();

    type metadata accessor for UsoEntity_common_PersonRelationship();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v141[0])
    {
      UsoEntity_common_PersonRelationship.relationshipIdentifierOrLabel.getter();
      v44 = v43;
      v46 = v45;

      swift_beginAccess();
      *(v40 + 224) = v44;
      *(v40 + 232) = v46;
      a5 = v136;
    }

    else
    {
    }
  }

  v47 = v139;
  UsoContactConvertible.emergencyType.getter();
  v49 = v48;
  v51 = v50;
  swift_beginAccess();
  v52 = *(v40 + 272);
  v53 = *(v40 + 280);
  *(v40 + 272) = v49;
  *(v40 + 280) = v51;
  outlined consume of PhoneCallEmergencyType?(v52, v53);
  v54 = a5[8](v47, a5);
  swift_beginAccess();
  *(v40 + 296) = v54;

  v55 = a5[2](v47, a5);
  v57 = v56;
  swift_beginAccess();
  *(v40 + 40) = v55;
  *(v40 + 48) = v57;

  v58 = v37;
  if (a5[4](v47, a5))
  {
    dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v27);
  }

  v59 = v129;
  (*(v130 + 104))(v129, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v27);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v27);
  v60 = *(v120 + 48);
  outlined init with copy of PersonNameComponents?();
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v30, 1, v27) != 1)
  {
    v62 = v118;
    outlined init with copy of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(&v30[v60], 1, v27) != 1)
    {
      v63 = v130;
      v64 = &v30[v60];
      v65 = v114;
      (*(v130 + 32))(v114, v64, v27);
      lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues, &protocol conformance descriptor for UsoEntity_common_ReferenceType.DefinedValues);
      LODWORD(v120) = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = *(v63 + 8);
      v66(v65, v27);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v129, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v66(v118, v27);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v61 = v132;
      if ((v120 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v129, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    (*(v130 + 8))(v62, v27);
LABEL_13:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
    v61 = v132;
    goto LABEL_16;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v59, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  if (__swift_getEnumTagSinglePayload(&v30[v60], 1, v27) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v61 = v132;
LABEL_15:
  swift_beginAccess();
  *(v40 + 289) = 31;
LABEL_16:
  v67 = a5[5](v139, a5);
  v68 = v134;
  v69 = v123;
  if (!v67)
  {
    goto LABEL_27;
  }

  CodeGenBase.entity.getter();

  type metadata accessor for UsoEntity_common_PhoneNumber();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
  if (v140[0])
  {
    dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
    if (v70)
    {

      v71 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
      v73 = v72;

      swift_beginAccess();
      *(v40 + 192) = v71;
      *(v40 + 200) = v73;
      v68 = v134;
    }

    else
    {
    }
  }

  type metadata accessor for UsoEntity_common_EmailAddress();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v140[0])
  {
    goto LABEL_25;
  }

  dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
  if (!v74)
  {

LABEL_25:

    goto LABEL_26;
  }

  v75 = dispatch thunk of UsoEntity_common_EmailAddress.value.getter();
  v77 = v76;

  swift_beginAccess();
  *(v40 + 208) = v75;
  *(v40 + 216) = v77;
  v68 = v134;

LABEL_26:
  a5 = v136;
LABEL_27:
  if (a5[6](v139, a5))
  {
    dispatch thunk of UsoEntity_common_SearchQualifier.definedValue.getter();

    v78 = v135;
  }

  else
  {
    v78 = v135;
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v135);
  }

  v79 = v131;
  v80 = v69;
  (*(v69 + 104))(v131, enum case for UsoEntity_common_SearchQualifier.DefinedValues.common_SearchQualifier_Exactly(_:), v78);
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v78);
  v81 = *(v122 + 48);
  v82 = v137;
  outlined init with copy of PersonNameComponents?();
  v83 = v135;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v82, 1, v83) != 1)
  {
    v88 = v137;
    v89 = v117;
    outlined init with copy of PersonNameComponents?();
    if (__swift_getEnumTagSinglePayload(v88 + v81, 1, v83) != 1)
    {
      v91 = v80;
      v92 = *(v80 + 32);
      v93 = v137;
      v94 = v115;
      v92(v115, v137 + v81, v83);
      lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_SearchQualifier.DefinedValues and conformance UsoEntity_common_SearchQualifier.DefinedValues, &type metadata accessor for UsoEntity_common_SearchQualifier.DefinedValues, &protocol conformance descriptor for UsoEntity_common_SearchQualifier.DefinedValues);
      v95 = v83;
      v96 = dispatch thunk of static Equatable.== infix(_:_:)();
      v97 = *(v91 + 8);
      v97(v94, v95);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v131, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v132, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      v97(v89, v95);
      v68 = v134;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
      if (v96)
      {
        LODWORD(v87) = 256;
      }

      else
      {
        LODWORD(v87) = 0;
      }

      v90 = v136;
      v86 = v121;
      goto LABEL_41;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v131, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v132, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
    (*(v80 + 8))(v89, v83);
    v86 = v121;
    goto LABEL_35;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v79, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  v84 = v137;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84 + v81, 1, v83);
  v86 = v121;
  if (EnumTagSinglePayload != 1)
  {
LABEL_35:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v137, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSg_AFtMR);
    LODWORD(v87) = 0;
    goto LABEL_36;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v137, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMd, &_s12SiriOntology32UsoEntity_common_SearchQualifierC13DefinedValuesOSgMR);
  LODWORD(v87) = 256;
LABEL_36:
  v90 = v136;
LABEL_41:
  v98 = v125;
  v99 = v128;
  if ((v90[7])(v139) && (v100 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v100))
  {
    dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v99);
  }

  (*(v133 + 104))(v68, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_None(_:), v99);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v99);
  v101 = *(v124 + 48);
  outlined init with copy of PersonNameComponents?();
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v86, 1, v99) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v98, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    if (__swift_getEnumTagSinglePayload(v86 + v101, 1, v99) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      v102 = 0x10000;
      goto LABEL_54;
    }

LABEL_50:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSg_AFtMR);
    v102 = 0;
    goto LABEL_54;
  }

  v103 = v119;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v86 + v101, 1, v99) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v98, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
    (*(v133 + 8))(v103, v99);
    goto LABEL_50;
  }

  LODWORD(v139) = v87;
  v87 = v133;
  v104 = v116;
  (*(v133 + 32))(v116, v86 + v101, v99);
  lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Quantifier.DefinedValues and conformance UsoEntity_common_Quantifier.DefinedValues, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Quantifier.DefinedValues);
  LODWORD(v138) = dispatch thunk of static Equatable.== infix(_:_:)();
  v105 = v98;
  v106 = v99;
  v107 = v105;
  v108 = *(v87 + 8);
  v108(v104, v106);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v107, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  v108(v119, v106);
  LOWORD(v87) = v139;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  if (v138)
  {
    v102 = 0x10000;
  }

  else
  {
    v102 = 0;
  }

LABEL_54:
  v109 = v87 | v126 | v102;
  swift_beginAccess();
  *(v40 + 293) = BYTE2(v102);
  *(v40 + 291) = v109;
  v110 = v127;
  outlined init with copy of SignalProviding(v142, v127);
  v111 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v110, 0, 1, v111);
  swift_beginAccess();
  outlined assign with take of PhoneCallApp?();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v142);
  return v40;
}

unint64_t lazy protocol witness table accessor for type PhoneNumberTag and conformance PhoneNumberTag()
{
  result = lazy protocol witness table cache variable for type PhoneNumberTag and conformance PhoneNumberTag;
  if (!lazy protocol witness table cache variable for type PhoneNumberTag and conformance PhoneNumberTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneNumberTag and conformance PhoneNumberTag);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneNumberTag(_BYTE *result, int a2, int a3)
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

uint64_t outlined assign with take of PhoneCallApp?()
{
  OUTLINED_FUNCTION_1_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23_1();
  v3 = OUTLINED_FUNCTION_19_0();
  v4(v3);
  return v0;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhoneCallNotificationFlowStrategy.makeNotificationBody(_:)(void (*a1)(void), uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  if (v8 && (v9 = v8, type metadata accessor for PhoneCallFlowDelegatePlugin(), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v27[1] = a2, v11 = a1, v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata], static Locale.current.getter(), v13 = Locale.identifier.getter(), v15 = v14, (*(v5 + 8))(v7, v4), v27[6] = v13, v27[7] = v15, v27[4] = 45, v27[5] = 0xE100000000000000, v27[2] = 95, v27[3] = 0xE100000000000000, lazy protocol witness table accessor for type String and conformance String(), v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(), v18 = v17, , v19 = outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(0xD000000000000015, 0x800000000045EA90, 0xD000000000000010, 0x800000000045EAB0, v12, v16, v18, v9), v21 = v20, v9, v12, a1 = v11, v21))
  {
    (v11)(v19, v21, 0);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Could not localize the personal domain activity notification", v26, 2u);
    }

    lazy protocol witness table accessor for type LocalizationError and conformance LocalizationError();
    swift_allocError();
    a1();
  }
}

uint64_t protocol witness for PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody() in conformance PhoneCallNotificationFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody() in conformance PhoneCallNotificationFlowStrategy;

  return PostPersonalDomainActivityNotificationFlowStrategy.makeNotificationBody()(a1, a2);
}

{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

unint64_t lazy protocol witness table accessor for type LocalizationError and conformance LocalizationError()
{
  result = lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError;
  if (!lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError;
  if (!lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizationError and conformance LocalizationError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizationError(_BYTE *result, int a2, int a3)
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

uint64_t PhoneCallProvider.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  PhoneCallProvider.Builder.init()();
  return v0;
}

uint64_t key path setter for PhoneCallProvider.Builder.preferredCallProvider : PhoneCallProvider.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 112))(v6);
}

uint64_t key path setter for PhoneCallProvider.Builder.providerName : PhoneCallProvider.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 136))(v6);
}

uint64_t key path setter for PhoneCallProvider.Builder.providerBundleId : PhoneCallProvider.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 160))(v6);
}

uint64_t PhoneCallProvider.Builder.preferredCallProvider.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t PhoneCallProvider.Builder.init()()
{
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_preferredCallProvider;
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerName);
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerBundleId);
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  return v0;
}

uint64_t PhoneCallProvider.Builder.__allocating_init(preferredCallProvider:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallProvider.Builder.init(preferredCallProvider:)(a1);
  return v2;
}

uint64_t PhoneCallProvider.Builder.init(preferredCallProvider:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_preferredCallProvider;
  v8 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerName);
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = OUTLINED_FUNCTION_11_44(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerBundleId);
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  (*(*(v8 - 8) + 32))(v6, a1, v8);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v6, v1 + v7);
  swift_endAccess();
  return v1;
}

uint64_t PhoneCallProvider.Builder.withPreferredCallProvider(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 112))(v0);
}

uint64_t PhoneCallProvider.Builder.withPreferredCallProvider(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 112))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderName(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 136))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderName(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 136))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderBundleId(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 160))(v0);
}

uint64_t PhoneCallProvider.Builder.withProviderBundleId(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 160))(v0);
}

uint64_t PhoneCallProvider.Builder.build()()
{
  type metadata accessor for PhoneCallProvider(0);
  v0 = swift_allocObject();

  PhoneCallProvider.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallProvider.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallProvider.init(builder:)(a1);
  return v2;
}

uint64_t PhoneCallProvider.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_preferredCallProvider);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin17PhoneCallProvider7Builder_providerBundleId);
  return v0;
}

uint64_t key path setter for PhoneCallProvider.mockGlobals : PhoneCallProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = *a1;
  return v3(v2);
}

uint64_t *PhoneCallProvider.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  v6 = __chkstk_darwin(v5);
  v1[2] = 0;
  (*(*a1 + 104))(v6);
  v7 = OUTLINED_FUNCTION_14_46();
  v9 = outlined init with take of SpeakableString?(v7, v8);
  (*(*a1 + 128))(v9);
  v10 = OUTLINED_FUNCTION_14_46();
  v12 = outlined init with take of SpeakableString?(v10, v11);
  (*(*a1 + 152))(v12);
  v13 = OUTLINED_FUNCTION_14_46();
  v15 = outlined init with take of SpeakableString?(v13, v14);
  if (((*(*v1 + 160))(v15) & 1) == 0)
  {
    v16 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_424FD0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8ProviderCmMd, &_s27PhoneCallFlowDelegatePlugin0aB8ProviderCmMR);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:type:_:)("Building an instance of %s without all required inputs", v22);
  }

  return v2;
}

uint64_t PhoneCallProvider.__allocating_init(preferredCallProvider:providerName:providerBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhoneCallProvider.Builder(0);
  swift_allocObject();
  PhoneCallProvider.Builder.init()();
  OUTLINED_FUNCTION_2_0();
  v8 = (*(v7 + 192))(a1);

  (*(*v8 + 208))(a2);

  OUTLINED_FUNCTION_2_0();
  v10 = (*(v9 + 224))(a3);

  v11 = (*(v3 + 152))(v10);
  outlined destroy of SpeakableString?(a3);
  outlined destroy of SpeakableString?(a2);
  outlined destroy of SpeakableString?(a1);
  return v11;
}

Swift::Bool __swiftcall PhoneCallProvider.allRequiredInputsHaveValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  v4 = &v8 - v3;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider, &v8 - v3);
  v5 = type metadata accessor for SpeakableString();
  v6 = __swift_getEnumTagSinglePayload(v4, 1, v5) != 1;
  outlined destroy of SpeakableString?(v4);
  return v6;
}

uint64_t PhoneCallProvider.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v17 = a1 == 0xD000000000000015 && 0x80000000004522D0 == a2;
  if (v17 || (OUTLINED_FUNCTION_8_4(0xD000000000000015, 0x80000000004522D0) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider, v16);
    v18 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v16);
    if (!v17)
    {
      goto LABEL_25;
    }

    v19 = v16;
    goto LABEL_9;
  }

  v21 = a1 == 0x72656469766F7270 && a2 == 0xEC000000656D614ELL;
  if (v21 || (OUTLINED_FUNCTION_8_4(0x72656469766F7270, 0xEC000000656D614ELL) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerName, v13);
    v18 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v13);
    if (!v17)
    {
      goto LABEL_25;
    }

    v19 = v13;
LABEL_9:
    result = outlined destroy of SpeakableString?(v19);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v22 = a1 == 0xD000000000000010 && 0x8000000000453880 == a2;
  if (v22 || (OUTLINED_FUNCTION_8_4(0xD000000000000010, 0x8000000000453880) & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerBundleId, v10);
    v18 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_8(v10);
    if (!v17)
    {
LABEL_25:
      *(a3 + 24) = v18;
      __swift_allocate_boxed_opaque_existential_1(a3);
      OUTLINED_FUNCTION_16_11();
      return (*(v23 + 32))();
    }

    v19 = v10;
    goto LABEL_9;
  }

  v24 = a1 == 0xD000000000000011 && 0x800000000045EB40 == a2;
  if (v24 || (OUTLINED_FUNCTION_8_4(0xD000000000000011, 0x800000000045EB40) & 1) != 0)
  {
    v25 = 1;
  }

  else
  {
    if (a1 != 0x6954656361467369 || a2 != 0xEA0000000000656DLL)
    {
      result = OUTLINED_FUNCTION_8_4(0x6954656361467369, 0xEA0000000000656DLL);
      if ((result & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v25 = 2;
  }

  result = specialized PhoneCallProviderProperties.isFirstPartyPhone.getter(v25);
  *(a3 + 24) = &type metadata for Bool;
  *a3 = result & 1;
  return result;
}

uint64_t specialized PhoneCallProviderProperties.isFirstPartyPhone.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider, &v20 - v4);
  v6 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of SpeakableString?(v5);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = SpeakableString.print.getter();
    v8 = v9;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v10 = INPreferredCallProviderGetBackingType();
  switch(v10)
  {
    case 4:
      v11 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_10;
    case 3:
      v11 = @"FACETIME_PROVIDER";
      goto LABEL_10;
    case 2:
      v11 = @"TELEPHONY_PROVIDER";
LABEL_10:
      v12 = v11;
      goto LABEL_12;
  }

  v11 = [NSString stringWithFormat:@"(unknown: %i)", v10];
LABEL_12:
  v13 = v11;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v8)
  {
    if (v7 == v14 && v8 == v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = OUTLINED_FUNCTION_8_4(v7, v8);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional __swiftcall PhoneCallProvider.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallProvider.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PhoneCallProvider.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0x72656469766F7270;
  }

  return 0xD000000000000010;
}

PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallProvider.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallProvider.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallProvider.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallProvider.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneCallProvider.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallProvider.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallProvider.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerBundleId);
  return v0;
}

uint64_t PhoneCallProvider.Builder.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallProvider.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_preferredCallProvider;
  v18 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_66();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_1(v12, v13, &protocol conformance descriptor for SpeakableString);
  OUTLINED_FUNCTION_11_9(v3 + v11, &v18);
  if (!v2)
  {
    v17 = 1;
    OUTLINED_FUNCTION_11_9(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerName, &v17);
    v16 = 2;
    OUTLINED_FUNCTION_11_9(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17PhoneCallProvider_providerBundleId, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys);
  }

  return result;
}

uint64_t PhoneCallProvider.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallProvider.init(from:)(a1);
  return v2;
}

id *PhoneCallProvider.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v27[3] = v27 - v11;
  v27[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE8ProviderC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  *(v3 + 16) = 0;
  v15 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type PhoneCallProvider.CodingKeys and conformance PhoneCallProvider.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallProvider(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27[1] = v8;
    v27[2] = v13;
    type metadata accessor for SpeakableString();
    v31 = 0;
    OUTLINED_FUNCTION_5_66();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_1(v16, v17, &protocol conformance descriptor for SpeakableString);
    OUTLINED_FUNCTION_15_40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = OUTLINED_FUNCTION_14_46();
    outlined init with take of SpeakableString?(v19, v20);
    v30 = 1;
    OUTLINED_FUNCTION_15_40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_14_46();
    outlined init with take of SpeakableString?(v21, v22);
    v29 = 2;
    OUTLINED_FUNCTION_15_40();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = OUTLINED_FUNCTION_1_85();
    v24(v23);
    v25 = OUTLINED_FUNCTION_14_46();
    outlined init with take of SpeakableString?(v25, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v3;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallProvider(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallProvider(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneCallProvider.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallProvider.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhoneCallProviderProperties.isFirstPartyPhone.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  (*(a2 + 8))(a1, a2, v6);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v8);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = SpeakableString.print.getter();
    v11 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v13 = INPreferredCallProviderGetBackingType();
  switch(v13)
  {
    case 4:
      v14 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_10;
    case 3:
      v14 = @"FACETIME_PROVIDER";
      goto LABEL_10;
    case 2:
      v14 = @"TELEPHONY_PROVIDER";
LABEL_10:
      v15 = v14;
      goto LABEL_12;
  }

  v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
LABEL_12:
  v16 = v14;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v11)
  {
    if (v10 == v17 && v11 == v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, void *a3, uint64_t (**a4)(uint64_t, char *))
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = specialized PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(a1, a2, v14, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

uint64_t PhoneCallRecord.Options.description.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v2 = v3;
  v4 = v3[2];
  if (v4 >= v3[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = v10;
  }

  v2[2] = v4 + 1;
  v5 = &v2[2 * v4];
  v5[4] = 0xD000000000000016;
  v5[5] = 0x800000000045EBE0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v11;
    }

    v6 = v2[2];
    if (v6 >= v2[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v12;
    }

    v2[2] = v6 + 1;
    v7 = &v2[2 * v6];
    strcpy(v7 + 32, ".announceCalls");
    v7[47] = -18;
  }

LABEL_12:
  v8 = Array.description.getter();

  return v8;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.union(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.symmetricDifference(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.remove(_:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OptionSet<>.update(with:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SetAlgebra.subtracting(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PhoneCallRecord.Options@<X0>(uint64_t *a1@<X8>)
{
  result = specialized SetAlgebra<>.init(arrayLiteral:)();
  *a1 = result;
  return result;
}

uint64_t static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, void *a3, uint64_t (**a4)(uint64_t, char *))
{
  v8 = a3[3];
  v9 = a3[4];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);

  return specialized static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(a1, a2, v10, a4, v4, v8, v9);
}

uint64_t _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t PhoneCallRecord.description.getter()
{
  type metadata accessor for PhoneCallRecord(0);
  lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord();
  CATType.toDictionary.getter();
  v0 = Dictionary.description.getter();

  return v0;
}

uint64_t outlined bridged method (ob) of @objc INPerson.alternatives.getter(void *a1)
{
  v2 = [a1 alternatives];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized PhoneCallRecord.__allocating_init(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, char *), uint64_t a5, uint64_t a6, void *a7)
{
  v13 = *(a6 - 8);
  v14 = __chkstk_darwin(a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 32))(v16, v17, v18, v14);
  v19 = specialized static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(a1, a2, v16, a4, a5, a6, a7);
  v20 = (*(a5 + 320))(v19);

  type metadata accessor for Locale();
  OUTLINED_FUNCTION_23_5();
  (*(v21 + 8))(a4);
  (*(v13 + 8))(v16, a6);
  return v20;
}

uint64_t specialized static PhoneCallRecord.getBuilder(callRecord:options:appInfoBuilder:locale:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, char *), uint64_t a5, uint64_t a6, void *a7)
{
  v242 = a7;
  v239 = a4;
  v236 = a2;
  v10 = type metadata accessor for CATOption();
  __chkstk_darwin(v10 - 8);
  v216 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for Locale();
  v237 = *(v241 - 1);
  __chkstk_darwin(v241);
  v240 = (&v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v226 = type metadata accessor for SpeakableString();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v217 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v218 = &v202 - v15;
  __chkstk_darwin(v16);
  v230 = &v202 - v17;
  __chkstk_darwin(v18);
  v238 = &v202 - v19;
  __chkstk_darwin(v20);
  v229 = &v202 - v21;
  __chkstk_darwin(v22);
  v228 = &v202 - v23;
  __chkstk_darwin(v24);
  v227 = &v202 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v26 - 8);
  v28 = &v202 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v235 = (&v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v34 = &v202 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v35 - 8);
  v37 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v203 = &v202 - v39;
  __chkstk_darwin(v40);
  v231 = &v202 - v41;
  __chkstk_darwin(v42);
  v214 = &v202 - v43;
  __chkstk_darwin(v44);
  v222 = &v202 - v45;
  __chkstk_darwin(v46);
  v221 = &v202 - v47;
  __chkstk_darwin(v48);
  v213 = &v202 - v49;
  __chkstk_darwin(v50);
  v234 = &v202 - v51;
  __chkstk_darwin(v52);
  v54 = &v202 - v53;
  v56 = __chkstk_darwin(v55);
  v58 = &v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = v59;
  (*(v59 + 16))(v58, a3, a6, v56);
  type metadata accessor for App();
  v232 = a1;
  outlined bridged method (pb) of @objc INCallRecord.providerBundleId.getter(a1);
  v219 = App.__allocating_init(appIdentifier:)();
  v210 = v58;
  AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(v219, v239, a6, v242);
  if (v60)
  {
    SpeakableString.init(print:speak:)();
    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  v220 = v54;
  __swift_storeEnumTagSinglePayload(v54, v61, 1, v226);
  v62 = [v232 dateCreated];
  if (v62)
  {
    v63 = v62;
    v64 = v235;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = *(v30 + 32);
    v65(v28, v64, v29);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
    v65(v34, v28, v29);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
    Date.init()();
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
    {
      outlined destroy of PhoneCallNLIntent?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  type metadata accessor for DialogCalendar();
  v223 = static DialogCalendar.make(date:)(v34);
  (*(v30 + 8))(v34, v29);
  v66 = [v232 callRecordType];
  v212 = a6;
  v204 = v37;
  if (v66)
  {
    BackingType = INCallRecordTypeGetBackingType();
    switch(BackingType)
    {
      case 2:
        v68 = @"OUTGOING";
        goto LABEL_20;
      case 3:
        v68 = @"MISSED";
        goto LABEL_20;
      case 4:
        v68 = @"RECEIVED";
        goto LABEL_20;
      case 5:
        v68 = @"LATEST";
        goto LABEL_20;
      case 7:
        v68 = @"VOICEMAIL";
        goto LABEL_20;
      case 8:
        v68 = @"RINGING";
        goto LABEL_20;
      case 9:
        v68 = @"IN_PROGRESS";
        goto LABEL_20;
      case 10:
        v68 = @"ON_HOLD";
LABEL_20:
        v70 = v68;
        break;
      default:
        v68 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v69 = v237;
    v71 = v68;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v69 = v237;
  }

  SpeakableString.init(serializedValue:)();
  SpeakableString.init(print:speak:)();
  SpeakableString.init(print:speak:)();
  v72 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v232);
  if (v72)
  {
    v73 = v72;
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
  }

  v243[0] = _swiftEmptyArrayStorage;
  v74 = specialized Array.count.getter(v73);
  v75 = 0;
  v202 = 0;
  v237 = v73 & 0xC000000000000001;
  v233 = v73 & 0xFFFFFFFFFFFFFF8;
  v239 = (v69 + 8);
  v242 = _swiftEmptyArrayStorage;
  v235 = _swiftEmptyArrayStorage;
  v76 = v240;
  while (v74 != v75)
  {
    if (v237)
    {
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v75 >= *(v233 + 16))
      {
        goto LABEL_129;
      }

      v77 = *(v73 + 8 * v75 + 32);
    }

    v78 = v77;
    v79 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v245, v245[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v245);
    v28 = static PhonePerson.make(phonePerson:options:locale:)(v78, v236 & 2, v76);

    (*v239)(v76, v241);
    ++v75;
    if (v28)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v243[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v243[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v235 = v243[0];
      v75 = v79;
    }
  }

  v80 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v232);
  if (v80)
  {
    v81 = v80;
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  v82 = specialized Array.count.getter(v81);
  v83 = 0;
  v76 = v225;
  v237 = v225 + 32;
  v28 = v226;
  while (v82 != v83)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v83 >= *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_131;
      }

      v84 = *(v81 + 8 * v83 + 32);
    }

    v85 = v84;
    if (__OFADD__(v83, 1))
    {
      goto LABEL_130;
    }

    outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v84);
    SpeakableString.init(print:speak:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v242 = v88;
    }

    v86 = v242[2];
    if (v86 >= v242[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v242 = v89;
    }

    v87 = v242;
    v242[2] = v86 + 1;
    (*(v76 + 32))(v87 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v86, v238, v28);
    ++v83;
  }

  v90 = v235;
  v238 = specialized Array.count.getter(v235);
  if (!v238)
  {
    v91 = 0;
    goto LABEL_55;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v90 & 0xC000000000000001) == 0, v90);
  if ((v90 & 0xC000000000000001) == 0)
  {
    v91 = *(v90 + 32);

    goto LABEL_55;
  }

LABEL_136:
  v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
  static Device.current.getter();
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  v92 = CATWrapper.__allocating_init(options:globals:)();
  v245[0] = v232;
  v245[6] = v92;
  v93 = v232;
  v94 = CallRecordDisplayTextComponents.callDateText.getter();
  v95 = v230;
  static CallRecordViewUtils.generateDisplayTime(dateTime:formattedDate:)(v94, v230);

  v98 = *(v76 + 8);
  v97 = v76 + 8;
  v96 = v98;
  v99 = v228;
  v98(v228, v28);
  v224 = *(v97 + 24);
  v224(v99, v95, v28);
  v230 = v93;
  v100 = INCallRecord.callDuration.getter();
  v215 = v98;
  if ((v101 & 1) == 0)
  {
    v102 = *&v100;
    v103 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v103 setUnitsStyle:0];
    [v103 setAllowedUnits:192];
    [v103 setZeroFormattingBehavior:0x10000];
    v104 = [v103 stringFromTimeInterval:ceil(v102)];
    if (v104)
    {
      v105 = v104;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v106._countAndFlagsBits = 48;
      v106._object = 0xE100000000000000;
      v107 = String.hasPrefix(_:)(v106);

      if (v107)
      {
        specialized Collection.dropFirst(_:)(1uLL);
        static String._fromSubstring(_:)();
      }
    }

    v96 = v215;
  }

  v108 = v218;
  SpeakableString.init(print:speak:)();
  v109 = v229;
  v96(v229, v28);
  v224(v109, v108, v28);
  v110 = v230;
  if ([v230 callRecordType] != &dword_4 + 1)
  {
    if (![v110 preferredCallProvider])
    {
      v209 = 0xE700000000000000;
      v208 = 0x4E574F4E4B4E55;
      goto LABEL_64;
    }

    v130 = INPreferredCallProviderGetBackingType();
    if (v130 == 4)
    {
      v111 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_62;
    }

    if (v130 == 3)
    {
      v111 = @"FACETIME_PROVIDER";
      goto LABEL_62;
    }

    if (v130 != 2)
    {
      v111 = [NSString stringWithFormat:@"(unknown: %i)", v130];
      goto LABEL_63;
    }
  }

  v111 = @"TELEPHONY_PROVIDER";
LABEL_62:
  v112 = v111;
LABEL_63:
  v113 = v111;
  v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v209 = v114;

LABEL_64:
  type metadata accessor for PhoneCallRecord.Builder(0);
  swift_allocObject();
  v115 = PhoneCallRecord.Builder.init()();
  v116 = v230;
  v117 = [v230 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v118 = v234;
  SpeakableString.init(serializedValue:)();
  __swift_storeEnumTagSinglePayload(v118, 0, 1, v28);
  v119 = (*(*v115 + 856))(v118);

  outlined destroy of PhoneCallNLIntent?(v118, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v120 = *(*v119 + 872);

  v122 = v120(v121);

  v123 = (*(*v122 + 888))(v91);

  v124 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v116);
  v206 = v91;
  v205 = v97;
  v207 = v123;
  if (v124)
  {
    v125 = v124;
    if (specialized Array.count.getter(v124))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v125 & 0xC000000000000001) == 0, v125);
      if ((v125 & 0xC000000000000001) != 0)
      {
        v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v126 = *(v125 + 32);
      }

      v127 = v126;

      v128 = outlined bridged method (ob) of @objc INPerson.alternatives.getter(v127);
      if (v128)
      {
        v129 = v128;
      }

      else
      {
        v129 = _swiftEmptyArrayStorage;
      }
    }

    else
    {

      v129 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v129 = _swiftEmptyArrayStorage;
  }

  v218 = _swiftEmptyArrayStorage;
  v244 = _swiftEmptyArrayStorage;
  v131 = specialized Array.count.getter(v129);
  v132 = 0;
  v233 = v129 & 0xC000000000000001;
  v232 = (v129 & 0xFFFFFFFFFFFFFF8);
  v76 = v240;
  while (v131 != v132)
  {
    if (v233)
    {
      v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v132 >= *(v232 + 2))
      {
        goto LABEL_133;
      }

      v133 = *(v129 + 8 * v132 + 32);
    }

    v134 = v133;
    v135 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
      goto LABEL_132;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v243, v243[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v243);
    v28 = static PhonePerson.make(phonePerson:options:locale:)(v134, 0, v76);

    (*v239)(v76, v241);
    ++v132;
    if (v28)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v244 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v218 = v244;
      v132 = v135;
    }
  }

  v136 = (*(*v207 + 904))(v218);

  v137 = (v225 + 16);
  v138 = *(v225 + 16);
  v139 = v234;
  v76 = v226;
  v138(v234, v227, v226);
  __swift_storeEnumTagSinglePayload(v139, 0, 1, v76);
  v140 = (*(*v136 + 912))(v139);

  outlined destroy of PhoneCallNLIntent?(v139, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v141 = v230;
  v142 = INCallRecord.refinedCallDurationAsDouble.getter();
  LOBYTE(v139) = v143;
  type metadata accessor for PhoneCallMetrics();
  if (v139)
  {
    v144 = 0;
  }

  else
  {
    v144 = v142;
  }

  v145 = PhoneCallMetrics.__allocating_init(timeToEstablish:duration:)(0, 0, v144, 0);
  v146 = (*(*v140 + 928))(v145);

  v147 = INCallRecord.refinedUnseenAsBool.getter();
  v148 = (*(*v146 + 944))(v147 & 1);

  if ([v141 callCapability])
  {
    v149 = INCallCapabilityGetBackingType();
    if (v149 == 2)
    {
      v150 = @"VIDEO_CALL";
    }

    else
    {
      if (v149 != 1)
      {
        v150 = [NSString stringWithFormat:@"(unknown: %i)", v149];
        goto LABEL_100;
      }

      v150 = @"AUDIO_CALL";
    }

    v151 = v150;
LABEL_100:
    v152 = v150;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v153 = v213;
  SpeakableString.init(serializedValue:)();
  v154 = 1;
  __swift_storeEnumTagSinglePayload(v153, 0, 1, v76);
  v155 = (*(*v148 + 952))(v153);

  outlined destroy of PhoneCallNLIntent?(v153, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v156 = INCallRecord.refinedNumberOfCallsAsInt.getter();
  if (v157)
  {
    v156 = 0;
  }

  v158 = _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(v156);
  v160 = (*(*v155 + 968))(v158, v159 & 1);

  v161 = v221;
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v161, 0, 1, v76);
  outlined init with copy of SpeakableString?(v220, v222);
  App.appIdentifier.getter();
  v163 = v214;
  if (v162)
  {
    SpeakableString.init(print:speak:)();
    v154 = 0;
  }

  __swift_storeEnumTagSinglePayload(v163, v154, 1, v76);
  type metadata accessor for PhoneCallProvider(0);
  v164 = PhoneCallProvider.__allocating_init(preferredCallProvider:providerName:providerBundleId:)(v221, v222, v163);
  v165 = (*(*v160 + 976))(v164);

  v166 = v230;
  v167 = INCallRecord.refinedIsCallerIDBlockedAsBool.getter();
  v168 = (*(*v165 + 992))(v167 & 1);

  v169 = v234;
  v138(v234, v228, v76);
  __swift_storeEnumTagSinglePayload(v169, 0, 1, v76);
  v170 = (*(*v168 + 1016))(v169);

  v241 = v137;
  outlined destroy of PhoneCallNLIntent?(v169, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v171 = SpeakableString.print.getter();
  v240 = v138;
  v28 = v236;
  static CallRecordViewUtils.generatedDisplayTextColor(callRecordType:forCallHistoryDisplay:)(v171, v172);

  v173 = (*(*v170 + 1032))(v169);

  outlined destroy of PhoneCallNLIntent?(v169, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v174 = SpeakableString.print.getter();
  static CallRecordViewUtils.generatedDisplaySymbolIcon(callRecordType:forCallHistoryDisplay:)(v174, v175);

  v176 = (*(*v173 + 1048))(v169);

  outlined destroy of PhoneCallNLIntent?(v169, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  static Device.current.getter();
  static CallRecordViewUtils.generatedSelectedAction(callRecord:forCallHistoryDisplay:deviceState:)(v166, v28 & 1);
  __swift_destroy_boxed_opaque_existential_1(v243);
  v177 = (*(*v176 + 1080))(v169);

  outlined destroy of PhoneCallNLIntent?(v169, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  static CallRecordViewUtils.generatedSelectedActionForVoicemail(callRecord:forCallHistoryDisplay:)(v166, v28 & 1);
  v178 = (*(*v177 + 1096))(v169);

  outlined destroy of PhoneCallNLIntent?(v169, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  static CallRecordViewUtils.generatedActionForOpeningCallRecord(callRecord:forCallHistoryDisplay:)(v166, v28 & 1);
  v179 = (*(*v178 + 1112))(v169);

  outlined destroy of PhoneCallNLIntent?(v169, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v240(v169, v229, v76);
  __swift_storeEnumTagSinglePayload(v169, 0, 1, v76);
  v180 = (*(*v179 + 1128))(v169);

  outlined destroy of PhoneCallNLIntent?(v169, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v181 = INCallRecord.refinedCallDurationAsDouble.getter();
  v183 = (*(*v180 + 1168))(v181, v182 & 1);

  v184 = v235;
  v240 = (*(*v183 + 1144))(v235);

  v185 = 0;
  v186 = v184 & 0xC000000000000001;
  v187 = v184 & 0xFFFFFFFFFFFFFF8;
  v241 = _swiftEmptyArrayStorage;
  while (v238 != v185)
  {
    if (v186)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v185 >= *(v187 + 16))
      {
        goto LABEL_135;
      }
    }

    v28 = (v185 + 1);
    if (__OFADD__(v185, 1))
    {
      goto LABEL_134;
    }

    v188 = v234;
    dispatch thunk of DialogPerson.toString.getter();
    v189 = v231;
    outlined init with take of SpeakableString?(v188, v231);

    if (__swift_getEnumTagSinglePayload(v189, 1, v76) == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v189, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      ++v185;
    }

    else
    {
      v224(v217, v189, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v241 = v192;
      }

      v190 = *(v241 + 2);
      if (v190 >= *(v241 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v241 = v193;
      }

      v191 = v241;
      *(v241 + 2) = v190 + 1;
      v224(&v191[((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v190], v217, v76);
      v185 = v28;
    }
  }

  v194 = (*(*v240 + 1152))(v241);

  v195 = (*(*v194 + 1160))(v242);

  if (v236)
  {
    type metadata accessor for PhoneCallRecord(0);
    swift_allocObject();

    PhoneCallRecord.init(builder:)(v196);
    type metadata accessor for SearchCallHistoryCATs(0);
    static CATOption.defaultMode.getter();
    CATWrapper.__allocating_init(options:globals:)();
    v197 = v203;
    v198 = v202;
    static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATs:callRecord:)(v203);
    if (v198)
    {

      __swift_storeEnumTagSinglePayload(v197, 1, 1, v76);
    }

    v199 = v204;
    (*(*v195 + 1000))(v197);

    outlined destroy of PhoneCallNLIntent?(v197, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    static CallRecordViewUtils.generatedDisplayCallDetail(searchCallHistoryCATs:callRecord:)(v199);
    (*(*v195 + 1064))(v199);

    outlined destroy of PhoneCallNLIntent?(v199, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
  }

  v200 = v215;
  outlined destroy of CallRecordDisplayTextComponents(v245);
  v200(v229, v76);
  v200(v228, v76);
  v200(v227, v76);
  outlined destroy of PhoneCallNLIntent?(v220, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v211 + 8))(v210, v212);
  return v195;
}

unint64_t lazy protocol witness table accessor for type PhoneCallRecord and conformance PhoneCallRecord()
{
  result = lazy protocol witness table cache variable for type PhoneCallRecord and conformance PhoneCallRecord;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord and conformance PhoneCallRecord)
  {
    type metadata accessor for PhoneCallRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord and conformance PhoneCallRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options()
{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.Options and conformance PhoneCallRecord.Options);
  }

  return result;
}

uint64_t PhoneCallRecord.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  PhoneCallRecord.Builder.init()();
  return v0;
}

uint64_t PhoneCallRecord.__allocating_init(builder:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhoneCallRecord.init(builder:)(a1);
  return v2;
}

uint64_t key path setter for PhoneCallRecord.Builder.identifier : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 280))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.dateCreated : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 304);

  return v2(v3);
}

uint64_t key path setter for PhoneCallRecord.Builder.caller : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 328);

  return v2(v3);
}

uint64_t key path setter for PhoneCallRecord.Builder.aliases : PhoneCallRecord.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t key path setter for PhoneCallRecord.Builder.callRecordType : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 376))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.callMetrics : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 400);

  return v2(v3);
}

uint64_t PhoneCallRecord.Builder.unseen.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_unseen;
  OUTLINED_FUNCTION_146(a1);
  return *(v1 + v2);
}

uint64_t PhoneCallRecord.Builder.unseen.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_unseen;
  result = OUTLINED_FUNCTION_78_3(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path setter for PhoneCallRecord.Builder.callCapability : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 448))(v6);
}

uint64_t PhoneCallRecord.Builder.numberOfCalls.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_64_10(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t key path setter for PhoneCallRecord.Builder.callProvider : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 496);

  return v2(v3);
}

uint64_t PhoneCallRecord.Builder.dateCreated.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_78_3(a1);
  *(v2 + v4) = a1;
}

uint64_t PhoneCallRecord.Builder.isCallerIdBlocked.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_isCallerIdBlocked;
  OUTLINED_FUNCTION_146(a1);
  return *(v1 + v2);
}

uint64_t PhoneCallRecord.Builder.isCallerIdBlocked.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_isCallerIdBlocked;
  result = OUTLINED_FUNCTION_78_3(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path setter for PhoneCallRecord.Builder.displayName : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 544))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.displayDateTime : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 568))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.displayTextColor : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 592))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.displaySymbolIcon : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 616))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.displayCallDetail : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 640))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.selectAction : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 664))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.playVoicemailAction : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 688))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.openCallRecordAction : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 712))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.callDuration : PhoneCallRecord.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of SpeakableString?(a1, &v8 - v5);
  return (*(**a2 + 736))(v6);
}

uint64_t key path setter for PhoneCallRecord.Builder.participants : PhoneCallRecord.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 760);

  return v2(v3);
}

uint64_t key path setter for PhoneCallRecord.Builder.participantsNames : PhoneCallRecord.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 784);

  return v2(v3);
}

uint64_t key path setter for PhoneCallRecord.Builder.contactIds : PhoneCallRecord.Builder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 808);

  return v2(v3);
}

uint64_t PhoneCallRecord.Builder.aliases.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_78_3(a1);
  *(v2 + v4) = a1;
}

uint64_t PhoneCallRecord.Builder.numberOfCalls.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t PhoneCallRecord.Builder.callDurationInterval.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_64_10(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PhoneCallRecord.Builder.init()()
{
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_identifier;
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_dateCreated) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_caller) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_aliases) = _swiftEmptyArrayStorage;
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callRecordType);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callMetrics) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_unseen) = 0;
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callCapability);
  v3 = v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_numberOfCalls;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callProvider) = 0;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_isCallerIdBlocked) = 0;
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayName);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayDateTime);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayTextColor);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displaySymbolIcon);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayCallDetail);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_selectAction);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_playVoicemailAction);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_openCallRecordAction);
  OUTLINED_FUNCTION_27_24(OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callDuration);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_participants) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_participantsNames) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_contactIds) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callDurationInterval;
  *v4 = 0;
  *(v4 + 8) = 1;
  return v0;
}

uint64_t PhoneCallRecord.Builder.withIdentifier(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 280))(v0);
}

uint64_t PhoneCallRecord.Builder.withIdentifier(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 280))(v0);
}

uint64_t PhoneCallRecord.Builder.withDateCreated(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 304);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withDateCreated(_:)(uint64_t a1)
{
  if (a1)
  {
    dispatch thunk of DialogCalendar.Builder.build()();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 304))();
}

uint64_t PhoneCallRecord.Builder.withCaller(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 328);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCaller(_:)(uint64_t a1)
{
  if (a1)
  {
    dispatch thunk of DialogPerson.Builder.build()();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 328))();
}

uint64_t PhoneCallRecord.Builder.withAliases(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 352);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallRecordType(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 376))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallRecordType(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 376))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallMetrics(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 400);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallMetrics(_:)(uint64_t a1)
{
  if (a1)
  {
    (*(*a1 + 168))();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 400))();
}

uint64_t PhoneCallRecord.Builder.withUnseen(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 424))();
}

uint64_t PhoneCallRecord.Builder.withCallCapability(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 448))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallCapability(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 448))(v0);
}

uint64_t PhoneCallRecord.Builder.withNumberOfCalls(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 472))();
}

uint64_t PhoneCallRecord.Builder.withCallProvider(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 496);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallProvider(_:)(uint64_t a1)
{
  if (a1)
  {
    (*(*a1 + 240))();
  }

  OUTLINED_FUNCTION_41_0();
  (*(v1 + 496))();
}

uint64_t PhoneCallRecord.Builder.withIsCallerIdBlocked(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 520))();
}

uint64_t PhoneCallRecord.Builder.withDisplayName(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 544))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayName(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 544))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayDateTime(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 568))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayDateTime(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 568))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayTextColor(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 592))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayTextColor(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 592))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplaySymbolIcon(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 616))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplaySymbolIcon(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 616))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayCallDetail(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 640))(v0);
}

uint64_t PhoneCallRecord.Builder.withDisplayCallDetail(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 640))(v0);
}

uint64_t PhoneCallRecord.Builder.withSelectAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 664))(v0);
}

uint64_t PhoneCallRecord.Builder.withSelectAction(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 664))(v0);
}

uint64_t PhoneCallRecord.Builder.withPlayVoicemailAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 688))(v0);
}

uint64_t PhoneCallRecord.Builder.withPlayVoicemailAction(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 688))(v0);
}

uint64_t PhoneCallRecord.Builder.withOpenCallRecordAction(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 712))(v0);
}

uint64_t PhoneCallRecord.Builder.withOpenCallRecordAction(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 712))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallDuration(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_9_48(v3, v6);
  OUTLINED_FUNCTION_35_0();
  (*(v4 + 736))(v0);
}

uint64_t PhoneCallRecord.Builder.withCallDuration(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  v3 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_67(v3);
  (*(v4 + 736))(v0);
}

uint64_t PhoneCallRecord.Builder.withParticipants(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 760);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withParticipantsNames(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 784);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withContactIds(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 808);

  v1(v2);
}

uint64_t PhoneCallRecord.Builder.withCallDurationInterval(_:)()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 832))();
}

uint64_t PhoneCallRecord.Builder.build()()
{
  type metadata accessor for PhoneCallRecord(0);
  v0 = swift_allocObject();

  PhoneCallRecord.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallRecord.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_identifier);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callRecordType);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callCapability);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayDateTime);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayTextColor);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displaySymbolIcon);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_displayCallDetail);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_selectAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_playVoicemailAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_openCallRecordAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallRecord7Builder_callDuration);

  return v0;
}

uint64_t key path setter for PhoneCallRecord.mockGlobals : PhoneCallRecord(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);
  v4 = *a1;
  return v3(v2);
}

uint64_t PhoneCallRecord.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  v6 = __chkstk_darwin(v5);
  *(v2 + 16) = 0;
  (*(*a1 + 272))(v6);
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
  OUTLINED_FUNCTION_35_0();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated) = (*(v7 + 296))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller) = (*(*a1 + 320))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases) = (*(*a1 + 344))();
  (*(*a1 + 368))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
  OUTLINED_FUNCTION_35_0();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics) = (*(v8 + 392))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen) = (*(*a1 + 416))() & 1;
  (*(*a1 + 440))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
  OUTLINED_FUNCTION_35_0();
  v10 = (*(v9 + 464))();
  v11 = v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls;
  *v11 = v10;
  *(v11 + 8) = v12 & 1;
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider) = (*(*a1 + 488))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_isCallerIdBlocked) = (*(*a1 + 512))() & 1;
  (*(*a1 + 536))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
  OUTLINED_FUNCTION_35_0();
  (*(v13 + 560))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
  OUTLINED_FUNCTION_35_0();
  (*(v14 + 584))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
  OUTLINED_FUNCTION_35_0();
  (*(v15 + 608))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
  OUTLINED_FUNCTION_35_0();
  (*(v16 + 632))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
  OUTLINED_FUNCTION_35_0();
  (*(v17 + 656))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
  OUTLINED_FUNCTION_35_0();
  (*(v18 + 680))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
  OUTLINED_FUNCTION_35_0();
  (*(v19 + 704))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
  OUTLINED_FUNCTION_35_0();
  (*(v20 + 728))();
  OUTLINED_FUNCTION_54_20(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
  OUTLINED_FUNCTION_35_0();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participants) = (*(v21 + 752))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames) = (*(*a1 + 776))();
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds) = (*(*a1 + 800))();
  v22 = (*(*a1 + 824))();
  v24 = v23;

  v25 = v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
  *v25 = v22;
  *(v25 + 8) = v24 & 1;
  return v2;
}

uint64_t PhoneCallRecord.__allocating_init(identifier:dateCreated:caller:aliases:callRecordType:callMetrics:unseen:callCapability:numberOfCalls:callProvider:isCallerIdBlocked:displayName:displayDateTime:displayTextColor:displaySymbolIcon:displayCallDetail:selectAction:playVoicemailAction:openCallRecordAction:callDuration:participants:participantsNames:contactIds:callDurationInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  type metadata accessor for PhoneCallRecord.Builder(0);
  swift_allocObject();
  PhoneCallRecord.Builder.init()();
  OUTLINED_FUNCTION_35_0();
  v34 = (*(v33 + 856))(a1);

  (*(*v34 + 872))(a2);

  OUTLINED_FUNCTION_35_0();
  v36 = (*(v35 + 888))(a3);

  (*(*v36 + 904))(a4);

  OUTLINED_FUNCTION_35_0();
  v38 = (*(v37 + 912))(a5);

  (*(*v38 + 928))(a6);

  OUTLINED_FUNCTION_35_0();
  v40 = (*(v39 + 944))(a7);

  (*(*v40 + 952))(a8);

  OUTLINED_FUNCTION_35_0();
  v42 = (*(v41 + 968))(a9, a10 & 1);

  (*(*v42 + 976))(a11);

  OUTLINED_FUNCTION_35_0();
  (*(v43 + 992))(a12);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v44 + 1000))(a13);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v45 + 1016))(a14);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v46 + 1032))(a15);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v47 + 1048))(a16);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v48 + 1064))(a17);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v49 + 1080))(a18);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v50 + 1096))(a19);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v51 + 1112))(a20);
  OUTLINED_FUNCTION_65_13();
  OUTLINED_FUNCTION_26_1();
  (*(v52 + 1128))(a21);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  (*(v53 + 1144))(a22);
  OUTLINED_FUNCTION_65_13();

  OUTLINED_FUNCTION_26_1();
  (*(v54 + 1152))(a23);
  OUTLINED_FUNCTION_61();

  OUTLINED_FUNCTION_35_0();
  v56 = (*(v55 + 1160))(a24);

  v57 = (*(*v56 + 1168))(a25, a26 & 1);

  v58 = (*(v61 + 320))(v57);

  outlined destroy of SpeakableString?(a21);
  outlined destroy of SpeakableString?(a20);
  outlined destroy of SpeakableString?(a19);
  outlined destroy of SpeakableString?(a18);
  outlined destroy of SpeakableString?(a17);
  outlined destroy of SpeakableString?(a16);
  outlined destroy of SpeakableString?(a15);
  outlined destroy of SpeakableString?(a14);
  outlined destroy of SpeakableString?(a13);
  outlined destroy of SpeakableString?(a8);
  outlined destroy of SpeakableString?(a5);
  outlined destroy of SpeakableString?(a1);
  return v58;
}

void PhoneCallRecord.getProperty(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v172 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  v168 = v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  v167 = v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  v166 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  v165 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  v164 = v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  v163 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_78_9();
  __chkstk_darwin(v21);
  v23 = &v163 - v22;
  __chkstk_darwin(v24);
  v26 = &v163 - v25;
  __chkstk_darwin(v27);
  v29 = &v163 - v28;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_77_11();
  __chkstk_darwin(v31);
  v33 = &v163 - v32;
  v169 = a1;
  v170 = a2;
  v34 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v34 || (OUTLINED_FUNCTION_52_16(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {
    v35 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
    outlined init with copy of SpeakableString?(v35, v33);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v33);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v33;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_38_19();
  v41 = v34 && v40 == v39;
  if (v41 || (OUTLINED_FUNCTION_52_16(v38, v39) & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9();
    if (!v3)
    {
      goto LABEL_10;
    }

    v42 = type metadata accessor for DialogCalendar();
    goto LABEL_19;
  }

  v43 = v169 == 0x72656C6C6163 && v170 == 0xE600000000000000;
  if (v43 || (OUTLINED_FUNCTION_52_16(0x72656C6C6163, 0xE600000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9();
    if (!v3)
    {
      goto LABEL_10;
    }

    v42 = type metadata accessor for PhonePerson(0);
    goto LABEL_19;
  }

  v44 = v169 == 0x73657361696C61 && v170 == 0xE700000000000000;
  if (v44 || (OUTLINED_FUNCTION_52_16(0x73657361696C61, 0xE700000000000000) & 1) != 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_62_17();
  OUTLINED_FUNCTION_38_19();
  v51 = v34 && v50 == v49;
  if (v51 || (OUTLINED_FUNCTION_52_16(v48, v49) & 1) != 0)
  {
    v52 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
    outlined init with copy of SpeakableString?(v52, v4);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v4);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v4;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_67_11();
  OUTLINED_FUNCTION_38_19();
  v56 = v34 && v55 == v54;
  if (v56 || (OUTLINED_FUNCTION_52_16(v53, v54) & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9();
    if (!v3)
    {
      goto LABEL_10;
    }

    v42 = type metadata accessor for PhoneCallMetrics();
    goto LABEL_19;
  }

  v57 = v169 == 0x6E6565736E75 && v170 == 0xE600000000000000;
  if (v57 || (OUTLINED_FUNCTION_52_16(0x6E6565736E75, 0xE600000000000000) & 1) != 0)
  {
    v58 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen;
LABEL_59:
    v59 = v172;
    v60 = *(v171 + v58);
    *(v172 + 24) = &type metadata for Bool;
    *v59 = v60;
    return;
  }

  OUTLINED_FUNCTION_61_17();
  OUTLINED_FUNCTION_38_19();
  v64 = v34 && v63 == v62;
  if (v64 || (OUTLINED_FUNCTION_52_16(v61, v62) & 1) != 0)
  {
    v65 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
    outlined init with copy of SpeakableString?(v65, v29);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v29);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v29;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_60_12();
  OUTLINED_FUNCTION_38_19();
  v69 = v34 && v68 == v67;
  if (v69 || (OUTLINED_FUNCTION_52_16(v66, v67) & 1) != 0)
  {
    v70 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_38_19();
  v77 = v34 && v76 == v75;
  if (v77 || (OUTLINED_FUNCTION_52_16(v74, v75) & 1) != 0)
  {
    OUTLINED_FUNCTION_56_9();
    if (!v3)
    {
      goto LABEL_10;
    }

    v42 = type metadata accessor for PhoneCallProvider(0);
LABEL_19:
    OUTLINED_FUNCTION_59_10(v42);

    return;
  }

  OUTLINED_FUNCTION_28_19();
  v81 = v34 && v79 == v80;
  if (v81 || (OUTLINED_FUNCTION_37_22(v78, v79) & 1) != 0)
  {
    v58 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_isCallerIdBlocked;
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_70_6();
  OUTLINED_FUNCTION_38_19();
  v85 = v34 && v84 == v83;
  if (v85 || (OUTLINED_FUNCTION_52_16(v82, v83) & 1) != 0)
  {
    v86 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
    outlined init with copy of SpeakableString?(v86, v26);
    v87 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v87);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v26;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_63_11();
  OUTLINED_FUNCTION_38_19();
  v91 = v34 && v90 == v89;
  if (v91 || (OUTLINED_FUNCTION_52_16(v88, v89) & 1) != 0)
  {
    v92 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
    outlined init with copy of SpeakableString?(v92, v23);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_1_0(v23);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v23;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v96 = v34 && v94 == v95;
  if (v96 || (OUTLINED_FUNCTION_52_16(v93, v94) & 1) != 0)
  {
    v97 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
    outlined init with copy of SpeakableString?(v97, v3);
    v98 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v3, 1, v98) != 1)
    {
      v99 = v172;
      *(v172 + 24) = v98;
      __swift_allocate_boxed_opaque_existential_1(v99);
      v100 = *(*(v98 - 8) + 32);
LABEL_11:
      v100();
      return;
    }

    v36 = v3;
LABEL_9:
    outlined destroy of SpeakableString?(v36);
LABEL_10:
    v37 = v172;
    *v172 = 0u;
    *(v37 + 16) = 0u;
    return;
  }

  OUTLINED_FUNCTION_28_19();
  v104 = v34 && v102 == v103;
  if (v104 || (OUTLINED_FUNCTION_37_22(v101, v102) & 1) != 0)
  {
    v105 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
    outlined init with copy of SpeakableString?(v105, v163);
    v106 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v106);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v163;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_28_19();
  v110 = v34 && v108 == v109;
  if (v110 || (OUTLINED_FUNCTION_37_22(v107, v108) & 1) != 0)
  {
    v111 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
    outlined init with copy of SpeakableString?(v111, v164);
    v112 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v112);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v164;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v115 = v34 && v114 == 0xEC0000006E6F6974;
  if (v115 || (OUTLINED_FUNCTION_52_16(v113, 0xEC0000006E6F6974) & 1) != 0)
  {
    v116 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
    outlined init with copy of SpeakableString?(v116, v165);
    v117 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v117);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v165;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v121 = v34 && v119 == v120;
  if (v121 || (OUTLINED_FUNCTION_52_16(v118, v119) & 1) != 0)
  {
    v122 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
    outlined init with copy of SpeakableString?(v122, v166);
    v123 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v123);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v166;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_73_6();
  v126 = v34 && v124 == v125;
  if (v126 || (OUTLINED_FUNCTION_52_16(0xD000000000000014, v124) & 1) != 0)
  {
    v127 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
    outlined init with copy of SpeakableString?(v127, v167);
    v128 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v128);
    if (!v34)
    {
      goto LABEL_159;
    }

    v36 = v167;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38_19();
  v131 = v34 && v130 == 0xEC0000006E6F6974;
  if (v131 || (OUTLINED_FUNCTION_52_16(v129, 0xEC0000006E6F6974) & 1) != 0)
  {
    v132 = OUTLINED_FUNCTION_41_23(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
    outlined init with copy of SpeakableString?(v132, v168);
    v133 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_13_42(v133);
    if (!v34)
    {
LABEL_159:
      OUTLINED_FUNCTION_58_10();
      OUTLINED_FUNCTION_6_0();
      v100 = *(v134 + 32);
      goto LABEL_11;
    }

    v36 = v168;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_38_19();
  v138 = v34 && v137 == v136;
  if (v138 || (OUTLINED_FUNCTION_52_16(v135, v136) & 1) != 0)
  {
LABEL_34:
    OUTLINED_FUNCTION_56_9();
    v45 = &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd;
    v46 = &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR;
LABEL_35:
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    OUTLINED_FUNCTION_59_10(v47);

    return;
  }

  OUTLINED_FUNCTION_28_19();
  v142 = v34 && v140 == v141;
  if (v142 || (OUTLINED_FUNCTION_37_22(v139, v140) & 1) != 0 || ((OUTLINED_FUNCTION_38_19(), v34) ? (v146 = v145 == v144) : (v146 = 0), v146 || (OUTLINED_FUNCTION_52_16(v143, v144) & 1) != 0))
  {
    OUTLINED_FUNCTION_56_9();
    v45 = &_sSay16SiriDialogEngine15SpeakableStringVGMd;
    v46 = &_sSay16SiriDialogEngine15SpeakableStringVGMR;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_73_6();
  v149 = v34 && v147 == v148;
  if (!v149 && (OUTLINED_FUNCTION_52_16(0xD000000000000014, v147) & 1) == 0)
  {
    OUTLINED_FUNCTION_28_19();
    v153 = v34 && v151 == v152;
    if (v153 || (OUTLINED_FUNCTION_37_22(v150, v151) & 1) != 0)
    {
      if (!specialized PhoneCallRecordProperties<>.callerWithAliases.getter())
      {
        goto LABEL_10;
      }

      v154 = type metadata accessor for PhonePersonWithAliasesList();
      OUTLINED_FUNCTION_59_10(v154);
    }

    else
    {
      OUTLINED_FUNCTION_73_6();
      v157 = v34 && v156 == v155;
      if (v157 || (OUTLINED_FUNCTION_52_16(0x6954656361467369, v155) & 1) != 0)
      {
        v158 = specialized PhoneCallRecordProperties<>.isFaceTimeVideo.getter();
      }

      else
      {
        OUTLINED_FUNCTION_73_6();
        v161 = v34 && v160 == v159;
        if (!v161 && (OUTLINED_FUNCTION_52_16(0x6954656361467369, v159) & 1) == 0)
        {
          goto LABEL_10;
        }

        v158 = specialized PhoneCallRecordProperties<>.isFaceTimeAudio.getter();
      }

      v162 = v172;
      *(v172 + 24) = &type metadata for Bool;
      *v162 = v158 & 1;
    }

    return;
  }

  v70 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
LABEL_74:
  v71 = (v171 + v70);
  if (v71[1])
  {
    goto LABEL_10;
  }

  v72 = *v71;
  v73 = v172;
  *(v172 + 24) = &type metadata for Double;
  *v73 = v72;
}

uint64_t specialized PhoneCallRecordProperties<>.callerWithAliases.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller))
  {
    return 0;
  }

  v2 = specialized closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter(v1, v0);

  type metadata accessor for PhonePersonWithAliasesList.Builder();
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  *(v3 + 16) = v2;
  type metadata accessor for PhonePersonWithAliasesList();
  swift_allocObject();
  return PhonePersonList.init(builder:)(v3);
}

uint64_t specialized PhoneCallRecordProperties<>.isFaceTimeVideo.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider) || (specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    return 0;
  }

  return specialized PhoneCallRecordProperties<>.isVideo.getter();
}

uint64_t specialized PhoneCallRecordProperties<>.isFaceTimeAudio.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);
  if (!v5)
  {
    return v5 & 1;
  }

  if ((specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, v4);
  v6 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    outlined destroy of SpeakableString?(v4);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = SpeakableString.print.getter();
    v8 = v9;
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v11 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      goto LABEL_13;
    }

    v11 = @"AUDIO_CALL";
  }

  v12 = v11;
LABEL_13:
  v13 = v11;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v8)
  {
    if (v7 == v14 && v8 == v16)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional __swiftcall PhoneCallRecord.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v1;
  }
}

uint64_t PhoneCallRecord.CodingKeys.rawValue.getter(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_69_10();
      break;
    case 2:
      result = 0x72656C6C6163;
      break;
    case 3:
      result = 0x73657361696C61;
      break;
    case 4:
      result = OUTLINED_FUNCTION_62_17();
      break;
    case 5:
      result = OUTLINED_FUNCTION_67_11();
      break;
    case 6:
      result = 0x6E6565736E75;
      break;
    case 7:
      result = OUTLINED_FUNCTION_61_17();
      break;
    case 8:
      result = OUTLINED_FUNCTION_60_12();
      break;
    case 9:
      result = OUTLINED_FUNCTION_71_6();
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = OUTLINED_FUNCTION_70_6();
      break;
    case 12:
      result = OUTLINED_FUNCTION_63_11();
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x63417463656C6573;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
    case 23:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x617275446C6C6163;
      break;
    case 20:
      result = OUTLINED_FUNCTION_68_8();
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x49746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallRecord.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallRecord.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallRecord.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallRecord.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance PhoneCallRecord.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallRecord::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallRecord.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallRecord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallRecord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallRecord.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);

  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);

  return v0;
}

uint64_t PhoneCallRecord.Builder.__deallocating_deinit(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_35_0();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_25_26();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v9, v10, &protocol conformance descriptor for SpeakableString);
  OUTLINED_FUNCTION_8_55();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated);
    OUTLINED_FUNCTION_75_9(1);
    type metadata accessor for DialogCalendar();
    OUTLINED_FUNCTION_44_14();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v11, v12, &protocol conformance descriptor for DialogCalendar);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);
    v13 = OUTLINED_FUNCTION_75_9(2);
    type metadata accessor for PhonePerson(v13);
    OUTLINED_FUNCTION_23_23();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v14, v15, &protocol conformance descriptor for DialogPerson);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases);
    v25 = 3;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    v17 = _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson, &protocol conformance descriptor for DialogPerson);
    OUTLINED_FUNCTION_29_23();
    v24[2] = v16;
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24[1] = v17;
    v26 = 4;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics);
    OUTLINED_FUNCTION_75_9(5);
    type metadata accessor for PhoneCallMetrics();
    OUTLINED_FUNCTION_43_21();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v18, v19, &protocol conformance descriptor for PhoneCallMetrics);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_39_17(6);
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 7;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 8;
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);
    v20 = OUTLINED_FUNCTION_75_9(9);
    type metadata accessor for PhoneCallProvider(v20);
    OUTLINED_FUNCTION_42_19();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v21, v22, &protocol conformance descriptor for PhoneCallProvider);
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_39_17(10);
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 11;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 12;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 13;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 14;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 15;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 16;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 17;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 18;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = 19;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participants);
    v25 = 20;
    OUTLINED_FUNCTION_29_23();
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_participantsNames);
    v25 = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](&lazy protocol witness table cache variable for type [SpeakableString] and conformance <A> [A], &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, &protocol conformance descriptor for SpeakableString);
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_21(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_contactIds);
    v25 = 22;
    OUTLINED_FUNCTION_8_55();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = 23;
    OUTLINED_FUNCTION_35_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys);
  }

  return result;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
    OUTLINED_FUNCTION_25_26();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(a2, v7, a3);
    result = OUTLINED_FUNCTION_82_6();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhoneCallRecord.__allocating_init(from:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_61();
  PhoneCallRecord.init(from:)(v1);
  return v0;
}

uint64_t PhoneCallRecord.init(from:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_2();
  v139 = v7;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_13_5();
  v136 = v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  v138 = v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  v137 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  v140 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  v141 = v17;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  v142 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  v22 = v132 - v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_77_11();
  __chkstk_darwin(v24);
  v26 = v132 - v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_78_9();
  __chkstk_darwin(v28);
  v143 = v132 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6RecordC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v144 = v31;
  v145 = v30;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v32);
  v34 = v132 - v33;
  v148 = a1;
  v149 = v2;
  *(v2 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallRecord.CodingKeys and conformance PhoneCallRecord.CodingKeys();
  v146 = v34;
  v35 = v147;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
    v43 = v149;

    v44 = v148;
    goto LABEL_4;
  }

  v36 = v1;
  v147 = v3;
  v135 = v22;
  v37 = type metadata accessor for SpeakableString();
  LOBYTE(v151) = 0;
  OUTLINED_FUNCTION_25_26();
  v40 = _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v38, v39, &protocol conformance descriptor for SpeakableString);
  v41 = v143;
  v42 = v145;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v134 = v40;
  v46 = v149;
  outlined init with take of SpeakableString?(v41, v149 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
  type metadata accessor for DialogCalendar();
  v150 = 1;
  OUTLINED_FUNCTION_44_14();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v47, v48, &protocol conformance descriptor for DialogCalendar);
  OUTLINED_FUNCTION_48_18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_dateCreated) = v151;
  type metadata accessor for PhonePerson(0);
  v150 = 2;
  OUTLINED_FUNCTION_23_23();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v49, v50, &protocol conformance descriptor for DialogPerson);
  OUTLINED_FUNCTION_48_18();
  OUTLINED_FUNCTION_81_6();
  v133 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller) = v151;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  v150 = 3;
  v52 = _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson, &protocol conformance descriptor for DialogPerson);
  OUTLINED_FUNCTION_50_19();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v132[2] = v52;
  *(v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_aliases) = v151;
  OUTLINED_FUNCTION_39_17(4);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of SpeakableString?(v36, v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
  type metadata accessor for PhoneCallMetrics();
  v150 = 5;
  OUTLINED_FUNCTION_43_21();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v53, v54, &protocol conformance descriptor for PhoneCallMetrics);
  OUTLINED_FUNCTION_48_18();
  OUTLINED_FUNCTION_81_6();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v132[1] = v37;
  *(v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callMetrics) = v151;
  OUTLINED_FUNCTION_72_7(6);
  v55 = v146;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v57 = v144;
  *(v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen) = v56 & 1;
  OUTLINED_FUNCTION_39_17(7);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of SpeakableString?(v26, v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
  OUTLINED_FUNCTION_72_7(8);
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v143 = 0;
  v60 = v46 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_numberOfCalls;
  *v60 = v58;
  *(v60 + 8) = v59 & 1;
  type metadata accessor for PhoneCallProvider(0);
  v150 = 9;
  OUTLINED_FUNCTION_42_19();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(v61, v62, &protocol conformance descriptor for PhoneCallProvider);
  OUTLINED_FUNCTION_48_18();
  v63 = v143;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v143 = v63;
  if (v63)
  {
    v64 = OUTLINED_FUNCTION_16_42();
    v65(v64);
    LODWORD(v26) = 0;
    v42 = 0;
    LODWORD(v136) = 0;
    OUTLINED_FUNCTION_0_84();
    OUTLINED_FUNCTION_6_60();
  }

  else
  {
    OUTLINED_FUNCTION_80_7(v151);
    OUTLINED_FUNCTION_72_7(10);
    v55 = v146;
    v66 = v143;
    v67 = KeyedDecodingContainer.decode(_:forKey:)();
    v143 = v66;
    if (v66 || (*(v149 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_isCallerIdBlocked) = v67 & 1, OUTLINED_FUNCTION_39_17(11), v55 = v146, v68 = v143, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v143 = v68) != 0))
    {
      v69 = OUTLINED_FUNCTION_16_42();
      v70(v69);
      v42 = 0;
      LODWORD(v136) = 0;
      OUTLINED_FUNCTION_0_84();
      OUTLINED_FUNCTION_6_60();
      LODWORD(v26) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_49_18();
      outlined init with take of SpeakableString?(v147, v72);
      OUTLINED_FUNCTION_39_17(12);
      v55 = v146;
      v73 = v143;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v143 = v73;
      if (v73)
      {
        v74 = OUTLINED_FUNCTION_16_42();
        v75(v74);
        LODWORD(v136) = 0;
        OUTLINED_FUNCTION_0_84();
        OUTLINED_FUNCTION_3_72();
      }

      else
      {
        OUTLINED_FUNCTION_49_18();
        outlined init with take of SpeakableString?(v135, v76);
        OUTLINED_FUNCTION_39_17(13);
        v77 = v143;
        OUTLINED_FUNCTION_17_35();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v143 = v77;
        if (v77)
        {
          v78 = OUTLINED_FUNCTION_16_42();
          v79(v78);
          OUTLINED_FUNCTION_0_84();
          OUTLINED_FUNCTION_3_72();
          LODWORD(v136) = 1;
        }

        else
        {
          OUTLINED_FUNCTION_49_18();
          outlined init with take of SpeakableString?(v142, v80);
          OUTLINED_FUNCTION_39_17(14);
          OUTLINED_FUNCTION_17_35();
          v81 = v143;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v143 = v81;
          if (v81)
          {
            v82 = OUTLINED_FUNCTION_16_42();
            v83(v82);
            LODWORD(v138) = 0;
            OUTLINED_FUNCTION_2_82();
            OUTLINED_FUNCTION_1_86();
          }

          else
          {
            OUTLINED_FUNCTION_49_18();
            outlined init with take of SpeakableString?(v141, v84);
            OUTLINED_FUNCTION_39_17(15);
            OUTLINED_FUNCTION_17_35();
            v85 = v143;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v143 = v85;
            if (v85)
            {
              v86 = OUTLINED_FUNCTION_16_42();
              v87(v86);
              OUTLINED_FUNCTION_2_82();
              OUTLINED_FUNCTION_1_86();
              LODWORD(v138) = v88;
            }

            else
            {
              OUTLINED_FUNCTION_49_18();
              outlined init with take of SpeakableString?(v140, v89);
              OUTLINED_FUNCTION_39_17(16);
              OUTLINED_FUNCTION_17_35();
              v90 = v143;
              KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
              v143 = v90;
              if (v90)
              {
                v91 = OUTLINED_FUNCTION_16_42();
                v92(v91);
                LODWORD(v140) = 0;
                OUTLINED_FUNCTION_4_58();
                OUTLINED_FUNCTION_1_86();
                LODWORD(v138) = v93;
                LODWORD(v139) = v93;
              }

              else
              {
                OUTLINED_FUNCTION_49_18();
                outlined init with take of SpeakableString?(v137, v94);
                OUTLINED_FUNCTION_39_17(17);
                OUTLINED_FUNCTION_17_35();
                v95 = v143;
                KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                v143 = v95;
                if (v95)
                {
                  v96 = OUTLINED_FUNCTION_16_42();
                  v97(v96);
                  OUTLINED_FUNCTION_4_58();
                  OUTLINED_FUNCTION_1_86();
                  LODWORD(v138) = v98;
                  LODWORD(v139) = v98;
                  LODWORD(v140) = v98;
                }

                else
                {
                  OUTLINED_FUNCTION_49_18();
                  outlined init with take of SpeakableString?(v138, v99);
                  OUTLINED_FUNCTION_39_17(18);
                  OUTLINED_FUNCTION_17_35();
                  v100 = v143;
                  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                  v143 = v100;
                  if (v100)
                  {
                    v101 = OUTLINED_FUNCTION_16_42();
                    v102(v101);
                    LODWORD(v142) = 0;
                    OUTLINED_FUNCTION_9_55();
                    OUTLINED_FUNCTION_1_86();
                    LODWORD(v138) = v103;
                    LODWORD(v139) = v103;
                    LODWORD(v140) = v103;
                    LODWORD(v141) = v103;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_49_18();
                    outlined init with take of SpeakableString?(v136, v104);
                    OUTLINED_FUNCTION_39_17(19);
                    OUTLINED_FUNCTION_17_35();
                    v105 = v143;
                    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                    v143 = v105;
                    if (v105)
                    {
                      v106 = OUTLINED_FUNCTION_16_42();
                      v107(v106);
                      OUTLINED_FUNCTION_9_55();
                      OUTLINED_FUNCTION_1_86();
                      OUTLINED_FUNCTION_19_31(v108);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_49_18();
                      outlined init with take of SpeakableString?(v139, v109);
                      v150 = 20;
                      OUTLINED_FUNCTION_50_19();
                      v55 = v146;
                      v110 = v143;
                      KeyedDecodingContainer.decode<A>(_:forKey:)();
                      v143 = v110;
                      if (v110)
                      {
                        v111 = OUTLINED_FUNCTION_16_42();
                        v112(v111);
                        LODWORD(v145) = 0;
                        LODWORD(v146) = 0;
                        LODWORD(v147) = 0;
                        OUTLINED_FUNCTION_1_86();
                        OUTLINED_FUNCTION_19_31(v113);
                        LODWORD(v144) = v114;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_80_7(v151);
                        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
                        v150 = 21;
                        v51 = lazy protocol witness table accessor for type [SpeakableString] and conformance <A> [A](&lazy protocol witness table cache variable for type [SpeakableString] and conformance <A> [A], &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, &protocol conformance descriptor for SpeakableString);
                        OUTLINED_FUNCTION_50_19();
                        OUTLINED_FUNCTION_66_12(v115, v116);
                        v143 = 0;
                        OUTLINED_FUNCTION_80_7(v151);
                        v150 = 22;
                        OUTLINED_FUNCTION_50_19();
                        OUTLINED_FUNCTION_66_12(v117, v118);
                        v143 = 0;
                        OUTLINED_FUNCTION_80_7(v151);
                        OUTLINED_FUNCTION_72_7(23);
                        v55 = v146;
                        v119 = v143;
                        v120 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                        v143 = v119;
                        if (!v119)
                        {
                          v126 = v120;
                          v127 = v121;
                          v128 = OUTLINED_FUNCTION_16_42();
                          v129(v128);
                          v130 = v148;
                          v43 = v149;
                          v131 = v149 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDurationInterval;
                          *v131 = v126;
                          *(v131 + 8) = v127 & 1;
                          __swift_destroy_boxed_opaque_existential_1(v130);
                          return v43;
                        }

                        v122 = OUTLINED_FUNCTION_16_42();
                        v123(v122);
                        OUTLINED_FUNCTION_1_86();
                        OUTLINED_FUNCTION_19_31(v124);
                        LODWORD(v144) = v125;
                        LODWORD(v145) = v125;
                        LODWORD(v146) = v125;
                        LODWORD(v147) = v125;
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

  v71 = v133;
  v43 = v149;

  outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_identifier);
  if (v71)
  {
    if (v36)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (v36)
    {
LABEL_8:

      if ((v51 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  if (!v51)
  {
LABEL_9:
    if (v55)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (v55)
  {
LABEL_10:
    outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callRecordType);
    if ((v57 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v57)
  {
LABEL_11:
    v44 = v148;
    if (v52)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:

  v44 = v148;
  if (v52)
  {
LABEL_12:
    outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability);
    if ((v26 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v26)
  {
LABEL_13:
    if (v42)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:

  if (v42)
  {
LABEL_14:
    outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayName);
    if ((v136 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v136)
  {
LABEL_15:
    if (v137)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayDateTime);
  if (v137)
  {
LABEL_16:
    outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayTextColor);
    if ((v138 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v138)
  {
LABEL_17:
    if (v139)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displaySymbolIcon);
  if (v139)
  {
LABEL_18:
    outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_displayCallDetail);
    if ((v140 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v140)
  {
LABEL_19:
    if (v141)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_selectAction);
  if (v141)
  {
LABEL_20:
    outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_playVoicemailAction);
    if ((v142 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v142)
  {
LABEL_21:
    if (v144)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_openCallRecordAction);
  if (v144)
  {
LABEL_22:
    outlined destroy of SpeakableString?(v43 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callDuration);
    if ((v145 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (!v145)
  {
LABEL_23:
    if (v146)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:

  if (v146)
  {
LABEL_24:

    if (v147)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

LABEL_43:
  if (v147)
  {
LABEL_44:
  }

LABEL_4:
  type metadata accessor for PhoneCallRecord(0);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v43;
}

uint64_t _sSay27PhoneCallFlowDelegatePlugin0A6PersonCGSayxGSEsSERzlWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    OUTLINED_FUNCTION_23_23();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_2(a2, v7, a3);
    result = OUTLINED_FUNCTION_82_6();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallRecord(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 312))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallRecord@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 352))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallRecord(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneCallRecord.Builder(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for PhoneCallRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_426260;
  *(v3 + 32) = a1;
  v6 = v3;

  specialized Array.append<A>(contentsOf:)(v4);
  return v6;
}

uint64_t OUTLINED_FUNCTION_37_22(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_54_20@<X0>(uint64_t a1@<X8>)
{

  return outlined init with take of SpeakableString?(v2, v1 + a1);
}

uint64_t *OUTLINED_FUNCTION_58_10()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_1(v3);
}

uint64_t OUTLINED_FUNCTION_59_10(uint64_t result)
{
  v3 = *(v2 - 88);
  v3[3] = result;
  *v3 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_10(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_65_13()
{
}

uint64_t OUTLINED_FUNCTION_66_12(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_82_6()
{

  return swift_getWitnessTable();
}

uint64_t PhoneCallRecordProperties<>.callerWithAliases.getter(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller))
  {
    return 0;
  }

  v5[0] = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);

  closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter(v5, &v6);

  v2 = v6;
  type metadata accessor for PhonePersonWithAliasesList.Builder();
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  *(v3 + 16) = v2;
  type metadata accessor for PhonePersonWithAliasesList();
  swift_allocObject();
  return PhonePersonList.init(builder:)(v3);
}

uint64_t PhoneCallRecordProperties<>.isFaceTimeVideo.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider) || (specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    return 0;
  }

  return PhoneCallRecordProperties<>.isVideo.getter();
}

uint64_t PhoneCallRecordProperties<>.isFaceTimeAudio.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callProvider);
  if (!v5)
  {
    return v5 & 1;
  }

  if ((specialized PhoneCallProviderProperties.isFaceTime.getter() & 1) == 0)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, v4);
  v6 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    outlined destroy of SpeakableString?(v4);
    v7 = 0;
    v1 = 0;
  }

  else
  {
    v7 = v4;
    SpeakableString.print.getter();
    OUTLINED_FUNCTION_0_85();
    (*(v8 + 8))(v4, v6);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v10 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      goto LABEL_13;
    }

    v10 = @"AUDIO_CALL";
  }

  v11 = v10;
LABEL_13:
  v12 = v10;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v1)
  {
    if (v7 == v13 && v1 == v15)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = OUTLINED_FUNCTION_0_5();
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t closure #1 in PhoneCallRecordProperties<>.callerWithAliases.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v4;
  v8 = v5;

  result = specialized Array.append<A>(contentsOf:)(v6);
  *a3 = v8;
  return result;
}

uint64_t PhoneCallRecordProperties<>.isVideo.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  outlined init with copy of SpeakableString?(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_callCapability, &v18 - v3);
  v5 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of SpeakableString?(v4);
    v6 = 0;
    v0 = 0;
  }

  else
  {
    v6 = v4;
    SpeakableString.print.getter();
    OUTLINED_FUNCTION_0_85();
    (*(v7 + 8))(v4, v5);
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v9 = @"VIDEO_CALL";
    goto LABEL_8;
  }

  if (BackingType == 1)
  {
    v9 = @"AUDIO_CALL";
LABEL_8:
    v10 = v9;
    goto LABEL_10;
  }

  v9 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
LABEL_10:
  v11 = v9;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v0)
  {
    if (v6 == v12 && v0 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_0_5();
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = OUTLINED_FUNCTION_40_0();
  v17 = v16(v15, v14);
  Input.parse.getter();
  v18 = v17;
  (*(*v17 + 192))(&v27, v13);
  (*(v9 + 8))(v13, v7);
  if (v28)
  {
    outlined init with take of PhoneCallFeatureFlagProviding(&v27, v29);
    static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(v29, a2, a3, a4);
    OUTLINED_FUNCTION_40_0();

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v27, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = OUTLINED_FUNCTION_12_1(v19, static Logger.siriPhone);
    v21 = static os_log_type_t.error.getter();
    v22 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v24);
      OUTLINED_FUNCTION_23_24(&dword_0, v25, v21, "#PhoneCallRequestSupportPolicy getSiriKitIntent: couldn't convert input to its corresponding INIntent");
      OUTLINED_FUNCTION_8();
    }

    return 0;
  }

  return v18;
}

uint64_t specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v31 = a3;
  v30 = a2;
  v35 = a1;
  v33 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v33);
  v34 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v6 = v5;
  v7 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [v8 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v39 = v10;
  v38 = v11;
  v37 = v12;
  v36 = v13;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v29[2] = __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v29[1] = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v29[3] = v6;
    v19 = v18;
    v40[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v40);
    *(v19 + 12) = 2080;
    v41 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25INSearchCallHistoryIntentCmMd, &_sSo25INSearchCallHistoryIntentCmMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v40);

    *(v19 + 14) = v22;
    _os_log_impl(&dword_0, v15, v16, "#SKTransformer %s to %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v23 = v34;
  v24 = v35;
  outlined init with copy of SignalProviding(v35, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v24, v30, v31);
    v26 = v25;
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v23, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(&v41);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v40);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v26 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v40);
    }

    __swift_destroy_boxed_opaque_existential_1(&v41);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v24, v30, v31);
    v26 = v27;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v26;
}

{
  v39 = a4;
  v38 = a3;
  v37 = a2;
  v42 = a1;
  v40 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v6 = v5;
  v7 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [v8 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v46 = v10;
  v45 = v11;
  v44 = v12;
  HIDWORD(v43) = v13;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v35 = __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v34 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v36 = v6;
    v19 = v18;
    v47[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v47);
    *(v19 + 12) = 2080;
    v48 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INIdentifyIncomingCallerIntentCmMd, &_sSo30INIdentifyIncomingCallerIntentCmMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v47);

    *(v19 + 14) = v22;
    _os_log_impl(&dword_0, v15, v16, "#SKTransformer %s to %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v23 = v41;
  v24 = v42;
  outlined init with copy of SignalProviding(v42, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v24, v37, v38);
    v30 = v29;
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v23, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(&v48);
  }

  else
  {
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallNLv4Intent(v47);
    }

    else
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v48);
        v30 = 0;
        goto LABEL_13;
      }

      outlined destroy of PhoneCallIFIntent(v47);
    }

    __swift_destroy_boxed_opaque_existential_1(&v48);
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v24, v37, v38, v39, v25, v26, v27, v28, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v30 = v31;
  }

LABEL_13:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v30;
}

{
  v46 = a4;
  v45 = a3;
  v47 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v47);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v49 = v7;
  v9 = v8;
  v54 = v10;
  v11 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = [v12 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();
  v53 = v14;
  v52 = v15;
  v51 = v16;
  v50 = v17;

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v20, v21);
  v44[2] = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v44[1] = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v44[0] = v19;
    v55[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v55);
    *(v24 + 12) = 2080;
    v56 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentCmMd, &_sSo26INAddCallParticipantIntentCmMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v55);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_0, v20, v21, "#SKTransformer %s to %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  outlined init with copy of SignalProviding(a1, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v29 = v48;
  if (swift_dynamicCast())
  {
    v30 = type metadata accessor for TransformationError();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError, &protocol conformance descriptor for TransformationError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for TransformationError.notImplemented(_:), v30);
    swift_willThrow();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v29, type metadata accessor for PhoneCallNLv3Intent);
    __swift_destroy_boxed_opaque_existential_1(&v56);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v34 = 136315394;
      v35 = _typeName(_:qualified:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v55);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v38 = Error.localizedDescription.getter();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v55);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v32, v33, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    outlined destroy of PhoneCallNLv4Intent(v55);
  }

  else
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v56);
LABEL_16:
      v42 = 0;
      goto LABEL_17;
    }

    outlined destroy of PhoneCallIFIntent(v55);
  }

  __swift_destroy_boxed_opaque_existential_1(&v56);
  specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(a1, a2, v45);
  v42 = v41;
LABEL_17:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v42;
}

uint64_t specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1)
{
  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  static Signpost.begin(_:)();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = [v7 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Signpost.begin(_:string1:)();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v12, v13))
  {
    swift_slowAlloc();
    v37[0] = OUTLINED_FUNCTION_22_24();
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v37);
    *(v3 + 12) = 2080;
    v38 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INAnswerCallIntentCmMd, &_sSo18INAnswerCallIntentCmMR);
    v14 = String.init<A>(describing:)();
    v6 = v5;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v37);

    *(v3 + 14) = v16;
    _os_log_impl(&dword_0, v10, v11, "#SKTransformer %s to %s", v3, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    v3 = v34;
    OUTLINED_FUNCTION_8();
  }

  outlined init with copy of SignalProviding(a1, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v17 = swift_dynamicCast();
  if (v17)
  {
    OUTLINED_FUNCTION_11_45();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (v6)
    {
      OUTLINED_FUNCTION_9_56();
      __swift_destroy_boxed_opaque_existential_1(&v38);
      goto LABEL_13;
    }

    v31 = v20;
    OUTLINED_FUNCTION_9_56();
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_31_21(v17, v18, v19, &type metadata for PhoneCallNLv4Intent);
    if (v21)
    {
      outlined destroy of PhoneCallNLv4Intent(v37);
    }

    else
    {
      if ((OUTLINED_FUNCTION_31_21(v21, v22, v23, &type metadata for PhoneCallIFIntent) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_19:
        v31 = 0;
        goto LABEL_20;
      }

      outlined destroy of PhoneCallIFIntent(v37);
    }

    __swift_destroy_boxed_opaque_existential_1(&v38);
    OUTLINED_FUNCTION_11_45();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (v6)
    {
LABEL_13:
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        swift_slowAlloc();
        v37[0] = OUTLINED_FUNCTION_22_24();
        *v3 = 136315394;
        v27 = _typeName(_:qualified:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v37);
        OUTLINED_FUNCTION_40_0();

        *(v3 + 4) = v33;
        *(v3 + 12) = 2080;
        swift_getErrorValue();
        v29 = Error.localizedDescription.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v37);
        OUTLINED_FUNCTION_40_0();

        *(v3 + 14) = v36;
        _os_log_impl(&dword_0, v25, v26, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s", v3, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {
      }

      goto LABEL_19;
    }

    v31 = v24;
  }

LABEL_20:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  return v31;
}

id static PhoneCallRequestSupportPolicy.getIntentFromInputParse(phoneCallNLIntent:sharedGlobals:)(void *a1, void *a2)
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = static PhoneCallRequestSupportPolicy.getSiriKitIntentName(nlIntent:sharedGlobals:)(a1, a2);
  if (v8 != 8)
  {
    return PhoneCallIntentClassNames.intentInstance.getter(v8);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMR);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "#PhoneCallRequestSupportPolicy intentTypeName=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v19);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(v7, type metadata accessor for PhoneError);
  return swift_willThrow();
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 40) = a1;
  return _swift_task_switch(static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:), 0, 0);
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:)()
{
  v1 = static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(*(v0 + 16), *(v0 + 32), *(v0 + 24), *(v0 + 40));
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_12_1(v2, static Logger.siriPhone);
  v4 = static os_log_type_t.debug.getter();
  v5 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_65_0();
    *v7 = 0;
    _os_log_impl(&dword_0, v3, v4, "#PhoneCallRequestSupportPolicy: Not using SlotResolvers - NOT fully resolving INIntent before starting RCHFlow. RCHFlowDelegate should run makeIntentFromParse.", v7, 2u);
    OUTLINED_FUNCTION_8();
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t static PhoneCallRequestSupportPolicy.isHomePodPersonalRequest(intent:sharedGlobals:nlIntent:)(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = OUTLINED_FUNCTION_61();
  v7(v6, v5);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  OUTLINED_FUNCTION_61();
  if ((dispatch thunk of DeviceState.isHomePod.getter() & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v10 = OUTLINED_FUNCTION_12_1(v15, static Logger.siriPhone);
    v16 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v16))
    {
      goto LABEL_13;
    }

    *OUTLINED_FUNCTION_65_0() = 0;
    v14 = "Current request is not considered as a personal request since it's not a HomePod";
    goto LABEL_12;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a3, v49, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (!v50)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v49, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
LABEL_16:
    v18 = [a1 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
    if (v22)
    {
      OUTLINED_FUNCTION_12_49();
      v26 = v26 && v24 == v20;
      if (v26)
      {
        goto LABEL_41;
      }

      v27 = OUTLINED_FUNCTION_8_56(v23, v24, v25);

      if (v27)
      {
        goto LABEL_42;
      }
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
    v28 = swift_getObjCClassFromMetadata();
    outlined bridged method (pb) of @objc static INIntent.typeName()(v28);
    if (v29)
    {
      OUTLINED_FUNCTION_12_49();
      if (v26 && v31 == v20)
      {
        goto LABEL_41;
      }

      v34 = OUTLINED_FUNCTION_8_56(v30, v31, v32);

      if (v34)
      {
        goto LABEL_42;
      }
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
    v35 = swift_getObjCClassFromMetadata();
    outlined bridged method (pb) of @objc static INIntent.typeName()(v35);
    if (!v36)
    {
LABEL_35:
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
      v42 = swift_getObjCClassFromMetadata();
      outlined bridged method (pb) of @objc static INIntent.typeName()(v42);
      if (!v43)
      {

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_12_49();
      if (!v26 || v45 != v20)
      {
        v17 = OUTLINED_FUNCTION_8_56(v44, v45, v46);

        goto LABEL_43;
      }

      goto LABEL_41;
    }

    OUTLINED_FUNCTION_12_49();
    if (!v26 || v38 != v20)
    {
      v41 = OUTLINED_FUNCTION_8_56(v37, v38, v39);

      if (v41)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

LABEL_41:

LABEL_42:

    v17 = 1;
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(v49, v50);
  OUTLINED_FUNCTION_43_3();
  v8 = PhoneCallNLIntent.isEmergencyServicesCall()();
  __swift_destroy_boxed_opaque_existential_1(v49);
  if (!v8)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = OUTLINED_FUNCTION_12_1(v9, static Logger.siriPhone);
  v11 = static os_log_type_t.debug.getter();
  if (!OUTLINED_FUNCTION_10_0(v11))
  {
    goto LABEL_13;
  }

  *OUTLINED_FUNCTION_65_0() = 0;
  v14 = "Current request is not considered as a personal request since it's an emergency services call";
LABEL_12:
  OUTLINED_FUNCTION_33(&dword_0, v12, v13, v14);
  OUTLINED_FUNCTION_8();

LABEL_13:

LABEL_14:
  v17 = 0;
LABEL_43:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v17 & 1;
}

uint64_t static PhoneCallRequestSupportPolicy.getFlowFromParse(parse:intentTypeName:resolvedApp:phoneCallNLIntent:sharedGlobals:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = type metadata accessor for CATOption();
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_4();
  switch(a2)
  {
    case 1:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      v67 = OUTLINED_FUNCTION_12_1(v66, static Logger.siriPhone);
      v68 = static os_log_type_t.debug.getter();
      v69 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v71);
        OUTLINED_FUNCTION_23_24(&dword_0, v72, v68, "Making HangUpCallFlow...");
        OUTLINED_FUNCTION_8();
      }

      v73 = OUTLINED_FUNCTION_2_83();
      v74(v73);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_25_27();
      type metadata accessor for HangUpCallFlow(0);
      swift_allocObject();

      v103[0] = HangUpCallFlow.init(input:sharedGlobals:app:)(v13, v103, a3);
      v63 = &lazy protocol witness table cache variable for type HangUpCallFlow and conformance PhoneFlow<A, B>;
      v64 = type metadata accessor for HangUpCallFlow;
      v65 = &protocol conformance descriptor for PhoneFlow<A, B>;
      goto LABEL_16;
    case 2:
      v48 = type metadata accessor for IdentifyIncomingCallerCATsSimple(0);
      static CATOption.defaultMode.getter();
      v49 = CATWrapperSimple.__allocating_init(options:globals:)();
      v104 = v48;
      v105 = &protocol witness table for IdentifyIncomingCallerCATsSimple;
      OUTLINED_FUNCTION_24_30(v49);
      outlined init with copy of IdentifyIncomingCallerOutputStrategy(v103, v102);

      v51 = _s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0rfsT8ResponseCTt2g5Tf4nen_nAA08IdentifyfsnO0V_Tg5(v50, v102, v107);
      outlined destroy of IdentifyIncomingCallerOutputStrategy(v103);
      v52 = OUTLINED_FUNCTION_2_83();
      v53(v52);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v54 = OUTLINED_FUNCTION_17_36();
      v55(v54);
      v56 = OUTLINED_FUNCTION_4_59();
      v57(v56);
      v103[0] = v51;
      v58 = OUTLINED_FUNCTION_43_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
      lazy protocol witness table accessor for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR);
      OUTLINED_FUNCTION_30_28();
      goto LABEL_20;
    case 3:
      type metadata accessor for SearchCallHistoryFlow(0);
      OUTLINED_FUNCTION_25_27();
      type metadata accessor for SearchCallHistoryRCHFlowDelegate(0);
      swift_allocObject();
      SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(v103);
      v60 = OUTLINED_FUNCTION_2_83();
      v61(v60);
      OUTLINED_FUNCTION_20_33();

      OUTLINED_FUNCTION_43_3();
      SearchCallHistoryFlow.__allocating_init(delegate:input:app:)();
      v103[0] = v62;
      v63 = &lazy protocol witness table cache variable for type SearchCallHistoryFlow and conformance SearchCallHistoryFlow;
      v64 = type metadata accessor for SearchCallHistoryFlow;
      v65 = &protocol conformance descriptor for SearchCallHistoryFlow;
LABEL_16:
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(v63, v64, v65);
      OUTLINED_FUNCTION_30_28();
      v29 = Flow.eraseToAnyFlow()();
      goto LABEL_21;
    case 4:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      v31 = OUTLINED_FUNCTION_12_1(v30, static Logger.siriPhone);
      v32 = static os_log_type_t.debug.getter();
      v33 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v35);
        OUTLINED_FUNCTION_23_24(&dword_0, v36, v32, "Making StartCallFlow...");
        OUTLINED_FUNCTION_8();
      }

      OUTLINED_FUNCTION_25_27();
      default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v102);
      v37 = type metadata accessor for StartCallFlow(0);
      OUTLINED_FUNCTION_21_30(v37);
      OUTLINED_FUNCTION_61();

      v39 = StartCallFlow.init(app:sharedGlobals:appFinder:)(v38, v103, v102);
      v40 = OUTLINED_FUNCTION_2_83();
      v41(v40);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v42 = OUTLINED_FUNCTION_17_36();
      v43(v42);
      v44 = OUTLINED_FUNCTION_4_59();
      v45(v44);
      v103[0] = v39;
      v46 = &lazy protocol witness table cache variable for type StartCallFlow and conformance PhoneFlow<A, B>;
      v47 = type metadata accessor for StartCallFlow;
      goto LABEL_19;
    case 5:
      OUTLINED_FUNCTION_25_27();
      v75 = type metadata accessor for StartAudioCallFlow(0);
      OUTLINED_FUNCTION_21_30(v75);
      OUTLINED_FUNCTION_61();

      v77 = StartAudioCallFlow.init(app:sharedGlobals:)(v76, v103);
      v78 = OUTLINED_FUNCTION_2_83();
      v79(v78);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v80 = OUTLINED_FUNCTION_17_36();
      v81(v80);
      v82 = OUTLINED_FUNCTION_4_59();
      v83(v82);
      v103[0] = v77;
      v46 = &lazy protocol witness table cache variable for type StartAudioCallFlow and conformance PhoneFlow<A, B>;
      v47 = type metadata accessor for StartAudioCallFlow;
      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_25_27();
      v84 = type metadata accessor for StartVideoCallFlow(0);
      OUTLINED_FUNCTION_21_30(v84);
      OUTLINED_FUNCTION_61();

      v86 = StartVideoCallFlow.init(app:sharedGlobals:)(v85, v103);
      v87 = OUTLINED_FUNCTION_2_83();
      v88(v87);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v89 = OUTLINED_FUNCTION_17_36();
      v90(v89);
      v91 = OUTLINED_FUNCTION_4_59();
      v92(v91);
      v103[0] = v86;
      v46 = &lazy protocol witness table cache variable for type StartVideoCallFlow and conformance PhoneFlow<A, B>;
      v47 = type metadata accessor for StartVideoCallFlow;
LABEL_19:
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(v46, v47, &protocol conformance descriptor for PhoneFlow<A, B>);
      OUTLINED_FUNCTION_30_28();
      goto LABEL_20;
    case 7:
      outlined init with copy of SignalProviding(a4, v103);
      outlined init with copy of SignalProviding(a5, v102);
      type metadata accessor for AddCallParticipantFlow(0);
      swift_allocObject();
      OUTLINED_FUNCTION_61();

      v103[0] = AddCallParticipantFlow.init(nlIntent:app:sharedGlobals:)(v103, a3, v102);
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(&lazy protocol witness table cache variable for type AddCallParticipantFlow and conformance PhoneFlow<A, B>, type metadata accessor for AddCallParticipantFlow, &protocol conformance descriptor for PhoneFlow<A, B>);
      OUTLINED_FUNCTION_30_28();
LABEL_20:
      v29 = Flow.eraseToAnyFlow()();
      goto LABEL_21;
    case 8:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static Logger.siriPhone);
      v103[0] = 0;
      v103[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      v95._countAndFlagsBits = 0xD00000000000001ELL;
      v95._object = 0x800000000045ED40;
      String.append(_:)(v95);
      LOBYTE(v102[0]) = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOSgMR);
      v96._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v96);

      v97._object = 0x800000000045ED60;
      v97._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v97);
      swift_bridgeObjectRetain_n();
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v102[0] = v101;
        *v100 = 136315138;
        *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v102);
        _os_log_impl(&dword_0, v98, v99, "%s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v101);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    default:
      v16 = a5[3];
      v15 = a5[4];
      __swift_project_boxed_opaque_existential_1(a5, v16);
      (*(v15 + 8))(v106, v16, v15);
      v17 = type metadata accessor for AnswerCallCATsSimple(0);
      static CATOption.defaultMode.getter();
      v18 = CATWrapperSimple.__allocating_init(options:globals:)();
      v106[8] = &type metadata for AudioSessionManager;
      v106[9] = &protocol witness table for AudioSessionManager;
      v106[13] = &type metadata for EntitlementChecker;
      v106[14] = &protocol witness table for EntitlementChecker;
      v104 = v17;
      v105 = &protocol witness table for AnswerCallCATsSimple;
      OUTLINED_FUNCTION_24_30(v18);
      outlined init with copy of AnswerCallOutputStrategy(v103, v102);

      v20 = _s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo08INAnswerB6IntentC_So0rbS8ResponseCTt2g5Tf4nen_nAA06AnswerbnO0V_Tg5(v19, v102, v107);
      v21 = OUTLINED_FUNCTION_2_83();
      v22(v21);
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_73_0();
      v23 = OUTLINED_FUNCTION_17_36();
      v24(v23);
      v25 = OUTLINED_FUNCTION_4_59();
      v26(v25);
      v102[0] = v20;
      v27 = OUTLINED_FUNCTION_43_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      lazy protocol witness table accessor for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>(&lazy protocol witness table cache variable for type IncomingCallFlow<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
      v29 = Flow.eraseToAnyFlow()();
      outlined destroy of AnswerCallOutputStrategy(v103);
LABEL_21:

      return v29;
  }
}

uint64_t static PhoneCallRequestSupportPolicy.getSiriKitIntentName(nlIntent:sharedGlobals:)(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 8))(v12, v3, v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isAnswerCall()() || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.isJoinCall()()))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isAddParticipant()() || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.isRemoveParticipant()()))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isHangUpCall()())
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 1;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isIncomingCallSearch()())
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 2;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isSearchCallOrVoiceMail()() || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.isDelete()()))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 3;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = PhoneCallNLIntent.hasAnyFaceTime()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = PhoneCallNLIntent.hasAudioCallSemantic()();
  v8 = v7;
  if (v6)
  {
    v9 = v13;
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    if (((DeviceState.isAnyCar.getter(v9, v10) | v8) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 5;
  }

  if (v7)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (static PhoneCallRequestSupportPolicy.isVideoCall(nlIntent:device:)(a1, v12))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 6;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (PhoneCallNLIntent.isOutgoingCall()())
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v11 = PhoneCallNLIntent.isVoiceMailCall()();
      __swift_destroy_boxed_opaque_existential_1(v12);
      if (v11)
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
      return 8;
    }
  }
}

uint64_t static PhoneCallRequestSupportPolicy.isVideoCall(nlIntent:device:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasVideoCallSemantic()())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = PhoneCallNLIntent.hasAnyFaceTime()();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = PhoneCallNLIntent.hasAudioCallSemantic()();
    if (v4)
    {
      v6 = a2[3];
      v7 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v6);
      v5 |= DeviceState.isAnyCar.getter(v6, v7);
    }

    v8 = v5 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void *static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 8)
  {
    v7 = static PhoneCallRequestSupportPolicy.getIntentFromInputParse(phoneCallNLIntent:sharedGlobals:)(a1, a2);
    v8 = [v7 _className];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    v13.value = PhoneCallIntentClassNames.init(intentClassName:)(v12).value;
    if (v13.value == PhoneCallFlowDelegatePlugin_PhoneCallIntentClassNames_unknownDefault)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      v15 = OUTLINED_FUNCTION_12_1(v14, static Logger.siriPhone);
      v16 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_10_0(v16))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_33(&dword_0, v17, v18, "#PhoneCallRequestSupportPolicy getSiriKitIntent: couldn't convert input to its corresponding INIntent");
        OUTLINED_FUNCTION_8();
      }

      return 0;
    }

    LOBYTE(a4) = v13;
  }

  return static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(a1, a2, a3, a4);
}

void *static PhoneCallRequestSupportPolicy.getSiriKitIntent(phoneCallNLIntent:sharedGlobals:app:intentTypeName:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 80))(v22, v5, v6);
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 2:

      v7 = v22;
      v9 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v9, v10, v11, v12);
      break;
    case 3:

      v7 = v22;
      v13 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v13, v14, v15, v16);
      break;
    case 4:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 5:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 6:
      OUTLINED_FUNCTION_7_54();
      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_26_24();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
      break;
    case 7:

      v7 = v22;
      v17 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v17, v18, v19, v20);
      break;
    default:

      v7 = v22;
      v8 = OUTLINED_FUNCTION_1_87();
      specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v8);
      break;
  }

  OUTLINED_FUNCTION_40_0();

  outlined destroy of SKTransformer(v22);
  return v7;
}

uint64_t outlined bridged method (pb) of @objc static INIntent.typeName()(void *a1)
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

void *_s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo08INAnswerB6IntentC_So0rbS8ResponseCTt2g5Tf4nen_nAA06AnswerbnO0V_Tg5(uint64_t a1, const void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  v12 = swift_allocObject();
  v17[3] = &type metadata for AnswerCallOutputStrategy;
  v17[4] = &protocol witness table for AnswerCallOutputStrategy;
  v17[0] = swift_allocObject();
  memcpy((v17[0] + 16), a2, 0xB0uLL);
  outlined init with copy of SignalProviding(v17, v12 + *(*v12 + 288));
  *(v12 + *(*v12 + 296)) = a1;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v11, v8, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  outlined init with copy of SignalProviding(v18, v16);
  v13 = specialized PhoneFlow.init(state:sharedGlobals:)(v8, v16);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v18);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v13;
}

void *_s27PhoneCallFlowDelegatePlugin08IncomingbC0C3app8strategy13sharedGlobalsACyxq_G17SiriAppResolution0L0C_AA0fbC14OutputStrategy_pAA06SharedJ9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0rfsT8ResponseCTt2g5Tf4nen_nAA08IdentifyfsnO0V_Tg5(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a3, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR);
  v12 = swift_allocObject();
  v19[3] = &type metadata for IdentifyIncomingCallerOutputStrategy;
  v19[4] = &protocol witness table for IdentifyIncomingCallerOutputStrategy;
  v13 = swift_allocObject();
  v19[0] = v13;
  v14 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = *(a2 + 48);
  outlined init with copy of SignalProviding(v19, v12 + *(*v12 + 288));
  *(v12 + *(*v12 + 296)) = a1;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v11, v8, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  outlined init with copy of SignalProviding(v20, v18);
  v15 = specialized PhoneFlow.init(state:sharedGlobals:)(v8, v18);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v20);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t lazy protocol witness table accessor for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_6(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_31_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames_optional __swiftcall PhoneCallSlotNames.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v1;
  }
}

unint64_t PhoneCallSlotNames.rawValue.getter(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x756F526F69647561;
      break;
    case 2:
      result = 0x74616E6974736564;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x746361746E6F63;
      break;
    case 5:
      result = 0x73746361746E6F63;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x65707954797474;
      break;
    case 8:
      result = 0x617061436C6C6163;
      break;
    case 9:
      result = 0x657079546C6C6163;
      break;
    case 10:
      result = 0x6165724365746164;
      break;
    case 11:
      result = 0x6E65697069636572;
      break;
    case 12:
      result = 0x6E6565736E75;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x4370756F72477369;
      break;
    case 17:
      result = 0x756F72476C6C6163;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x7069636974726170;
      break;
    default:
      return result;
  }

  return result;
}

void *PhoneCallSlotNames.startAudioCallParameters.unsafeMutableAddressor()
{
  if (one-time initialization token for startAudioCallParameters != -1)
  {
    swift_once();
  }

  return &static PhoneCallSlotNames.startAudioCallParameters;
}

void one-time initialization function for startAudioCallParameters(uint64_t a1, Class *a2, void *a3)
{
  v4 = [objc_allocWithZone(*a2) init];
  v5 = INIntent.parameterMetadata.getter();

  *a3 = v5;
}

void *PhoneCallSlotNames.startCallParameters.unsafeMutableAddressor()
{
  if (one-time initialization token for startCallParameters != -1)
  {
    swift_once();
  }

  return &static PhoneCallSlotNames.startCallParameters;
}

uint64_t static PhoneCallSlotNames.startAudioCallParameters.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t PhoneCallSlotNames.parameterIdentifier.getter(char a1)
{
  v1 = PhoneCallSlotNames.rawValue.getter(a1);

  return ParameterIdentifier.init(_:)(v1);
}

unint64_t lazy protocol witness table accessor for type PhoneCallSlotNames and conformance PhoneCallSlotNames()
{
  result = lazy protocol witness table cache variable for type PhoneCallSlotNames and conformance PhoneCallSlotNames;
  if (!lazy protocol witness table cache variable for type PhoneCallSlotNames and conformance PhoneCallSlotNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallSlotNames and conformance PhoneCallSlotNames);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallSlotNames@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallSlotNames_optional *a2@<X8>)
{
  result.value = PhoneCallSlotNames.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallSlotNames@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallSlotNames.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallSlotNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallSlotNames(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}