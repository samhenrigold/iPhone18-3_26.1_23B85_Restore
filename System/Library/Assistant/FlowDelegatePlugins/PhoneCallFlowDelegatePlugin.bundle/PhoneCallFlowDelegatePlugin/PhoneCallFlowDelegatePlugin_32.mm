PhoneCallFlowDelegatePlugin::ReaderNLConstants_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ReaderNLConstants@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ReaderNLConstants_optional *a2@<X8>)
{
  result.value = ReaderNLConstants.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ReaderNLConstants@<X0>(uint64_t *a1@<X8>)
{
  result = ReaderNLConstants.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ReaderNLConstants(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AppIntentDispatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  AppIntentDispatcher.init()();
  return v0;
}

uint64_t AppIntentDispatcher.init()()
{
  v1 = type metadata accessor for IntentsServices.PayloadPrivacy();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMd, &_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMR);
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for IntentsServices.DispatcherOptions();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultEnvironment];
  v20[3] = type metadata accessor for LNEnvironment();
  v20[4] = &protocol witness table for LNEnvironment;
  v20[0] = v14;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v3 + 104))(v6, enum case for IntentsServices.PayloadPrivacy.default(_:), v1);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v15 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v17 = v16;
  (*(v10 + 8))(v13, v8);
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(v0 + 16) = v15;
  *(v0 + 24) = v17;
  return v0;
}

unint64_t type metadata accessor for LNEnvironment()
{
  result = lazy cache variable for type metadata for LNEnvironment;
  if (!lazy cache variable for type metadata for LNEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEnvironment);
  }

  return result;
}

uint64_t AppIntentDispatcher.performLocally<A>(appIntentRepresentation:)()
{
  *(v0 + 16) = type metadata accessor for PhoneError(0);
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(AppIntentDispatcher.performLocally<A>(appIntentRepresentation:), 0, 0);
}

{
  v1 = *(v0 + 24);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v2);
  outlined destroy of PhoneError(v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t AppIntentDispatcher.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PhoneAppIntentDispatching.performLocally<A>(appIntentRepresentation:) in conformance AppIntentDispatcher(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 96) + **(**v5 + 96));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t outlined init with copy of NonTerminalIntentNode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of NonTerminalIntentNode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReaderNlIntent.traversableOntologyNode.getter()
{
  type metadata accessor for ReaderNlIntent(0);
}

uint64_t ReaderNlIntent.traversableOntologyNode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReaderNlIntent(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReaderNlIntent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for NonTerminalIntentNode();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_424FD0;
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100(&one-time initialization token for readerVerbNode);
  }

  v9 = static ReaderOntologyNode.readerVerbNode;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  OUTLINED_FUNCTION_2_14();
  *(v8 + 64) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v10, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR, v11);
  *(v8 + 32) = v9;
  type metadata accessor for NonTerminalOntologyNode();
  swift_allocObject();

  v12 = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  *(a2 + *(type metadata accessor for ReaderNlIntent(0) + 20)) = v12;
  ReaderNlIntent.getReaderIntentNode(intent:)(v6);
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_23_5();
  (*(v13 + 8))(a1);
  return outlined assign with take of NonTerminalIntentNode?(v6, a2);
}

uint64_t *ReaderOntologyNode.readerVerbNode.unsafeMutableAddressor()
{
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100(&one-time initialization token for readerVerbNode);
  }

  return &static ReaderOntologyNode.readerVerbNode;
}

uint64_t ReaderNlIntent.getReaderIntentNode(intent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v114 = &v104 - v6;
  __chkstk_darwin(v7);
  v9 = &v104 - v8;
  __chkstk_darwin(v10);
  v12 = &v104 - v11;
  __chkstk_darwin(v13);
  v15 = &v104 - v14;
  v16 = type metadata accessor for NonTerminalIntentNode();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v113 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v115 = &v104 - v20;
  __chkstk_darwin(v21);
  v116 = &v104 - v22;
  __chkstk_darwin(v23);
  v25 = &v104 - v24;
  NLIntent.rootNode.getter();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology10IntentNode_pMd, &_s12SiriOntology10IntentNode_pMR);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    outlined destroy of PhoneCallNLIntent?(v15, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    goto LABEL_9;
  }

  v105 = v9;
  v109 = v26;
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v27 = *(v17 + 32);
  v108 = v17 + 32;
  v107 = v27;
  v27(v25, v15, v16);
  v117 = v25;
  if (NonTerminalIntentNode.ontologyNodeName.getter() == 0x6973734169726953 && v28 == 0xED0000746E617473)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      (*(v17 + 8))(v117, v16);
LABEL_9:
      v31 = a1;
LABEL_10:
      v32 = 1;
      v33 = v16;
      return __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
    }
  }

  v106 = v12;
  v104 = v4;
  v110 = v17;
  v111 = v16;
  v112 = a1;
  v34 = NonTerminalIntentNode.childNodes.getter();
  v35 = 0;
  v36 = *(v34 + 16);
  v37 = v34 + 32;
  v38 = _swiftEmptyArrayStorage;
  while (v36 != v35)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_85;
    }

    outlined init with copy of SignalProviding(v37, &v120);
    __swift_project_boxed_opaque_existential_1(&v120, v121);
    if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x6E6F69746361 && v39 == 0xE600000000000000)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v120);
        goto LABEL_27;
      }
    }

    outlined init with take of SPHConversation(&v120, v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1);
      v38 = v119;
    }

    v44 = v38[2];
    v43 = v38[3];
    if (v44 >= v43 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
      v38 = v119;
    }

    v38[2] = v44 + 1;
    outlined init with take of SPHConversation(v118, &v38[5 * v44 + 4]);
LABEL_27:
    v37 += 40;
    ++v35;
  }

  if (v38[2] != 1)
  {

    v51 = v111;
    (*(v110 + 8))(v117, v111);
    v31 = v112;
    v32 = 1;
    v33 = v51;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
  }

  specialized Collection.first.getter(v38, &v120);

  v46 = v111;
  v45 = v112;
  v47 = v110;
  v48 = v117;
  if (!v121)
  {
    (*(v110 + 8))(v117, v111);
    outlined destroy of PhoneCallNLIntent?(&v120, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v49 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v46);
LABEL_34:
    v52 = v49;
    goto LABEL_35;
  }

  v49 = v106;
  v50 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v49, v50 ^ 1u, 1, v46);
  if (__swift_getEnumTagSinglePayload(v49, 1, v46) == 1)
  {
    (*(v47 + 8))(v48, v46);
    goto LABEL_34;
  }

  v107(v116, v49, v46);
  v53 = NonTerminalIntentNode.childNodes.getter();
  v54 = 0;
  v55 = *(v53 + 16);
  v56 = v53 + 32;
  v57 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v55 != v54)
    {
      if (v54 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_110;
      }

      outlined init with copy of SignalProviding(v56, &v120);
      __swift_project_boxed_opaque_existential_1(&v120, v121);
      if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x646E616D6D6F63 && v58 == 0xE700000000000000)
      {
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v60 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1(&v120);
LABEL_51:
          v56 += 40;
          ++v54;
          continue;
        }
      }

      outlined init with take of SPHConversation(&v120, v118);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v57;
      if ((v61 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1);
        v57 = v119;
      }

      v63 = v57[2];
      v62 = v57[3];
      if (v63 >= v62 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
        v57 = v119;
      }

      v57[2] = v63 + 1;
      outlined init with take of SPHConversation(v118, &v57[5 * v63 + 4]);
      goto LABEL_51;
    }

    break;
  }

  if (v57[2] != 1)
  {

    v46 = v111;
    v70 = *(v110 + 8);
LABEL_57:
    v70(v116, v46);
    v70(v117, v46);
    v31 = v112;
    goto LABEL_58;
  }

  specialized Collection.first.getter(v57, &v120);

  v16 = v111;
  v64 = v112;
  v65 = v110;
  v66 = v117;
  if (!v121)
  {
    v72 = *(v110 + 8);
    v72(v116, v111);
    v72(v66, v16);
    outlined destroy of PhoneCallNLIntent?(&v120, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v67 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v16);
LABEL_62:
    v73 = v67;
    goto LABEL_63;
  }

  v67 = v105;
  v68 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v67, v68 ^ 1u, 1, v16);
  if (__swift_getEnumTagSinglePayload(v67, 1, v16) == 1)
  {
    v69 = *(v65 + 8);
    v69(v116, v16);
    v69(v66, v16);
    goto LABEL_62;
  }

  v107(v115, v67, v16);
  result = NonTerminalIntentNode.childNodes.getter();
  v74 = result;
  v75 = 0;
  v76 = *(result + 16);
  v77 = result + 32;
  v78 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v76 != v75)
    {
      if (v75 >= *(v74 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
        return result;
      }

      outlined init with copy of SignalProviding(v77, &v120);
      __swift_project_boxed_opaque_existential_1(&v120, v121);
      if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x7463656A627573 && v79 == 0xE700000000000000)
      {
      }

      else
      {
        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v81 & 1) == 0)
        {
          result = __swift_destroy_boxed_opaque_existential_1(&v120);
LABEL_79:
          v77 += 40;
          ++v75;
          continue;
        }
      }

      outlined init with take of SPHConversation(&v120, v118);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v78;
      if ((v82 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1);
        v78 = v119;
      }

      v84 = v78[2];
      v83 = v78[3];
      if (v84 >= v83 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        v78 = v119;
      }

      v78[2] = v84 + 1;
      result = outlined init with take of SPHConversation(v118, &v78[5 * v84 + 4]);
      goto LABEL_79;
    }

    break;
  }

  if (v78[2] != 1)
  {
LABEL_85:

    v46 = v111;
    v70 = *(v110 + 8);
LABEL_86:
    v70(v115, v46);
    goto LABEL_57;
  }

  specialized Collection.first.getter(v78, &v120);

  v16 = v111;
  v64 = v112;
  v85 = v110;
  if (!v121)
  {
    v89 = *(v110 + 8);
    v89(v115, v111);
    v89(v116, v16);
    v89(v117, v16);
    outlined destroy of PhoneCallNLIntent?(&v120, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v86 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v16);
LABEL_88:
    v73 = v86;
LABEL_63:
    outlined destroy of PhoneCallNLIntent?(v73, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v31 = v64;
    goto LABEL_10;
  }

  v86 = v114;
  v87 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v86, v87 ^ 1u, 1, v16);
  if (__swift_getEnumTagSinglePayload(v86, 1, v16) == 1)
  {
    v88 = *(v85 + 8);
    v88(v115, v16);
    v88(v116, v16);
    v88(v117, v16);
    goto LABEL_88;
  }

  v107(v113, v86, v16);
  result = NonTerminalIntentNode.childNodes.getter();
  v90 = result;
  v91 = 0;
  v92 = *(result + 16);
  v93 = result + 32;
  v94 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v92 != v91)
    {
      if (v91 >= *(v90 + 16))
      {
        goto LABEL_114;
      }

      outlined init with copy of SignalProviding(v93, &v120);
      __swift_project_boxed_opaque_existential_1(&v120, v121);
      if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x726564616572 && v95 == 0xE600000000000000)
      {
      }

      else
      {
        v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v97 & 1) == 0)
        {
          result = __swift_destroy_boxed_opaque_existential_1(&v120);
LABEL_104:
          v93 += 40;
          ++v91;
          continue;
        }
      }

      outlined init with take of SPHConversation(&v120, v118);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v94;
      if ((v98 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1);
        v94 = v119;
      }

      v100 = v94[2];
      v99 = v94[3];
      if (v100 >= v99 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
        v94 = v119;
      }

      v94[2] = v100 + 1;
      result = outlined init with take of SPHConversation(v118, &v94[5 * v100 + 4]);
      goto LABEL_104;
    }

    break;
  }

  if (v94[2] != 1)
  {
LABEL_110:

    v46 = v111;
    v70 = *(v110 + 8);
    v70(v113, v111);
    goto LABEL_86;
  }

  specialized Collection.first.getter(v94, &v120);

  v46 = v111;
  v101 = *(v110 + 8);
  v101(v113, v111);
  v101(v115, v46);
  v101(v116, v46);
  v101(v117, v46);
  v45 = v112;
  if (!v121)
  {
    outlined destroy of PhoneCallNLIntent?(&v120, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v102 = v104;
    __swift_storeEnumTagSinglePayload(v104, 1, 1, v46);
    goto LABEL_112;
  }

  v102 = v104;
  v103 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v102, v103 ^ 1u, 1, v46);
  if (__swift_getEnumTagSinglePayload(v102, 1, v46) == 1)
  {
LABEL_112:
    v52 = v102;
LABEL_35:
    outlined destroy of PhoneCallNLIntent?(v52, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v31 = v45;
LABEL_58:
    v32 = 1;
    goto LABEL_59;
  }

  v107(v45, v102, v46);
  v31 = v45;
  v32 = 0;
LABEL_59:
  v33 = v46;
  return __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
}

uint64_t ReaderNlIntent.getReaderVerb.getter()
{
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100(&one-time initialization token for readerVerbNode);
  }

  type metadata accessor for ReaderNlIntent(0);
  lazy protocol witness table accessor for type ReaderNlIntent and conformance ReaderNlIntent();
  IntentNodeTraversable.value<A>(forNode:)();
  return v1;
}

uint64_t one-time initialization function for readerVerbNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ReaderOntologyNode.readerVerbNode = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ReaderNlIntent and conformance ReaderNlIntent()
{
  result = lazy protocol witness table cache variable for type ReaderNlIntent and conformance ReaderNlIntent;
  if (!lazy protocol witness table cache variable for type ReaderNlIntent and conformance ReaderNlIntent)
  {
    type metadata accessor for ReaderNlIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderNlIntent and conformance ReaderNlIntent);
  }

  return result;
}

uint64_t static ReaderOntologyNode.readerVerbNode.getter()
{
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100(&one-time initialization token for readerVerbNode);
  }
}

uint64_t ReaderOntologyNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return ReaderOntologyNode.init(name:multicardinal:)(a1, a2, v3);
}

uint64_t ReaderOntologyNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_424FD0;
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100(&one-time initialization token for readerVerbNode);
  }

  v4 = static ReaderOntologyNode.readerVerbNode;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  OUTLINED_FUNCTION_2_14();
  *(v3 + 64) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v5, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR, v6);
  *(v3 + 32) = v4;

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

PhoneCallFlowDelegatePlugin::ReaderVerb_optional __swiftcall ReaderVerb.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ReaderVerb.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t ReaderVerb.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65756E69746E6F63;
  }

  if (a1 == 1)
  {
    return 1886352499;
  }

  return 0x746165706572;
}

unint64_t lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb()
{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::ReaderVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ReaderVerb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ReaderVerb_optional *a2@<X8>)
{
  result.value = ReaderVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ReaderVerb@<X0>(uint64_t *a1@<X8>)
{
  result = ReaderVerb.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance ReaderVerb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb();
  v13 = lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb();
  v14 = lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v12, v13, v14, v15, v16, v17, a9, a10);
}

void type metadata completion function for ReaderNlIntent(uint64_t a1)
{
  type metadata accessor for NonTerminalIntentNode?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NonTerminalOntologyNode();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for NonTerminalIntentNode?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NonTerminalIntentNode?)
  {
    type metadata accessor for NonTerminalIntentNode();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NonTerminalIntentNode?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ReaderVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t VoiceMailPosition.rawValue.getter(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x656C6464696DLL;
      break;
    case 2:
      result = 1953718636;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t key path setter for ReadVoiceMailAction.nextAction : ReadVoiceMailAction(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 152);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ReadVoiceMailAction.paginatedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ReadVoiceMailAction.__allocating_init(paginatedCallRecord:intent:intentResponse:aceServiceInvoker:searchCallHistoryCatFamily:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ReadVoiceMailAction.init(paginatedCallRecord:intent:intentResponse:aceServiceInvoker:searchCallHistoryCatFamily:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ReadVoiceMailAction.init(paginatedCallRecord:intent:intentResponse:aceServiceInvoker:searchCallHistoryCatFamily:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v47 = a5;
  v48 = a4;
  v44 = a1;
  v10 = type metadata accessor for CATOption();
  __chkstk_darwin(v10 - 8);
  OUTLINED_FUNCTION_4();
  v45 = v12 - v11;
  type metadata accessor for Page();
  OUTLINED_FUNCTION_7();
  v41 = v14;
  v42 = v13;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_7();
  v20 = v19;
  v43 = v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v39 - v23;
  v6[2] = 0;
  v46 = v6 + 2;
  v6[3] = 0;
  v6[4] = 0xD000000000000013;
  v6[5] = 0x8000000000443310;
  v25 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem;
  v26 = *(v20 + 16);
  v26(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem, a1, v18, v22);
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intent) = a2;
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intentResponse) = a3;
  outlined init with copy of SignalProviding(v48, v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker);
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_searchCallHistoryCatFamily) = v47;
  (v26)(v24, v6 + v25, v18);
  v27 = a2;
  v40 = v27;
  v28 = a3;

  PaginatedItem.page.getter();
  v43 = *(v43 + 8);
  (v43)(v24, v18);
  LOBYTE(v24) = Page.isFirstPage.getter();
  (*(v41 + 8))(v17, v42);
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_isLeadingSavedVoiceMailPostPrompt) = static SearchCallHistoryHelper.isLeadingSavedVoiceMail(isFirstPage:intentResponse:intent:)(v24 & 1, v28, v27) & 1;
  PaginatedItem.item.getter();
  v29 = v50;
  v30 = [v50 identifier];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  LOBYTE(v30) = *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_isLeadingSavedVoiceMailPostPrompt);
  outlined init with copy of SignalProviding(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker, v49);
  type metadata accessor for SearchCallHistoryCATs(0);
  static CATOption.defaultMode.getter();
  v34 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PlayVoiceMailAction();
  swift_allocObject();
  v35 = PlayVoiceMailAction.init(voicemailIdentifier:isLeadingSavedVoiceMailPostPrompt:aceServiceInvoker:searchCallHistoryCatFamily:)(v31, v33, v30, v49, v34);

  __swift_destroy_boxed_opaque_existential_1(v48);
  (v43)(v44, v18);
  v36 = _s27PhoneCallFlowDelegatePlugin19PlayVoiceMailActionCAC07SiriKitC00I0AAWlTm_0(&lazy protocol witness table cache variable for type PlayVoiceMailAction and conformance PlayVoiceMailAction, type metadata accessor for PlayVoiceMailAction, &protocol conformance descriptor for PlayVoiceMailAction);
  v37 = v46;
  swift_beginAccess();
  *v37 = v35;
  v6[3] = v36;
  swift_unknownObjectRelease();
  return v6;
}

uint64_t ReadVoiceMailAction.run(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *(*v2 + 184);

  v6(partial apply for closure #1 in ReadVoiceMailAction.run(_:), v5);
}

void closure #1 in ReadVoiceMailAction.run(_:)(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a3(0);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker), *(a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker + 24));
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    outlined copy of Result<SASTSideBySideButtonsItem, Error>(a1, 0);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

    dispatch thunk of AceServiceInvoker.submit<A>(_:completion:)();

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(a1, 0);
  }
}

uint64_t closure #1 in closure #1 in ReadVoiceMailAction.run(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SubmitCommandError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v6, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    _s27PhoneCallFlowDelegatePlugin19PlayVoiceMailActionCAC07SiriKitC00I0AAWlTm_0(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, &type metadata accessor for SubmitCommandError, &protocol conformance descriptor for SubmitCommandError);
    v11 = swift_allocError();
    (*(v8 + 16))(v12, v10, v7);
    a2(v11);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
    return (a2)(0);
  }
}

uint64_t ReadVoiceMailAction.makeSummaryView(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  ReadVoiceMailAction.getTemplatingResult(_:)(partial apply for closure #1 in ReadVoiceMailAction.makeSummaryView(_:), v4);
}

uint64_t closure #1 in ReadVoiceMailAction.makeSummaryView(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v8);
  v10 = (&v14 - v9);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v14 - v9, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    swift_errorRetain();
    a2(v11, 1);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    type metadata accessor for ViewFactory();
    swift_allocObject();
    ViewFactory.init(ttsEnabled:)();
    v13 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();

    a2(v13, 0);

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ReadVoiceMailAction.getTemplatingResult(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v5 - 8);
  v39 = v36 - v6;
  v7 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = (v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  PaginatedItem.item.getter();
  v14 = v40[5];
  type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v40);
  v16 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v14, 0, v15, v13);
  type metadata accessor for PhoneCallRecord(0);
  swift_allocObject();
  v17 = PhoneCallRecord.init(builder:)(v16);

  (*(v9 + 8))(v13, v7);
  v18 = [*(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intentResponse) callRecords];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v20))
    {
      v21 = specialized Array.count.getter(v20);

      ReadVoiceMailAction.getVoiceMailPosition(callRecordsCount:)(v21);
      v38 = a1;
      v22 = *(v17 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
      type metadata accessor for PhoneSearchCallHistoryIntent(0);
      v23 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intent);

      PhoneSearchCallHistoryIntent.__allocating_init(intent:)(v23);
      INSearchCallHistoryIntent.isSingleDateRequest.getter();
      v36[1] = v24;
      INSearchCallHistoryIntent.isTimeRangeRequest.getter();
      v25 = v39;
      SpeakableString.init(print:speak:)();
      v26 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
      INSearchCallHistoryIntentResponse.newRecordsCount.getter();
      INSearchCallHistoryIntentResponse.savedRecordsCount.getter();
      v27 = OUTLINED_FUNCTION_4_71();
      if (v22 == 1)
      {
        v28(v27);
      }

      else
      {
        v29(v27);
      }

      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.siriPhone);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x8000000000460A30, v40);
    _os_log_impl(&dword_0, v32, v33, "%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ReadVoiceMailAction.getVoiceMailPosition(callRecordsCount:)(Swift::Int a1)
{
  v2 = type metadata accessor for Page();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  PaginatedItem.item.getter();
  v9 = INCallRecord.unseen.getter();

  if (v9 == 2)
  {
    return 3;
  }

  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  if (v9)
  {
    a1 = v11;
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  PaginatedItem.page.getter();
  v13 = Page.pageIndex.getter();
  (*(v4 + 8))(v8, v2);
  return VoiceMailPosition.init(start:end:index:)(v12, a1, v13);
}

PhoneCallFlowDelegatePlugin::VoiceMailPosition __swiftcall VoiceMailPosition.init(start:end:index:)(Swift::Int start, Swift::Int end, Swift::Int index)
{
  if (start == index)
  {
    LOBYTE(start) = 0;
    return start;
  }

  if (__OFSUB__(end, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (end - 1 == index)
  {
    LOBYTE(start) = 2;
    return start;
  }

  if (end < start)
  {
LABEL_14:
    __break(1u);
    return start;
  }

  if (end < index || index < start)
  {
    LOBYTE(start) = 3;
  }

  else
  {
    LOBYTE(start) = 1;
  }

  return start;
}

uint64_t ReadVoiceMailAction.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker));

  return v0;
}

uint64_t ReadVoiceMailAction.__deallocating_deinit()
{
  ReadVoiceMailAction.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for StaticAction.nextAction.modify in conformance ReadVoiceMailAction(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 160))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

PhoneCallFlowDelegatePlugin::VoiceMailPosition_optional __swiftcall VoiceMailPosition.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceMailPosition.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for ReadVoiceMailAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for ReadVoiceMailAction;
  if (!type metadata singleton initialization cache for ReadVoiceMailAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceMailPosition and conformance VoiceMailPosition()
{
  result = lazy protocol witness table cache variable for type VoiceMailPosition and conformance VoiceMailPosition;
  if (!lazy protocol witness table cache variable for type VoiceMailPosition and conformance VoiceMailPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMailPosition and conformance VoiceMailPosition);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::VoiceMailPosition_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceMailPosition@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoiceMailPosition_optional *a2@<X8>)
{
  result.value = VoiceMailPosition.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceMailPosition@<X0>(uint64_t *a1@<X8>)
{
  result = VoiceMailPosition.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void type metadata completion function for ReadVoiceMailAction(uint64_t a1)
{
  type metadata accessor for PaginatedItem<INCallRecord>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for VoiceMailPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin19PlayVoiceMailActionCAC07SiriKitC00I0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  *(v14 + direct field offset for ContinueReadingVoicemailFlow.isRepeatRequest) = 0;
  v21 = (v14 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
  *v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
  v21[1] = &outlined read-only object #0 of specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:);
  v21[2] = 0;
  v21[3] = 0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 88) = a1;
  *(v14 + 96) = a4;
  *(v14 + direct field offset for ContinueReadingVoicemailFlow.isSingleVoicemailRequest) = a5;
  v34 = a7;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a7, v14 + 48);
  v22 = direct field offset for ContinueReadingVoicemailFlow.windowParam;
  v23 = type metadata accessor for WindowedPaginationParameters();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v14 + v22, a9, v23);
  *(v14 + 24) = a8;
  v25 = v14 + direct field offset for ContinueReadingVoicemailFlow.totalItemCount;
  *v25 = a10;
  *(v25 + 8) = a11 & 1;
  *(v14 + 304) = a12;
  *(v14 + 312) = a13;
  outlined init with copy of SearchCallHistorySharedGlobals(a14, v14 + 104);
  if (a6)
  {
    outlined destroy of SearchCallHistorySharedGlobals(a14);
    (*(v24 + 8))(a9, v23);
    __swift_destroy_boxed_opaque_existential_1(v34);
    *(v14 + 16) = 7;
    *(v14 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt) = 0;
  }

  else
  {

    v26 = a2;
    v27 = a3;

    if (a5 & 1 | ((WindowedPaginationParameters.isFirstWindow.getter() & 1) == 0))
    {
      v28 = 7;
    }

    else
    {
      v28 = 5;
    }

    *(v14 + 16) = v28;
    v29 = WindowedPaginationParameters.isFirstWindow.getter();
    v30 = static SearchCallHistoryHelper.isLeadingSavedVoiceMail(isFirstPage:intentResponse:intent:)(v29 & 1, v27, v26);

    outlined destroy of SearchCallHistorySharedGlobals(a14);
    (*(v24 + 8))(a9, v23);
    __swift_destroy_boxed_opaque_existential_1(v34);
    *(v14 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt) = v30 & 1;
  }

  return v14;
}

uint64_t ReadVoicemailResultSetFlowProvider.totalItemCount.getter()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *((*(v0 + 216))() + 16);

  return v1;
}

uint64_t ReadVoicemailResultSetFlowProvider.__allocating_init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v8 = v6;
  v54 = *v8;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v63 = v16;
  v64 = v15;
  __chkstk_darwin(v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[50] = -1;
  v8[51] = type metadata accessor for ReadVoicemailResultSetFlowProvider();
  v8[52] = &outlined read-only object #0 of ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:);
  v8[53] = 0;
  v8[54] = 0;
  v8[49] = a1;
  v57 = a4;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a4, (v8 + 4));
  v56 = a6;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a6, (v8 + 9));
  v8[14] = a2;
  v8[15] = a3;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a5, (v8 + 43));
  v58 = a5;
  v19 = a5[23];
  v20 = a5[24];
  v8[16] = v19;
  v8[48] = v20;
  v21 = a3;

  v22 = a2;

  v55 = a1;
  v23 = App.isFirstParty()();
  v52 = v7;
  v59 = v21;
  v60 = v8;
  if (v23)
  {
    static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(v22, v21);

    goto LABEL_8;
  }

  if ([v22 recipient])
  {
    v24 = OUTLINED_FUNCTION_2_4();
    type metadata accessor for PhonePerson(v24);
    v25 = v19;
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v65, v66);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v65);
    v26 = static PhonePerson.make(phonePerson:options:locale:)(v19, 0, v18);

    (*(v63 + 8))(v18, v64);
    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      OUTLINED_FUNCTION_4_68();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_426260;
      *(v27 + 32) = v26;

      v21 = v59;
      v8 = v60;
      goto LABEL_8;
    }

    v21 = v59;
    v8 = v60;
  }

LABEL_8:
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for PhonePersonList();
  v28 = OUTLINED_FUNCTION_40_0();
  v29 = PhonePersonList.__allocating_init(list:)(v28);
  v53 = v22;
  v8[17] = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(v53, v29);
  v30 = outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(v21);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v32 = specialized Array.count.getter(v31);
  if (v32)
  {
    v33 = v32;
    v67 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      return;
    }

    v34 = 0;
    v35 = v67;
    v61 = v31 & 0xC000000000000001;
    v62 = v33;
    v36 = (v63 + 8);
    v63 = v31;
    do
    {
      if (v61)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v31 + 8 * v34 + 32);
      }

      OUTLINED_FUNCTION_2_4();
      type metadata accessor for AppInfoBuilder();
      v38 = swift_allocObject();
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v65, v66);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v65);
      v39 = v31;
      _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v39, 1, v38, v18);
      v40 = OUTLINED_FUNCTION_2_4();
      type metadata accessor for PhoneCallRecord(v40);
      OUTLINED_FUNCTION_12_8();
      swift_allocObject();
      v41 = OUTLINED_FUNCTION_40_0();
      v42 = PhoneCallRecord.init(builder:)(v41);

      (*v36)(v18, v64);
      v67 = v35;
      v44 = v35[2];
      v43 = v35[3];
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
        v35 = v67;
      }

      ++v34;
      v35[2] = v44 + 1;
      v45 = &v35[2 * v44];
      v45[4] = v42;
      v45[5] = v39;
      v31 = v63;
    }

    while (v62 != v34);
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
  }

  v46 = v35[2];
  v47 = _swiftEmptyArrayStorage;
  if (v46)
  {
    v65[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v48 = v35 + 4;
    do
    {
      v48 += 2;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v46;
    }

    while (v46);
    v47 = v65[0];
  }

  v49 = v60;
  v60[3] = v47;
  static ReadVoicemailResultSetFlowProvider.getSortedVoicemails(callRecords:)(v35);
  v51 = v50;

  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v49[2] = v51;
  memcpy(v49 + 18, v58, 0xC8uLL);
}

void static ReadVoicemailResultSetFlowProvider.getSortedVoicemails(callRecords:)(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 32;
LABEL_2:
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen;
  v6 = (v4 + 16 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_25;
    }

    v9 = *v6;
    v6 += 2;
    v8 = v9;
    ++v2;
    if (*(v9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen))
    {
      v10 = *(v6 - 1);

      v11 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v8;
      v14[5] = v11;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v15 = 0;
LABEL_13:
  v16 = (result + 32 + 16 * v15);
  while (v3 != v15)
  {
    if (v15 >= v3)
    {
      goto LABEL_26;
    }

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_27;
    }

    v19 = *v16;
    v16 += 2;
    v18 = v19;
    ++v15;
    if ((*(v19 + v5) & 1) == 0)
    {
      v20 = *(v16 - 1);

      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v18;
      v24[5] = v21;
      v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen;
      v15 = v17;
      goto LABEL_13;
    }
  }

  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);
}

uint64_t ReadVoicemailResultSetFlowProvider.makeSingleItemFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[33] = v0;
  v2 = type metadata accessor for PhoneError(0);
  v1[34] = v2;
  OUTLINED_FUNCTION_21(v2);
  v1[35] = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for WindowedPaginationParameters();
  v1[36] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[37] = v4;
  v1[38] = OUTLINED_FUNCTION_62_4();
  v1[39] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[40] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v66 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[33];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v63 = OUTLINED_FUNCTION_83();
    v64 = 0;
    v4 = OUTLINED_FUNCTION_11_52(4.8149e-34);
    v65 = v5;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v6, v7, v8);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v65, &v63);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_12(&dword_0, v10, v11, "%s there is only one item in the result set. Rendering single result.");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v12 = *(*v0[33] + 216);
  v13 = *(v12() + 16);

  if (v13 == 1)
  {
    v15 = (v12)(v14);
    if (v15[2])
    {
      v16 = v0[40];
      v18 = v15[4];
      v17 = v15[5];

      v62 = v17;

      outlined init with copy of PersonNameComponents?();
      v19 = type metadata accessor for SpeakableString();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v19);
      v21 = v0[40];
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of PhoneCallNLIntent?(v0[40], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v22 = SpeakableString.print.getter();
        v23 = v32;
        OUTLINED_FUNCTION_40();
        (*(v33 + 8))(v21, v19);
      }

      v60 = (v0 + 2);
      v34 = v0[39];
      v56 = v0[37];
      v57 = v0[36];
      v58 = v0[38];
      v35 = v0[33];
      v61 = ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(v22, v23);

      v36 = static WindowedPaginationParameters.makeLastWindow(windowSize:isFirstWindow:)();
      v49 = *(*v35 + 208);
      v37 = v49(v36);
      if (v38)
      {
        v37 = 0;
      }

      ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(v37, v18);
      v55 = v39;
      VoicemailResultSetFlow = ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()();
      v54 = v35[49];
      v40 = v35[14];
      v41 = v35[15];
      v51 = v35[17];
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v35 + 4), (v0 + 27));

      v53 = v40;
      v52 = v41;

      v50 = (v12)(v42);
      v43 = (*(v56 + 16))(v58, v34, v57);
      v44 = v49(v43);
      v46 = v45;
      outlined init with copy of SearchCallHistorySharedGlobals((v35 + 18), v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
      OUTLINED_FUNCTION_12_8();
      swift_allocObject();
      v0[32] = specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(v54, v53, v52, v51, 1, VoicemailResultSetFlow, v0 + 27, v50, v58, v44, v46 & 1, v61, v55, v60);
      lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>();
      Flow.eraseToAnyFlow()();

      (*(v56 + 8))(v34, v57);

      v47 = OUTLINED_FUNCTION_2_8();

      return v48(v47);
    }
  }

  v24 = v0[35];
  v25 = v0[33];
  v64 = 0;
  v65 = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v25[51], v25[52], v25[53], v25[54]);
  v26 = v65;
  *v24 = v64;
  v24[1] = v26;
  v24[2] = 0xD00000000000001CLL;
  v24[3] = 0x8000000000460A70;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_38();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(v27, 255, v28, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v29);
  OUTLINED_FUNCTION_18_29();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v30();
}

uint64_t ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  *(v1 + 112) = v0;
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow());
}

{
  v20 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v18[0] = OUTLINED_FUNCTION_83();
    v18[1] = 0;
    v4 = OUTLINED_FUNCTION_11_52(4.8149e-34);
    v19 = v5;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v6, v7, v8);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v19, v18);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_12(&dword_0, v10, v11, "%s can't find any voicemail record");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v12 = *(*(v0 + 112) + 136);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v17 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow();
  v15 = OUTLINED_FUNCTION_24_10();

  return (v17)(v15, 0, 0, 0, v12);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_13_6();

    return v9();
  }

  else
  {
    *(v5 + 128) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[16];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  v3 = OUTLINED_FUNCTION_92();
  v4(v3);
  v5 = v0[5];
  v6 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[11] = v5;
  v0[12] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  OUTLINED_FUNCTION_40();
  (*(v7 + 16))();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();

  v9 = v1;
  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[13] = v10;
  Flow.eraseToAnyFlow()();

  v11 = OUTLINED_FUNCTION_2_8();

  return v12(v11);
}

uint64_t closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for DialogPhase();
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow(), 0, 0);
}

uint64_t closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[4];
  v2 = v0[3];
  v3 = v2[12];
  v4 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v1;
  v6 = v1;
  static DialogPhase.completion.getter();
  v7 = swift_task_alloc();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  v12 = v0[8];
  v13 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v5, v12, v3, v4, v8, v9, v10);
}

uint64_t ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[233] = v0;
  v2 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[239] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[240] = v3;
  v1[241] = *(v4 + 64);
  v1[242] = OUTLINED_FUNCTION_62_4();
  v1[243] = swift_task_alloc();
  v5 = type metadata accessor for PlayVoicemailModel(0);
  v1[244] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[245] = v6;
  v1[246] = *(v7 + 64);
  v1[247] = OUTLINED_FUNCTION_62_4();
  v1[248] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[249] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[250] = v9;
  v1[251] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v10);
  v1[252] = v11;
  v1[253] = *(v12 + 64);
  v1[254] = OUTLINED_FUNCTION_62_4();
  v1[255] = swift_task_alloc();
  v13 = type metadata accessor for SpeakableString();
  v1[256] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[257] = v14;
  v1[258] = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  v31 = v0;
  __swift_project_boxed_opaque_existential_1((v0[233] + 32), *(v0[233] + 56));
  v1 = OUTLINED_FUNCTION_92();
  v2(v1);
  static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v0 + 173);
  __swift_destroy_boxed_opaque_existential_1(v0 + 173);
  String.toSpeakableString.getter();

  INSearchCallHistoryIntentResponse.savedRecordsCount.getter();
  v4 = v3;
  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  v6 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[233];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    v29 = 0;
    *v12 = 136315394;
    v14 = v11[51];
    v15 = v11[52];
    v16 = v11[53];
    v17 = v11[54];
    v30 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v14, v15, v16, v17);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, 0xE000000000000000, &v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    v19 = specialized Array.count.getter(v11[3]);

    *(v12 + 14) = v19;

    _os_log_impl(&dword_0, v8, v9, "%s show all results there are %ld items in the result set. Rendering multiple results with SMART UI on.", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0(v13);
    OUTLINED_FUNCTION_26_0(v12);
  }

  else
  {
  }

  v20 = *(v0[233] + 136);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v27 = (v21 + *v21);
  v22 = v4;
  v23 = v6;
  v24 = v22;
  v25 = swift_task_alloc();
  v0[259] = v25;
  *v25 = v0;
  v25[1] = ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();

  return (v27)(*&v23, 0, *&v24, 0, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2080) = v4;
  *(v2 + 2088) = v0;

  if (v0)
  {
    v5 = ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();
  }

  else
  {
    v5 = ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[251];
  v26 = v0[250];
  v27 = v0[249];
  v2 = v0[233];
  v3 = v2[49];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v5 = OUTLINED_FUNCTION_40_0();
  v6(v5, v4);
  v7 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v3, 1, v0 + 183);
  v0[262] = v7;
  __swift_destroy_boxed_opaque_existential_1(v0 + 183);

  swift_asyncLet_begin();
  v8 = v2[46];
  v9 = v2[47];
  __swift_project_boxed_opaque_existential_1(v2 + 43, v8);
  v10 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v11 = OUTLINED_FUNCTION_11_0();
  v12(v11, v10);
  __swift_project_boxed_opaque_existential_1(v0 + 193, v0[196]);
  OUTLINED_FUNCTION_40_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v9 + 16))(v7, v1, v8, v9);
  v14 = v13;
  (*(v26 + 8))(v1, v27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 193);
  if (v14)
  {
    SpeakableString.init(print:speak:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v0[254];
  v17 = v0[252];
  v18 = v0[233];
  __swift_storeEnumTagSinglePayload(v0[255], v15, 1, v0[256]);
  outlined init with copy of PersonNameComponents?();
  v19 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v0[263] = v20;
  *(v20 + 16) = v18;
  outlined init with take of SpeakableString?(v16, v20 + v19);

  swift_asyncLet_begin();
  ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)();
  v0[264] = v21;
  v22 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_get_throwing(v22, v23, v24, v0 + 162);
}

{
  OUTLINED_FUNCTION_15();
  v1[265] = v0;
  if (v0)
  {

    return _swift_task_switch(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
  }

  else
  {
    v1[266] = v1[213];
    v1[267] = v1[214];

    v2 = OUTLINED_FUNCTION_30_33();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 198);
  }
}

{
  *(v1 + 2144) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
  }
}

{
  v21 = v0[267];
  v1 = v0[266];
  v2 = v0[264];
  v3 = v0[248];
  v24 = v0[260];
  v23 = v0[241];
  v22 = v0[240];
  v4 = v0[233];
  v5 = v0[215];
  v6 = v0[216];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);

  SAAppsLaunchApp.init(app:)(v7);
  strcpy(v3, "PlayVoicemail");
  *(v3 + 14) = -4864;
  v0[221] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMR);
  Loggable.init(wrappedValue:)();
  v0[217] = v1;
  v0[218] = v21;
  Loggable.init(wrappedValue:)();
  v0[219] = v5;
  v0[220] = v6;
  Loggable.init(wrappedValue:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  outlined init with copy of PlayVoicemailModel();
  swift_storeEnumTagMultiPayload();
  v8 = v4[7];
  v9 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v8);
  (*(v9 + 16))(v8, v9);
  v10 = v0[170];
  v11 = v0[172];
  __swift_project_boxed_opaque_existential_1(v0 + 167, v10);
  v0[206] = v10;
  v0[207] = v11;
  __swift_allocate_boxed_opaque_existential_1(v0 + 203);
  OUTLINED_FUNCTION_40();
  (*(v12 + 16))();
  OUTLINED_FUNCTION_19_35();
  outlined init with copy of PlayVoicemailModel();
  outlined init with copy of PlayVoicemailModel();
  v13 = (v23 + ((*(v22 + 80) + 24) & ~*(v22 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0();
  *(v14 + v13) = v24;
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0();
  type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();

  v15 = v24;
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 167);
  v0[227] = v16;
  v0[269] = Flow.eraseToAnyFlow()();

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  v17 = OUTLINED_FUNCTION_30_33();

  return _swift_asyncLet_finish(v17, v18, v19, v0 + 228);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallNLIntent?(*(v0 + 2040), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1872);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_24_34();

  v2 = OUTLINED_FUNCTION_92();
  v3(v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 2152);

  return v4(v5);
}

{
  OUTLINED_FUNCTION_31();
  (*(v0[257] + 8))(v0[258], v0[256]);
  OUTLINED_FUNCTION_9_62();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_30_33();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1424);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallNLIntent?(*(v0 + 2040), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1504);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24_34();

  v1 = OUTLINED_FUNCTION_92();
  v2(v1);

  OUTLINED_FUNCTION_9_62();

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_30_33();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallNLIntent?(*(v0 + 2040), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1776);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24_34();

  v1 = OUTLINED_FUNCTION_92();
  v2(v1);

  OUTLINED_FUNCTION_9_62();

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_13_6();

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  *(v0 + 48) = 2;
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();
  v3 = *(v0 + 32);

  return v5(v3);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_13_6();

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  type metadata accessor for DialogPhase();
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v3[12];
  v5 = v3[13];
  __swift_project_boxed_opaque_existential_1(v3 + 9, v4);
  v0[5] = type metadata accessor for PhoneSnippetDataModels(0);
  v0[6] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, 255, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_19_35();
  outlined init with copy of PlayVoicemailModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v2;
  v8 = *v1;
  v7 = v1[1];
  v9 = v2;
  static DialogPhase.completion.getter();
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  v12 = v0[15];
  v13 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v13, v0 + 2, v6, v12, v4, v5);
}

uint64_t ReadVoicemailResultSetFlowProvider.makeWindowingConfiguration(promptType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin07ReadingH6RecordVGGMd, &_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin07ReadingH6RecordVGGMR);
  OUTLINED_FUNCTION_21(v3);
  v1[5] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v0[2] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin07ReadingB6RecordVGMd, &_sSay27PhoneCallFlowDelegatePlugin07ReadingB6RecordVGMR);
  type metadata accessor for ReadVoicemailResultSetFlowProvider();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(&lazy protocol witness table cache variable for type ReadVoicemailResultSetFlowProvider and conformance ReadVoicemailResultSetFlowProvider, v2, type metadata accessor for ReadVoicemailResultSetFlowProvider, &protocol conformance descriptor for ReadVoicemailResultSetFlowProvider);
  OUTLINED_FUNCTION_92();
  static PromptFlowProviderType.continuation<A>(_:)();
  WindowingConfiguration.init(promptFlowProviderType:padding:windowSizeOverride:)();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin07ReadingG6RecordVGGMd, &_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin07ReadingG6RecordVGGMR);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);

  OUTLINED_FUNCTION_8_1();

  return v4();
}

uint64_t ReadVoicemailResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[36] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[37] = v5;
  v1[38] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[39] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

BOOL ReadVoicemailResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v60 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[35];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v58[0] = OUTLINED_FUNCTION_83();
    v58[1] = 0;
    v4 = OUTLINED_FUNCTION_11_52(4.8149e-34);
    v59 = v5;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v6, v7, v8);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v59, v58);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_12(&dword_0, v10, v11, "%s makeWindowFlow");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  result = ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()();
  v13 = result;
  if (!result)
  {
    v14 = v0[35];
    v15 = *(v14 + 400);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    *(v14 + 400) = v17;
  }

  v18 = v0[34];
  if (*(v18 + 16))
  {
    v19 = v0[39];
    v20 = *(v18 + 32);
    outlined init with copy of PersonNameComponents?();
    v21 = type metadata accessor for SpeakableString();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v21);
    v23 = v0[39];
    v57 = v13;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v24 = SpeakableString.print.getter();
      v25 = v26;
      OUTLINED_FUNCTION_40();
      (*(v27 + 8))(v23, v21);
    }

    v54 = (v0 + 2);
    v28 = v0[38];
    v29 = v0[37];
    v30 = v0[34];
    v31 = v0[35];
    v50 = v30;
    v51 = v0[36];
    v49 = v0[33];
    v55 = ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(v24, v25);

    v32 = *(v30 + 40);
    OUTLINED_FUNCTION_2_0();
    v34 = *(v33 + 208);

    v56 = v32;
    v35 = v34();
    if (v36)
    {
      v35 = 0;
    }

    ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(v35, v20);
    v53 = v37;
    v38 = v31[49];
    v39 = v31[14];
    v40 = v31[15];
    v41 = v31[17];
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v31 + 4), (v0 + 27));
    (*(v29 + 16))(v28, v49, v51);

    v52 = v39;
    v42 = v40;

    v44 = (v34)(v43);
    v46 = v45;
    outlined init with copy of SearchCallHistorySharedGlobals((v31 + 18), v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    v0[32] = specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(v38, v52, v42, v41, 0, v57, v0 + 27, v50, v28, v44, v46 & 1, v55, v53, v54);
    lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>();
    Flow.eraseToAnyValueFlow()();

    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X2, X16 }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t ReadVoicemailResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[36] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[37] = v5;
  v1[38] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v1[39] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for PhoneError(0);
  v1[40] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[41] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

BOOL ReadVoicemailResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  v81 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  swift_retain_n();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[35];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v78 = v7;
    v79 = 0;
    *v6 = 136315394;
    v8 = v5[51];
    v9 = v5[52];
    v10 = v5[53];
    v11 = v5[54];
    v80 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v8, v9, v10, v11);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, 0xE000000000000000, &v78);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;
    v13 = v5[50];

    *(v6 + 14) = v13;

    _os_log_impl(&dword_0, v2, v3, "%s final window currentIndex: %ld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  else
  {
  }

  v14 = *((*(*v0[35] + 216))() + 16);

  if (v14 == 1)
  {
    v15 = v0[35];

    v16 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      OUTLINED_FUNCTION_42();
      v17 = OUTLINED_FUNCTION_83();
      v78 = v17;
      v79 = 0;
      v18 = OUTLINED_FUNCTION_11_52(4.8149e-34);
      v80 = v19;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v18, v20, v21, v22);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v78);

      *(v15 + 4) = v23;
      OUTLINED_FUNCTION_12(&dword_0, v24, v25, "%s entire items size is 1, makeFinalWindowFlow will call makeSingleItemFlow()");
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_35();
    }

    v26 = swift_task_alloc();
    v0[42] = v26;
    *v26 = v0;
    v26[1] = ReadVoicemailResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:);
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X0, X16 }
  }

  v29 = v0[34];
  if (!v29[2])
  {
    v47 = v0[41];
    *v47 = 0xD000000000000022;
    v47[1] = 0x80000000004435B0;
    v47[2] = 0xD000000000000017;
    v47[3] = 0x8000000000460A90;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_38();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(v48, 255, v49, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v50);
    OUTLINED_FUNCTION_18_29();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
    swift_willThrow();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X1, X16 }
  }

  v31 = v29[4];
  v30 = v29[5];

  v32 = v30;
  result = ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()();
  if (result)
  {
LABEL_16:
    v76 = result;
    v38 = v0[39];
    v74 = *(*v0[35] + 208);
    v39 = v74();
    if (v40)
    {
      v39 = 0;
    }

    ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(v39, v31);
    v75 = v41;
    outlined init with copy of PersonNameComponents?();
    v42 = type metadata accessor for SpeakableString();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v42);
    v44 = v0[39];
    v77 = v32;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v44, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v45 = SpeakableString.print.getter();
      v46 = v53;
      OUTLINED_FUNCTION_40();
      (*(v54 + 8))(v44, v42);
    }

    v55 = v0[37];
    v56 = v0[38];
    v72 = v56;
    v57 = v0[35];
    v58 = v0[36];
    v59 = v0[33];
    v70 = v0[34];
    v73 = ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(v45, v46);

    v60 = v57[49];
    v61 = v57[14];
    v62 = v57[15];
    v63 = v57[17];
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v57 + 4), (v0 + 27));
    (*(v55 + 16))(v56, v59, v58);

    v71 = v61;
    v64 = v62;

    v66 = (v74)(v65);
    LOBYTE(v61) = v67;
    outlined init with copy of SearchCallHistorySharedGlobals((v57 + 18), (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    v0[32] = specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(v60, v71, v64, v63, 0, v76, v0 + 27, v70, v72, v66, v61 & 1, v73, v75, (v0 + 2));
    lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>();
    Flow.eraseToAnyFlow()();

    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X2, X16 }
  }

  v34 = v0[35];
  v35 = *(v34 + 400);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v34 + 400) = v37;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = a1;
  }

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v2 + 400);
  if (v7 != v8)
  {
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else if (v6 - 1 == v8 || v6 >= v7)
    {
      return;
    }

    __break(1u);
  }
}

void *ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_1_15();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPlayVoicemailIntent, INPlayVoicemailIntent_ptr);
    v4 = static INPlayVoicemailIntent.makeFirstPartyHandleIntent(identifier:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_4_68();
    result = swift_allocObject();
    *(result + 1) = xmmword_426260;
    result[4] = v4;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_42();
      v10 = OUTLINED_FUNCTION_83();
      *v3 = 136315138;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2[51], v2[52], v2[53], v2[54]);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v10);

      *(v3 + 4) = v9;
      _os_log_impl(&dword_0, v7, v8, "%s received an empty voicemailIdentifier", v3, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

BOOL ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v2 = OUTLINED_FUNCTION_40_0();
  v4 = v3(v2, v1);
  (*(*v4 + 152))(v7);

  if (!v7[4])
  {
    outlined destroy of PhoneCallNLIntent?(v7, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    goto LABEL_5;
  }

  outlined init with copy of PersonNameComponents?();
  outlined destroy of TransformationResult(v7);
  if (!*(&v9 + 1))
  {
LABEL_5:
    outlined destroy of PhoneCallNLIntent?(&v8, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return 0;
  }

  outlined init with take of PhoneCallFeatureFlagProviding(&v8, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  OUTLINED_FUNCTION_19_0();
  v5 = PhoneCallNLIntent.isRepeatAfterPlayingVoiceMail()();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

void ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)()
{
  v1 = OUTLINED_FUNCTION_24_10();
  v2 = type metadata accessor for SingleVoicemailModel(v1);
  v3 = OUTLINED_FUNCTION_13_2(v2);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v18;
    v14 = v0 & 0xFFFFFFFFFFFFFF8;
    v15 = v0 & 0xC000000000000001;
    v9 = v0;
    while (1)
    {
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v15)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v14 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(v0 + 8 * v7 + 32);
      }

      v17 = v11;
      closure #1 in ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)(&v17, v16, v5);

      v18 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
        v8 = v18;
      }

      v8[2] = v13 + 1;
      _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0();
      ++v7;
      v0 = v9;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void closure #1 in ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v54 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v54);
  v6 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v7 - 8);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v53 - v10;
  __chkstk_darwin(v11);
  v56 = &v53 - v12;
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  v22 = *a1;
  v60 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  outlined init with copy of PersonNameComponents?();
  v23 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v53 = v22;
    SpeakableString.print.getter();
    (*(*(v23 - 8) + 8))(v21, v23);
    v24 = Data.init(base64Encoded:options:)();
    if (v25 >> 60 == 15)
    {
    }

    else
    {
      v26 = v24;
      v27 = v25;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
      outlined copy of Data._Representation(v26, v27);
      v28 = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v26, v27);
      if (!v28)
      {
        __break(1u);
        return;
      }

      v29 = v28;

      outlined consume of Data?(v26, v27);

      v60 = v29;
    }

    v22 = v53;
  }

  v30 = *(v22 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);
  if (v30)
  {
    dispatch thunk of DialogPerson.fullName.getter();
    if (__swift_getEnumTagSinglePayload(v18, 1, v23) != 1)
    {
      v30 = SpeakableString.print.getter();
      v31 = v32;
      (*(*(v23 - 8) + 8))(v18, v23);
      goto LABEL_13;
    }

    outlined destroy of PhoneCallNLIntent?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v30 = 0;
  }

  v31 = 0;
LABEL_13:
  *v6 = v30;
  v6[1] = v31;
  swift_storeEnumTagMultiPayload();
  v33 = v55[7];
  v34 = v55[8];
  __swift_project_boxed_opaque_existential_1(v55 + 4, v33);
  (*(v34 + 8))(v59, v33, v34);
  v55 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v59);
  __swift_destroy_boxed_opaque_existential_1(v59);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v15, 1, v23) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v53 = 0xE000000000000000;
    v54 = 0;
  }

  else
  {
    v35 = SpeakableString.print.getter();
    v53 = v36;
    v54 = v35;
    (*(*(v23 - 8) + 8))(v15, v23);
  }

  v37 = v56;
  v38 = v57;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v37, 1, v23) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v37, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v57 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v57 = SpeakableString.print.getter();
    v39 = v40;
    (*(*(v23 - 8) + 8))(v37, v23);
  }

  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v38, 1, v23) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v38, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v41 = SpeakableString.print.getter();
    v42 = v43;
    (*(*(v23 - 8) + 8))(v38, v23);
  }

  v44 = v58;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v44, 1, v23) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v44, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v45 = 0;
    v46 = 0xE000000000000000;
  }

  else
  {
    v47 = SpeakableString.print.getter();
    v46 = v48;
    v49 = v44;
    v45 = v47;
    (*(*(v23 - 8) + 8))(v49, v23);
  }

  v50 = *(v22 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
  *a3 = 0x6F56656C676E6953;
  *(a3 + 8) = 0xEF6C69616D656369;
  v51 = v53;
  *(a3 + 16) = v54;
  *(a3 + 24) = v51;
  *(a3 + 32) = v57;
  *(a3 + 40) = v39;
  *(a3 + 48) = v41;
  *(a3 + 56) = v42;
  type metadata accessor for SingleVoicemailModel(0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v52 = v60;
  CodableAceObject.init(wrappedValue:)();
  *(a3 + 64) = v45;
  *(a3 + 72) = v46;
  *(a3 + 80) = v50;
  CodableAceObject.init(wrappedValue:)();
}

uint64_t ReadVoicemailResultSetFlowProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));

  return v0;
}

uint64_t ReadVoicemailResultSetFlowProvider.__deallocating_deinit()
{
  ReadVoicemailResultSetFlowProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResultSetFlowProvider.makeEmptyResultSetFlow() in conformance ReadVoicemailResultSetFlowProvider()
{
  v4 = (*(**v0 + 280) + **(**v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for ResultSetFlowProvider.makeSingleItemFlow() in conformance ReadVoicemailResultSetFlowProvider()
{
  v4 = (*(**v0 + 272) + **(**v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for ResultSetFlowProvider.makeAllResultsFlow() in conformance ReadVoicemailResultSetFlowProvider()
{
  v4 = (*(**v0 + 288) + **(**v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for ResultSetFlowProvider.makeWindowingConfiguration(promptType:) in conformance ReadVoicemailResultSetFlowProvider(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 296) + **(**v2 + 296));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance ReadVoicemailResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v8 = (*(**v2 + 312) + **(**v2 + 312));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v8(a1, v5);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance ReadVoicemailResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v8 = (*(**v2 + 304) + **(**v2 + 304));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v8(a1, v5);
}

unint64_t lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>()
{
  result = lazy protocol witness table cache variable for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>;
  if (!lazy protocol witness table cache variable for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18(v5);
  *v6 = v7;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()(v2, v4, v3);
}

uint64_t partial apply for implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(v2, v0);
}

uint64_t partial apply for implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18(v7);
  *v8 = v9;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(v2, v6, v0 + v5);
}

uint64_t outlined init with copy of PlayVoicemailModel()
{
  OUTLINED_FUNCTION_1_15();
  v1(0);
  OUTLINED_FUNCTION_23_1();
  v2 = OUTLINED_FUNCTION_19_0();
  v3(v2);
  return v0;
}

uint64_t partial apply for closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_23_0();
  v2 = OUTLINED_FUNCTION_24_10();
  v3 = type metadata accessor for PhoneSnippetDataModels(v2);
  OUTLINED_FUNCTION_13_2(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for PlayVoicemailModel(0);
  OUTLINED_FUNCTION_21(v8);
  v10 = (v7 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v0 + 16);
  v12 = *(v0 + v7);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(v1, v11, v0 + v5, v12, v0 + v10);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0()
{
  OUTLINED_FUNCTION_1_15();
  v1(0);
  OUTLINED_FUNCTION_23_1();
  v2 = OUTLINED_FUNCTION_19_0();
  v3(v2);
  return v0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  OUTLINED_FUNCTION_23_5();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t RecipientSlotTemplating.init(deviceState:catFamily:startCallCatFamily:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = outlined init with take of PhoneCallFeatureFlagProviding(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t RecipientSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INPerson();
  if (swift_dynamicCast())
  {
    v18 = v24[5];
  }

  else
  {
    v18 = [a5 recipient];
  }

  v19 = *(v8 + 40);
  type metadata accessor for PhonePerson(0);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v24);
  v20 = static PhonePerson.make(phonePerson:options:locale:)(v18, 0, v16);
  (*(v13 + 8))(v16, v12);
  (*(*v19 + class metadata base offset for SearchCallHistoryCATs + 128))(v20, a7, v23);
}

uint64_t RecipientSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = *(v9 + 48);
  v15 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  (*(*v14 + class metadata base offset for StartCallCATs + 288))(v13, a8, a9);
  return outlined destroy of SpeakableString?(v13);
}

uint64_t getEnumTagSinglePayload for RecipientSlotTemplating(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for RecipientSlotTemplating(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t static Transformer<>.transformer(device:callCapability:participants:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);

  return Transformer.init(transform:)();
}

id closure #1 in static Transformer<>.transformer(device:callCapability:participants:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_101();
  if (PhoneCallNLIntent.isRedial()() || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), OUTLINED_FUNCTION_0_101(), PhoneCallNLIntent.isCallBack()()))
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 40))(v7, v8);
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v9 + 32);
        do
        {
          v13 = *v12++;
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v22 = PhoneCallNLIntent.getCallRecordTypeOption(attr:)(v13);
          if (v22.is_nil || (v22.value.rawValue & ~v11) == 0)
          {
            rawValue = 0;
          }

          else
          {
            rawValue = v22.value.rawValue;
          }

          v11 |= rawValue;
          --v10;
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v18 = *((*(v17 + 24))(v16, v17) + 16);

    if (v18 == 1 && (__swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.hasAnyContactReference()()))
    {
      v19 = objc_allocWithZone(INCallRecordFilter);
      v20 = 0;
    }

    else
    {
      v21 = objc_allocWithZone(INCallRecordFilter);
    }

    result = @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:)(v20, v11, a2);
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

unint64_t closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = PhoneCallNLIntent.getCallRecordType()(v3, v4);
  *a2 = result;
  return result;
}

uint64_t RedirectToCompanionFlow.__allocating_init(parse:sharedGlobals:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_4_72();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  (*(v7 + 16))(v11, a1, v5);
  Input.init(parse:)();
  v16 = type metadata accessor for Input();
  __swift_storeEnumTagSinglePayload(v15, 0, 3, v16);
  outlined init with copy of SignalProviding(a2, v19);
  v17 = (*(v2 + 120))(v15, v19);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v5);
  return v17;
}

uint64_t key path setter for RedirectToCompanionFlow.state : RedirectToCompanionFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RedirectToCompanionFlow.State(a1, v6);
  return (*(**a2 + 104))(v6);
}

void RedirectToCompanionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
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
    v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state;
    swift_beginAccess();
    outlined init with copy of RedirectToCompanionFlow.State(v1 + v9, v4);
    v10 = RedirectToCompanionFlow.State.description.getter();
    v12 = v11;
    outlined destroy of RedirectToCompanionFlow.State(v4);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v16, v6, "#RedirectToCompanionFlow: state: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t RedirectToCompanionFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  return outlined init with copy of RedirectToCompanionFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RedirectToCompanionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined assign with copy of RedirectToCompanionFlow.State(a1, v1 + v3);
  swift_endAccess();
  RedirectToCompanionFlow.state.didset();
  return outlined destroy of RedirectToCompanionFlow.State(a1);
}

uint64_t outlined assign with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RedirectToCompanionFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*RedirectToCompanionFlow.state.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return RedirectToCompanionFlow.state.modify;
}

void RedirectToCompanionFlow.state.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    RedirectToCompanionFlow.state.didset();
  }
}

uint64_t RedirectToCompanionFlow.__allocating_init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of RedirectToCompanionFlow.State(a1, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals);
  return v4;
}

uint64_t RedirectToCompanionFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  outlined init with take of RedirectToCompanionFlow.State(a1, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals);
  return v2;
}

uint64_t outlined init with take of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL RedirectToCompanionFlow.on(input:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_72();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000083, 0x8000000000460B30, &v14);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v14);
    _os_log_impl(&dword_0, v7, v8, "%s:%s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  (*(*v1 + 96))();
  v11 = type metadata accessor for Input();
  v12 = __swift_getEnumTagSinglePayload(v5, 3, v11) == 0;
  outlined destroy of RedirectToCompanionFlow.State(v5);
  return v12;
}

uint64_t RedirectToCompanionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for FlowUnhandledReason();
  v1[4] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_4_72();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for Input();
  v1[10] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v26 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000083, 0x8000000000460B30, &v25);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, &v25);
    _os_log_impl(&dword_0, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_26_0(v4);
  }

  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(**(v0 + 24) + 96);
  v8();
  if (__swift_getEnumTagSinglePayload(v7, 3, v6))
  {
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = outlined destroy of RedirectToCompanionFlow.State(*(v0 + 72));
    (v8)(v11);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 3, v9);
    outlined destroy of RedirectToCompanionFlow.State(v10);
    if (EnumTagSinglePayload == 3)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "ExecuteOnRemote: remote flow failed, redirecting to server", v15, 2u);
        OUTLINED_FUNCTION_26_0(v15);
      }

      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      v18 = *(v0 + 32);

      (*(v17 + 104))(v16, enum case for FlowUnhandledReason.needsServerExecution(_:), v18);
      static ExecuteResponse.unhandled(reason:)();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      static ExecuteResponse.complete()();
    }

    OUTLINED_FUNCTION_11();

    return v24();
  }

  else
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = *(v0 + 24);
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), v19);
    __swift_storeEnumTagSinglePayload(v20, 1, 3, v19);
    (*(*v21 + 104))(v20);
    v22 = swift_task_alloc();
    *(v0 + 104) = v22;
    *v22 = v0;
    v22[1] = RedirectToCompanionFlow.execute();

    return RedirectToCompanionFlow.executeOnRemote(input:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t RedirectToCompanionFlow.executeOnRemote(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMd, &_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMR);
  v1[8] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for UserIdentityCheckFlowStrategy();
  v1[9] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[10] = v5;
  v1[11] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v1[12] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for Input();
  v1[15] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for UserIdentityCheckFlowStrategy.HandoffConfiguration();
  v1[18] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for CompanionDeviceInfoRequirement();
  v1[21] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[16];
  v14 = v0[15];
  v6 = v0[13];
  v20 = v0[17];
  v21 = v0[14];
  v15 = v0[12];
  v22 = v0[11];
  v23 = v0[19];
  v17 = v0[18];
  v18 = v0[10];
  v16 = v0[8];
  v19 = v0[9];
  v7 = v0[6];
  type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
  (*(v2 + 104))(v1, enum case for CompanionDeviceInfoRequirement.supportsPeerToPeerHandoff(_:), v3);
  static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:shouldOutputErrorDialog:)();
  (*(v2 + 8))(v1, v3);
  type metadata accessor for SimpleHandoffStrategy();
  swift_allocObject();
  lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(&lazy protocol witness table cache variable for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy, v8, type metadata accessor for SimpleHandoffStrategy, &protocol conformance descriptor for SimpleHandoffStrategy);

  UserIdentityCheckFlowStrategy.HandoffConfiguration.init(companionCompatiblityCheck:handoffStrategy:)();
  (*(v5 + 16))(v20, v7, v14);
  (*(v6 + 104))(v21, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v15);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for ExecuteOnRemoteFlow();
  swift_allocObject();
  v0[2] = ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v9 = type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_13_2(v9);
  *(swift_allocObject() + 16) = xmmword_426980;
  static CommonFlowGuard.ensuringPersonalRequestsAreEnabledWhenApplicable.getter();
  (*(v23 + 16))(v16, v4, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  UserIdentityCheckFlowStrategy.init(allowsAnonymousUser:allowsUserInteraction:handoffConfiguration:requireSpeechProfile:)();
  static CommonFlowGuard.ensuringUserIdentity(using:)();
  (*(v18 + 8))(v22, v19);
  static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)();
  v10 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  v0[3] = v10;
  type metadata accessor for GuardFlow();
  v11 = Flow.guarded<A>(by:)();

  v0[4] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
  lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>();
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v23 + 8))(v4, v17);

  OUTLINED_FUNCTION_11();

  return v12();
}

uint64_t closure #1 in RedirectToCompanionFlow.executeOnRemote(input:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for ExecuteOnRemoteFlowResult();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  __chkstk_darwin(v16 - 8);
  v18 = &v53 - v17;
  v19 = type metadata accessor for RedirectToCompanionFlow.State(0);
  __chkstk_darwin(v19 - 8);
  v57 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(a1, v18);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMd, &_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMR);
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v28, 2u);
    }

    v29 = type metadata accessor for Input();
    __swift_storeEnumTagSinglePayload(v23, 2, 3, v29);
    outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(v18);
  }

  else
  {
    (*(v4 + 32))(v15, v18, v3);
    v30 = *(v4 + 16);
    v30(v12, v15, v3);
    if ((*(v4 + 88))(v12, v3) == enum case for ExecuteOnRemoteFlowResult.remoteFlowFailure(_:))
    {
      (*(v4 + 96))(v12, v3);
      v31 = *v12;
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriPhone);
      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v59 = v31;
        v60 = v56;
        *v35 = 136315138;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v36 = String.init<A>(describing:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v60);

        *(v35 + 4) = v38;
        _os_log_impl(&dword_0, v33, v34, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
      }

      else
      {
      }

      (*(v4 + 8))(v15, v3);
      v49 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v23, 3, 3, v49);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);
      v30(v9, v15, v3);
      v40 = Logger.logObject.getter();
      LODWORD(v56) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v56))
      {
        v41 = swift_slowAlloc();
        v54 = v40;
        v42 = v41;
        v55 = swift_slowAlloc();
        v60 = v55;
        *v42 = 136315138;
        v30(v6, v9, v3);
        v53 = String.init<A>(describing:)();
        v44 = v43;
        v45 = *(v4 + 8);
        v45(v9, v3);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v44, &v60);

        v47 = v42;
        *(v42 + 4) = v46;
        v48 = v54;
        _os_log_impl(&dword_0, v54, v56, "ExecuteOnRemote flow completed with: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
      }

      else
      {

        v45 = *(v4 + 8);
        v45(v9, v3);
      }

      v45(v15, v3);
      v50 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v23, 2, 3, v50);
      v45(v12, v3);
    }
  }

  v51 = v57;
  outlined init with copy of RedirectToCompanionFlow.State(v23, v57);
  (*(*v58 + 104))(v51);
  return outlined destroy of RedirectToCompanionFlow.State(v23);
}

uint64_t RedirectToCompanionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RedirectToCompanionFlow(0);
  lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(&lazy protocol witness table cache variable for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow, 255, type metadata accessor for RedirectToCompanionFlow, &protocol conformance descriptor for RedirectToCompanionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t RedirectToCompanionFlow.State.description.getter()
{
  v1 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_4_72();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  outlined init with copy of RedirectToCompanionFlow.State(v0, v10 - v9);
  v12 = 0x676E696E6E75722ELL;
  switch(__swift_getEnumTagSinglePayload(v11, 3, v1))
  {
    case 1u:
      return v12;
    case 2u:
      v12 = 0x74656C706D6F632ELL;
      break;
    case 3u:
      v12 = 0xD000000000000011;
      break;
    default:
      (*(v3 + 32))(v7, v11, v1);
      _StringGuts.grow(_:)(18);

      lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 41;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v12 = 0x65527475706E692ELL;
      (*(v3 + 8))(v7, v1);
      break;
  }

  return v12;
}

uint64_t RedirectToCompanionFlow.deinit()
{
  outlined destroy of RedirectToCompanionFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals));
  return v0;
}

uint64_t RedirectToCompanionFlow.__deallocating_deinit()
{
  outlined destroy of RedirectToCompanionFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals));

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToCompanionFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToCompanionFlow(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToCompanionFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToCompanionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance SimpleHandoffStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = closure #2 in ActionableCallControlFlow.execute();

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1, a2, a3);
}

uint64_t lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata completion function for RedirectToCompanionFlow(uint64_t a1)
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
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

uint64_t type metadata completion function for RedirectToCompanionFlow.State(uint64_t a1)
{
  v1 = type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>()
{
  result = lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>;
  if (!lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>);
  }

  return result;
}

uint64_t outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RedirectToServerFlow.__allocating_init(to:sharedGlobals:isSentinelFlow:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = swift_allocObject();
  RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(v5, a2, v3);
  return v6;
}

uint64_t RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(char a1, __int128 *a2, char a3)
{
  *(v3 + 16) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v3 + 24);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t RedirectToServerFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for FlowUnhandledReason();
  v1[15] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[18] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for PommesContext.Source();
  v1[19] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v1[22] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for NLContextUpdate();
  v1[23] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(RedirectToServerFlow.execute(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v2 + 224) = v0;

  if (v0)
  {
    v4 = RedirectToServerFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 64));
    v4 = RedirectToServerFlow.execute();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = OUTLINED_FUNCTION_6_72();
  v5(v4);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  (*(v2 + 8))(v1, v3);
  v6 = OUTLINED_FUNCTION_0_102();
  v7(v6);

  OUTLINED_FUNCTION_11();

  return v8();
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#RedirectToServerFlow: Couldn't submit PommesContext before server fallback", v3, 2u);
    OUTLINED_FUNCTION_26_0(v3);
  }

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = OUTLINED_FUNCTION_6_72();
  v8(v7);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  (*(v5 + 8))(v4, v6);
  v9 = OUTLINED_FUNCTION_0_102();
  v10(v9);

  OUTLINED_FUNCTION_11();

  return v11();
}

uint64_t RedirectToServerFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v58 = v16;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  *(v16 + 208) = __swift_project_value_buffer(v17, static Logger.siriPhone);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v16 + 112);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v56[0] = v23;
    *v22 = 136315394;
    *(v16 + 232) = *(v21 + 16);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v56);

    *(v22 + 4) = v26;
    *(v22 + 12) = 1024;
    v27 = *(v21 + 64);

    *(v22 + 14) = v27;

    _os_log_impl(&dword_0, v18, v19, "#RedirectToServerFlow: Triggering server redirect to %s, isSentinelFlow = %{BOOL}d", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0(v23);
    OUTLINED_FUNCTION_26_0(v22);
  }

  else
  {
  }

  v28 = *(v16 + 112);
  if (*(v28 + 16))
  {
    if (*(v28 + 16) == 1)
    {
      v30 = *(v16 + 192);
      v29 = *(v16 + 200);
      v31 = *(v16 + 176);
      v32 = *(v16 + 184);
      v34 = *(v16 + 160);
      v33 = *(v16 + 168);
      v35 = *(v16 + 144);
      v36 = *(v16 + 152);
      NLContextUpdate.init()();
      (*(v34 + 104))(v33, enum case for PommesContext.Source.pluginDefined(_:), v36);
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v37 = type metadata accessor for PommesContext();
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v37);
      NLContextUpdate.pommesContext.setter();
      v38 = *(v28 + 48);
      v39 = *(v28 + 56);
      __swift_project_boxed_opaque_existential_1((v28 + 24), v38);
      (*(v39 + 16))(v38, v39);
      v40 = *(v16 + 40);
      v41 = *(v16 + 56);
      __swift_project_boxed_opaque_existential_1((v16 + 16), v40);
      v57 = 0;
      memset(v56, 0, sizeof(v56));
      (*(v30 + 16))(v35, v29, v32);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v32);
      *(v16 + 88) = type metadata accessor for AceOutput();
      *(v16 + 96) = &protocol witness table for AceOutput;
      __swift_allocate_boxed_opaque_existential_1((v16 + 64));
      AceOutput.init(commands:flowActivity:nlContextUpdate:)();
      v47 = swift_task_alloc();
      *(v16 + 216) = v47;
      *v47 = v16;
      v47[1] = RedirectToServerFlow.execute();

      return dispatch thunk of OutputPublisherAsync.publish(output:)(v16 + 64, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "#RedirectToServerFlow: Invalid location.", v50, 2u);
      OUTLINED_FUNCTION_26_0(v50);
    }

    v52 = *(v16 + 128);
    v51 = *(v16 + 136);
    v53 = *(v16 + 120);

    (*(v52 + 104))(v51, enum case for FlowUnhandledReason.needsServerExecution(_:), v53);
  }

  else
  {
    (*(*(v16 + 128) + 104))(*(v16 + 136), enum case for FlowUnhandledReason.needsServerExecution(_:), *(v16 + 120));
  }

  static ExecuteResponse.unhandled(reason:isComplete:)();
  (*(*(v16 + 128) + 8))(*(v16 + 136), *(v16 + 120));

  OUTLINED_FUNCTION_11();

  return v54();
}

uint64_t RedirectToServerFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RedirectToServerFlow();
  _s27PhoneCallFlowDelegatePlugin016RedirectToServerC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, &protocol conformance descriptor for RedirectToServerFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t RedirectToServerFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToServerFlow(uint64_t a1)
{
  v6 = (*(**v1 + 120) + **(**v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToServerFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToServerFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t _s27PhoneCallFlowDelegatePlugin016RedirectToServerC0CAC07SiriKitC00C0AAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RedirectToServerFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology9UsoEntityCG_0D28ReferenceResolutionDataModel12ResolveQueryCs5NeverOTg5033_s27PhoneCallFlowDelegatePlugin33h7Contacti183WrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07d91AppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZSay04SirifH9j26Model8RRResultOGyXEfU_AT12lm3C12d9Ontology9fG6CXEfU_AJ21MatchedResultsSettingOTf1cn_n(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = a2;
  v16 = type metadata accessor for MatchedResultsSetting();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v18 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v15 = i;
    v13 = v3;
    v10 = a1 & 0xC000000000000001;
    swift_beginAccess();
    v11 = 0;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v12 = (v5 + 16);
    while (1)
    {
      a1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v14 + 16))
        {
          goto LABEL_15;
        }
      }

      (*v12)(v7, v17, v16);
      type metadata accessor for ResolveQuery();
      swift_allocObject();
      v5 = ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:matchedResultsSetting:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v3 = v18[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v11;
      if (a1 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

__n128 static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(a1, a3, a4, a5, a6, a7, a8, a9 & 1, a10, a11, a12, ObjectType, a2, v22, a10, a11, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = specialized Array.count.getter(a1);
  v4 = 0;
  while (1)
  {
LABEL_2:
    v5 = v4;
    if (v4 == v3)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 32 + 8 * v4);
    }

    v7 = v6;
    ++v4;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = *a2;
    if (*(*a2 + 16))
    {
      v9 = static Hasher._hash(seed:_:)();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v9 = v11 + 1;
        if (*(*(v8 + 48) + 8 * v11) == v5)
        {

          goto LABEL_2;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = v5;
    v14[5] = v7;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{

  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology9UsoEntityCG_0D28ReferenceResolutionDataModel12ResolveQueryCs5NeverOTg5033_s27PhoneCallFlowDelegatePlugin33h7Contacti183WrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07d91AppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZSay04SirifH9j26Model8RRResultOGyXEfU_AT12lm3C12d9Ontology9fG6CXEfU_AJ21MatchedResultsSettingOTf1cn_n(v7, a2);

  v11[2] = a3;
  v9 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), v11, v8);

  *a4 = v9;
  return result;
}

uint64_t closure #2 in closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t *a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  (*(v3 + 200))(v5, v2, v3);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  RRReferenceResolverProtocol.resolveReference(resolveQuery:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(uint64_t a1, void *a2)
{
  v68 = _swiftEmptyArrayStorage;
  v3 = specialized Array.count.getter(a1);
  if (!v3)
  {
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v4 = v3;
  if (v3 < 1)
  {
LABEL_58:
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = [v6 personHandle];
    if (v8)
    {
      v9 = v8;
      v10 = a2[3];
      v11 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v10);
      (*(v11 + 120))(v64, v10, v11);
      v12 = v65;
      v13 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v14 = (*(v13 + 48))(v12, v13);
      v16 = (*(v15 + 16))(v9, v14, v15);
      if (v16)
      {
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_1(v64);
        v18 = v17;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v68[2] >= v68[3] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);
    v9 = v7;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_42();
      v23 = OUTLINED_FUNCTION_49_22();
      *v22 = 138412290;
      v24 = [v9 personHandle];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_0, v20, v21, "#ReferenceContactResolutionWrapper: Could not normalize handles %@ for validation.", v22, 0xCu);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0(v23);
      OUTLINED_FUNCTION_26_0(v22);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v68[2] >= v68[3] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
  }

  v25 = v68;
LABEL_23:
  v64[0] = _swiftEmptySetSingleton;
  v26 = v25[2];
  v27 = v25 + 4;

  v28 = 0;
  v29 = static Logger.siriPhone;
  v59 = v26;
  v60 = v25 + 4;
LABEL_24:
  while (v28 != v26)
  {
    v30 = v28;
    v31 = v25[2];
    if (v28 >= v31)
    {
      goto LABEL_57;
    }

    v32 = v27[v28++];
    if (v32)
    {
      v63 = v30 + 1;
      v33 = v64[0];
      if (*(v64[0] + 16))
      {
        static Hasher._hash(seed:_:)();
        while (1)
        {
          OUTLINED_FUNCTION_43_25();
          if ((v35 & 1) == 0)
          {
            break;
          }

          if (*(*(v33 + 48) + 8 * v34) == v30)
          {
            v28 = v30 + 1;
            goto LABEL_24;
          }
        }
      }

      v28 = v30 + 1;
      if (v63 != v31)
      {
        v36 = v32;
        v37 = v30 + 1;
        v62 = v36;
        while (v37 < v31)
        {
          if (v37 >= v25[2])
          {
            goto LABEL_56;
          }

          v38 = v27[v37];
          v39 = v64[0];
          if (*(v64[0] + 16))
          {
            static Hasher._hash(seed:_:)();
            while (1)
            {
              OUTLINED_FUNCTION_43_25();
              if ((v41 & 1) == 0)
              {
                break;
              }

              if (*(*(v39 + 48) + 8 * v40) == v37)
              {
                goto LABEL_49;
              }
            }
          }

          if (v38)
          {
            v42 = v38;
            if (TUHandlesAreCanonicallyEqual())
            {
              if (one-time initialization token for siriPhone != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v43 = type metadata accessor for Logger();
              __swift_project_value_buffer(v43, v29);
              v44 = v42;
              v45 = Logger.logObject.getter();
              v46 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v45, v46))
              {
                v47 = swift_slowAlloc();
                v48 = v25;
                v49 = v29;
                v50 = OUTLINED_FUNCTION_49_22();
                *v47 = 134218242;
                *(v47 + 4) = v37;
                *(v47 + 12) = 2112;
                *(v47 + 14) = v44;
                *v50 = v38;
                v51 = v44;
                _os_log_impl(&dword_0, v45, v46, "#ReferenceContactResolutionWrapper index:%ld handle:%@ is a dupe, filter it out.", v47, 0x16u);
                _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v52 = v50;
                v29 = v49;
                v25 = v48;
                v27 = v60;
                OUTLINED_FUNCTION_26_0(v52);
                OUTLINED_FUNCTION_26_0(v47);
              }

              specialized Set._Variant.insert(_:)(&v67, v37);
              v36 = v62;
              v28 = v63;
            }

            else
            {
            }
          }

LABEL_49:
          if (++v37 == v31)
          {

            v26 = v59;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }
  }

  specialized Sequence.filter(_:)(v53, v64);
  v55 = v54;
  v56 = *(v54 + 16);
  if (v56)
  {
    v67 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v57 = 40;
    do
    {
      v58 = *(v55 + v57);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v57 += 16;
      --v56;
    }

    while (v56);
  }
}

void static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_16_2();
  v46 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_91();
  v45 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v9 - 8);
  OUTLINED_FUNCTION_16_2();
  v47 = v10;
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v51 = _swiftEmptyArrayStorage;
  v14 = specialized Array.count.getter(v1);
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    v15 = 0;
    v48 = v14;
    v49 = v1 & 0xC000000000000001;
    v42 = (v4 + 8);
    v43 = (v4 + 16);
    v16 = &unk_548000;
    v44 = v1;
    v41 = v2;
    do
    {
      if (v49)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v1 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 v16[365]];
      if (v19)
      {
        v20 = v19;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_57_19(v13, 0);
      }

      else
      {
        OUTLINED_FUNCTION_57_19(v13, 1);
        v21 = [v18 personHandle];
        if (v21)
        {
          outlined bridged method (ob) of @objc INPersonHandle.value.getter(v21);
        }

        v22 = v45;
        PersonNameComponents.init()();
        PersonNameComponents.givenName.setter();
        v23 = v46;
        PersonNameComponents.init()();
        PersonNameComponents.givenName.setter();
        v24 = v47;
        v25 = v41;
        (*v43)(v47, v23, v41);
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
        PersonNameComponents.phoneticRepresentation.setter();
        v26 = *v42;
        (*v42)(v23, v25);
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v26(v22, v25);
        [v18 setNameComponents:isa];

        v1 = v44;
        v16 = &unk_548000;
      }

      v28 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v51 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v15;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v48 != v15);
    v29 = v51;
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v30 = objc_allocWithZone(INPersonHandle);
  v31 = OUTLINED_FUNCTION_88();
  v32 = @nonobjc INPersonHandle.init(value:type:)(v31, 0, 0);
  v33.super.isa = INPerson.init(personHandle:)(v32).super.isa;
  v34 = specialized Array.count.getter(v29);
  if (!v34)
  {

    v39 = _swiftEmptyArrayStorage;
LABEL_26:
    outlined bridged method (mbnn) of @objc INPerson.scoredAlternatives.setter(v39, v33.super.isa);
    OUTLINED_FUNCTION_65();
    return;
  }

  v35 = v34;
  v50 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v29 + 8 * v36 + 32);
      }

      v38 = v37;
      ++v36;
      [objc_allocWithZone(INScoredPerson) initWithPerson:v37 recommendation:2];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v35 != v36);

    v39 = v50;
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

uint64_t closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = RREntity.appBundleId.getter();
  v6 = static ReferenceContactResolutionWrapper.attachSourceBundleId(person:appBundleId:)(v3, v4, v5);

  *a2 = v6;
  return result;
}

id static ReferenceContactResolutionWrapper.attachSourceBundleId(person:appBundleId:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = static PhoneReferenceResolution.getContactSourceType(contactSource:)(a2, a3);
  if (static PhoneReferenceResolution.isTelephonyTargetFromSrr(contactSourceType:)(v5))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);

    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v7;
      *v11 = v7;
      v13 = v7;
      _os_log_impl(&dword_0, v8, v9, "#ReferenceContactResolutionWrapper attach %s to sourceAppBundleIdentifier for person %@", v10, 0x16u);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    outlined bridged method (mbgnn) of @objc INPerson.sourceAppBundleIdentifier.setter(a2, a3, v7);
  }

  return a1;
}

void outlined bridged method (mbnn) of @objc INPerson.scoredAlternatives.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setScoredAlternatives:isa];
}

void outlined bridged method (mbgnn) of @objc INPerson.sourceAppBundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setSourceAppBundleIdentifier:v4];
}

void specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_66();
  HIDWORD(v71) = v25;
  v81 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v75 = v33;
  v78 = v34;
  v36 = v35;
  v76 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v72 = v37;
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_4();
  v41 = v40 - v39;
  v79 = v32;
  v80 = v30;
  v42 = specialized static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v36, v32, v30, v28, a23, a24, a25);
  v44 = v43;
  if (specialized Array.count.getter(v42))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v45, static Logger.siriPhone);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v47))
    {
      v48 = OUTLINED_FUNCTION_65_0();
      *v48 = 0;
      OUTLINED_FUNCTION_55_20(&dword_0, v49, v50, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_26_0(v48);
    }

    (*(*(a25 + 8) + 16))(v42, a24);
  }

  if (specialized Array.count.getter(v44))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v51, static Logger.siriPhone);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v53))
    {
      v54 = OUTLINED_FUNCTION_65_0();
      *v54 = 0;
      OUTLINED_FUNCTION_55_20(&dword_0, v55, v56, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_26_0(v54);
    }

    (*(*(a25 + 8) + 32))(v44, a24);
  }

  if (specialized Array.count.getter(v44))
  {
  }

  else
  {
    v57 = specialized Array.count.getter(v42);

    if (!v57)
    {
      v66 = type metadata accessor for ContactResolution();
      v67 = v28[3];
      v68 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v67);
      (*(v68 + 8))(v83, v67, v68);
      __swift_project_boxed_opaque_existential_1(v83, v83[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      LOBYTE(v69) = BYTE4(v71) & 1;
      specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v36, v78, v75 & 1, v79, v41, v80, v28, v81, v69, a21, a22, v66, a24, a25, v70, v28, v71, a21, a22, v72, v74, v76, v78, v79, v80, v81);
      (*(v73 + 8))(v41, v77);
      __swift_destroy_boxed_opaque_existential_1(v83);
      OUTLINED_FUNCTION_65();
      return;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v58, static Logger.siriPhone);
  v59 = v36;
  v82 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v82, v60))
  {
    v61 = OUTLINED_FUNCTION_42();
    v62 = OUTLINED_FUNCTION_49_22();
    *v61 = 138412290;
    *(v61 + 4) = v59;
    *v62 = v59;
    v63 = v59;
    _os_log_impl(&dword_0, v82, v60, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@", v61, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_65();
}

void *specialized static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v189 = a7;
  v191 = a6;
  v202 = a5;
  v206 = a4;
  v199 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  __chkstk_darwin(v9 - 8);
  v180 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v186 = (v176 - v12);
  v200 = type metadata accessor for RREntity();
  v182 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v178 = v176 - v15;
  __chkstk_darwin(v16);
  v179 = v176 - v17;
  __chkstk_darwin(v18);
  v183 = v176 - v19;
  __chkstk_darwin(v20);
  v184 = v176 - v21;
  v194 = type metadata accessor for RRCandidate();
  v205 = *(v194 - 8);
  __chkstk_darwin(v194);
  v197 = v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v185 = v176 - v24;
  __chkstk_darwin(v25);
  v193 = v176 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  __chkstk_darwin(v27 - 8);
  v204 = v176 - v28;
  v192 = type metadata accessor for RRResult();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v177 = v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v187 = (v176 - v31);
  __chkstk_darwin(v32);
  v188 = v176 - v33;
  v34 = type metadata accessor for MatchedResultsSetting();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v176 - v39;
  v41 = a3[3];
  v42 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v41);
  v43 = (*(v42 + 144))(v41, v42);
  v208 = v43;
  v195 = v40;
  v196 = v35;
  v44 = *(v35 + 104);
  v45 = v40;
  v46 = v34;
  v44(v45, enum case for MatchedResultsSetting.defaultMatching(_:), v34);
  v47 = a3[3];
  v201 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v47);
  v48 = PhoneCallNLIntent.hasOnlyCallVerb()();
  v203 = a2;
  if (v48 && App.isFirstParty()() && static UsoUtils.buildDummyReferenceEntity()())
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v208 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v208 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v43 = v208;
    v49 = v195;
    (*(v196 + 8))(v195, v34);
    v44(v49, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v34);
  }

  if (!specialized Array.count.getter(v43))
  {
    v61 = v195;
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_12;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_88:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  v51 = __swift_project_value_buffer(v50, static Logger.siriPhone);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v54 = os_log_type_enabled(v52, v53);
  v181 = v46;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v207 = v56;
    *v55 = 136315138;
    v57 = v195;
    swift_beginAccess();
    (*(v196 + 16))(v37, v57, v46);
    v58 = String.init<A>(describing:)();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v207);

    *(v55 + 4) = v60;
    v46 = v181;
    _os_log_impl(&dword_0, v52, v53, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {

    v57 = v195;
  }

  v66 = v194;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v68 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  __chkstk_darwin(v68);
  v176[-4] = &v208;
  v176[-3] = v57;
  v176[-2] = v206;
  static SiriKitEventSender.current.getter();
  v69 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();

  __swift_destroy_boxed_opaque_existential_1(&v207);
  v70 = v204;
  specialized Collection.first.getter(v69);

  v71 = v192;
  v72 = v57;
  if (__swift_getEnumTagSinglePayload(v70, 1, v192) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v70, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
LABEL_18:
    (*(v196 + 8))(v72, v46);
    goto LABEL_19;
  }

  v176[1] = v51;
  v75 = v190;
  v76 = v188;
  (*(v190 + 32))(v188, v70, v71);
  v77 = *(v75 + 16);
  v78 = v187;
  v77(v187, v76, v71);
  v79 = (*(v75 + 88))(v78, v71);
  if (v79 == enum case for RRResult.foundMatch(_:))
  {
    (*(v75 + 96))(v78, v71);
    v80 = v205;
    v81 = v193;
    (*(v205 + 32))(v193, v78, v66);
    v82 = *(v80 + 16);
    v83 = v185;
    v82(v185, v81, v66);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v207 = v87;
      *v86 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate, &protocol conformance descriptor for RRCandidate);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v83;
      v91 = v90;
      v92 = *(v205 + 8);
      v92(v89, v66);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v91, &v207);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_0, v84, v85, "#ReferenceContactResolutionWrapper .foundMatch %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);

      v80 = v205;
    }

    else
    {

      v92 = *(v80 + 8);
      v92(v83, v66);
    }

    v130 = v191;
    v131 = v186;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v132 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_424FD0;
    v82((v133 + v132), v193, v66);
    specialized Collection.first.getter(v133);

    if (__swift_getEnumTagSinglePayload(v131, 1, v66) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v131, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.debug.getter();
      v136 = os_log_type_enabled(v134, v135);
      v137 = v181;
      v138 = v195;
      v139 = v190;
      if (v136)
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_0, v134, v135, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v140, 2u);
      }

      v73 = _swiftEmptyArrayStorage;
    }

    else
    {
      v155 = v183;
      RRCandidate.entity.getter();
      v92(v131, v66);
      v156 = v182;
      v157 = v184;
      v158 = v200;
      (*(v182 + 32))(v184, v155, v200);
      v73 = specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v157, v199, v203, v201, v206, v202, v130, v189);
      (*(v156 + 8))(v157, v158);
      v137 = v181;
      v138 = v195;
      v139 = v190;
    }

    v92(v193, v66);
    (*(v139 + 8))(v188, v192);
    (*(v196 + 8))(v138, v137);
    goto LABEL_20;
  }

  if (v79 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v79 == enum case for RRResult.foundMatchPlural(_:))
    {
      (*(v190 + 96))(v78, v192);
      v141 = *v78;

      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v207 = v145;
        *v144 = 136315138;
        v146 = Array.description.getter();
        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, &v207);

        *(v144 + 4) = v148;
        v76 = v188;
        _os_log_impl(&dword_0, v142, v143, "#ReferenceContactResolutionWrapper .foundMatchPlural %s", v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v145);
      }

      v149 = v191;
      v150 = v180;
      specialized Collection.first.getter(v141);

      if (__swift_getEnumTagSinglePayload(v150, 1, v66) != 1)
      {
        v161 = v178;
        RRCandidate.entity.getter();
        (*(v205 + 8))(v150, v66);
        v162 = v182;
        v163 = v179;
        v164 = v200;
        (*(v182 + 32))(v179, v161, v200);
        v73 = specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v163, v199, v203, v201, v206, v202, v149, v189);
        (*(v162 + 8))(v163, v164);
        (*(v190 + 8))(v76, v192);
        (*(v196 + 8))(v72, v46);
        goto LABEL_20;
      }

      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v150, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v151, v152))
      {
        goto LABEL_78;
      }

      v153 = swift_slowAlloc();
      *v153 = 0;
      v154 = "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate";
    }

    else
    {
      if (v79 != enum case for RRResult.noMatch(_:))
      {
        v165 = v177;
        v166 = v192;
        v77(v177, v76, v192);
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v207 = v170;
          *v169 = 136315138;
          lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult, &protocol conformance descriptor for RRResult);
          v171 = dispatch thunk of CustomStringConvertible.description.getter();
          v173 = v172;
          v174 = *(v190 + 8);
          v174(v165, v166);
          v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v173, &v207);

          *(v169 + 4) = v175;
          _os_log_impl(&dword_0, v167, v168, "#ReferenceContactResolutionWrapper dropping result of type %s!", v169, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v170);

          v174(v188, v166);
        }

        else
        {

          v174 = *(v190 + 8);
          v174(v165, v166);
          v174(v76, v166);
        }

        v174(v187, v166);
        v46 = v181;
        v72 = v195;
        goto LABEL_18;
      }

      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v151, v152))
      {
        goto LABEL_78;
      }

      v153 = swift_slowAlloc();
      *v153 = 0;
      v154 = "#ReferenceContactResolutionWrapper found a .nomatch";
    }

    _os_log_impl(&dword_0, v151, v152, v154, v153, 2u);

LABEL_78:

    (*(v190 + 8))(v76, v192);
    goto LABEL_18;
  }

  v94 = v190;
  (*(v190 + 96))(v78, v192);
  v95 = *v78;

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v207 = v99;
    *v98 = 136315138;
    v100 = Array.description.getter();
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v207);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_0, v96, v97, "#ReferenceContactResolutionWrapper found a .needsDisambiguation match %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v46 = v191;
  v103 = v203;
  v187 = *(v95 + 16);
  if (!v187)
  {

    v37 = _swiftEmptyArrayStorage;
LABEL_80:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v37, v206);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    v160 = v159;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v73 = swift_allocObject();
    *(v73 + 1) = xmmword_426260;
    v73[4] = v160;
    (*(v94 + 8))(v188, v192);
    (*(v196 + 8))(v195, v181);
    goto LABEL_20;
  }

  v104 = v95;
  v105 = 0;
  v186 = *(v205 + 16);
  v106 = (*(v205 + 80) + 32) & ~*(v205 + 80);
  v177 = v104;
  v185 = &v104[v106];
  v37 = _swiftEmptyArrayStorage;
  v184 = (v205 + 8);
  v183 = *(v205 + 72);
  v182 += 8;
  v107 = v189;
  v205 += 16;
  while (1)
  {
    v108 = v197;
    v186(v197, &v185[v183 * v105], v66);
    v109 = v198;
    RRCandidate.entity.getter();
    (*v184)(v108, v66);
    v110 = specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v109, v199, v103, v201, v206, v202, v46, v107);
    (*v182)(v109, v200);

    if (v110 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8));
    }

    v111 = v37 >> 62;
    if (v37 >> 62)
    {
      v112 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v112 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    }

    v113 = v112 + v61;
    if (__OFADD__(v112, v61))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v111)
      {
        goto LABEL_41;
      }

LABEL_40:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_41;
    }

    if (v111)
    {
      goto LABEL_40;
    }

    v114 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v113 <= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v204 = v37;
      goto LABEL_42;
    }

LABEL_41:
    v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v114 = v204 & 0xFFFFFFFFFFFFFF8;
LABEL_42:
    v115 = *(v114 + 16);
    v116 = (*(v114 + 24) >> 1) - v115;
    v117 = v114 + 8 * v115;
    v193 = v114;
    if (v110 >> 62)
    {
      break;
    }

    v118 = *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8));
    if (v118)
    {
      if (v116 < v118)
      {
        goto LABEL_91;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_52;
    }

LABEL_56:

    v37 = v204;
    if (v61 > 0)
    {
      goto LABEL_87;
    }

LABEL_57:
    ++v105;
    v103 = v203;
    if (v105 == v187)
    {

      v94 = v190;
      goto LABEL_80;
    }
  }

  v119 = _CocoaArrayWrapper.endIndex.getter();
  if (!v119)
  {
    goto LABEL_56;
  }

  v120 = v119;
  v121 = _CocoaArrayWrapper.endIndex.getter();
  if (v116 < v121)
  {
    goto LABEL_90;
  }

  if (v120 < 1)
  {
    goto LABEL_92;
  }

  v178 = v121;
  v179 = v61;
  v180 = v105;
  v122 = v117 + 32;
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  for (i = 0; i != v120; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v124 = specialized protocol witness for Collection.subscript.read in conformance [A](&v207, i, v110);
    v126 = *v125;
    v124(&v207, 0);
    *(v122 + 8 * i) = v126;
  }

  v107 = v189;
  v46 = v191;
  v66 = v194;
  v105 = v180;
  v61 = v179;
  v118 = v178;
LABEL_52:

  v37 = v204;
  if (v118 < v61)
  {
    goto LABEL_87;
  }

  if (v118 <= 0)
  {
    goto LABEL_57;
  }

  v127 = *(v193 + 2);
  v128 = __OFADD__(v127, v118);
  v129 = v127 + v118;
  if (!v128)
  {
    *(v193 + 2) = v129;
    goto LABEL_57;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  swift_once();
LABEL_12:
  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logger.siriPhone);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "#ReferenceContactResolutionWrapper - No references found", v65, 2u);
  }

  (*(v196 + 8))(v61, v46);
LABEL_19:
  v73 = _swiftEmptyArrayStorage;
LABEL_20:

  return v73;
}

uint64_t specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[8] = a7;
  v30[9] = a8;
  v30[6] = a4;
  v30[7] = a5;
  v30[5] = a3;
  static Signpost.begin(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v9 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v9)
  {
    v10 = one-time initialization token for siriPhone;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriPhone);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "#ReferenceContactResolutionWrapper resolved to an INPerson", v15, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_426260;
    *(v16 + 32) = v11;
  }

  else
  {
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v30[10])
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.siriPhone);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "#ReferenceContactResolutionWrapper resolved to a common_Person", v21, 2u);
      }

      type metadata accessor for ContactResolution();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      type metadata accessor for ContactQuery();
      *(swift_allocObject() + 16) = xmmword_424FD0;
      UsoEntity_common_Person.toContactQuery()();
      specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)();
      v17 = v22;
    }

    else
    {
      RREntity.usoEntity.getter();
      type metadata accessor for UsoEntity_common_Group();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      RREntity.usoEntity.getter();
      type metadata accessor for UsoEntity_common_Agent();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      RREntity.usoEntity.getter();
      type metadata accessor for UsoEntity_common_App();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.siriPhone);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_0, v27, v28, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v29, 2u);
      }

      v17 = _swiftEmptyArrayStorage;
    }
  }

  __chkstk_darwin(v16);
  v30[2] = a1;
  specialized Sequence.compactMap<A>(_:)(closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, v30, v17);
  v24 = v23;

  return v24;
}

void specialized static ReferenceContactResolutionWrapper.resolveCommonGroup(group:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a7;
  v50 = a8;
  v48 = a4;
  v47 = a3;
  v46 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v52 = type metadata accessor for ContactQuery();
  v15 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = dispatch thunk of UsoEntity_common_Group.name.getter();
  v19 = specialized Optional<A>.isNilOrEmpty.getter(v17, v18);

  if (v19 && (v20 = dispatch thunk of UsoEntity_common_Group.members.getter()) != 0)
  {
    v21 = v20;
    v44 = a5;
    v55[0] = _swiftEmptyArrayStorage;
    a6 = specialized Array.count.getter(v20);
    v11 = 0;
    a5 = (v21 & 0xC000000000000001);
    a1 = v21 & 0xFFFFFFFFFFFFFF8;
    v51 = _swiftEmptyArrayStorage;
    while (a6 != v11)
    {
      if (a5)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_33;
        }
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      v14 = *&v54[0];
      ++v11;
      if (*&v54[0])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v55[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v51 = v55[0];
        v11 = v12;
      }
    }

    v31 = v51;
    v32 = specialized Array.count.getter(v51);
    if (v32)
    {
      v33 = v32;
      v55[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
      if (v33 < 0)
      {
        __break(1u);
        return;
      }

      v34 = 0;
      v35 = v55[0];
      v36 = v31 & 0xC000000000000001;
      v37 = v45;
      do
      {
        if (v36)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        UsoEntity_common_Agent.toContactQuery()();

        v55[0] = v35;
        v39 = *(v35 + 16);
        v38 = *(v35 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
          v35 = v55[0];
        }

        ++v34;
        *(v35 + 16) = v39 + 1;
        (*(v15 + 32))(v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, v37, v52);
      }

      while (v33 != v34);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriPhone);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "#ReferenceContactResolutionWrapper resolved to an unnamed common_Group", v43, 2u);
    }

    type metadata accessor for ContactResolution();
    specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_34:
      swift_once();
    }

    v52 = v12;
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#ReferenceContactResolutionWrapper resolved to a named common_Group", v25, 2u);
    }

    v26 = a5[3];
    v27 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v26);
    (*(v27 + 8))(v55, v26, v27);
    outlined init with copy of SignalProviding(v55, v54);
    outlined init with copy of SignalProviding(a6, v53);
    v28 = swift_allocObject();
    outlined init with take of SPHConversation(v54, v28 + 16);
    outlined init with take of SPHConversation(v53, v28 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v55);
    v29 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_424FD0;
    *(v30 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v30 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v30 + 32) = a1;
    v55[0] = v30;

    v29(v54, v55);

    (*(v52 + 8))(v14, v11);
  }
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo07INStartbO0C_Tt9g5Tf4nnnnnnnnne_n()
{
  OUTLINED_FUNCTION_66();
  v84 = OUTLINED_FUNCTION_7_64(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_7();
  v79 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v73 = v15 - v14;
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v18 = OUTLINED_FUNCTION_10_64(v17);
  v20 = v19(v18);
  OUTLINED_FUNCTION_11_53(v20, v21, v22, v23, v24, v25, v26, closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo07INStartbM0C_Tt4g5, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo07INStartbM0C_Tt4g5, &unk_52DC48, closure #1 in static Transformer<>.transformer(device:groupResolver:)partial apply, v67, v69, v71, v73, v75, v77, v79, v81, v83, v84, v85, v86);
  if (OUTLINED_FUNCTION_50_22(v27))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v28)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v32);
      OUTLINED_FUNCTION_14_51(&dword_0, v33, v34, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartCallIntent.overwriteContacts(newContacts:)(v2);
  }

  if (specialized Array.count.getter(v3))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v28)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v37))
    {
      v38 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v38);
      OUTLINED_FUNCTION_14_51(&dword_0, v39, v40, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartCallIntent.overwriteCallGroups(newCallGroups:)(v3);
  }

  if (specialized Array.count.getter(v3))
  {
  }

  else
  {
    specialized Array.count.getter(v2);
    OUTLINED_FUNCTION_51_25();

    if (!v0)
    {
      v50 = OUTLINED_FUNCTION_9_63();
      v51(v50);
      __swift_project_boxed_opaque_existential_1(v87, v87[3]);
      OUTLINED_FUNCTION_12_56();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_project_boxed_opaque_existential_1(v76, v76[3]);
      v52 = OUTLINED_FUNCTION_2_98();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v52, v53, v54, v55, v56, v57, v58, v59, v62, v63, v64, v65, v66, v68, v70, v72, v74, v76, v78, v80, v82);
      v60 = OUTLINED_FUNCTION_17_43();
      v61(v60);
      __swift_destroy_boxed_opaque_existential_1(v87);
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_8();
  if (!v28)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
  v42 = v1;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_42();
    v45 = OUTLINED_FUNCTION_49_22();
    OUTLINED_FUNCTION_48_21(v45, 5.7779e-34);
    OUTLINED_FUNCTION_45_1(&dword_0, v46, v47, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@");
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v45);
    OUTLINED_FUNCTION_14_0();
  }

LABEL_21:
  v48 = OUTLINED_FUNCTION_41_28();
  v49(v48);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo012INStartAudiobO0C_Tt9g5Tf4nnnnnnnnne_n()
{
  OUTLINED_FUNCTION_66();
  v83 = OUTLINED_FUNCTION_7_64(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_7();
  v78 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v72 = v15 - v14;
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v18 = OUTLINED_FUNCTION_10_64(v17);
  v20 = v19(v18);
  OUTLINED_FUNCTION_11_53(v20, v21, v22, v23, v24, v25, v26, closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartAudiobM0C_Tt4g5, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartAudiobM0C_Tt4g5, &unk_52DC20, closure #1 in static Transformer<>.transformer(device:groupResolver:)partial apply, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85);
  if (OUTLINED_FUNCTION_50_22(v27))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v28)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v32);
      OUTLINED_FUNCTION_14_51(&dword_0, v33, v34, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v2);
  }

  if (specialized Array.count.getter(v3))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v28)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
    v0 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v36))
    {
      v37 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v37);
      OUTLINED_FUNCTION_14_51(&dword_0, v38, v39, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_14_0();
    }
  }

  if (specialized Array.count.getter(v3))
  {
  }

  else
  {
    specialized Array.count.getter(v2);
    OUTLINED_FUNCTION_51_25();

    if (!v0)
    {
      v49 = OUTLINED_FUNCTION_9_63();
      v50(v49);
      __swift_project_boxed_opaque_existential_1(v86, v86[3]);
      OUTLINED_FUNCTION_12_56();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_project_boxed_opaque_existential_1(v75, v75[3]);
      v51 = OUTLINED_FUNCTION_2_98();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(v51, v52, v53, v54, v55, v56, v57, v58, v61, v62, v63, v64, v65, v67, v69, v71, v73, v75, v77, v79, v81);
      v59 = OUTLINED_FUNCTION_17_43();
      v60(v59);
      __swift_destroy_boxed_opaque_existential_1(v86);
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_8();
  if (!v28)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v40, static Logger.siriPhone);
  v41 = v1;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_42();
    v44 = OUTLINED_FUNCTION_49_22();
    OUTLINED_FUNCTION_48_21(v44, 5.7779e-34);
    OUTLINED_FUNCTION_45_1(&dword_0, v45, v46, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@");
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v44);
    OUTLINED_FUNCTION_14_0();
  }

LABEL_21:
  v47 = OUTLINED_FUNCTION_41_28();
  v48(v47);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo07INStartbW0C_Tt4g5Tf4nnnne_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_66();
  v293 = v25;
  v289 = v26;
  v28 = v27;
  v295 = v29;
  v31 = v30;
  v33 = v32;
  v286 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  __chkstk_darwin(v35 - 8);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v37);
  v287 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_7();
  v266 = v38;
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_16_2();
  v285 = v40;
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v45);
  v291 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_7();
  v294 = v46;
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_91();
  v271 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  __chkstk_darwin(v51 - 8);
  OUTLINED_FUNCTION_13(&v259 - v52);
  v280 = type metadata accessor for RRResult();
  OUTLINED_FUNCTION_7();
  v265 = v53;
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v57);
  v58 = type metadata accessor for MatchedResultsSetting();
  OUTLINED_FUNCTION_7();
  v60 = v59;
  __chkstk_darwin(v61);
  v63 = &v259 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v66 = &v259 - v65;
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_4();
  v70 = v69 - v68;
  v278 = v71;
  v72 = *(v71 + 16);
  v281 = v70;
  v296 = v28;
  v72();
  v73 = v31[3];
  v74 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v73);
  v75 = (*(v74 + 144))(v73, v74);
  v298 = v75;
  v282 = v60;
  v76 = *(v60 + 104);
  v292 = v66;
  v283 = v58;
  v76(v66, enum case for MatchedResultsSetting.defaultMatching(_:), v58);
  v77 = v31[3];
  v288 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v77);
  v78 = PhoneCallNLIntent.hasOnlyCallVerb()();
  v290 = v33;
  if (v78 && App.isFirstParty()())
  {
    v79 = static UsoUtils.buildDummyReferenceEntity()();
    v80 = v292;
    if (v79)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v298 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v298 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v75 = v298;
      v81 = v283;
      (*(v282 + 8))(v80, v283);
      v76(v80, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v81);
    }
  }

  else
  {
    v80 = v292;
  }

  if (!specialized Array.count.getter(v75))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_94;
    }

    goto LABEL_16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_89:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  v83 = __swift_project_value_buffer(v82, static Logger.siriPhone);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v85))
  {
    v86 = OUTLINED_FUNCTION_42();
    v87 = swift_slowAlloc();
    v297[0] = v87;
    *v86 = 136315138;
    swift_beginAccess();
    (*(v282 + 16))(v63, v80, v283);
    v88 = String.init<A>(describing:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v297);

    *(v86 + 4) = v90;
    _os_log_impl(&dword_0, v84, v85, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_26_0(v87);
    OUTLINED_FUNCTION_12_3();
  }

  v91 = v280;
  v92 = v279;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v94 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  __chkstk_darwin(v94);
  *(&v259 - 4) = &v298;
  *(&v259 - 3) = v80;
  *(&v259 - 2) = v295;
  static SiriKitEventSender.current.getter();
  v95 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();

  __swift_destroy_boxed_opaque_existential_1(v297);
  specialized Collection.first.getter(v95);

  if (__swift_getEnumTagSinglePayload(v92, 1, v91) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v92, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
LABEL_14:
    OUTLINED_FUNCTION_31_26();
    goto LABEL_19;
  }

  v273 = a25;
  v274 = a24;
  v275 = a23;
  v276 = a22;
  v277 = a21;
  v107 = v272;
  v108 = v265;
  (*(v265 + 32))(v272, v92, v91);
  v109 = *(v108 + 16);
  v110 = v270;
  v109(v270, v107, v91);
  v111 = (*(v108 + 88))(v110, v91);
  if (v111 == enum case for RRResult.foundMatch(_:))
  {
    v112 = OUTLINED_FUNCTION_27_30();
    v113(v112);
    v114 = v294;
    v115 = v271;
    v80 = v291;
    (*(v294 + 32))(v271, v110, v291);
    v116 = *(v114 + 16);
    v117 = v268;
    v116(v268, v115, v80);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v118, v119))
    {
      OUTLINED_FUNCTION_42();
      v293 = OUTLINED_FUNCTION_62();
      v297[0] = v293;
      *v117 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate, &protocol conformance descriptor for RRCandidate);
      v120 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v116;
      v122 = v83;
      v124 = v123;
      v125 = *(v294 + 8);
      v125(v117, v80);
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v124, v297);
      v83 = v122;
      v116 = v121;

      *(v117 + 4) = v126;
      _os_log_impl(&dword_0, v118, v119, "#ReferenceContactResolutionWrapper .foundMatch %s", v117, 0xCu);
      v127 = v293;
      __swift_destroy_boxed_opaque_existential_1(v293);
      v114 = v294;
      OUTLINED_FUNCTION_26_0(v127);
      OUTLINED_FUNCTION_52();
    }

    else
    {

      v125 = *(v114 + 8);
      v125(v117, v80);
    }

    v177 = v290;
    v178 = v269;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v179 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v180 = swift_allocObject();
    *(v180 + 16) = xmmword_424FD0;
    v116((v180 + v179), v271, v80);
    specialized Collection.first.getter(v180);

    if (__swift_getEnumTagSinglePayload(v178, 1, v80) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v178, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_10_0(v182);
      OUTLINED_FUNCTION_38_23();
      if (v183)
      {
        v184 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v184);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v185, v186, v187, v188, v189, 2u);
        OUTLINED_FUNCTION_26_0(v114);
      }

      OUTLINED_FUNCTION_31_26();
      v190 = v291;
    }

    else
    {
      v202 = v264;
      RRCandidate.entity.getter();
      v125(v178, v80);
      v203 = v266;
      v204 = v267;
      v178 = v287;
      (*(v266 + 32))(v267, v202, v287);
      OUTLINED_FUNCTION_4_73();
      v205 = v177;
      v177 = v281;
      _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(v204, v286, v205, v288, v295, v281, v296, v289, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
      v206 = *(v203 + 8);
      v83 = (v203 + 8);
      v206(v204, v178);
      v80 = v177;
      OUTLINED_FUNCTION_38_23();
    }

    v125(v271, v190);
    (*(v178 + 8))(v83, v177);
    OUTLINED_FUNCTION_16_47();
    goto LABEL_70;
  }

  if (v111 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v111 != enum case for RRResult.foundMatchPlural(_:))
    {
      if (v111 == enum case for RRResult.noMatch(_:))
      {
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v209))
        {
          v210 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v210);
          OUTLINED_FUNCTION_18_30();
          _os_log_impl(v211, v212, v213, v214, v215, 2u);
          OUTLINED_FUNCTION_12_3();
        }

        v216 = OUTLINED_FUNCTION_13_51();
        v217(v216);
      }

      else
      {
        v237 = v260;
        v238 = v272;
        v109(v260, v272, v91);
        v239 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v239, v80))
        {
          OUTLINED_FUNCTION_42();
          v295 = OUTLINED_FUNCTION_62();
          v297[0] = v295;
          *v238 = 136315138;
          lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult, &protocol conformance descriptor for RRResult);
          v240 = dispatch thunk of CustomStringConvertible.description.getter();
          v242 = v241;
          v243 = *(v108 + 8);
          v243(v237, v91);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v240, v242, v297);
          OUTLINED_FUNCTION_51_25();
          *(v238 + 4) = v240;
          _os_log_impl(&dword_0, v239, v80, "#ReferenceContactResolutionWrapper dropping result of type %s!", v238, 0xCu);
          v244 = v295;
          __swift_destroy_boxed_opaque_existential_1(v295);
          OUTLINED_FUNCTION_26_0(v244);
          OUTLINED_FUNCTION_52();

          v243(v272, v91);
          v110 = v270;
        }

        else
        {

          v243 = *(v108 + 8);
          v243(v237, v91);
          v243(v238, v91);
        }

        v243(v110, v91);
      }

      goto LABEL_14;
    }

    v191 = OUTLINED_FUNCTION_27_30();
    v192(v191);
    v193 = *v110;

    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v194, v195))
    {
      OUTLINED_FUNCTION_42();
      v196 = OUTLINED_FUNCTION_62();
      v297[0] = v196;
      *v107 = 136315138;
      v197 = Array.description.getter();
      v293 = v83;
      v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v198, v297);

      *(v107 + 4) = v199;
      _os_log_impl(&dword_0, v194, v195, "#ReferenceContactResolutionWrapper .foundMatchPlural %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v196);
      OUTLINED_FUNCTION_26_0(v196);
      v200 = v107;
      v201 = v291;
      OUTLINED_FUNCTION_26_0(v200);
    }

    else
    {

      v201 = v291;
    }

    v224 = v294;
    v225 = v263;
    specialized Collection.first.getter(v193);

    if (__swift_getEnumTagSinglePayload(v225, 1, v201) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v225, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v226 = Logger.logObject.getter();
      v227 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v227))
      {
        v228 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v228);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v229, v230, v231, v232, v233, 2u);
        OUTLINED_FUNCTION_12_3();
      }

      v234 = OUTLINED_FUNCTION_13_51();
      v235(v234);
      OUTLINED_FUNCTION_16_47();
      OUTLINED_FUNCTION_54_23();
      v236();
      OUTLINED_FUNCTION_31_26();
      goto LABEL_20;
    }

    v245 = v261;
    RRCandidate.entity.getter();
    (*(v224 + 8))(v225, v201);
    v246 = v266;
    v247 = v262;
    v248 = v287;
    (*(v266 + 32))(v262, v245, v287);
    OUTLINED_FUNCTION_4_73();
    OUTLINED_FUNCTION_52_17();
    v249 = v281;
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(v250, v251, v252, v253, v254, v281, v255, v256, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
    (*(v246 + 8))(v247, v248);
    v80 = v249;
    v257 = OUTLINED_FUNCTION_13_51();
    v258(v257);
    OUTLINED_FUNCTION_16_47();
LABEL_70:
    OUTLINED_FUNCTION_54_23();
    v207();
    goto LABEL_20;
  }

  v128 = OUTLINED_FUNCTION_27_30();
  v129(v128);
  v80 = *v110;

  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v130, v131))
  {
    v132 = OUTLINED_FUNCTION_42();
    v133 = swift_slowAlloc();
    v297[0] = v133;
    *v132 = 136315138;
    v134 = Array.description.getter();
    v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v135, v297);

    *(v132 + 4) = v136;
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v137, v138, v139, v140, v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v133);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  v271 = *(v80 + 16);
  if (!v271)
  {

    v144 = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_31_26();
LABEL_76:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v144, v295);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    v219 = v218;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v220 = swift_allocObject();
    *(v220 + 16) = xmmword_426260;
    *(v220 + 32) = v219;
    v221 = OUTLINED_FUNCTION_13_51();
    v222(v221);
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_54_23();
    v223();
    goto LABEL_20;
  }

  v142 = 0;
  v270 = *(v294 + 16);
  v143 = (*(v294 + 80) + 32) & ~*(v294 + 80);
  v261 = v80;
  v269 = v80 + v143;
  v144 = _swiftEmptyArrayStorage;
  v268 = (v294 + 8);
  v267 = *(v294 + 72);
  v266 += 8;
  OUTLINED_FUNCTION_31_26();
  v294 = v145;
  while (1)
  {
    v146 = v284;
    v147 = v291;
    (v270)(v284, v269 + v267 * v142, v291);
    v148 = v285;
    RRCandidate.entity.getter();
    (*v268)(v146, v147);
    OUTLINED_FUNCTION_4_73();
    OUTLINED_FUNCTION_52_17();
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(v149, v150, v151, v152, v153, v80, v154, v155, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);
    v157 = v156;
    (*v266)(v148, v287);

    if (v157 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *(&dword_10 + (v157 & 0xFFFFFFFFFFFFFF8));
    }

    v158 = v144 >> 62;
    if (v144 >> 62)
    {
      v159 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v159 = *(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8));
    }

    v160 = &v63[v159];
    if (__OFADD__(v159, v63))
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v158)
      {
        v161 = v144 & 0xFFFFFFFFFFFFFF8;
        if (v160 <= *(&dword_18 + (v144 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_39:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_40;
    }

    if (v158)
    {
      goto LABEL_39;
    }

LABEL_40:
    v144 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v161 = v144 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
    v293 = v144;
    v162 = *(v161 + 16);
    v163 = (*(v161 + 24) >> 1) - v162;
    v164 = v161 + 8 * v162;
    v279 = v161;
    if (v157 >> 62)
    {
      break;
    }

    v165 = *(&dword_10 + (v157 & 0xFFFFFFFFFFFFFF8));
    if (v165)
    {
      if (v163 < v165)
      {
        goto LABEL_92;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_51;
    }

LABEL_55:

    v144 = v293;
    if (v63 > 0)
    {
      goto LABEL_88;
    }

LABEL_56:
    if (++v142 == v271)
    {

      goto LABEL_76;
    }
  }

  v166 = _CocoaArrayWrapper.endIndex.getter();
  if (!v166)
  {
    goto LABEL_55;
  }

  v167 = v166;
  v168 = _CocoaArrayWrapper.endIndex.getter();
  if (v163 < v168)
  {
    goto LABEL_91;
  }

  if (v167 < 1)
  {
    goto LABEL_93;
  }

  v262 = v168;
  v263 = v63;
  v264 = v142;
  v169 = v164 + 32;
  v80 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  for (i = 0; i != v167; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v171 = specialized protocol witness for Collection.subscript.read in conformance [A](v297, i, v157);
    v173 = *v172;
    v171(v297, 0);
    *(v169 + 8 * i) = v173;
  }

  OUTLINED_FUNCTION_31_26();
  v142 = v264;
  v63 = v263;
  v165 = v262;
LABEL_51:

  v144 = v293;
  if (v165 < v63)
  {
    goto LABEL_88;
  }

  if (v165 < 1)
  {
    goto LABEL_56;
  }

  v174 = *(v279 + 16);
  v175 = __OFADD__(v174, v165);
  v176 = v174 + v165;
  if (!v175)
  {
    *(v279 + 16) = v176;
    goto LABEL_56;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_16:
  v96 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v96, static Logger.siriPhone);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_10_0(v98);
  OUTLINED_FUNCTION_31_26();
  if (v99)
  {
    v100 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v100);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v101, v102, v103, v104, v105, 2u);
    OUTLINED_FUNCTION_12_3();
  }

LABEL_19:
  OUTLINED_FUNCTION_16_47();
  OUTLINED_FUNCTION_54_23();
  v106();
LABEL_20:

  (*(v278 + 8))(v80, v296);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void *, uint64_t, uint64_t, uint64_t, void *), unint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_66();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v81 = v29;
  v31 = v30;
  v33 = v32;
  v80 = v34;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_7();
  v82 = v38;
  __chkstk_darwin(v39);
  v41 = &v77 - v40;
  v84 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v43 = v42;
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_4();
  v83 = v46 - v45;
  v88[3] = v26;
  v88[4] = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v28, v26);
  v48 = dispatch thunk of UsoEntity_common_Group.name.getter();
  LOBYTE(v26) = specialized Optional<A>.isNilOrEmpty.getter(v48, v49);

  if ((v26 & 1) == 0 || (v50 = dispatch thunk of UsoEntity_common_Group.members.getter()) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_37:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    v54 = __swift_project_value_buffer(v53, static Logger.siriPhone);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v56))
    {
      v57 = OUTLINED_FUNCTION_65_0();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v54, "#ReferenceContactResolutionWrapper resolved to a named common_Group", v57, 2u);
      OUTLINED_FUNCTION_26_0(v57);
    }

    v58 = v81[3];
    v59 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v58);
    (*(v59 + 8))(v87, v58, v59);
    outlined init with copy of SignalProviding(v87, v86);
    outlined init with copy of SignalProviding(v88, v85);
    v60 = swift_allocObject();
    outlined init with take of SPHConversation(v86, v60 + 16);
    outlined init with take of SPHConversation(v85, v60 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v87);
    v61 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_424FD0;
    *(v62 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v62 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v62 + 32) = v36;
    v87[0] = v62;

    v61(v86, v87);

    (v82[1])(v41, v37);
    goto LABEL_34;
  }

  v51 = v50;
  v78 = v33;
  v79 = v31;
  v77 = a21;
  v87[0] = _swiftEmptyArrayStorage;
  v37 = specialized Array.count.getter(v50);
  v41 = 0;
  v36 = v51 & 0xFFFFFFFFFFFFFF8;
  v82 = _swiftEmptyArrayStorage;
  while (v37 != v41)
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_36;
      }
    }

    v52 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v41;
    if (*&v86[0])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v82 = v87[0];
      v41 = v52;
    }
  }

  v63 = v82;
  v64 = specialized Array.count.getter(v82);
  if (!v64)
  {

    v67 = _swiftEmptyArrayStorage;
LABEL_29:
    v71 = v79;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v72, static Logger.siriPhone);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v74))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_44(&dword_0, v75, v76, "#ReferenceContactResolutionWrapper resolved to an unnamed common_Group");
      OUTLINED_FUNCTION_52();
    }

    v77(v67, v80, v78, v71, v81);

LABEL_34:
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_65();
    return;
  }

  v65 = v64;
  v87[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64 & ~(v64 >> 63), 0);
  if ((v65 & 0x8000000000000000) == 0)
  {
    v66 = 0;
    v67 = v87[0];
    v68 = v83;
    do
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      UsoEntity_common_Agent.toContactQuery()();

      v87[0] = v67;
      v70 = v67[2];
      v69 = v67[3];
      if (v70 >= v69 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1);
        v67 = v87[0];
      }

      ++v66;
      v67[2] = v70 + 1;
      (*(v43 + 32))(v67 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v70, v68, v84);
    }

    while (v65 != v66);

    goto LABEL_29;
  }

  __break(1u);
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo012INStartVideobO0C_Tt9g5Tf4nnnnnnnnne_n()
{
  OUTLINED_FUNCTION_66();
  v84 = OUTLINED_FUNCTION_7_64(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_7();
  v78 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v72 = v15 - v14;
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v18 = OUTLINED_FUNCTION_10_64(v17);
  v20 = v19(v18);
  OUTLINED_FUNCTION_11_53(v20, v21, v22, v23, v24, v25, v26, partial apply for closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), partial apply for closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartVideobM0C_Tt4g5, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartVideobM0C_Tt4g5, &unk_52DBF8, partial apply for closure #1 in static Transformer<>.transformer(device:groupResolver:), v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
  if (OUTLINED_FUNCTION_50_22(v27))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v28)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v32);
      OUTLINED_FUNCTION_14_51(&dword_0, v33, v34, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartVideoCallIntent.overwriteContacts(newContacts:)(v2);
  }

  if (specialized Array.count.getter(v3))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v28)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
    v0 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v36))
    {
      v37 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v37);
      OUTLINED_FUNCTION_14_51(&dword_0, v38, v39, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_14_0();
    }
  }

  if (specialized Array.count.getter(v3))
  {
  }

  else
  {
    specialized Array.count.getter(v2);
    OUTLINED_FUNCTION_51_25();

    if (!v0)
    {
      v49 = OUTLINED_FUNCTION_9_63();
      v50(v49);
      __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      OUTLINED_FUNCTION_12_56();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_project_boxed_opaque_existential_1(v75, v75[3]);
      v51 = OUTLINED_FUNCTION_2_98();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_n(v51, v52, v53, v54, v55, v56, v57, v58, v61, v62, v63, v64, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89);
      v59 = OUTLINED_FUNCTION_17_43();
      v60(v59);
      __swift_destroy_boxed_opaque_existential_1(v90);
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_8();
  if (!v28)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v40, static Logger.siriPhone);
  v41 = v1;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_42();
    v44 = OUTLINED_FUNCTION_49_22();
    OUTLINED_FUNCTION_48_21(v44, 5.7779e-34);
    OUTLINED_FUNCTION_45_1(&dword_0, v45, v46, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@");
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v44);
    OUTLINED_FUNCTION_14_0();
  }

LABEL_21:
  v47 = OUTLINED_FUNCTION_41_28();
  v48(v47);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_66();
  v23 = v22;
  v69 = v24;
  v70 = v25;
  v67 = v26;
  v68 = v27;
  v29 = v28;
  OUTLINED_FUNCTION_9_1();
  v31 = v30;
  v71 = a21;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_4();
  v35 = v34 - v33;
  (*(v31 + 16))(v34 - v33, v36, v37);
  static Signpost.begin(_:)();
  v73 = v38;
  v40 = v39;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v72 = v29;
  v41 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v41)
  {
    v42 = one-time initialization token for siriPhone;
    v43 = v41;
    if (v42 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v44, static Logger.siriPhone);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_7_39(v46))
    {
      v47 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_59(v47);
      OUTLINED_FUNCTION_15_46(&dword_0, v48, v49, "#ReferenceContactResolutionWrapper resolved to an INPerson");
      OUTLINED_FUNCTION_26_0(v40);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v50 = swift_allocObject();
    v51 = v50;
    *(v50 + 16) = xmmword_426260;
    *(v50 + 32) = v43;
LABEL_13:
    v52 = v72;
    goto LABEL_14;
  }

  v52 = v72;
  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_Person();
  OUTLINED_FUNCTION_3_83();

  v53 = v74;
  if (v74)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v54, static Logger.siriPhone);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_7_39(v56))
    {
      v57 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_59(v57);
      OUTLINED_FUNCTION_15_46(&dword_0, v58, v59, "#ReferenceContactResolutionWrapper resolved to a common_Person");
      OUTLINED_FUNCTION_26_0(a22);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    OUTLINED_FUNCTION_88();
    type metadata accessor for ContactQuery();
    v60 = OUTLINED_FUNCTION_42_22();
    *(v60 + 16) = xmmword_424FD0;
    v51 = v53;
    UsoEntity_common_Person.toContactQuery()();
    a22(v60, v67, v68, v69, v70);
    OUTLINED_FUNCTION_51_25();

    goto LABEL_13;
  }

  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_Group();
  OUTLINED_FUNCTION_3_83();

  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_Agent();
  OUTLINED_FUNCTION_3_83();

  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_App();
  OUTLINED_FUNCTION_3_83();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v61, static Logger.siriPhone);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_4(v63))
  {
    v64 = OUTLINED_FUNCTION_65_0();
    *v64 = 0;
    _os_log_impl(&dword_0, v62, v63, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v64, 2u);
    v65 = v64;
    v52 = v72;
    OUTLINED_FUNCTION_26_0(v65);
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_14:
  __chkstk_darwin(v50);
  v66[2] = v52;
  specialized Sequence.compactMap<A>(_:)(v71, v66, v51);

  (*(v31 + 8))(v35, v23);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type [INPerson] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RRResult and conformance RRResult(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_50_22(uint64_t a1)
{

  return specialized Array.count.getter(a1);
}

uint64_t OUTLINED_FUNCTION_51_25()
{
}

void OUTLINED_FUNCTION_55_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void INPerson.identifier.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v1);
  if (v9 || (v8 = outlined bridged method (pb) of @objc INPerson.customIdentifier.getter(v1), v9))
  {
    v26 = v8;
    v27 = v9;
    v10 = [v1 personHandle];
    if (v10)
    {
      outlined bridged method (ob) of @objc INPersonHandle.value.getter(v10);
      if (v11)
      {
        static String.Encoding.utf8.getter();
        v12 = String.data(using:allowLossyConversion:)();
        v14 = v13;

        v15 = *(v4 + 8);
        v15(v7, v2);
        if (v14 >> 60 != 15)
        {
          v16 = [v1 personHandle];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 label];

            if (v18)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }

          static String.Encoding.utf8.getter();
          v19 = String.data(using:allowLossyConversion:)();
          v21 = v20;

          v15(v7, v2);
          if (v21 >> 60 != 15)
          {
            v25._countAndFlagsBits = v12;
            v25._object = v14;
            outlined copy of Data._Representation(v12, v14);
            specialized Data.append<A>(contentsOf:)(v19, v21);
            countAndFlagsBits = v25._countAndFlagsBits;
            object = v25._object;
            v24 = Data.base64EncodedString(options:)(0);
            v25._countAndFlagsBits = 58;
            v25._object = 0xE100000000000000;
            String.append(_:)(v24);

            String.append(_:)(v25);

            outlined consume of Data._Representation(countAndFlagsBits, object);
            outlined consume of Data?(v19, v21);
          }

          outlined consume of Data?(v12, v14);
        }
      }
    }
  }

  else
  {
    INPerson.asBase64()();
  }

  OUTLINED_FUNCTION_65();
}

void INPerson.toRREntity()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  static Transformer<>.transformer.getter();
  v9 = Transformer.reverseTransform.getter();
  v36 = v0;
  v9(&v35, &v36);

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v10, static Logger.siriPhone);
  v11 = v0;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v16;
    v33 = OUTLINED_FUNCTION_36();
    v36 = v33;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2080;
    v17 = v11;
    v31 = v13;
    CodeGenBase.entity.getter();
    v18 = UsoEntity.valueTypeString.getter();
    v30 = v12;
    v19 = v18;
    v20 = v2;
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, &v36);
    v2 = v20;

    *(v15 + 14) = v23;
    v24 = v30;
    _os_log_impl(&dword_0, v30, v31, "#ReferenceResolution INPerson-SRR: Transformed person %@ to USO entity %s", v15, 0x16u);
    v25 = v32;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v25);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_26_0(v26);
    v27 = v15;
    v5 = v34;
    OUTLINED_FUNCTION_26_0(v27);
  }

  else
  {
  }

  v28 = CodeGenBase.entity.getter();

  INPerson.makeRREntity(usoEntity:)(v28);
  (*(v5 + 8))(v8, v3);

  v29 = type metadata accessor for RREntity();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v29);
  OUTLINED_FUNCTION_65();
}

void RRReferenceResolverProtocol.resolveEntity(resolveQuery:)()
{
  OUTLINED_FUNCTION_66();
  v97 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  __chkstk_darwin(v1 - 8);
  v92 = &v89 - v2;
  type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_7();
  v94 = v4;
  v95 = v3;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v93 = v5 - v6;
  __chkstk_darwin(v7);
  v96 = (&v89 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v89 - v10;
  v12 = type metadata accessor for RRResult();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v91 = v16 - v17;
  __chkstk_darwin(v18);
  v20 = (&v89 - v19);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  RRReferenceResolverProtocol.resolveReference(resolveQuery:)();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    (*(v14 + 32))(v23, v11, v12);
    v25 = v14 + 16;
    v24 = *(v14 + 16);
    (v24)(v20, v23, v12);
    v26 = (*(v14 + 88))(v20, v12);
    v27 = v12;
    if (v26 == enum case for RRResult.foundMatch(_:))
    {
      v91 = v14;
      v92 = v23;
      (*(v14 + 96))(v20, v12);
      v28 = v94;
      v29 = v95;
      v30 = v96;
      (*(v94 + 32))(v96, v20, v95);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v31 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
      v32 = v93;
      (*(v28 + 16))(v93, v30, v29);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = v28;
        v36 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v98 = v89;
        *v36 = 136315394;
        lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate, &protocol conformance descriptor for RRCandidate);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v27;
        v39 = v38;
        v40 = *(v35 + 8);
        v40(v32, v29);
        v30 = v96;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v98);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        v42 = dispatch thunk of ResolveQuery.description.getter();
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v98);

        *(v36 + 14) = v44;
        v27 = v90;
        _os_log_impl(&dword_0, v33, v34, "#ReferenceResolution Found a candidate %s by using query:%s", v36, 0x16u);
        v45 = v89;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v45);
        OUTLINED_FUNCTION_26_0(v36);
      }

      else
      {

        v40 = *(v28 + 8);
        v40(v32, v29);
      }

      v55 = v97;
      RRCandidate.entity.getter();
      v40(v30, v29);
      (*(v91 + 8))(v92, v27);
      goto LABEL_18;
    }

    if (v26 == enum case for RRResult.needsDisambiguation(_:))
    {
      v46 = OUTLINED_FUNCTION_6_73();
      v24(v46);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v47 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v47, static Logger.siriPhone);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v49))
      {
        goto LABEL_14;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "#ReferenceResolution Found ambiguous entities -> nil";
LABEL_13:
      OUTLINED_FUNCTION_33(&dword_0, v50, v51, v53);
      OUTLINED_FUNCTION_26_0(v52);
LABEL_14:

      (v24)(v25, v12);
      goto LABEL_15;
    }

    if (v26 == enum case for RRResult.foundMatchPlural(_:))
    {
      v57 = v23;
      v58 = v14;
      (*(v14 + 96))(v20, v12);
      v59 = *v20;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v60 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v60, static Logger.siriPhone);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_42();
        *v63 = 134217984;
        *(v63 + 4) = *(v59 + 16);

        _os_log_impl(&dword_0, v61, v62, "#ReferenceResolution Found %ld candidates. Using the first one", v63, 0xCu);
        OUTLINED_FUNCTION_26_0(v63);
      }

      else
      {
      }

      v55 = v97;
      v67 = v92;
      specialized Collection.first.getter(v59);

      v68 = v95;
      if (__swift_getEnumTagSinglePayload(v67, 1, v95) != 1)
      {
        RRCandidate.entity.getter();
        (*(v58 + 8))(v57, v12);
        (*(v94 + 8))(v67, v68);
LABEL_18:
        v54 = 0;
        goto LABEL_19;
      }

      (*(v58 + 8))(v57, v12);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v67, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    }

    else
    {
      if (v26 == enum case for RRResult.needsDisambiguationPlural(_:))
      {
        v64 = OUTLINED_FUNCTION_6_73();
        v24(v64);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v65 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v65, static Logger.siriPhone);
        v48 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_10_0(v66))
        {
          goto LABEL_14;
        }

        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "#ReferenceResolution Found plural disambiguation -> nil";
        goto LABEL_13;
      }

      if (v26 == enum case for RRResult.noMatch(_:))
      {
        v69 = v14;
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v70 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v70, static Logger.siriPhone);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          OUTLINED_FUNCTION_33(&dword_0, v74, v75, "#ReferenceResolution No matches found");
          OUTLINED_FUNCTION_26_0(v73);
        }

        (*(v69 + 8))(v23, v12);
        goto LABEL_15;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v76 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v76, static Logger.siriPhone);
      v92 = v23;
      (v24)(v91, v23, v12);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = OUTLINED_FUNCTION_42();
        v95 = v79;
        v96 = OUTLINED_FUNCTION_36();
        v98 = v96;
        *v79 = 136315138;
        lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult, &protocol conformance descriptor for RRResult);
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v83 = OUTLINED_FUNCTION_5_79();
        v12(v83);
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &v98);

        v85 = v95;
        *(v95 + 1) = v84;
        v86 = v85;
        _os_log_impl(&dword_0, v77, v78, "#ReferenceResolution Received unknown result type %s", v85, 0xCu);
        v87 = v96;
        __swift_destroy_boxed_opaque_existential_1(v96);
        OUTLINED_FUNCTION_26_0(v87);
        OUTLINED_FUNCTION_26_0(v86);
      }

      else
      {

        v88 = OUTLINED_FUNCTION_5_79();
        v12(v88);
      }

      (v12)(v92, v12);
      v55 = v97;
      (v12)(v20, v12);
    }

    v54 = 1;
    goto LABEL_19;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
LABEL_15:
  v54 = 1;
  v55 = v97;
LABEL_19:
  v56 = type metadata accessor for RREntity();
  __swift_storeEnumTagSinglePayload(v55, v54, 1, v56);
  OUTLINED_FUNCTION_65();
}

void RRReferenceResolverProtocol.resolveReference(resolveQuery:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v5 = (v3 - v4);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  static Signpost.begin(_:)();
  v28 = v9;
  v27 = v10;
  dispatch thunk of RRReferenceResolverProtocol.resolve(query:)();
  outlined init with copy of Result<RRResult, Error>(v8, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v5;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_42();
      v26 = OUTLINED_FUNCTION_36();
      v29 = v11;
      v30 = v26;
      *v15 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v30);

      *(v15 + 4) = v18;
      _os_log_impl(&dword_0, v13, v14, "#ReferenceResolution Received a failure: %s -> nil", v15, 0xCu);
      v19 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_26_0(v19);
      OUTLINED_FUNCTION_26_0(v15);
    }

    else
    {
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v24 = type metadata accessor for RRResult();
    v22 = v1;
    v23 = 1;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v20 = type metadata accessor for RRResult();
    OUTLINED_FUNCTION_23_1();
    (*(v21 + 32))(v1, v5, v20);
    v22 = v1;
    v23 = 0;
    v24 = v20;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

uint64_t INPerson.makeRREntity(usoEntity:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  INPerson.identifier.getter();
  v5 = type metadata accessor for GroupIdentifier();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  type metadata accessor for INPerson();

  v6 = v1;
  return RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:)();
}

uint64_t outlined bridged method (pb) of @objc INPerson.customIdentifier.getter(void *a1)
{
  v1 = [a1 customIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Data.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = a1;
  v9[1] = a2;
  v5 = __swift_project_boxed_opaque_existential_1(v9, &type metadata for Data);
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(a1, a2);
  specialized Data.withUnsafeBytes<A>(_:)(v6, v7, v2);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SRRMatchType and conformance SRRMatchType()
{
  result = lazy protocol witness table cache variable for type SRRMatchType and conformance SRRMatchType;
  if (!lazy protocol witness table cache variable for type SRRMatchType and conformance SRRMatchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SRRMatchType and conformance SRRMatchType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SRRMatchType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v6;
      goto LABEL_6;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_6:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v4);
      break;
    default:
      result = Data._Representation.append(contentsOf:)();
      break;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static RelationshipLabel.from(intentsRelationship:)@<X0>(uint64_t *a2@<X8>)
{
  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  object = v4;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    v6 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

    specialized BidirectionalCollection.last.getter(v6);
    v8 = v7;

    if (v8)
    {
      static String._fromSubstring(_:)();
      swift_bridgeObjectRelease_n();
    }

    v9 = String.lowercased()();
    countAndFlagsBits = v9._countAndFlagsBits;

    object = v9._object;
  }

  *a2 = countAndFlagsBits;
  a2[1] = object;
  v10 = enum case for RelationshipLabel.custom(_:);
  v11 = type metadata accessor for RelationshipLabel();
  return (*(*(v11 - 8) + 104))(a2, v10, v11);
}

uint64_t ResponseMode.isDisplayMode()(void (*a1)(__n128), void (*a2)(uint64_t))
{
  v4 = type metadata accessor for ResponseMode();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  LOBYTE(a1) = static ResponseMode.== infix(_:_:)();
  v9 = *(v5 + 8);
  v10 = v9(v8, v4);
  if (a1)
  {
    v11 = 1;
  }

  else
  {
    a2(v10);
    v11 = static ResponseMode.== infix(_:_:)();
    v9(v8, v4);
  }

  return v11 & 1;
}

uint64_t RestrictionCheckGuardFlow.__allocating_init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  RestrictionCheckGuardFlow.init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(a1, a2, a3);
  return v6;
}

uint64_t one-time initialization function for phoneCallCommand()
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v0;
  v1._countAndFlagsBits = 35;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v2);

  static RestrictionCheckGuardFlow.phoneCallCommand = v4;
  *algn_59A258 = v5;
  return result;
}

uint64_t *RestrictionCheckGuardFlow.phoneCallCommand.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallCommand != -1)
  {
    OUTLINED_FUNCTION_1_99(&one-time initialization token for phoneCallCommand);
  }

  return &static RestrictionCheckGuardFlow.phoneCallCommand;
}

uint64_t static RestrictionCheckGuardFlow.phoneCallCommand.getter()
{
  if (one-time initialization token for phoneCallCommand != -1)
  {
    OUTLINED_FUNCTION_1_99(&one-time initialization token for phoneCallCommand);
  }

  v0 = static RestrictionCheckGuardFlow.phoneCallCommand;

  return v0;
}

uint64_t key path setter for RestrictionCheckGuardFlow.exitValue : RestrictionCheckGuardFlow(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t RestrictionCheckGuardFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RestrictionCheckGuardFlow(0);
  lazy protocol witness table accessor for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow(&lazy protocol witness table cache variable for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow, type metadata accessor for RestrictionCheckGuardFlow, &protocol conformance descriptor for RestrictionCheckGuardFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t closure #1 in RestrictionCheckGuardFlow.execute()()
{
  v3 = (**(*(v0 + 16) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_phoneCallCommonCATsSimple) + class metadata base offset for PhoneCallCommonCATsSimple + 32);
  v4 = (*v3 + **v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #1 in RestrictionCheckGuardFlow.execute();

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t RestrictionCheckGuardFlow.isVoiceDialRestrictedRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse;
  (*(v10 + 16))(v14, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse, v8, v12);
  v16 = OUTLINED_FUNCTION_55_0();
  v18 = v17(v16);
  if (v18 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_2;
  }

  if (v18 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v21 = OUTLINED_FUNCTION_55_0();
    v22(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_1();
    (*(v23 + 8))(v14);
LABEL_5:
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals), *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals + 24));
    v24 = OUTLINED_FUNCTION_55_0();
    v26 = v25(v24);
    (*(*v26 + 192))(v48, v1 + v15);

    outlined init with copy of PhoneCallNLIntent?(v48, v46);
    v27 = v47;
    if (v47)
    {
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v27 = PhoneCallNLIntent.isOutgoingCall()();
      outlined destroy of PhoneCallNLIntent?(v48);
      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      outlined destroy of PhoneCallNLIntent?(v48);
      outlined destroy of PhoneCallNLIntent?(v46);
    }

    goto LABEL_12;
  }

  if (v18 == enum case for Parse.directInvocation(_:))
  {
    v28 = OUTLINED_FUNCTION_55_0();
    v29(v28);
    (*(v4 + 32))(v7, v14, v2);
    if (one-time initialization token for voiceDialRestrictedInvocations != -1)
    {
      swift_once();
    }

    v30 = static RestrictionCheckGuardFlow.voiceDialRestrictedInvocations;
    v31 = Parse.DirectInvocation.identifier.getter();
    LOBYTE(v1) = v32;
    v27 = specialized Set.contains(_:)(v31, v32, v30);

    (*(v4 + 8))(v7, v2);
  }

  else
  {
    if (v18 == enum case for Parse.NLv4IntentOnly(_:) || v18 == enum case for Parse.uso(_:))
    {
LABEL_2:
      v19 = OUTLINED_FUNCTION_55_0();
      v20(v19);
      goto LABEL_5;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v40))
    {
      v41 = OUTLINED_FUNCTION_65_0();
      *v41 = 0;
      OUTLINED_FUNCTION_15_3(&dword_0, v42, v43, "#RestrictionCheckFlow Unknown parse type, not applying VoiceDial restriction");
      OUTLINED_FUNCTION_26_0(v41);
    }

    v44 = OUTLINED_FUNCTION_55_0();
    v45(v44);
    v27 = 0;
  }

LABEL_12:
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
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = v27 & 1;
    _os_log_impl(&dword_0, v34, v1, "#RestrictionCheckFlow isVoiceDialRestrictedRequest: %{BOOL}d", v36, 8u);
    OUTLINED_FUNCTION_26_0(v36);
  }

  return v27 & 1;
}

uint64_t partial apply for closure #1 in RestrictionCheckGuardFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:);

  return closure #1 in RestrictionCheckGuardFlow.execute()(v0);
}

uint64_t type metadata completion function for RestrictionCheckGuardFlow(uint64_t a1)
{
  result = type metadata accessor for Parse();
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

uint64_t _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v14, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
  }

  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v14, a2[3]);
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  type metadata accessor for TemplatingResult();
  v9 = type metadata accessor for Result();
  __chkstk_darwin(v9);
  v16 = a1;
  _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(partial apply for closure #1 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:), v9, &v12[-v10]);
  v13 = a3;
  v14 = a4;
  v15 = a1;
  return _ss6ResultOsRi_zrlE12flatMapErroryAByxqd__GADq_XEs0D0Rd__lF(partial apply for closure #2 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:), v9, x8_0);
}

uint64_t closure #1 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t x8_0@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v5, x8_0);
  return outlined destroy of BehaviorAfterSpeaking?(v5);
}

uint64_t closure #2 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for TemplatingResult();
  (*(*(v6 - 8) + 16))(a4, a1, v6);
  type metadata accessor for Result();

  return swift_storeEnumTagMultiPayload();
}

uint64_t _ss6ResultOsRi_zrlE12flatMapErroryAByxqd__GADq_XEs0D0Rd__lF@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 24);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v5, v9);
    a1(v12);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a5, v5, *(a2 + 16));
    type metadata accessor for Result();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t closure #1 in Result.zip<A>(with:)@<X0>(uint64_t a5@<X8>)
{
  v6 = type metadata accessor for Result();
  swift_getTupleTypeMetadata2();
  return _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(partial apply for closure #1 in closure #1 in Result.zip<A>(with:), v6, a5);
}

uint64_t outlined destroy of BehaviorAfterSpeaking?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #1 in Result.zip<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a5, a2, a3);
  v11 = *(*(a4 - 8) + 16);

  return v11(a5 + v10, a1, a4);
}

id SAUIPlayNotificationSound.init(notificationId:soundType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = v5;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setNotificationId:v7];

  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  return v5;
}

id SANotificationsSearch.init(after:isOnDeviceSearch:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  v6 = [objc_allocWithZone(NSNumber) initWithBool:a3 & 1];
  [v5 setIsOnDeviceSearch:v6];

  return v5;
}

id SASTButtonItem.init(label:commands:centered:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setCentered:a4 & 1];
  v7 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(a3, v7, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  [v6 setAction:v7];

  v8 = [objc_allocWithZone(SAUIDecoratedText) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  [v6 setDecoratedLabel:v8];

  return v6;
}

id SAPhoneCallConfirmationSnippet.init(confirmOption:confirmationDisplayText:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOptions, SAUIConfirmationOptions_ptr);
  v6 = v5;
  v7 = a1;
  v8 = SAUIConfirmationOptions.init(denyOption:confirmOption:)(0, v7);
  [v6 setConfirmationOptions:v8];

  if (a3)
  {
    OUTLINED_FUNCTION_20_0();
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v6 setConfirmationDisplayText:v9];

  return v6;
}

id SAUIConfirmationOption.init(label:type:iconType:commands:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  if (a6)
  {
    OUTLINED_FUNCTION_8_2();
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v9 setIconType:v10];

  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(a7, v9, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  return v9;
}

void *SAUIConfirmationOptions.init(denyOption:confirmOption:)(void *a1, void *a2)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OUTLINED_FUNCTION_7_65();
  v8 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v8 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v8, "setConfirmCommands:");

  if (!a1 || (v9 = outlined bridged method (ob) of @objc SAUIConfirmationOption.commands.getter(a1)) == 0)
  {

    v9 = _swiftEmptyArrayStorage;
  }

  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v9, v2, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v10 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a2, &selRef_label);
  if (v11)
  {
    String._bridgeToObjectiveC()();
    v10 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v10, "setConfirmText:");

  if (a1 && (v12 = outlined bridged method (ob) of @objc SAUIConfirmationOption.label.getter(a1), v13))
  {
    String._bridgeToObjectiveC()();
    v12 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v12, "setDenyText:");

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22SAUIConfirmationOptionCSgGMd, &_ss23_ContiguousArrayStorageCySo22SAUIConfirmationOptionCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v15 = a1;
  v16 = a2;
  for (i = 0; i != 2; ++i)
  {
    v18 = *(inited + 8 * i + 32);
    if (v18)
    {
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo22SAUIConfirmationOptionCSgMd, &_sSo22SAUIConfirmationOptionCSgMR);
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(_swiftEmptyArrayStorage, v2, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);

  return v2;
}

id SAUIAddDialogs.init(dialogString:templateIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = objc_allocWithZone(SADialogText);
  v4 = v2;
  v5 = [v3 init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  v6 = [objc_allocWithZone(SADialog) init];
  [v6 setContent:v5];
  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v6;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(v9, v10, v11, SADialog_ptr);

  return v4;
}

id SAUIColor.init(r:g:b:alpha:)()
{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_5_80()) init];
  [v3 setRedValue:v2];
  OUTLINED_FUNCTION_10_65([v3 setGreenValue:v1], "setBlueValue:");
  v4 = v0;
  [v3 setAlpha:v4];

  return v3;
}

void *SAUIConfirmationView.init(confirmOption:denyOption:)(void *a1, void *a2)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OUTLINED_FUNCTION_7_65();
  v8 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v8 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v8, "setConfirmCommands:");

  v9 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(a2);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v9 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v9, "setDenyCommands:");

  v10 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a1, &selRef_label);
  if (v11)
  {
    String._bridgeToObjectiveC()();
    v10 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v10, "setConfirmText:");

  v12 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a2, &selRef_label);
  if (v13)
  {
    String._bridgeToObjectiveC()();
    v12 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v12, "setDenyText:");

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_427BB0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a1;
  v15 = a2;
  v16 = a1;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(v14, v2, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);

  return v2;
}

id SASTItemGroup.init(items:)()
{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_5_80()) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v2, v3, v1, v0);
  return v3;
}

id static SASTItemGroup.makeButtonGroup(label:commands:centered:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426260;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTButtonItem, SASTButtonItem_ptr);

  v7 = OUTLINED_FUNCTION_8_2();
  *(v6 + 32) = SASTButtonItem.init(label:commands:centered:)(v7, v8, a3, a4);
  v9 = [objc_allocWithZone(SASTItemGroup) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v6, v9, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  return v9;
}

id SAUIButton.init(text:commands:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(a3, v4, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);

  return v4;
}

id SAIntentGroupHandleIntent.init(intent:appIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3_92();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v8 + 8))(v3, v6);
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v11, v13, v10);
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v10 setAppId:v14];

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage, SAIntentGroupProtobufMessage_ptr);
  v15 = a1;
  v16 = SAIntentGroupProtobufMessage.init(intent:)();
  [v10 setIntent:v16];

  return v10;
}

id SAAceConfirmationContext.init(reason:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v1, v2, v0);
  return v0;
}

id SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3_92();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  v14 = v13;
  [v14 setCanUseServerTTS:a5 & 1];
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v6, v9);
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v15, v17, v14);

  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(a6 & 1).super.super.isa;
  [v14 setListenAfterSpeaking:isa];

  return v14;
}