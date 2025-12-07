uint64_t static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  OUTLINED_FUNCTION_13_1();
  *v11 = v10;
  v12 = *v5;
  OUTLINED_FUNCTION_13_1();
  *v13 = v12;

  if (v4)
  {
    v14 = v12[1];

    return v14();
  }

  else
  {
    v10[50] = a4;
    v10[51] = a3;
    v10[52] = a2;
    v10[53] = a1;

    return _swift_task_switch(static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:), 0, 0);
  }
}

uint64_t specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 16) = v1;
  return _swift_task_switch(specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:), 0, 0);
}

uint64_t specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27();
  v21 = v20[4];
  v22 = swift_task_alloc();
  v20[5] = v22;
  *(v22 + 16) = v20 + 2;
  *(v22 + 24) = v21;
  v23 = swift_task_alloc();
  v20[6] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  *v23 = v20;
  v23[1] = specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20 + 3, 0, 0, 0xD00000000000001ALL, 0x800000000045A9D0, partial apply for specialized closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v22, v24, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:)()
{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {
    v6 = specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:);
  }

  else
  {

    v6 = specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 24));
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a3, partial apply for closure #1 in closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:), v11);
}

uint64_t partial apply for closure #1 in closure #1 in IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(a1, a2 & 1);
}

uint64_t ContactDisambiguationPromptResponseParser.init(personsToDisambiguate:referenceResolver:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v5 = a4 + 6;
  outlined init with take of SPHConversation(a2, (a4 + 1));

  return outlined init with take of SPHConversation(a3, v5);
}

uint64_t ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)(uint64_t a1)
{
  v3 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SignalProviding((v1 + 6), v55);
  v15 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(a1, 0);
  outlined destroy of ContactPromptResponseParser(v55);
  if (v15 != 8)
  {
    return OUTLINED_FUNCTION_55();
  }

  (*(v11 + 16))(v14, a1, v9);
  v16 = OUTLINED_FUNCTION_69();
  v18 = v17(v16);
  if (v18 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v18 == enum case for Parse.directInvocation(_:))
    {
      v26 = OUTLINED_FUNCTION_69();
      v27(v26);
      (*(v5 + 32))(v8, v14, v3);
      ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)();
      v25 = v28;
      (*(v5 + 8))(v8, v3);
      goto LABEL_8;
    }

    if (v18 != enum case for Parse.NLv4IntentOnly(_:) && v18 != enum case for Parse.uso(_:))
    {
      v32 = OUTLINED_FUNCTION_69();
      v33(v32);
LABEL_15:
      v25 = -1;
      goto LABEL_16;
    }
  }

  v19 = OUTLINED_FUNCTION_69();
  v20(v19);
  v21 = v1[9];
  v22 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v21);
  v23 = (*(v22 + 72))(v21, v22);
  (*(*v23 + 192))(&v53, a1);

  if (!v54)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v53, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_15;
  }

  outlined init with take of SPHConversation(&v53, v55);
  ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:parse:)(v55, a1);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_1(v55);
LABEL_8:
  v29 = OUTLINED_FUNCTION_55();
  outlined copy of ContactDisambiguationPromptResponse?(v29, v30);
LABEL_16:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.siriPhone);
  v35 = OUTLINED_FUNCTION_55();
  outlined copy of ContactDisambiguationPromptResponse?(v35, v36);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v39 = OUTLINED_FUNCTION_55();
  outlined consume of ContactDisambiguationPromptResponse?(v39, v40);
  if (os_log_type_enabled(v37, v38))
  {
    v41 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v41 = 136315394;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x800000000045A9F0, v55);
    *(v41 + 12) = 2080;
    if (v25 == -1)
    {
      v46 = 0xE300000000000000;
      v44 = 7104878;
    }

    else
    {
      v42 = OUTLINED_FUNCTION_55();
      v44 = ContactDisambiguationPromptResponse.debugDescription.getter(v42, v43);
      v46 = v45;
      v47 = OUTLINED_FUNCTION_55();
      outlined consume of ContactDisambiguationPromptResponse?(v47, v48);
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v55);

    *(v41 + 14) = v51;
    _os_log_impl(&dword_0, v37, v38, "#ContactDisambiguationPromptResponseParser %s: %s", v41, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_55();
    outlined consume of ContactDisambiguationPromptResponse?(v49, v50);
  }

  return OUTLINED_FUNCTION_55();
}

uint64_t specialized PhoneCallNLIntent.isEmergencyServicesCall()()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    v12 = *(v1 + 75);
    if (v12 != 5)
    {
      goto LABEL_11;
    }

    return v11;
  }

  v4 = 0;
  v5 = v2 + 32;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    outlined init with copy of SignalProviding(v5, v21);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v8 = SiriPhoneContact.getEmergencyType()(v6, v7);
    if (v9 != 3)
    {
      break;
    }

LABEL_7:
    ++v4;
    __swift_destroy_boxed_opaque_existential_1(v21);
    v5 += 40;
    if (v3 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v9 != 1)
  {
    outlined consume of PhoneCallEmergencyType?(v8, v9);
    goto LABEL_7;
  }

  v10 = 1;
  outlined consume of PhoneCallEmergencyType?(v8, 1uLL);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v12 = *(v1 + 75);
  if (v12 == 5)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (PhoneCallDestinationType.rawValue.getter(v12) == 0x636E656772656D65 && v13 == 0xE900000000000079)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = 0;
    if (((v10 | v15) & 1) == 0)
    {
      return v11;
    }
  }

LABEL_18:
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_24:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#PhoneCallNLIntent EmergencyServices intent", v19, 2u);
  }

  return 1;
}

unint64_t ContactDisambiguationPromptResponse.debugDescription.getter(char *a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_0_44();
      _StringGuts.grow(_:)(21);

      OUTLINED_FUNCTION_3_34();
      v18[0] = v11 - 9;
      v18[1] = v10;
      v12 = [a1 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_0_44();
      _StringGuts.grow(_:)(18);

      v18[0] = 0x657463656C65732ELL;
      v18[1] = 0xEF287865646E4964;
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_14;
    case 3:
      OUTLINED_FUNCTION_0_44();
      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_3_34();
      v18[0] = v8;
      v18[1] = v7;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
      v5 = String.init<A>(describing:)();
      goto LABEL_14;
    case 4:
      v4 = 0x65537974706D652ELL;
      if (a1 == &dword_0 + 1)
      {
        v4 = 0xD00000000000001BLL;
      }

      if (a1)
      {
        return v4;
      }

      else
      {
        return 0xD000000000000019;
      }

    default:
      switch(a1)
      {
        case 5u:
          return 0x6E776F6E6B6E752ELL;
        case 6u:
          return 0xD000000000000015;
        case 7u:
          return 0x6F4374657365722ELL;
      }

      OUTLINED_FUNCTION_0_44();
      _StringGuts.grow(_:)(17);

      strcpy(v18, ".confirmation(");
      HIBYTE(v18[1]) = -18;
      v5 = PhoneCallConfirmation.rawValue.getter(a1);
LABEL_14:
      String.append(_:)(*&v5);
LABEL_16:

      v17._countAndFlagsBits = 41;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      return v18[0];
  }
}

Class ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = (&v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  static CommonDirectAction.from(_:)((&v13 - v4));
  v6 = type metadata accessor for CommonDirectAction(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v5, v2, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v10 = *v2;
        v9 = v2[1];
        type metadata accessor for INPerson();
        v11._countAndFlagsBits = v10;
        v11._object = v9;
        isa = INPerson.init(contactIdentifier:)(v11).super.isa;
        goto LABEL_9;
      case 2:
        isa = *v2;
        goto LABEL_9;
      case 1:
        isa = *v2;
        goto LABEL_9;
    }

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v2, type metadata accessor for CommonDirectAction);
  }

  isa = 0;
LABEL_9:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  return isa;
}

id ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:parse:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PhoneCallNLv3Intent(0);
  __chkstk_darwin(v6);
  v8 = &v41[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SignalProviding(a1, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v8, type metadata accessor for PhoneCallNLv3Intent);
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = (*(v10 + 24))(v9, v10);
    specialized Collection.first.getter(v11, __dst);

    v12 = __dst[3];
    if (__dst[3])
    {
      v13 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      v14 = (*(v13 + 32))(v12, v13);
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(__dst);
      if (v16)
      {
        type metadata accessor for INPerson();
        v17 = static INPerson.from(base64ContactId:)(v14, v16);

        if (v17)
        {
          return v17;
        }
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(__dst, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
    }
  }

  v18 = v43;
  outlined init with copy of SignalProviding(a1, v42);
  if (!swift_dynamicCast())
  {
    memset(v44, 0, sizeof(v44));
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMR);
    return 0;
  }

  memcpy(__dst, v44, 0x68uLL);
  outlined init with copy of SignalProviding((v3 + 1), v44);
  v17 = DisambiguationReferenceResolver.resolveDisambiguationReference(_:)(a2);
  outlined destroy of DisambiguationReferenceResolver(v44);
  if (v17)
  {
    outlined destroy of PhoneCallNLv4Intent(__dst);
    return v17;
  }

  if (specialized PhoneCallNLIntent.isEmergencyServicesCall()())
  {
    v20 = *v3;
    v3 = specialized Array.count.getter(*v3);
    v21 = 0;
    v18 = (v20 & 0xC000000000000001);
    while (1)
    {
      if (v3 == v21)
      {
        outlined destroy of PhoneCallNLv4Intent(__dst);
        return 0;
      }

      if (v18)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_52;
        }

        v22 = *(v20 + 8 * v21 + 32);
      }

      v17 = v22;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v23 = [v22 personHandle];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 emergencyType];

        if (v25 == &dword_0 + 1)
        {
          outlined destroy of PhoneCallNLv4Intent(__dst);
          return v17;
        }
      }

      v21 = (v21 + 1);
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_27;
  }

  v26 = __dst[1];
  if (*(__dst[1] + 16) != 1 || (outlined init with copy of SignalProviding(__dst[1] + 32, v44), __swift_project_boxed_opaque_existential_1(v44, v44[3]), isa = SiriPhoneContact.toINPerson()().super.isa, __swift_destroy_boxed_opaque_existential_1(v44), v28 = INPerson.isUnnamedHandleLabel.getter(), isa, (v28 & 1) == 0))
  {
    v36 = Array<A>.hasQueryableContactInformation.getter(v26);
    outlined destroy of PhoneCallNLv4Intent(__dst);
    if (v36)
    {
      return &dword_0 + 1;
    }

    else
    {
      return &dword_0 + 2;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_53;
  }

LABEL_27:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriPhone);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "#ContactDisambiguationPromptResponseParser user called an unknown label", v32, 2u);
  }

  v33 = v3[9];
  v34 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v33);
  v35 = (*(v34 + 72))(v33, v34);
  (*(*v35 + 224))(v44);

  if (v44[4])
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v44[6], v43, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v44);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *v18 = 0u;
    v18[1] = 0u;
    v43[4] = 0;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v43, v41, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (!v41[3])
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    memset(v42, 0, 104);
LABEL_48:
    outlined destroy of PhoneCallNLv4Intent(__dst);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMR);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v42, 0, 104);
    goto LABEL_47;
  }

  if (!v42[0])
  {
LABEL_47:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    goto LABEL_48;
  }

  memcpy(v44, v42, sizeof(v44));
  if (!PhoneCallNLv4Intent.isCallLabelOnly()() || !PhoneCallNLv4Intent.isCallLabelOnly()())
  {
    outlined destroy of PhoneCallNLv4Intent(v44);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of PhoneCallNLv4Intent(__dst);
    return 0;
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "#ContactDisambiguationPromptResponseParser user may actually want to call the handle specified on the meCard (if existing). Skipping the current disambiguation flow..", v39, 2u);
  }

  outlined destroy of PhoneCallNLv4Intent(v44);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  outlined destroy of PhoneCallNLv4Intent(__dst);
  return &dword_4 + 3;
}

id outlined copy of ContactDisambiguationPromptResponse?(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of ContactDisambiguationPromptResponse(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin35ContactDisambiguationPromptResponseO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t getEnumTagSinglePayload for ContactDisambiguationPromptResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for ContactDisambiguationPromptResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for ContactDisambiguationPromptResponse(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactDisambiguationPromptResponseParser(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for ContactDisambiguationPromptResponseParser(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined consume of PhoneCallEmergencyType?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined consume of PhoneCallEmergencyType(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of PhoneCallEmergencyType(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void *ContactGroupResolver.findGroups(query:config:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ContactGroup();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = ContactGroupResolver.findGroups(query:config:)();
  v7 = *(v6 + 16);
  if (v7)
  {
    v23 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v23;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    v18 = v6;
    v19 = v13;
    do
    {
      v10(v5, v12, v2);
      v23 = v8;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      v21 = v2;
      v22 = &protocol witness table for ContactGroup;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      v10(boxed_opaque_existential_1, v5, v2);
      v8 = v23;
      v23[2] = v15 + 1;
      outlined init with take of SPHConversation(&v20, &v8[5 * v15 + 4]);
      (*(v9 - 8))(v5, v2);
      v12 += v19;
      --v7;
    }

    while (v7);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t ContactNeedsConfirmationFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of SignalProviding(v3 + *(a3 + 36), v12);
  Input.parse.getter();
  v9 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v8, 1);
  (*(v6 + 8))(v8, v5);
  outlined destroy of ContactPromptResponseParser(v12);
  if ((v9 - 5) >= 4u)
  {
    return static ActionForInput.handle()();
  }

  else
  {
    return static ActionForInput.ignore()();
  }
}

uint64_t ContactNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v4;
  v1[14] = v5;
  v1[12] = v6;
  v1[17] = type metadata accessor for PhoneError(0);
  v1[18] = OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v1[19] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for ParameterIdentifier();
  v1[20] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for Parse();
  v1[23] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_45();
  v1[26] = *(v3 + 24);
  v1[27] = *(v3 + 16);
  v1[28] = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ParameterResolutionRecord();
  v1[29] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[30] = v12;
  v1[31] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(ContactNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:), 0, 0);
}

{
  v81 = v0;
  v1 = ParameterResolutionRecord.result.getter();
  v2 = [v1 itemToConfirm];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INPerson();
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#ContactNeedsConfirmationFlowStrategy No item to confirm.", v25, 2u);
      OUTLINED_FUNCTION_26_0(v25);
    }

    v26 = v0[18];

    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    swift_allocError();
    PhoneError.logged()(v27);
    outlined destroy of PhoneError(v26);
    swift_willThrow();
    goto LABEL_11;
  }

  person = v0[11];
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[14];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);
  (*(v4 + 16))(v3, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[30];
  v12 = v0[31];
  v13 = v0[29];
  if (v10)
  {
    v14 = v0[28];
    v15 = OUTLINED_FUNCTION_42();
    v77 = OUTLINED_FUNCTION_36();
    v80[0] = v77;
    *v15 = 136315138;
    v16 = ParameterResolutionRecord.intent.getter();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(v14);

    (*(v11 + 8))(v12, v13);
    v18 = Array.description.getter();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v80);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v8, v9, "#ContactNeedsConfirmationFlowStrategy contacts before parsing confirmation response: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    OUTLINED_FUNCTION_26_0(v77);
    OUTLINED_FUNCTION_26_0(v15);
  }

  else
  {
    (*(v11 + 8))(v0[31], v0[29]);
  }

  v30 = v0[24];
  v29 = v0[25];
  v31 = v0[22];
  v32 = v0[23];
  v33 = v0[21];
  v78 = v0[20];
  outlined init with copy of SignalProviding(v0[16] + *(v0[15] + 36), (v0 + 2));
  Input.parse.getter();
  v34 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v29, 1);
  (*(v30 + 8))(v29, v32);
  outlined destroy of ContactPromptResponseParser((v0 + 2));
  v35 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v36 = ParameterIdentifier.multicardinalIndex.getter();
  v38 = v37;
  (*(v33 + 8))(v31, v78);
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36;
  }

  if (v34 - 1 >= 2)
  {
    if (!v34)
    {
      v51 = v0[28];
      v52 = *(swift_getAssociatedConformanceWitness() + 8);
      v53 = *(v52 + 8);
      v54 = v53(v51, v52);
      if (v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = _swiftEmptyArrayStorage;
      }

      v56 = specialized Array.count.getter(v55);

      if (v39 >= v56)
      {
        INPersonContainingIntent.appendContact(person:)(person);
      }

      else
      {
        INPersonContainingIntent.replaceContact(at:person:)(v39, person);
      }

      v61 = v35;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v76 = v0[28];
        v64 = OUTLINED_FUNCTION_42();
        v65 = OUTLINED_FUNCTION_36();
        v66 = v53;
        v67 = v65;
        v80[0] = v65;
        *v64 = 136315138;
        v66(v76, v52);
        v68 = Array.description.getter();
        v70 = v69;

        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v80);

        *(v64 + 4) = v71;
        _os_log_impl(&dword_0, v62, v63, "#ContactNeedsConfirmationFlowStrategy contacts after user said yes: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        OUTLINED_FUNCTION_26_0(v67);
        OUTLINED_FUNCTION_26_0(v64);
      }

      else
      {
      }

      v57 = &enum case for ConfirmationResponse.confirmed(_:);
      goto LABEL_33;
    }

    v58 = v0[18];
    swift_storeEnumTagMultiPayload();
    v59 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25(v59);
    PhoneError.logged()(v60);
    outlined destroy of PhoneError(v58);
    swift_willThrow();

LABEL_11:

    OUTLINED_FUNCTION_11();
    goto LABEL_34;
  }

  v40 = *(swift_getAssociatedConformanceWitness() + 8);

  v41 = v35;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[28];
    v45 = OUTLINED_FUNCTION_42();
    v46 = OUTLINED_FUNCTION_36();
    v80[0] = v46;
    *v45 = 136315138;
    (*(v40 + 8))(v44, v40);
    v47 = Array.description.getter();
    v49 = v48;

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v80);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_0, v42, v43, "#ContactNeedsConfirmationFlowStrategy contacts after user said no: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_26_0(v46);
    OUTLINED_FUNCTION_26_0(v45);
  }

  else
  {
  }

  v57 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_33:
  v72 = v0[19];
  v73 = *v57;
  v74 = type metadata accessor for ConfirmationResponse();
  (*(*(v74 - 8) + 104))(v72, v73, v74);
  __swift_storeEnumTagSinglePayload(v72, 0, 1, v74);
  NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

  OUTLINED_FUNCTION_11();
LABEL_34:

  return v28();
}

uint64_t ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v1[12] = type metadata accessor for PhoneError(0);
  v1[13] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:), 0, 0);
}

{
  v22 = v0;
  outlined init with copy of Any(v0[8], (v0 + 2));
  type metadata accessor for INPerson();
  if (swift_dynamicCast())
  {
    v1 = v0[10];
    v2 = v0[6];
    v0[14] = v2;
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    swift_getAssociatedTypeWitness();
    type metadata accessor for ParameterResolutionRecord();
    v5 = ParameterResolutionRecord.app.getter();
    v0[15] = v5;
    v6 = ParameterResolutionRecord.intent.getter();
    v0[16] = v6;
    v7 = ParameterResolutionRecord.result.getter();
    v0[17] = v7;
    v20 = (*(v3 + 40) + **(v3 + 40));
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
    v9 = v0[7];

    return v20(v9, v5, v6, v7, v2, v4, v3);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_42();
      v15 = OUTLINED_FUNCTION_36();
      v21 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x800000000045AAC0, &v21);
      _os_log_impl(&dword_0, v12, v13, "#%s: No item to confirm.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_26_0(v15);
      OUTLINED_FUNCTION_26_0(v14);
    }

    v16 = v0[13];
    swift_storeEnumTagMultiPayload();
    v17 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25(v17);
    PhoneError.logged()(v18);
    outlined destroy of PhoneError(v16);
    swift_willThrow();

    OUTLINED_FUNCTION_11();

    return v19();
  }
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v2 + 152) = v0;

  if (v0)
  {
    v4 = ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t ContactNeedsConfirmationFlowStrategy.init(promptProvider:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for ContactNeedsConfirmationFlowStrategy(0, a3, a4, v9) + 36);

  return outlined init with take of PhoneCallFeatureFlagProviding(a2, v10);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return ContactNeedsConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)();
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return ContactNeedsConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)();
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactNeedsConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance ContactNeedsConfirmationFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t type metadata completion function for ContactNeedsConfirmationFlowStrategy(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SharedGlobalsProviding();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactNeedsConfirmationFlowStrategy(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for ContactNeedsConfirmationFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t type metadata accessor for SharedGlobalsProviding()
{
  result = lazy cache variable for type metadata for SharedGlobalsProviding;
  if (!lazy cache variable for type metadata for SharedGlobalsProviding)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SharedGlobalsProviding);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy;
  type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void key path setter for ContactNeedsDisambiguationFlowStrategy.cachedPromptResponse : <A>ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2 + *(**a2 + 144);
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *v3;
  *v3 = v2;
  v6 = *(v3 + 8);
  *(v3 + 8) = v4;
  outlined copy of ContactDisambiguationPromptResponse?(v2, v4);
  outlined consume of ContactDisambiguationPromptResponse?(v5, v6);
}

id ContactNeedsDisambiguationFlowStrategy.cachedPromptResponse.getter()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v0 + *(v1 + 144);
  swift_beginAccess();
  v3 = *v2;
  outlined copy of ContactDisambiguationPromptResponse?(*v2, *(v2 + 8));
  return v3;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.__allocating_init(promptProvider:sharedGlobals:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v27 = a2;
  v29 = a1;
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OUTLINED_FUNCTION_18_11();
  v9 = OUTLINED_FUNCTION_18_11();
  type metadata accessor for PhoneCallBaseCatTemplatingService(0, v8, v9, v10);
  outlined init with copy of SignalProviding(a2, v30);
  OUTLINED_FUNCTION_8_33();
  default argument 0 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  v11 = OUTLINED_FUNCTION_8_33();
  default argument 2 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v11, v12);
  v13 = OUTLINED_FUNCTION_8_33();
  default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v13, v14);
  v15 = OUTLINED_FUNCTION_8_33();
  default argument 4 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v15, v16);
  OUTLINED_FUNCTION_8_33();
  default argument 5 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v17);
  v18 = OUTLINED_FUNCTION_8_33();
  default argument 6 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v18, v19);
  PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  v21 = v20;
  v22 = v28;
  v23 = v29;
  (*(v6 + 16))(v28, v29, v5);
  v24 = v27;
  outlined init with copy of SignalProviding(v27, v30);
  v25 = (*(v3 + 200))(v22, v30, v21, 0, 255);
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v6 + 8))(v23, v5);
  return v25;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.__allocating_init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  ContactNeedsDisambiguationFlowStrategy.init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(a1, a2, a3, a4, v5);
  return v10;
}

char *ContactNeedsDisambiguationFlowStrategy.init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  v6 = v5;
  v12 = *v6;
  static UnlockDevicePolicy.default.getter();
  *&v6[direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate] = _swiftEmptyArrayStorage;
  OUTLINED_FUNCTION_41_0();
  v14 = &v6[*(v13 + 144)];
  *v14 = 0;
  v14[8] = -1;
  OUTLINED_FUNCTION_41_0();
  v16 = *(v12 + 80);
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[*(v15 + 112)], a1, v16);
  OUTLINED_FUNCTION_41_0();
  outlined init with copy of SignalProviding(a2, &v6[*(v18 + 120)]);
  OUTLINED_FUNCTION_41_0();
  *&v6[*(v19 + 128)] = a3;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = (*(v21 + 72))(v20, v21);
  (*(v17 + 8))(a1, v16);
  outlined init with copy of SignalProviding(v22 + 160, v28);

  OUTLINED_FUNCTION_41_0();
  outlined init with take of SPHConversation(v28, &v6[*(v23 + 136)]);
  OUTLINED_FUNCTION_41_0();
  v25 = &v6[*(v24 + 144)];
  swift_beginAccess();
  v26 = *v25;
  *v25 = a4;
  LOBYTE(v16) = v25[8];
  v25[8] = a5;
  outlined copy of ContactDisambiguationPromptResponse?(a4, a5);
  outlined consume of ContactDisambiguationPromptResponse?(v26, v16);
  outlined consume of ContactDisambiguationPromptResponse?(a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

void ContactNeedsDisambiguationFlowStrategy.actionForInput(_:resolveRecord:)()
{
  v1 = v0;
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate);
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v0 + *(v7 + 136), &v22);
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v0 + *(v8 + 120), &v23);
  v21 = v6;

  Input.parse.getter();
  v9 = ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)(v5);
  LOBYTE(v6) = v10;
  (*(v3 + 8))(v5, v2);
  outlined destroy of ContactDisambiguationPromptResponseParser(&v21);
  OUTLINED_FUNCTION_16_24();
  v12 = v1 + *(v11 + 144);
  swift_beginAccess();
  v13 = *v12;
  *v12 = v9;
  v14 = *(v12 + 8);
  *(v12 + 8) = v6;
  outlined consume of ContactDisambiguationPromptResponse?(v13, v14);
  OUTLINED_FUNCTION_16_24();
  v16 = (*(v15 + 176))();
  v18 = v16;
  switch(v17)
  {
    case 0u:
      if (v16 - 1 < 2)
      {
        outlined consume of ContactDisambiguationPromptResponse?(v16, 0);
        static ActionForInput.cancel()();
      }

      else
      {
        if (v16 == 6)
        {
          static ActionForInput.ignore()();
        }

        else
        {
          if (v16)
          {
            v17 = 0;
            goto LABEL_17;
          }

          static ActionForInput.handle()();
        }

        outlined consume of ContactDisambiguationPromptResponse?(v18, 0);
      }

      return;
    case 1u:
      v16 = OUTLINED_FUNCTION_7_26();
      goto LABEL_12;
    case 2u:
      goto LABEL_17;
    case 3u:
      v19 = 3;
      goto LABEL_12;
    case 4u:
      if (v16)
      {
        goto LABEL_17;
      }

      v16 = 0;
      v19 = 4;
LABEL_12:
      outlined consume of ContactDisambiguationPromptResponse?(v16, v19);
      static ActionForInput.handle()();
      break;
    default:
      if (v17 == 255)
      {
        goto LABEL_18;
      }

LABEL_17:
      outlined consume of ContactDisambiguationPromptResponse?(v16, v17);
LABEL_18:
      static ActionForInput.ignore()();
      break;
  }
}

uint64_t ContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *v0;
  v1[5] = *(*v0 + 88);
  v1[6] = *(v4 + 80);
  v1[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for IntentPromptAnswer();
  v1[8] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v7 = type metadata accessor for ParameterIdentifier();
  v1[11] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v69 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  type metadata accessor for ParameterResolutionRecord();
  v4 = ParameterResolutionRecord.intent.getter();
  v0[14] = v4;
  ParameterResolutionRecord.parameter.getter();
  v5 = ParameterIdentifier.multicardinalIndex.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[7];
    v14 = OUTLINED_FUNCTION_42();
    v65 = v8;
    *&v67 = OUTLINED_FUNCTION_36();
    v15 = v67;
    *v14 = 136315138;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(v13);
    type metadata accessor for INPerson();
    OUTLINED_FUNCTION_90();
    v17 = Array.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v67);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "#ContactNeedsDisambiguationFlowStrategy contacts before parsing disambiguation response: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v21 = v15;
    v8 = v65;
    OUTLINED_FUNCTION_26_0(v21);
    OUTLINED_FUNCTION_26_0(v14);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_0();
  v23 = (*(v22 + 176))();
  v0[16] = v23;
  if (v24 == 255)
  {
    goto LABEL_21;
  }

  v25 = v23;
  if (v24 != 1)
  {
    if (v24)
    {
      outlined consume of ContactDisambiguationPromptResponse?(v23, v24);
    }

    else
    {
      v26 = v23;
      outlined consume of ContactDisambiguationPromptResponse?(v23, 0);
      if ((v26 - 1) < 2)
      {
        v27 = *(swift_getAssociatedConformanceWitness() + 8);

        v28 = v10;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = v0[7];
          v32 = OUTLINED_FUNCTION_42();
          v33 = OUTLINED_FUNCTION_36();
          *&v67 = v33;
          *v32 = 136315138;
          (*(v27 + 8))(v31, v27);
          type metadata accessor for INPerson();
          OUTLINED_FUNCTION_90();
          v34 = Array.description.getter();
          v36 = v35;

          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v67);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_0, v29, v30, "#ContactNeedsDisambiguationFlowStrategy contacts after user said no: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          OUTLINED_FUNCTION_26_0(v33);
          OUTLINED_FUNCTION_26_0(v32);
        }

        else
        {
        }

        v67 = 0u;
        v68 = 0u;
        v62 = v28;
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        goto LABEL_22;
      }
    }

LABEL_21:
    v67 = 0u;
    v68 = 0u;
    v44 = v10;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
LABEL_22:
    static DisambiguationResult.chosenItem(_:)();
    v46 = v0[9];
    v45 = v0[10];
    v47 = v0[8];

    (*(v46 + 8))(v45, v47);

    OUTLINED_FUNCTION_11();

    return v48();
  }

  v38 = v0[7];
  v39 = *(swift_getAssociatedConformanceWitness() + 8);
  v0[17] = v39;
  v40 = *(v39 + 8);
  v0[18] = v40;
  v0[19] = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x11ED000000000000;
  outlined copy of ContactDisambiguationPromptResponse(v25, 1u);
  v41 = v40(v38, v39);
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v43 = specialized Array.count.getter(v42);

  if (v8 >= v43)
  {
    INPersonContainingIntent.appendContact(person:)(v25);
  }

  else
  {
    INPersonContainingIntent.replaceContact(at:person:)(v8, v25);
  }

  v50 = v10;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v63 = v0[7];
    v66 = v8;
    v53 = OUTLINED_FUNCTION_42();
    v64 = OUTLINED_FUNCTION_36();
    *&v67 = v64;
    *v53 = 136315138;
    v40(v63, v39);
    v54 = v50;
    type metadata accessor for INPerson();
    OUTLINED_FUNCTION_90();
    v55 = Array.description.getter();
    v57 = v56;

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v67);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_0, v51, v52, "#ContactNeedsDisambiguationFlowStrategy contacts after user disambiguated: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_26_0(v64);
    v59 = v53;
    v8 = v66;
    OUTLINED_FUNCTION_26_0(v59);
  }

  else
  {

    v54 = v50;
  }

  v60 = ParameterResolutionRecord.app.getter();
  v0[20] = v60;
  v61 = swift_task_alloc();
  v0[21] = v61;
  *v61 = v0;
  v61[1] = ContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);

  return ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:)(v25, v54, v60, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v7 + 176) = v6;
  *(v7 + 184) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  v31 = v0;
  v1 = *(v0 + 176);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 136);
    v8 = *(v0 + 56);
    v9 = OUTLINED_FUNCTION_42();
    v10 = OUTLINED_FUNCTION_36();
    v30[0] = v10;
    *v9 = 136315138;
    v6(v8, v7);
    type metadata accessor for INPerson();
    v11 = Array.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v30);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v2, v3, "#ContactNeedsDisambiguationFlowStrategy contacts after re-running CRR: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  else
  {
  }

  v15 = *(v0 + 176);
  v16 = *(v0 + 128);
  v17 = *(v0 + 112);
  v30[3] = type metadata accessor for INPerson();
  v30[0] = v16;
  v18 = OUTLINED_FUNCTION_7_26();
  outlined copy of ContactDisambiguationPromptResponse?(v18, v19);
  v20 = v15;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  static DisambiguationResult.chosenItem(_:)();
  v21 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v21, v22);
  v23 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v23, v24);

  v26 = *(v0 + 72);
  v25 = *(v0 + 80);
  v27 = *(v0 + 64);

  (*(v26 + 8))(v25, v27);

  OUTLINED_FUNCTION_11();

  return v28();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 112);
  v2 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v2, v3);
  v4 = OUTLINED_FUNCTION_7_26();
  outlined consume of ContactDisambiguationPromptResponse?(v4, v5);

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v5[33] = *v4;
  return OUTLINED_FUNCTION_0_1(ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:));
}

uint64_t ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:)()
{
  if (INPerson.hasHandleValue.getter())
  {
    OUTLINED_FUNCTION_11();
    v18 = v1;
    v3 = v2;

    return v18(v3);
  }

  else
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    v8 = type metadata accessor for ContactQuery();
    OUTLINED_FUNCTION_13_2(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_424FD0;
    INPerson.toContactQuery()();
    *(v0 + 56) = _swiftEmptyArrayStorage;
    *(v0 + 64) = 2;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0x1123030905050204;
    *(v0 + 88) = 518;
    *(v0 + 96) = _swiftEmptyArrayStorage;
    *(v0 + 104) = v9;
    *(v0 + 112) = _swiftEmptyArrayStorage;
    v10 = *(*v5 + 120);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

    static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(v7, 0, v6, 0, 0, v5 + v10, AssociatedTypeWitness, AssociatedConformanceWitness);

    *(v0 + 208) = &type metadata for PhoneCallDirectInvocationNLIntent;
    *(v0 + 216) = &protocol witness table for PhoneCallDirectInvocationNLIntent;
    v13 = swift_allocObject();
    *(v0 + 184) = v13;
    outlined init with copy of PhoneCallDirectInvocationNLIntent(v0 + 16, v13 + 16);
    v14 = swift_task_alloc();
    *(v0 + 272) = v14;
    *(v0 + 280) = type metadata accessor for AnyIntentResolver(0, AssociatedTypeWitness, v15, v16);
    *v14 = v0;
    v14[1] = ContactNeedsDisambiguationFlowStrategy.reresolvePerson(_:skIntent:app:multicardinalValueIndex:);
    v17 = *(v0 + 232);

    return AnyIntentResolver.resolve(skIntent:nlIntent:)(v17, v0 + 184);
  }
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
  v5[36] = v0;

  if (v0)
  {
    (*(*(v5[35] - 8) + 8))(v5 + 15);
  }

  else
  {
    v9 = v5[35];
    v5[37] = v3;
    (*(*(v9 - 8) + 8))(v5 + 15);
    __swift_destroy_boxed_opaque_existential_1(v5 + 23);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  v1 = *(v0 + 296);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = type metadata accessor for UnlockDevicePolicy();
  v1[6] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[7] = v4;
  v1[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v15 = *(v0 + 24);
  v1 = ParameterResolutionRecord.result.getter();
  v2 = [v1 disambiguationItems];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(v3 + 16);

  v5 = ParameterResolutionRecord.result.getter();
  v6 = v5;
  v7 = &selRef_alternatives;
  if (v4)
  {
    v7 = &selRef_disambiguationItems;
  }

  v8 = [v5 *v7];

  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = specialized _arrayConditionalCast<A, B>(_:)(v9);
  *(v0 + 72) = v10;

  if (!v10)
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = vextq_s8(v16, v16, 8uLL);
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  type metadata accessor for SiriKitDisambiguationList();
  *v12 = v0;
  v12[1] = ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:);
  OUTLINED_FUNCTION_66_0();

  return withCheckedContinuation<A>(isolation:function:_:)(v13);
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
  v12 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = (v4 + *(*v4 + 120));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 8))(v11, v6, v7);
  (*(v2 + 16))(v1, v4 + direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy, v3);
  type metadata accessor for SiriKitDisambiguationListAdapter();
  swift_allocObject();
  v8 = SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)();

  v9 = v0[1];

  return v9(v8);
}

uint64_t closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v28 = a2;
  v30 = a1;
  v4 = *a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR);
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v27 - v6;
  v8 = *(a3 + *(v4 + 128));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for PhoneCallBaseCatTemplatingService(0, AssociatedTypeWitness, v10, v11);
  v33 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
  v32 = v12;
  *&v31 = v8;
  type metadata accessor for ParameterResolutionRecord();

  ParameterResolutionRecord.app.getter();
  v13 = App.appIdentifier.getter();
  v15 = v14;

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = (a3 + *(*a3 + 120));
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v20 + 184))(v38, v19, v20);
  v21 = v18[3];
  v22 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v21);
  (*(v22 + 8))(v21, v22);
  v34[0] = v28;
  v34[1] = v28;
  outlined init with take of SPHConversation(&v31, &v39);
  v35 = 1;
  v36 = v16;
  v37 = v17;
  v23 = v29;
  (*(v5 + 16))(v7, v30, v29);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v24, v7, v23);
  swift_bridgeObjectRetain_n();
  specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(partial apply for closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:), v25);

  return outlined destroy of PhoneContactDisambiguationItemFactory(v34);
}

uint64_t closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = *v3;
  return OUTLINED_FUNCTION_0_1(ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:));
}

uint64_t ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMd, &_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMR);
  v0[2] = PaginatedItemContainer.items.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMd, &_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMR);
  type metadata accessor for INPerson();
  lazy protocol witness table accessor for type [SiriKitDisambiguationItemPair] and conformance [A](&lazy protocol witness table cache variable for type [SiriKitDisambiguationItemPair] and conformance [A]);
  v3 = Sequence.compactMap<A>(_:)();

  v4 = direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  *(v1 + direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = v3;

  v0[3] = PaginatedItemContainer.items.getter();
  v5 = type metadata accessor for SiriKitDisambiguationItem();
  v6 = lazy protocol witness table accessor for type [SiriKitDisambiguationItemPair] and conformance [A](&lazy protocol witness table cache variable for type [SiriKitDisambiguationItemPair] and conformance [A]);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0, v2, v5, &type metadata for Never, v6, &protocol witness table for Never, v7);

  v8 = *(v1 + v4);

  specialized _arrayForceCast<A, B>(_:)();
  if (specialized Array.count.getter(v8) < 6 || PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v8))
  {
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v8);
  }

  else
  {
  }

  v9 = v0[8];
  type metadata accessor for SiriKitDisambiguationList();
  swift_allocObject();
  v10 = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  v0[9] = v10;
  v13 = v9 + 80;
  v12 = *(v9 + 80);
  v11 = *(v13 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v14 = ParameterResolutionRecord.app.getter();
  v0[10] = v14;
  v15 = ParameterResolutionRecord.intent.getter();
  v0[11] = v15;
  v16 = ParameterResolutionRecord.result.getter();
  v0[12] = v16;
  v20 = (*(v11 + 56) + **(v11 + 56));
  v17 = swift_task_alloc();
  v0[13] = v17;
  *v17 = v0;
  v17[1] = ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v18 = v0[4];

  return v20(v18, v14, v15, v16, v10, v12, v11);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v7 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t closure #1 in ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(void *a2@<X8>)
{
  SiriKitDisambiguationItemPair.rawItem.getter();
  type metadata accessor for INPerson();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t closure #2 in ContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(uint64_t *a2@<X8>)
{
  result = SiriKitDisambiguationItemPair.formattedItem.getter();
  *a2 = result;
  return result;
}

char *ContactNeedsDisambiguationFlowStrategy.deinit()
{
  v1 = *v0;
  v2 = direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy;
  type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(&v0[v2]);

  OUTLINED_FUNCTION_2_0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 112)]);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v5 + 120)]);
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v6 + 136)]);
  OUTLINED_FUNCTION_2_0();
  outlined consume of ContactDisambiguationPromptResponse?(*&v0[*(v7 + 144)], v0[*(v7 + 144) + 8]);
  return v0;
}

uint64_t ContactNeedsDisambiguationFlowStrategy.__deallocating_deinit()
{
  ContactNeedsDisambiguationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.authenticationPolicy.getter in conformance ContactNeedsDisambiguationFlowStrategy<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for ContactNeedsDisambiguationFlowStrategy.authenticationPolicy;
  v5 = type metadata accessor for UnlockDevicePolicy();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a2 + 80), *(a2 + 88), a4);

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v6, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(**v2 + 232) + **(**v2 + 232));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>;

  return v7(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>()
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

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 216) + **(**v4 + 216));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 240) + **(**v3 + 240));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a4 + 80), *(a4 + 88), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a4 + 80), *(a4 + 88), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a2 + 80), *(a2 + 88), a4);

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v6, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a5 + 80), *(a5 + 88), v14);
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for ContactNeedsDisambiguationFlowStrategy(0, *(a6 + 80), *(a6 + 88), v16);
  *v15 = v7;
  v15[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v17, a7);
}

uint64_t lazy protocol witness table accessor for type [SiriKitDisambiguationItemPair] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMd, &_sSay11SiriKitFlow0aB22DisambiguationItemPairVGMR);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for ContactNeedsDisambiguationFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for UnlockDevicePolicy();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR);

  return closure #1 in closure #1 in ContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(a1);
}

uint64_t ContactNeedsValueFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Parse();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of SignalProviding(v3 + *(a3 + 36), v12);
  Input.parse.getter();
  v9 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v8, 0);
  (*(v6 + 8))(v8, v5);
  outlined destroy of ContactPromptResponseParser(v12);
  if (v9 - 1 < 2)
  {
    return static ActionForInput.cancel()();
  }

  if (v9 == 6)
  {
    return static ActionForInput.ignore()();
  }

  return static ActionForInput.handle()();
}

uint64_t ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[31] = v5;
  v1[36] = type metadata accessor for PhoneError(0);
  v1[37] = swift_task_alloc();
  v1[38] = type metadata accessor for Parse();
  OUTLINED_FUNCTION_24_5();
  v1[39] = v6;
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_24_5();
  v1[42] = v7;
  v1[43] = swift_task_alloc();

  return _swift_task_switch(ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:), 0, 0);
}

{
  v134 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 272);
  v5 = *(v4 + 24);
  *(v0 + 352) = v5;
  *(v0 + 360) = *(v4 + 16);
  v123 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 368) = AssociatedTypeWitness;
  v7 = type metadata accessor for ParameterResolutionRecord();
  v8 = ParameterResolutionRecord.intent.getter();
  *(v0 + 376) = v8;
  v131 = v7;
  ParameterResolutionRecord.parameter.getter();
  v9 = ParameterIdentifier.multicardinalIndex.getter();
  LOBYTE(v7) = v10;
  (*(v1 + 8))(v2, v3);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v121 = v11;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logger.siriPhone);
  *(v0 + 384) = v13;
  v14 = v8;
  v130 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v125 = v14;
  v128 = AssociatedTypeWitness;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v133[0] = v18;
    *v17 = 136315138;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    type metadata accessor for INPerson();
    v20 = Array.description.getter();
    v21 = v14;
    v22 = v20;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v133);

    *(v17 + 4) = v25;
    _os_log_impl(&dword_0, v15, v16, "#ContactNeedsValueFlowStrategy contacts before parsing NeedsValue prompt response: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_26_0(v18);
    OUTLINED_FUNCTION_26_0(v17);
  }

  else
  {
  }

  v27 = *(v0 + 312);
  v26 = *(v0 + 320);
  v28 = *(v0 + 304);
  v29 = (*(v0 + 280) + *(*(v0 + 272) + 36));
  v30 = v29[3];
  v31 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v32 = (*(v31 + 72))(v30, v31);
  Input.parse.getter();
  (*(*v32 + 192))(v26);

  (*(v27 + 8))(v26, v28);
  if (!*(v0 + 144))
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 120);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v56))
    {
      v57 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v57);
      OUTLINED_FUNCTION_14_1(&dword_0, v58, v59, "#ContactNeedsValueFlowStrategy Received unsupported parse type. Skipping..");
      OUTLINED_FUNCTION_12_3();
    }

    v60 = *(v0 + 296);

    *v60 = xmmword_42D060;
    *(v60 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v61 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25(v61);
    PhoneError.logged()(v62);
    outlined destroy of PhoneError(v60);
    swift_willThrow();

    goto LABEL_21;
  }

  outlined init with take of SPHConversation((v0 + 120), v0 + 80);
  v33 = v29[3];
  v34 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v33);
  (*(v34 + 80))(v33, v34);
  v35 = ParameterResolutionRecord.app.getter();
  v36 = v128;
  SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v0 + 80, v35, 0, 0, v128, v37, v38, v39, buf, v115, v117, v118, v119, v121, v123, v125, v128, v130, v131, v133[0]);
  v41 = v40;
  *(v0 + 392) = v40;

  outlined destroy of SKTransformer(v0 + 160);
  if (!v41)
  {
    v63 = *(v0 + 296);
    swift_storeEnumTagMultiPayload();
    v64 = lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_7_25(v64);
    PhoneError.logged()(v65);
    outlined destroy of PhoneError(v63);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
LABEL_21:

    OUTLINED_FUNCTION_11();
LABEL_22:

    return v66();
  }

  v42 = *(v0 + 104);
  v43 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v42);
  v44 = *((*(v43 + 136))(v42, v43) + 16);

  if (v44)
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v46))
    {
      v47 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v47);
      OUTLINED_FUNCTION_14_1(&dword_0, v48, v49, "#ContactNeedsValueFlowStrategy User provided a group name. Rerun slot resolution.");
      OUTLINED_FUNCTION_12_3();
    }

    v50 = v29[3];
    v51 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v50);
    (*(v51 + 88))(v50, v51);
    v52 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
    *(v0 + 456) = ParameterResolutionRecord.intent.getter();
    *(v0 + 464) = ParameterResolutionRecord.app.getter();
    OUTLINED_FUNCTION_24_5();
    v132 = v53 + *v53;
    v54 = swift_task_alloc();
    *(v0 + 472) = v54;
    *v54 = v0;
    v54[1] = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
    v136 = v52;
    OUTLINED_FUNCTION_8_34();

    __asm { BRAA            X8, X16 }
  }

  v68 = *(v0 + 104);
  v69 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v68);
  v70 = *((*(v69 + 24))(v68, v69) + 16);

  if (!v70)
  {
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v85))
    {
      v86 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v86);
      OUTLINED_FUNCTION_14_1(&dword_0, v87, v88, "#ContactNeedsValueFlowStrategy contacts, resolved persons, and smsGroups were empty at prompt. IntentPromptAnswer = nil, reprompt.");
      OUTLINED_FUNCTION_12_3();
    }

    v89 = *(v0 + 248);

    v91 = type metadata accessor for IntentPromptAnswer();
    v92 = v89;
    v93 = 1;
    goto LABEL_44;
  }

  v71 = v36;
  v116 = swift_getAssociatedConformanceWitness();
  v72 = *(v116 + 8);
  *(v0 + 400) = v72;
  v73 = *(v72 + 8);
  *(v0 + 408) = v73;
  *(v0 + 416) = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x11ED000000000000;
  v74 = v73(v71, v72);
  v75 = _swiftEmptyArrayStorage;
  if (v74)
  {
    v75 = v74;
  }

  *(v0 + 240) = v75;
  v124 = v73;
  v76 = v73(v71, v72);
  ContactNeedsValueFlowStrategy.insertNewContacts(_:into:at:)(v76, (v0 + 240), v122);

  (*(v72 + 16))(*(v0 + 240), v71, v72);

  v77 = v126;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  v127 = v77;
  if (os_log_type_enabled(v78, v79))
  {
    bufa = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v133[0] = v120;
    *bufa = 136315138;
    v124(v71, v72);
    type metadata accessor for INPerson();
    v80 = Array.description.getter();
    v82 = v81;

    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v133);

    *(bufa + 4) = v83;
    _os_log_impl(&dword_0, v78, v79, "#ContactNeedsValueFlowStrategy contacts after parsing NeedsValue prompt response: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v120);
    OUTLINED_FUNCTION_26_0(v120);
    OUTLINED_FUNCTION_26_0(bufa);
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  if (PhoneCallNLIntent.isBusinessNameCall()())
  {
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v95))
    {
      v96 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v96);
      OUTLINED_FUNCTION_14_1(&dword_0, v97, v98, "#ContactNeedsValueFlowStrategy NLv4 indicates that contact cannot be resolved on-device. Skipping CRR.");
      OUTLINED_FUNCTION_12_3();
    }

    v99 = (v124)(v129, v72);
    v100 = v99;
    if (v99)
    {
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    }

    else
    {
      v133[1] = 0;
      v133[2] = 0;
    }

    v112 = *(v0 + 248);
    v133[0] = v100;
    v133[3] = v99;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();

    v91 = type metadata accessor for IntentPromptAnswer();
    v92 = v112;
    v93 = 0;
LABEL_44:
    OUTLINED_FUNCTION_0_45(v92, v93, v90, v91);

    OUTLINED_FUNCTION_11();
    goto LABEL_22;
  }

  ParameterResolutionRecord.app.getter();
  OUTLINED_FUNCTION_8_34();
  static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(v101, v102, v103, v104, v105, v106, v129, v116);

  v107 = swift_task_alloc();
  *(v0 + 424) = v107;
  v110 = type metadata accessor for AnyIntentResolver(0, v129, v108, v109);
  *(v0 + 432) = v110;
  WitnessTable = swift_getWitnessTable();
  *v107 = v0;
  v107[1] = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);

  return SKIntentResolver.run(skIntent:nlIntent:)(v127, v0 + 80, v110, WitnessTable);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v4;
  *(v2 + 448) = v0;

  if (v0)
  {
    v5 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  else
  {
    v5 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 440);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 440);
  if (v4)
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 368);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315138;
    v6(v8, v7);
    type metadata accessor for INPerson();
    v11 = Array.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v2, v3, "#ContactNeedsValueFlowStrategy contacts after re-running CRR: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  else
  {
  }

  v15 = (*(v0 + 408))(*(v0 + 368), *(v0 + 400));
  v16 = v15;
  if (v15)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  }

  else
  {
    v25[1] = 0;
    v25[2] = 0;
  }

  v17 = *(v0 + 432);
  v18 = *(v0 + 392);
  v19 = *(v0 + 376);
  v20 = *(v0 + 248);
  v25[0] = v16;
  v25[3] = v15;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  (*(*(v17 - 8) + 8))(v0 + 16, v17);
  v21 = type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_0_45(v20, 0, v22, v21);

  OUTLINED_FUNCTION_11();

  return v23();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  *v4 = *v1;
  v3[60] = v5;
  v3[61] = v0;

  if (v0)
  {
    v6 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  else
  {
    v7 = v3[57];

    v6 = ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[46];
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(*(AssociatedConformanceWitness + 8) + 8))(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  }

  v3 = v0[49];
  v4 = v0[47];
  v5 = v0[31];
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  v6 = type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_0_45(v5, 0, v7, v6);

  OUTLINED_FUNCTION_11();

  return v8();
}

{
  v1 = *(v0 + 456);
  v2 = *(v0 + 392);

  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 392);

  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  OUTLINED_FUNCTION_11();

  return v3();
}

void ContactNeedsValueFlowStrategy.insertNewContacts(_:into:at:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1 && specialized Array.count.getter(a1) && specialized Array.count.getter(*a2) >= a3)
  {

    specialized Array.replaceSubrange<A>(_:with:)(a3, a3, a1);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000000045AB60, &v11);
      _os_log_impl(&dword_0, oslog, v7, "#ContactNeedsValueFlowStrategy %s: Multicardinal index is beyond end of array. Leaving contacts as-is.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }
}

uint64_t ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:), 0, 0);
}

uint64_t ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v4 = ParameterResolutionRecord.app.getter();
  v0[6] = v4;
  v5 = ParameterResolutionRecord.intent.getter();
  v0[7] = v5;
  v6 = ParameterResolutionRecord.result.getter();
  v0[8] = v6;
  OUTLINED_FUNCTION_24_5();
  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  v9 = v0[2];

  return v11(v9, v4, v5, v6, v3, v2);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:), 0, 0);
  }

  else
  {
    v7 = *(v3 + 56);

    OUTLINED_FUNCTION_11();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t ContactNeedsValueFlowStrategy.init(outputProvider:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for ContactNeedsValueFlowStrategy(0, a3, a4, v9) + 36);

  return outlined init with take of SPHConversation(a2, v10);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ContactNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ContactNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance ContactNeedsValueFlowStrategy<A>;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t outlined destroy of PhoneCallNLIntent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactNeedsValueFlowStrategy(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for ContactNeedsValueFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t ContactNeedsValueGuardFlow.FlowState.description.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR) + 48);
      type metadata accessor for Parse();
      OUTLINED_FUNCTION_23_5();
      (*(v10 + 8))(&v7[v9]);
      return 0x6F5472656665642ELL;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    (*(v3 + 8))(v7, a1);
    return 0xD000000000000017;
  }
}

uint64_t static ContactNeedsValueGuardFlow.FlowState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a1;
  v80 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v77 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_5_4();
  v76 = v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v10);
  v86 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __chkstk_darwin(v12 - 8);
  OUTLINED_FUNCTION_16_2();
  v78 = v13;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v14);
  v81 = &v74 - v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  v82 = &v74 - v17;
  OUTLINED_FUNCTION_15_0();
  v84 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7();
  v88 = v18;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_16_2();
  v83 = v20;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  v25 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, a3, a4, v24);
  OUTLINED_FUNCTION_7();
  v27 = v26;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_16_2();
  v85 = v29;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v30);
  v32 = &v74 - v31;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v35 = v34;
  v37 = __chkstk_darwin(v36);
  v39 = &v74 - v38;
  v41 = &v74 + *(v40 + 48) - v38;
  v87 = v27;
  v42 = *(v27 + 16);
  v42(&v74 - v38, v89, v25, v37);
  (v42)(v41, a2, v25);
  v43 = v39;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v75 = v23;
    v51 = v84;
    v52 = v86;
    (v42)(v32, v43, v25);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v88 + 8))(v32, v51);
      goto LABEL_10;
    }

    v55 = *(v88 + 32);
    v56 = v51;
    v55();
    v57 = v83;
    (v55)(v83, v41, v51);
    v58 = v57;
    v59 = v82;
    PluginAction.loggingId.getter();
    v60 = v81;
    PluginAction.loggingId.getter();
    v61 = v59;
    v62 = *(v79 + 48);
    v63 = v52;
    outlined init with copy of UUID?(v61, v52);
    outlined init with copy of UUID?(v60, v52 + v62);
    v64 = v52;
    v65 = v80;
    if (__swift_getEnumTagSinglePayload(v64, 1, v80) == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of PhoneCallNLIntent?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v66 = *(v88 + 8);
      v66(v58, v56);
      v66(v75, v56);
      if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v65) == 1)
      {
        outlined destroy of PhoneCallNLIntent?(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_8;
      }
    }

    else
    {
      v67 = v78;
      outlined init with copy of UUID?(v63, v78);
      if (__swift_getEnumTagSinglePayload(v63 + v62, 1, v65) != 1)
      {
        v69 = v76;
        v70 = v77;
        (*(v77 + 32))(v76, v63 + v62, v65);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        v71 = *(v70 + 8);
        v71(v69, v65);
        outlined destroy of PhoneCallNLIntent?(v81, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of PhoneCallNLIntent?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v72 = *(v88 + 8);
        v72(v83, v56);
        v72(v75, v56);
        v71(v78, v65);
        outlined destroy of PhoneCallNLIntent?(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_18;
      }

      outlined destroy of PhoneCallNLIntent?(v81, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of PhoneCallNLIntent?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v68 = *(v88 + 8);
      v68(v83, v56);
      v68(v75, v56);
      (*(v77 + 8))(v67, v65);
    }

    outlined destroy of PhoneCallNLIntent?(v63, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v47 = 0;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_10;
    }

LABEL_8:
    v47 = 1;
    goto LABEL_18;
  }

  v45 = v85;
  (v42)(v85, v39, v25);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *v45 == *v41;
    v48 = type metadata accessor for Parse();
    OUTLINED_FUNCTION_23_1();
    v50 = *(v49 + 8);
    v50(&v41[v46], v48);
    v50(&v45[v46], v48);
LABEL_18:
    v35 = v87;
    goto LABEL_19;
  }

  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_5();
  (*(v53 + 8))(&v45[v46], v54);
LABEL_10:
  v47 = 0;
  v25 = TupleTypeMetadata2;
LABEL_19:
  (*(v35 + 8))(v43, v25);
  return v47 & 1;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContactNeedsValueGuardFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_47_0();
  v3 = v2;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_47_0();
  v8 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, v5, *(v6 + 88), v7);
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v25 - v16;
  (*(v3 + 136))(v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  (*(v10 + 16))(v13, v17, v8);
  v18 = *v13;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR) + 48);
  if (v18 != 2)
  {
    type metadata accessor for Parse();
    OUTLINED_FUNCTION_23_5();
    (*(v23 + 8))(&v13[v19]);
LABEL_5:
    OUTLINED_FUNCTION_2_0();
    dispatch thunk of AnyValueFlow.exitValue.getter();
    return (*(v10 + 8))(v17, v8);
  }

  v20 = enum case for PromptResult.cancelled<A>(_:);
  type metadata accessor for IntentPromptAnswer();
  type metadata accessor for PromptResult();
  OUTLINED_FUNCTION_23_1();
  (*(v21 + 104))(a1, v20);
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_5();
  (*(v22 + 8))(&v13[v19]);
  return (*(v10 + 8))(v17, v8);
}

uint64_t key path setter for ContactNeedsValueGuardFlow.flowState : <A>ContactNeedsValueGuardFlow<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return ContactNeedsValueGuardFlow.flowState.setter(v8);
}

void ContactNeedsValueGuardFlow.flowState.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v20 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = *(*v5 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v9, v5 + v14, v6);
    swift_getWitnessTable();
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v20, v11, "#ContactNeedsValueGuardFlow state => %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v18 = v20;
  }
}

uint64_t ContactNeedsValueGuardFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_33_0();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_23_1();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t ContactNeedsValueGuardFlow.flowState.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_33_0();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_33_0();
  v8 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, v6, *(v5 + 88), v7);
  (*(*(v8 - 8) + 24))(v1 + v4, a1, v8);
  v9 = swift_endAccess();
  ContactNeedsValueGuardFlow.flowState.didset(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_55();
  return v14(v13);
}

uint64_t ContactNeedsValueGuardFlow.__allocating_init(_:_:app:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, *(v4 + 80), *(v4 + 88), a4);
  OUTLINED_FUNCTION_23_5();
  __chkstk_darwin(v8);
  v10 = &v14[-v9 - 8];
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v14);
  v11 = (*(v4 + 160))(a1, v10, v14, a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t ContactNeedsValueGuardFlow.__allocating_init(flow:state:sharedGlobals:app:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_47_0();
  *(v4 + *(v8 + 104)) = v9;
  OUTLINED_FUNCTION_2_0();
  v11 = *(v10 + 96);
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, v13, *(v12 + 88), v14);
  OUTLINED_FUNCTION_23_1();
  (*(v15 + 32))(v4 + v11, a2);
  OUTLINED_FUNCTION_2_0();
  outlined init with take of PhoneCallFeatureFlagProviding(a3, v4 + *(v16 + 112));
  OUTLINED_FUNCTION_2_0();
  *(v4 + *(v17 + 120)) = a4;
  return v4;
}

uint64_t ContactNeedsValueGuardFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  OUTLINED_FUNCTION_5_4();
  v86 = v6;
  OUTLINED_FUNCTION_15_0();
  v7 = type metadata accessor for PluginAction();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_5_4();
  v87 = v11;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v89 = v13;
  v90 = v12;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_5_4();
  v88 = v14;
  v16 = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, *(v4 + 80), *(v4 + 88), v15);
  OUTLINED_FUNCTION_7();
  v91 = v17;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_16_2();
  v92 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  v94 = &v78[-v21];
  OUTLINED_FUNCTION_15_0();
  v22 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_16_2();
  v85 = v26;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v27);
  v29 = &v78[-v28];
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.siriPhone);
  v83 = *(v24 + 16);
  v84 = v24 + 16;
  v83(v29, a1, v22);
  swift_retain_n();
  v93 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v81 = v9;
    v35 = v34;
    v36 = swift_slowAlloc();
    v82 = a1;
    v80 = v36;
    v95 = v36;
    *v35 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v79 = v33;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v16;
    v39 = v7;
    v41 = v40;
    (*(v24 + 8))(v29, v22);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v41, &v95);
    v7 = v39;
    v16 = v38;

    *(v35 + 4) = v42;
    *(v35 + 12) = 2080;
    OUTLINED_FUNCTION_41_0();
    v44 = v94;
    (*(v43 + 136))();

    v45 = ContactNeedsValueGuardFlow.FlowState.description.getter(v38);
    v47 = v46;

    (*(v91 + 8))(v44, v38);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v95);

    *(v35 + 14) = v48;
    _os_log_impl(&dword_0, v32, v79, "#ContactNeedsValueGuardFlow on(input:) %s, state = %s", v35, 0x16u);
    v49 = v80;
    swift_arrayDestroy();
    a1 = v82;
    OUTLINED_FUNCTION_26_0(v49);
    v50 = v35;
    v9 = v81;
    OUTLINED_FUNCTION_26_0(v50);
  }

  else
  {

    (*(v24 + 8))(v29, v22);
    v44 = v94;
  }

  v51 = v22;
  OUTLINED_FUNCTION_41_0();
  v53 = v92;
  (*(v52 + 136))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR);
      (*(v89 + 8))(v53 + *(v55 + 48), v90);
      goto LABEL_10;
    }

    v64 = v88;
    Input.parse.getter();
    v65 = static ExecutionPath.choosePath(for:sharedGlobals:app:)(v64, (v2 + *(*v2 + 112)), *(v2 + *(*v2 + 120)));
    (*(v89 + 8))(v64, v90);
    if (v65 != 3)
    {
      if (v65 == 4)
      {
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_51_0(v68))
        {
          v69 = v51;
          v70 = OUTLINED_FUNCTION_65_0();
          *v70 = 0;
          OUTLINED_FUNCTION_36_0(&dword_0, v71, v72, "#ContactNeedsValueGuardFlow on(input:) .deferToEmergencyPlugin");
          v73 = v70;
          v51 = v69;
          OUTLINED_FUNCTION_26_0(v73);
        }

        v83(v85, a1, v51);
        UUID.init()();
        v74 = v87;
        PluginAction.init(flowHandlerId:input:loggingId:)();
        (*(v9 + 16))(v44, v74, v7);
        swift_storeEnumTagMultiPayload();
        ContactNeedsValueGuardFlow.flowState.setter(v44);
        (*(v9 + 8))(v74, v7);
      }

      else
      {
        if (v65 == 5)
        {
          goto LABEL_18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR);
        *v44 = v65;
        Input.parse.getter();
        swift_storeEnumTagMultiPayload();
        ContactNeedsValueGuardFlow.flowState.setter(v44);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v77);
          _os_log_impl(&dword_0, v75, v76, "#ContactNeedsValueGuardFlow on(input:) .deferToServer", v16, 2u);
          OUTLINED_FUNCTION_12_3();
        }
      }

      v62 = 1;
      return v62 & 1;
    }

LABEL_18:
    v56 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_51_0(v66))
    {
      goto LABEL_13;
    }

    v60 = OUTLINED_FUNCTION_65_0();
    *v60 = 0;
    v61 = "#ContactNeedsValueGuardFlow on(input:) delegate to wrapped flow";
    goto LABEL_12;
  }

  (*(v91 + 8))(v53, v16);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  ContactNeedsValueGuardFlow.flowState.setter(v44);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v57))
  {
    v60 = OUTLINED_FUNCTION_65_0();
    *v60 = 0;
    v61 = "#ContactNeedsValueGuardFlow on(input:) fallback (to server or Emergency plugin) did not succeed, re-run wrapped flow.";
LABEL_12:
    OUTLINED_FUNCTION_36_0(&dword_0, v58, v59, v61);
    OUTLINED_FUNCTION_26_0(v60);
  }

LABEL_13:

  OUTLINED_FUNCTION_41_0();
  v62 = dispatch thunk of AnyValueFlow.on(input:)();
  return v62 & 1;
}

uint64_t ContactNeedsValueGuardFlow.execute()(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *v1;
  v4 = type metadata accessor for Parse();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for PluginAction();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(0, *(v3 + 80), *(v3 + 88), v6);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(ContactNeedsValueGuardFlow.execute(), 0, 0);
}

uint64_t ContactNeedsValueGuardFlow.execute()()
{
  OUTLINED_FUNCTION_2_0();
  (*(v1 + 136))();
  OUTLINED_FUNCTION_55();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 192), *(v0 + 160));
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v24))
    {
      v25 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v25);
      OUTLINED_FUNCTION_14_1(&dword_0, v26, v27, "#ContactNeedsValueGuardFlow execute() Request needs execution of emergency resource flow on device. Deferring to Emergency plugin.");
      OUTLINED_FUNCTION_12_3();
    }

    static ExecuteResponse.redirect(nextPluginAction:)();
    v28 = OUTLINED_FUNCTION_55();
    v29(v28);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *v3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMd, &_s27PhoneCallFlowDelegatePlugin13ExecutionPathO16FallbackLocationO_07SiriKitC05ParseOtMR);
    (*(v6 + 32))(v4, &v3[*(v8 + 48)], v5);
    if (v7 == 2)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriPhone);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v11))
      {
        v12 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v12);
        OUTLINED_FUNCTION_14_1(&dword_0, v13, v14, "#ContactNeedsValueGuardFlow execute() deferring to CompositionFlow");
        OUTLINED_FUNCTION_12_3();
      }

      v16 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 128);
      v18 = *(v0 + 136);
      v19 = *(v0 + 120);

      type metadata accessor for BusinessCompositionFlow(0);
      (*(v18 + 16))(v16, v15, v17);
      outlined init with copy of SignalProviding(v19 + *(*v19 + 112), v0 + 56);
      *(v0 + 104) = BusinessCompositionFlow.__allocating_init(parse:sharedGlobals:)(v16, (v0 + 56));
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type BusinessCompositionFlow and conformance BusinessCompositionFlow, type metadata accessor for BusinessCompositionFlow, &protocol conformance descriptor for BusinessCompositionFlow);
      static ExecuteResponse.complete<A>(next:)();

      v20 = OUTLINED_FUNCTION_55();
      v21(v20);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v41))
      {
        v42 = OUTLINED_FUNCTION_65_0();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v5, "#ContactNeedsValueGuardFlow execute() Returning unhandled due to needsServerExecution", v42, 2u);
        OUTLINED_FUNCTION_26_0(v42);
      }

      v43 = *(v0 + 152);
      v44 = *(v0 + 128);
      v45 = *(v0 + 136);
      v46 = *(v0 + 120);

      outlined init with copy of SignalProviding(v46 + *(*v46 + 112), v0 + 16);
      type metadata accessor for RedirectToServerFlow();
      swift_allocObject();
      *(v0 + 96) = RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(v7, (v0 + 16), 0);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, type metadata accessor for RedirectToServerFlow, &protocol conformance descriptor for RedirectToServerFlow);
      static ExecuteResponse.ongoing<A>(next:)();

      (*(v45 + 8))(v43, v44);
    }

LABEL_26:

    v47 = *(v0 + 8);

    return v47();
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v32))
  {
    v33 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v33);
    OUTLINED_FUNCTION_14_1(&dword_0, v34, v35, "#ContactNeedsValueGuardFlow execute() Request needs execution on device. Moving onto NeedsValue flow strategy.");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_41_0();
  v48 = (&async function pointer to dispatch thunk of AnyValueFlow.execute() + async function pointer to dispatch thunk of AnyValueFlow.execute());
  v36 = swift_task_alloc();
  *(v0 + 200) = v36;
  *v36 = v0;
  v36[1] = ContactNeedsValueGuardFlow.execute();
  v37 = *(v0 + 112);

  return v48(v37);
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(ContactNeedsValueGuardFlow.execute(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ContactNeedsValueGuardFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for ContactNeedsValueGuardFlow(0, v3, *(v2 + 88), v4);
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance ContactNeedsValueGuardFlow<A>(uint64_t a1)
{
  v6 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return v6(a1);
}

uint64_t type metadata completion function for ContactNeedsValueGuardFlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContactNeedsValueGuardFlow.FlowState(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for ContactNeedsValueGuardFlow.FlowState(uint64_t a1)
{
  type metadata accessor for PluginAction();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (ExecutionPath.FallbackLocation, Parse)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (ExecutionPath.FallbackLocation, Parse)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ExecutionPath.FallbackLocation, Parse))
  {
    type metadata accessor for Parse();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ExecutionPath.FallbackLocation, Parse));
    }
  }
}

uint64_t ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, v12, v16);
  v19 = OUTLINED_FUNCTION_1_12();
  v21 = v20(v19);
  if (v21 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_2;
  }

  if (v21 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v24 = OUTLINED_FUNCTION_1_12();
    v25(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_1();
    (*(v26 + 8))(v18);
    goto LABEL_5;
  }

  if (v21 == enum case for Parse.directInvocation(_:))
  {
    v31 = OUTLINED_FUNCTION_1_12();
    v32(v31);
    (*(v8 + 32))(v11, v18, v6);
    v30 = ContactPromptResponseParser.parseResponse(from:)();
    (*(v8 + 8))(v11, v6);
  }

  else
  {
    if (v21 == enum case for Parse.NLv4IntentOnly(_:) || v21 == enum case for Parse.uso(_:))
    {
LABEL_2:
      v22 = OUTLINED_FUNCTION_1_12();
      v23(v22);
LABEL_5:
      v27 = v3[3];
      v28 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v27);
      v29 = (*(v28 + 72))(v27, v28);
      (*(*v29 + 192))(&v44, a1);

      if (v45)
      {
        outlined init with take of SPHConversation(&v44, v46);
        v30 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v46, a2 & 1);
        __swift_destroy_boxed_opaque_existential_1(v46);
        goto LABEL_11;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v44, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      goto LABEL_8;
    }

    if (v21 != enum case for Parse.empty(_:))
    {
      v42 = OUTLINED_FUNCTION_1_12();
      v43(v42);
LABEL_8:
      v30 = 5;
      goto LABEL_11;
    }

    v30 = 8;
  }

LABEL_11:
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
    v46[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045AC00, v46);
    *(v36 + 12) = 2080;
    if (v30 == 8)
    {
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v38 = ContactPromptResponse.debugDescription.getter(v30);
      v37 = v39;
    }

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v46);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_0, v34, v35, "#ContactPromptResponseParser %s: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  return v30;
}

uint64_t ContactPromptResponse.debugDescription.getter(uint64_t a1)
{
  switch(a1)
  {
    case 5u:
      return 0x6E776F6E6B6E752ELL;
    case 6u:
      return 0xD000000000000015;
    case 7u:
      return 0x6F4374657365722ELL;
  }

  v2 = a1;
  _StringGuts.grow(_:)(17);

  strcpy(v5, ".confirmation(");
  v3._countAndFlagsBits = PhoneCallConfirmation.rawValue.getter(v2);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return v5[0];
}

uint64_t ContactPromptResponseParser.parseResponse(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  static CommonDirectAction.from(_:)((&v10 - v4));
  v6 = type metadata accessor for CommonDirectAction(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v5, v2, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v8 = 0;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 7)
  {
    outlined destroy of CommonDirectAction(v2);
LABEL_7:
    v8 = 8;
    goto LABEL_8;
  }

  v8 = 1;
LABEL_8:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  return v8;
}

uint64_t ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(void *a1, char a2)
{
  v3 = v2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 64))(v6, v7);
  if (result != 5)
  {
    return result;
  }

  if ((a2 & 1) == 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), !PhoneCallNLIntent.isCallWithReference()()))
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = *((*(v15 + 24))(v14, v15) + 16);

    if (v16)
    {
      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      v19 = (*(v18 + 24))(v17, v18);
      v20 = v19 + 32;
      v21 = -*(v19 + 16);
      v22 = -1;
      while (1)
      {
        if (v21 + v22 == -1)
        {

          return 1;
        }

        if (++v22 >= *(v19 + 16))
        {
          break;
        }

        outlined init with copy of SignalProviding(v20, v41);
        v23 = v42;
        v24 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        if (((*(v24 + 368))(v23, v24) & 0xFF00) == 0x200 || (v25 = v42, v26 = v43, __swift_project_boxed_opaque_existential_1(v41, v42), v27 = (*(v26 + 368))(v25, v26), (v27 & 0xFF00) == 0x200))
        {

          __swift_destroy_boxed_opaque_existential_1(v41);
          goto LABEL_17;
        }

        v20 += 40;
        v28 = v27 & 0xFFFFFF;
        __swift_destroy_boxed_opaque_existential_1(v41);
        if ((v28 & 0x10000) == 0)
        {

          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_17:
    v29 = v3[3];
    v30 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v29);
    v31 = (*(v30 + 72))(v29, v30);
    (*(*v31 + 224))(v41);

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v41, v34, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    if (v35)
    {
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v36, &v37, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      outlined destroy of TransformationResult(v34);
      if (*(&v38 + 1))
      {
        outlined init with take of SPHConversation(&v37, v40);
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        outlined init with copy of SignalProviding(v40, v34);
        PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)();
        v33 = v32;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(v40);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
        if (v33)
        {
          return 6;
        }

        return 8;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
      v37 = 0u;
      v38 = 0u;
      v39 = 0;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v37, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return 8;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_28:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045AC00, v41);
    _os_log_impl(&dword_0, v10, v11, "#ContactPromptResponseParser %s: treat call + reference as a confirmation to proceed the call", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return 0;
}

unsigned __int8 *getEnumTagSinglePayload for ContactPromptResponse(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
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
    v2 = a2 + 7;
    if (a2 + 7 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactPromptResponse(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 >= 0xF9)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF8)
  {
    v7 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for ContactPromptResponse(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ContactPromptResponse(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactPromptResponseParser(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ContactPromptResponseParser(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_30;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v4);
    if (!v6)
    {
      v8 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v5);
      if (!v8)
      {
        goto LABEL_25;
      }

      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_24;
        }
      }

      else if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v11 = *(v9 + 32);
      }

      outlined bridged method (ob) of @objc INPerson.contactIdentifier.getter(v11);
      if (!v12 || (v10 ? (v13 = _CocoaArrayWrapper.endIndex.getter()) : (v13 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8))), , v13 != 1))
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v7 = specialized Set._Variant.insert(_:)();

    if (!v7)
    {

      continue;
    }

LABEL_25:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void specialized INPersonContainingIntent.clearContactsSlotMatches()()
{
  specialized INPersonContainingIntent.clearContactsSlotMatches()(outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter, INStartCallIntent.overwriteContacts(newContacts:));
}

{
  specialized INPersonContainingIntent.clearContactsSlotMatches()(outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter, INStartAudioCallIntent.overwriteContacts(newContacts:));
}

{
  specialized INPersonContainingIntent.clearContactsSlotMatches()(outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter, INStartVideoCallIntent.overwriteContacts(newContacts:));
}

void specialized INPersonContainingIntent.clearContactsSlotMatches()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_136_0();
  v4 = v3;
  v6 = v5(v2);
  if (!v6)
  {
    OUTLINED_FUNCTION_86_3();
    return;
  }

  v7 = v6;
  v8 = specialized Array.count.getter(v6);
  if (v8)
  {
    v9 = v8;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v9 < 0)
    {
      __break(1u);
      return;
    }

    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      ++v10;
      outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(_swiftEmptyArrayStorage, v11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v10);
  }

  v4(_swiftEmptyArrayStorage);
  OUTLINED_FUNCTION_86_3();
}

void specialized INPersonContainingIntent.clearContactsSlotMatches()(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Swift::OpaquePointer newContacts, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_136_0();
  INSearchCallHistoryIntent.contacts.getter();
  if (!v22)
  {
    OUTLINED_FUNCTION_86_3();
    return;
  }

  v23 = v22;
  v24 = specialized Array.count.getter(v22);
  if (v24)
  {
    v25 = v24;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v25 < 0)
    {
      __break(1u);
      return;
    }

    v26 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      ++v26;
      v28 = OUTLINED_FUNCTION_123();
      outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v28, v29);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v25 != v26);
  }

  INSearchCallHistoryIntent.overwriteContacts(newContacts:)(_swiftEmptyArrayStorage);
  OUTLINED_FUNCTION_86_3();
}

uint64_t static ContactResolution.dedupeContacts(contacts:)(uint64_t a1)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_42();
    v17 = OUTLINED_FUNCTION_62();
    *v1 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v6 = Array.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v17);
    OUTLINED_FUNCTION_113_0();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_22_8();
    OUTLINED_FUNCTION_52();
  }

  v17 = _swiftEmptySetSingleton;

  specialized _ArrayProtocol.filter(_:)(v13);
  v15 = v14;

  return v15;
}

void static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  LOBYTE(v19) = a10 & 1;
  specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(a1, a3, a4, a5, a6, a7, a8, a9, v19, a11, a12, v12, ObjectType, a2, v20, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31);
}

void SiriPhoneContact.asSiriInferenceContact.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  v90 = type metadata accessor for ContactHandle.HandleType();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  v89 = v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_91();
  v88 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_21(v19);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  OUTLINED_FUNCTION_21(v23);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v24);
  v26 = &v80 - v25;
  ContactQuery.init()();
  v92 = v6;
  if (SiriPhoneContact.getFullName(filteredAlternatives:)(1).value._object)
  {
    ContactQuery.fullName.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getPrefixName()().value._object)
  {
    ContactQuery.namePrefix.setter();
  }

  v27 = OUTLINED_FUNCTION_48_9();
  if (SiriPhoneContact.getFirstName(filteredAlternatives:)(v27).value._object)
  {
    ContactQuery.givenName.setter();
  }

  v28 = OUTLINED_FUNCTION_48_9();
  if (SiriPhoneContact.getMiddleName(filteredAlternatives:)(v28).value._object)
  {
    ContactQuery.middleName.setter();
  }

  v29 = OUTLINED_FUNCTION_48_9();
  if (SiriPhoneContact.getLastName(filteredAlternatives:)(v29).value._object)
  {
    ContactQuery.familyName.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getPostfixName()().value._object)
  {
    ContactQuery.nameSuffix.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getNickName()().value._object)
  {
    ContactQuery.nickname.setter();
  }

  v30 = *(v4 + 416);
  v91 = v4;
  v30(v92, v4);
  if (v31)
  {
    OUTLINED_FUNCTION_70_1();
    v32 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
    OUTLINED_FUNCTION_19_0();
    ContactRelationshipQuery.init(label:fromContact:)();
    v33 = type metadata accessor for ContactRelationshipQuery();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v33);
    ContactQuery.relationship.setter();
  }

  if (SiriPhoneContact.getOrganzationName()().value._object)
  {
    ContactQuery.organizationName.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.isMe()())
  {
    ContactQuery.isMe.setter();
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getContactName()().value._object)
  {
    v34 = ContactQuery.givenName.getter();
    OUTLINED_FUNCTION_111_1(v34, v35);
    OUTLINED_FUNCTION_61_9();
    if (v36 || (v37 = ContactQuery.middleName.getter(), OUTLINED_FUNCTION_111_1(v37, v38), OUTLINED_FUNCTION_61_9(), v39) || (v40 = ContactQuery.familyName.getter(), OUTLINED_FUNCTION_111_1(v40, v41), OUTLINED_FUNCTION_61_9(), v42))
    {
    }

    else
    {
      ContactQuery.givenName.setter();
    }
  }

  v43 = SiriPhoneContact.getHandleType()();
  if (v43.value._object)
  {
    v84 = v2;
    v85 = v12;
    v86 = v8;
    v83 = v43;
    v98 = v43;
    v82 = lazy protocol witness table accessor for type String and conformance String();
    v44 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
    v45 = 0;
    v93 = *(v44 + 16);
    v46 = v44 + 56;
    v87 = _swiftEmptyArrayStorage;
    v81 = v44 + 56;
LABEL_28:
    v47 = (v46 + 32 * v45);
    while (v93 != v45)
    {
      if (v45 >= *(v44 + 16))
      {
        __break(1u);
LABEL_71:
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_60:
        v73 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v73, static Logger.siriPhone);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v75))
        {
          v76 = OUTLINED_FUNCTION_65_0();
          *v76 = 0;
          _os_log_impl(&dword_0, v74, v75, "#ContactResolution received AmbiguousHandle. Setting handleType as unknown", v76, 2u);
          OUTLINED_FUNCTION_26_0(v76);
        }

        v70 = v88;
        v72 = v90;
        (*(v14 + 8))(v88, v90);
        (v1)(v70, enum case for ContactHandle.HandleType.unknown(_:), v72);
        goto LABEL_63;
      }

      v48 = v14;
      v49 = *(v47 - 3);
      v1 = *(v47 - 2);
      v51 = *(v47 - 1);
      v50 = *v47;
      v52 = v49 >> 16;
      v53 = v1 >> 16;
      if (v51 != 0x656E6F6870 || v50 != 0xE500000000000000 || v52 != 0 || v53 != 5)
      {
        OUTLINED_FUNCTION_100_1();
        if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
        {
          v57 = v51 == 0x6C69616D65 && v50 == 0xE500000000000000;
          if (!v57 || v52 || v53 != 5)
          {
            OUTLINED_FUNCTION_100_1();
            if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
            {

              countAndFlagsBits = v87;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v98.value._countAndFlagsBits = countAndFlagsBits;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(countAndFlagsBits + 16) + 1, 1);
                countAndFlagsBits = v98.value._countAndFlagsBits;
              }

              v61 = *(countAndFlagsBits + 16);
              v60 = *(countAndFlagsBits + 24);
              if (v61 >= v60 >> 1)
              {
                v63 = OUTLINED_FUNCTION_76(v60);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v61 + 1, 1);
                countAndFlagsBits = v98.value._countAndFlagsBits;
              }

              ++v45;
              *(countAndFlagsBits + 16) = v61 + 1;
              v87 = countAndFlagsBits;
              v62 = (countAndFlagsBits + 32 * v61);
              v62[4] = v49;
              v62[5] = v1;
              v62[6] = v51;
              v62[7] = v50;
              v14 = v48;
              v46 = v81;
              goto LABEL_28;
            }
          }
        }
      }

      v47 += 4;
      ++v45;
      v14 = v48;
    }

    v98.value._countAndFlagsBits = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v64 = Sequence<>.joined(separator:)();
    v66 = v65;

    v98.value._countAndFlagsBits = v64;
    v98.value._object = v66;
    v96 = 0x6C616E6F73726570;
    v97 = 0xE800000000000000;
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v67;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v98 = v83;
    v96 = 0x6C69616D65;
    v97 = 0xE500000000000000;
    v68 = StringProtocol.contains<A>(_:)();

    v1 = *(v14 + 104);
    v69 = &enum case for ContactHandle.HandleType.email(_:);
    if ((v68 & 1) == 0)
    {
      v69 = &enum case for ContactHandle.HandleType.phone(_:);
    }

    v70 = v88;
    v71 = v90;
    (v1)(v88, *v69, v90);
    v72 = v71;
    if ((*(v91 + 344))(v92))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_60;
    }

LABEL_63:
    (*(v14 + 16))(v89, v70, v72);
    OUTLINED_FUNCTION_5_26();
    ContactHandleQuery.init(type:label:value:)();
    v77 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_84_3(v77);
    ContactQuery.handle.setter();
    (*(v14 + 8))(v70, v72);
  }

  OUTLINED_FUNCTION_19_18();
  if (SiriPhoneContact.getPhoneNumber()().value._object)
  {
    OUTLINED_FUNCTION_70_1();
    (*(v14 + 104))(v89, enum case for ContactHandle.HandleType.phone(_:), v90);
    OUTLINED_FUNCTION_95_1();
    v78 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_84_3(v78);
    ContactQuery.handle.setter();
  }

  if (SiriPhoneContact.getEmailAddress()().value._object)
  {
    OUTLINED_FUNCTION_70_1();
    (*(v14 + 104))(v89, enum case for ContactHandle.HandleType.email(_:), v90);
    OUTLINED_FUNCTION_95_1();
    v79 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_84_3(v79);
    ContactQuery.handle.setter();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t ContactQuery.isEmpty.getter()
{
  if (one-time initialization token for emptyQuery != -1)
  {
    OUTLINED_FUNCTION_13_22();
    swift_once();
  }

  v0 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_123_1(v0, static ContactQuery.emptyQuery);
  if (static ContactQuery.== infix(_:_:)())
  {
    return 1;
  }

  if (one-time initialization token for emptyNLv4Query != -1)
  {
    OUTLINED_FUNCTION_12_29();
    swift_once();
  }

  OUTLINED_FUNCTION_123_1(v0, static ContactQuery.emptyNLv4Query);

  return static ContactQuery.== infix(_:_:)();
}

uint64_t closure #1 in static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO08populateafG005phoneB8NLIntent13contextNLType3app23resolvedSiriKitContacts17callStateProviderSo020FLOWSchemaFLOWDomainG0CSgAA0abL0_p_AA0afgN0O0Q13AppResolution0Y0CSgSay0Q9Inference08ResolvedqR7ContactVGAA0bU9Providing_ptFZTf4nnnnen_nAA0buV0V_Tt4g5(a3, 1, a2, a4, &static CallStateProvider.instance);
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

void static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)()
{
  OUTLINED_FUNCTION_92_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_135_0();

  specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)();
}

uint64_t ContactResolution.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t ContactResolution.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

void static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)()
{
  OUTLINED_FUNCTION_92_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_135_0();

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)();
}

void closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_66();
  v68 = v27;
  v69 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for PhoneError(v34);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_4();
  v38 = (v37 - v36);
  if (v33)
  {
    swift_errorRetain();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v66 = v31;
      v42 = OUTLINED_FUNCTION_42();
      v67 = v29;
      v65 = swift_slowAlloc();
      v70 = v65;
      *v42 = 136315138;
      swift_getErrorValue();
      v43 = Error.localizedDescription.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v70);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_0, v40, v41, "#EmergencyContactResolution Error gathering emergency contacts: %s", v42, 0xCu);
      v25 = v65;
      __swift_destroy_boxed_opaque_existential_1(v65);
      OUTLINED_FUNCTION_26_0(v65);
      OUTLINED_FUNCTION_26_0(v42);
    }

    *v38 = v33;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    swift_allocError();
    OUTLINED_FUNCTION_70_1();
    swift_errorRetain();
    PhoneError.logged()(v25);
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    v69(v40, 1);
  }

  else
  {
    if (v24)
    {
      v46 = v24;
    }

    else
    {
      v46 = _swiftEmptyArrayStorage;
    }

    v47 = one-time initialization token for siriPhone;

    if (v47 != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v48 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v48, static Logger.siriPhone);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v50))
    {
      v51 = OUTLINED_FUNCTION_42();
      *v51 = 134217984;
      *(v51 + 4) = specialized Array.count.getter(v46);

      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v52, v53, v54, v55, v51, 0xCu);
      OUTLINED_FUNCTION_26_0(v51);
    }

    else
    {
    }

    __chkstk_darwin(v56);
    *(&v64 - 2) = a21;
    *(&v64 - 1) = a24;
    v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo19_HKEmergencyContactCG_So8INPersonCs5NeverOTg5(partial apply for closure #1 in closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:), (&v64 - 4), v46);

    if (specialized Array.count.getter(v57) >= 2)
    {
      ObjectType = swift_getObjectType();
      v59 = (*(a23 + 8))(ObjectType, a23);
      if (v59)
      {
        v60 = v59;
        if (specialized Array.count.getter(v59))
        {
          OUTLINED_FUNCTION_46_7();
          if (a22)
          {
            OUTLINED_FUNCTION_140_0();
          }

          else
          {
            v61 = *(v60 + 32);
          }

          OUTLINED_FUNCTION_40_0();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_426260;
          outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v57, a22);
          v63 = a22;
          OUTLINED_FUNCTION_5();

          *(v62 + 32) = a22;

          v57 = v62;
        }

        else
        {
        }
      }
    }

    v69(v57, 0);
  }

  Signpost.OpenSignpost.end()();
  OUTLINED_FUNCTION_65();
}

id static EmergencyContactResolution.makeINPerson(emergencyContact:locale:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_phoneNumberLabel);
  if (v7)
  {
    v29[0] = v6;
    v29[1] = v7;
    closure #1 in static EmergencyContactResolution.makeINPerson(emergencyContact:locale:)(v29, &v28);

    v8 = v28;
  }

  else
  {
    v8 = 0;
  }

  outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_relationship);
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_phoneNumber);
  v13 = v12;
  v14 = objc_allocWithZone(INPersonHandle);
  v15 = v8;
  v16 = @nonobjc INPersonHandle.init(value:type:label:)(v11, v13, 2, v8);
  v17 = type metadata accessor for PersonNameComponents();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v17);
  v18 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_name);
  v20 = v19;
  v21 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(a1, &selRef_nameContactIdentifier);
  v23 = v22;
  v24 = objc_allocWithZone(INPerson);
  v25 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v16, v5, v18, v20, 0, v21, v23, 0, 0, v10);

  return v25;
}

void EmergencyContactResolution.populateEmergencyContacts(sirikitIntent:locale:medicalIDStore:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v34 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = (v8 - v7);
  v33 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v17 = dispatch_semaphore_create(0);
  swift_getObjectType();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v3;
  v18[4] = v1;
  v19 = v17;
  v20 = v3;
  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)();

  static DispatchTime.now()();
  *v9 = 300;
  (*(v5 + 104))(v9, enum case for DispatchTimeInterval.milliseconds(_:), v34);
  + infix(_:_:)();
  v21 = OUTLINED_FUNCTION_5_26();
  v22(v21);
  v23 = *(v11 + 8);
  v23(v15, v33);
  OS_dispatch_semaphore.wait(timeout:)();
  v24 = OUTLINED_FUNCTION_101_1();
  (v23)(v24);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v25, static Logger.siriPhone);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_21_8(v27))
  {
    v28 = OUTLINED_FUNCTION_42();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v35);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_0, v26, v33, "#ContactResolution Timeout result (set at 300ms): %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_26_0(v29);
    OUTLINED_FUNCTION_26_0(v28);
  }

  OUTLINED_FUNCTION_65();
}

Swift::Int closure #1 in EmergencyContactResolution.populateEmergencyContacts(sirikitIntent:locale:medicalIDStore:)(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((a2 & 1) == 0 && specialized Array.count.getter(a1))
  {
    ObjectType = swift_getObjectType();
    (*(*(*(a5 + 8) + 8) + 16))(a1, ObjectType);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = a4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = swift_getObjectType();
    (*(*(*(a5 + 8) + 8) + 8))(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "#ContactResolution Emergency contact conversion: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return OS_dispatch_semaphore.signal()();
}

void closure #1 in static EmergencyContactResolution.makeINPerson(emergencyContact:locale:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  v15[0] = Locale.identifier.getter();
  v15[1] = v6;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v16 = v5;
  v7 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
  v9 = v8;

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
    v15[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v15);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v15);
    _os_log_impl(&dword_0, v11, v12, "#ContactResolution Converted originalLabel: %s to %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = String._bridgeToObjectiveC()();

  *a2 = v14;
}

uint64_t @nonobjc HKMedicalIDStore.fetchMedicalIDEmergencyContacts(completion:)(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [_HKEmergencyContact]?, @guaranteed Error?) -> ();
  v5[3] = &block_descriptor_2;
  v3 = _Block_copy(v5);

  [v2 fetchMedicalIDEmergencyContactsWithCompletion:v3];
  _Block_release(v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [_HKEmergencyContact]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _HKEmergencyContact, _HKEmergencyContact_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t one-time initialization function for emptyQuery(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for ContactQuery();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t closure #1 in variable initialization expression of static ContactQuery.emptyNLv4Query@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
  if (v8[1])
  {
    UsoEntity_common_Person.toContactQuery()();

    v5 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  else
  {
    v7 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    ContactQuery.init()();

    result = __swift_getEnumTagSinglePayload(v4, 1, v7);
    if (result != 1)
    {
      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    }
  }

  return result;
}

uint64_t ContactQuery.init(isMe:phoneLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ContactHandle.HandleType();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  ContactQuery.init()();
  ContactQuery.isMe.setter();
  (*(v5 + 104))(v9, enum case for ContactHandle.HandleType.phone(_:), v3);
  ContactHandleQuery.init(type:label:value:)();
  v14 = type metadata accessor for ContactHandleQuery();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  return ContactQuery.handle.setter();
}

void specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)()
{
  OUTLINED_FUNCTION_66();
  v43 = v1;
  v44 = v0;
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v42 = v8;
  v9 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v17 = v16;
  v36 = v18;
  v20 = v19;
  v22 = v21;
  v23 = v5[4];
  v39 = v5[3];
  v37 = v23;
  v38 = __swift_project_boxed_opaque_existential_1(v5, v39);
  (*(v11 + 16))(v15, v7, v9);
  v24 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = v17;
  *(v26 + 24) = v27;
  *(v26 + 32) = v20;
  *(v26 + 40) = v22;
  *(v26 + 41) = HIBYTE(v22) & 1;
  v28 = v41;
  *(v26 + 48) = v40;
  *(v26 + 56) = v28;
  (*(v11 + 32))(v26 + v24, v15, v9);
  v29 = (v26 + v25);
  v31 = v42;
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
  v32 = v37;
  v33 = *(v37 + 8);

  v34 = v31;
  v33(partial apply for closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:), v26, v39, v32);

  OUTLINED_FUNCTION_65();
}

void specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_66();
  v27 = v26;
  v269 = v28;
  v30 = v29;
  v32 = v31;
  v265 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v250 = type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_7();
  v251 = v40;
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_5_4();
  v43 = OUTLINED_FUNCTION_13(v42);
  v247 = type metadata accessor for PhoneError(v43);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_12_5();
  v47 = (v45 - v46);
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v49);
  v264 = type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  v262 = v50;
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_5_4();
  v263 = v52;
  OUTLINED_FUNCTION_15_0();
  v258 = type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  v257 = v53;
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_5_4();
  v260 = v55;
  OUTLINED_FUNCTION_15_0();
  v56 = type metadata accessor for ContactResolverDomain();
  v57 = OUTLINED_FUNCTION_21(v56);
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v58);
  v261 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v259 = v59;
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v62);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v65 = OUTLINED_FUNCTION_21(v64);
  __chkstk_darwin(v65);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_91();
  v271 = v67;
  OUTLINED_FUNCTION_15_0();
  v272 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v268 = v68;
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v70);
  OUTLINED_FUNCTION_91();
  v270 = v71;
  v72 = OUTLINED_FUNCTION_15_0();
  v266 = type metadata accessor for ContactResolverConfigHashable(v72);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v73);
  OUTLINED_FUNCTION_16_2();
  v267 = v74;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v75);
  v77 = &v234 - v76;
  if (v35)
  {
    ObjectType = swift_getObjectType();
    v79 = dynamic_cast_existential_1_conditional(v39, ObjectType, &protocol descriptor for CallingIntent);
    v81 = one-time initialization token for siriPhone;
    if (v79)
    {
      v82 = v79;
      v83 = v80;
      v84 = v39;
      if (v81 != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v85 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v85, static Logger.siriPhone);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_21_8(v87))
      {
        v88 = OUTLINED_FUNCTION_65_0();
        *v88 = 0;
        OUTLINED_FUNCTION_34_5();
        _os_log_impl(v89, v90, v91, v92, v93, 2u);
        OUTLINED_FUNCTION_26_0(v88);
      }

      v94 = [objc_allocWithZone(HKHealthStore) init];
      v95 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v94];

      v275 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
      v276 = &protocol witness table for HKMedicalIDStore;
      *&v274 = v95;
      (*(*a23 + 80))(v82, v83, v32, &v274);

      __swift_destroy_boxed_opaque_existential_1(&v274);
      goto LABEL_63;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v96 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v96, static Logger.siriPhone);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v98))
    {
      v99 = OUTLINED_FUNCTION_65_0();
      *v99 = 0;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v100, v101, v102, v103, v99, 2u);
      OUTLINED_FUNCTION_26_0(v99);
    }
  }

  v104 = OUTLINED_FUNCTION_104();
  if (specialized static ContactResolution.shouldSkipContactResolution(nlIntent:skIntent:contactQueries:)(v104, v105, v37, v106, a25, a26))
  {
LABEL_63:
    OUTLINED_FUNCTION_65();
    return;
  }

  v241 = v37;
  v235 = v30;
  v248 = a26;
  v107 = _swiftEmptyArrayStorage;
  v236 = v27;
  v234 = v47;
  v108 = v265;
  if (v265)
  {
    App.appIdentifier.getter();
    v109 = v269;
    if (v110)
    {
      OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_76_3();
      v107 = v111;
      v113 = v111[2];
      v112 = v111[3];
      if (v113 >= v112 >> 1)
      {
        OUTLINED_FUNCTION_76(v112);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v107 = v233;
      }

      v107[2] = v113 + 1;
      v114 = &v107[2 * v113];
      v114[4] = a26;
      v114[5] = v108;
    }
  }

  else
  {
    v109 = v269;
  }

  v244 = v77;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v115 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v117;

  v119 = v109[4];
  v120 = OUTLINED_FUNCTION_5_26();
  __swift_project_boxed_opaque_existential_1(v120, v121);
  v122 = OUTLINED_FUNCTION_40_0();
  v123(v122, v119);
  __swift_project_boxed_opaque_existential_1(&v274, v275);
  v124 = v270;
  OUTLINED_FUNCTION_19_0();
  DeviceState.siriInputLocale.getter();
  v125 = v39;

  outlined bridged method (ob) of @objc INIntent.intentId.getter(v125);
  OUTLINED_FUNCTION_98_2();
  if (v128)
  {
    v129 = 0xE000000000000000;
  }

  else
  {
    v129 = v126;
  }

  v130 = v267;
  v238 = v127;
  *v267 = v127;
  *(v130 + 1) = v129;
  v240 = v116;
  *(v130 + 2) = v116;
  *(v130 + 3) = v118;
  v131 = v266;
  v132 = *(v268 + 16);
  v132(&v130[*(v266 + 24)], v124, v272);
  *&v130[*(v131 + 28)] = v107;

  v237 = v129;

  v239 = v118;

  v133 = v248;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(v248, v271);
  v134 = *(*(v133 + 16) + 8);
  v242 = a25;
  v135 = v134(a25);
  v245 = v125;
  v243 = v107;
  if (v135 == 2)
  {
    v136 = swift_getObjectType();
    v138 = &enum case for ContactActionType.facetimeVideo(_:);
    if (dynamic_cast_existential_1_conditional(v125, v136, &protocol descriptor for CallingIntent))
    {
      v139 = v137;
      v140 = swift_getObjectType();
      v141 = *(v139 + 24);
      v142 = v125;
      v143 = v141(v140, v139);

      if (v143 == 1)
      {
        v138 = &enum case for ContactActionType.facetimeAudio(_:);
      }
    }
  }

  else
  {
    v138 = &enum case for ContactActionType.phoneCall(_:);
  }

  v144 = *v138;
  v145 = v259;
  v146 = v253;
  v147 = v261;
  (*(v259 + 104))(v253, v144, v261);
  v148 = v255;
  (*(v145 + 32))(v255, v146, v147);
  v132(v252, v270, v272);
  OUTLINED_FUNCTION_80_2();
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v271, v254);
  OUTLINED_FUNCTION_50_9();
  v149(v260);
  (*(v262 + 104))(v263, enum case for RecommenderType.mlRecommender(_:), v264);
  v150 = v267;
  v151 = v243;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v145 + 16))(v256, v148, v147);
  ContactResolverConfig.actionType.setter();
  v152 = OUTLINED_FUNCTION_104();
  v153(v152);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v271, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v268 + 8))(v270, v272);
  v154 = v244;
  outlined init with take of ContactResolverConfigHashable(v150, v244);
  __swift_destroy_boxed_opaque_existential_1(&v274);
  v155 = v269[4];
  __swift_project_boxed_opaque_existential_1(v269, v269[3]);
  v156 = OUTLINED_FUNCTION_40_0();
  v157(v156, v155);
  v158 = v275;
  v159 = v276;
  __swift_project_boxed_opaque_existential_1(&v274, v275);
  v160 = (v159[2])(v241, v154, v158, v159);
  v161 = v151;
  __swift_destroy_boxed_opaque_existential_1(&v274);
  v162 = __swift_project_boxed_opaque_existential_1(a22, a22[3]);
  type metadata accessor for SiriKitEvent();
  v163 = [v245 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v235, &v274);
  OUTLINED_FUNCTION_106();
  v164 = swift_allocObject();
  *(v164 + 16) = v265;
  outlined init with take of SPHConversation(&v274, v164 + 24);
  *(v164 + 64) = v160;

  v273 = 0;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  v165 = v162;
  dispatch thunk of SiriKitEventSending.send(_:)();

  v166 = *(v160 + 16);
  if (v166)
  {
    *&v274 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v167 = v249;
    v161 = v250;
    v168 = v160;
    v170 = *(v251 + 16);
    v169 = v251 + 16;
    v271 = v168;
    v272 = v170;
    OUTLINED_FUNCTION_19_1();
    v173 = v172 + v171;
    v174 = *(v169 + 56);
    do
    {
      v272(v167, v173, v161);
      ResolvedSiriKitContact.person.getter();
      (*(v169 - 8))(v167, v161);
      v165 = &v274;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v173 += v174;
      --v166;
    }

    while (v166);

    v175 = v274;
  }

  else
  {

    v175 = _swiftEmptyArrayStorage;
  }

  v176 = specialized Array.count.getter(v175);
  v177 = v242;
  v178 = v236;
  if (v176)
  {
    static ContactResolution.dedupeContacts(contacts:)(v175);
    OUTLINED_FUNCTION_40_0();

    v175 = v165;
  }

  if (a21)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v179 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v179, static Logger.siriPhone);
    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v181))
    {
      v182 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v182);
      OUTLINED_FUNCTION_14_9();
      _os_log_impl(v183, v184, v185, v186, v187, 2u);
      OUTLINED_FUNCTION_52();
    }

LABEL_62:

    v210 = OUTLINED_FUNCTION_15_24();
    v211(v210);

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    goto LABEL_63;
  }

  v188 = *(v248 + 8);
  v189 = v245;
  if (!(*(v188 + 8))(v177, v188))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v205 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v205, static Logger.siriPhone);
    v180 = Logger.logObject.getter();
    v206 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v206))
    {
      v207 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v207);
      OUTLINED_FUNCTION_47_1(&dword_0, v208, v209, "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot");
      OUTLINED_FUNCTION_35();
    }

    goto LABEL_62;
  }

  v190 = OUTLINED_FUNCTION_105_1();
  if (!specialized Array.count.getter(v190))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_46_7();
  if (v189)
  {
    v191 = OUTLINED_FUNCTION_140_0();
  }

  else
  {
    v191 = *(v175 + 4);
  }

  v192 = v191;
  if (v178 < 0 || specialized Array.count.getter(v161) <= v178 || (v193 = specialized Array.count.getter(v175), specialized Array.count.getter(v161) < v193))
  {

LABEL_52:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v194 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v194, static Logger.siriPhone);
    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_21_8(v196))
    {
      v197 = OUTLINED_FUNCTION_65_0();
      *v197 = 0;
      OUTLINED_FUNCTION_34_5();
      _os_log_impl(v198, v199, v200, v201, v202, 2u);
      OUTLINED_FUNCTION_26_0(v197);
    }

    v203 = OUTLINED_FUNCTION_15_24();
    v204(v203);
    goto LABEL_57;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v212 = type metadata accessor for Logger();
  v213 = __swift_project_value_buffer(v212, static Logger.siriPhone);
  v214 = Logger.logObject.getter();
  v215 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v215))
  {
    v216 = OUTLINED_FUNCTION_42();
    *v216 = 134217984;
    *(v216 + 4) = v178;
    _os_log_impl(&dword_0, v214, v215, "#ContactResolution updating person at index %ld", v216, 0xCu);
    v217 = v216;
    v177 = v242;
    OUTLINED_FUNCTION_26_0(v217);
  }

  if (specialized Array.count.getter(v161) <= v178)
  {
    *v234 = v178;
    swift_storeEnumTagMultiPayload();
    v272 = v213;
    PhoneError.logged()(v246);
    OUTLINED_FUNCTION_5_34();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_43(v224))
    {
      v225 = OUTLINED_FUNCTION_86_1();
      *v225 = 134218240;
      *(v225 + 4) = v178;
      *(v225 + 12) = 2048;
      *(v225 + 14) = specialized Array.count.getter(v161);
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v226, v227, v228, v229, v230, 0x16u);
      OUTLINED_FUNCTION_5_7();
    }

    v231 = OUTLINED_FUNCTION_15_24();
    v232(v231);

    goto LABEL_57;
  }

  v218 = v192;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v161 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v161 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  if (*(&dword_10 + (v161 & 0xFFFFFFFFFFFFFF8)) > v178)
  {
    v220 = *(&stru_20.cmd + 8 * v178 + (v161 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v178 + (v161 & 0xFFFFFFFFFFFFFF8)) = v218;

    v221 = *(v188 + 16);

    v221(v222, v177, v188);

LABEL_57:

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();

    goto LABEL_63;
  }

  __break(1u);
}

void specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v117 = v0;
  v118 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v104 = type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_7();
  v106 = v10;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v129 = type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  v127 = v15;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_5_4();
  v128 = v17;
  OUTLINED_FUNCTION_15_0();
  v123 = type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  v122 = v18;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_5_4();
  v125 = v20;
  OUTLINED_FUNCTION_15_0();
  v21 = type metadata accessor for ContactResolverDomain();
  v22 = OUTLINED_FUNCTION_21(v21);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v23);
  v126 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v124 = v24;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v30 = OUTLINED_FUNCTION_21(v29);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_91();
  v135 = v32;
  OUTLINED_FUNCTION_15_0();
  v136 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v34 = v33;
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_91();
  v134 = v37;
  v38 = OUTLINED_FUNCTION_15_0();
  v39 = type metadata accessor for ContactResolverConfigHashable(v38);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_16_2();
  v133 = v41;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v42);
  v43 = _swiftEmptyArrayStorage;
  v131 = &v104 - v44;
  v105 = v14;
  v132 = v45;
  if (v5)
  {
    v46 = v34;
    v47 = App.appIdentifier.getter();
    if (v48)
    {
      v49 = v47;
      v50 = v48;
      v51 = v3;
      v52 = v9;
      OUTLINED_FUNCTION_76_3();
      v43 = v53;
      v55 = v53[2];
      v54 = v53[3];
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_76(v54);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v103;
      }

      v43[2] = v55 + 1;
      v56 = &v43[2 * v55];
      v56[4] = v49;
      v56[5] = v50;
      v9 = v52;
      v3 = v51;
      v39 = v132;
    }

    v34 = v46;
  }

  v57 = v3;
  v113 = v9;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v58 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v62 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v63 = OUTLINED_FUNCTION_5();
  v64(v63, v62);
  OUTLINED_FUNCTION_54_11(v137);
  v65 = v134;
  DeviceState.siriInputLocale.getter();

  v66 = v7;
  outlined bridged method (ob) of @objc INIntent.intentId.getter(v66);
  OUTLINED_FUNCTION_98_2();
  if (v69)
  {
    v70 = 0xE000000000000000;
  }

  else
  {
    v70 = v67;
  }

  v71 = v133;
  v110 = v68;
  *v133 = v68;
  v71[1] = v70;
  v112 = v59;
  v71[2] = v59;
  v71[3] = v61;
  v72 = v71 + *(v39 + 24);
  v107 = *(v34 + 16);
  v107(v72, v65, v136);
  *(v71 + *(v39 + 28)) = v43;
  v130 = v43;

  v109 = v70;

  v111 = v61;

  v73 = v117;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(v117, v135);
  v74 = (*(*(v73 + 16) + 8))(v118);
  v119 = v34;
  v108 = v57;
  if (v74 == 2)
  {
    ObjectType = swift_getObjectType();
    v77 = &enum case for ContactActionType.facetimeVideo(_:);
    if (dynamic_cast_existential_1_conditional(v66, ObjectType, &protocol descriptor for CallingIntent))
    {
      v78 = v76;
      v79 = swift_getObjectType();
      v118 = *(v78 + 24);
      v80 = v66;
      v66 = v118(v79, v78);

      if (v66 == &dword_0 + 1)
      {
        v77 = &enum case for ContactActionType.facetimeAudio(_:);
      }
    }
  }

  else
  {
    v77 = &enum case for ContactActionType.phoneCall(_:);
  }

  OUTLINED_FUNCTION_82_2();
  v81 = *v77;
  v82 = v124;
  v83 = v115;
  v84 = v126;
  (*(v124 + 104))(v115, v81, v126);
  v85 = v120;
  (*(v82 + 32))(v120, v83, v84);
  (v66)(v114, v134, v136);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v135, v116);
  OUTLINED_FUNCTION_69_4();
  v86(v125);
  (*(v127 + 104))(v128, enum case for RecommenderType.mlRecommender(_:), v129);
  v87 = v133;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v82 + 16))(v121, v85, v84);
  ContactResolverConfig.actionType.setter();
  (*(v82 + 8))(v85, v84);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v135, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v119 + 8))(v134, v136);
  v88 = v131;
  outlined init with take of ContactResolverConfigHashable(v87, v131);
  __swift_destroy_boxed_opaque_existential_1(v137);
  v89 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  v90 = OUTLINED_FUNCTION_5();
  v91(v90, v89);
  v92 = v138;
  v93 = v139;
  __swift_project_boxed_opaque_existential_1(v137, v138);
  v94 = (*(v93 + 16))(v113, v88, v92, v93);
  __swift_destroy_boxed_opaque_existential_1(v137);
  v95 = *(v94 + 16);
  if (v95)
  {
    v137[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v96 = v104;
    v98 = *(v106 + 16);
    v97 = v106 + 16;
    v135 = v94;
    v136 = v98;
    OUTLINED_FUNCTION_19_1();
    v100 = v94 + v99;
    v101 = *(v97 + 56);
    v102 = v105;
    do
    {
      v136(v102, v100, v96);
      ResolvedSiriKitContact.person.getter();
      (*(v97 - 8))(v102, v96);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v100 += v101;
      --v95;
    }

    while (v95);
    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
  }

  else
  {

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t specialized static ContactResolution.shouldSkipContactResolution(nlIntent:skIntent:contactQueries:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for CallingIntent))
  {
    v13 = v12;
    v14 = a1;
    v15 = swift_getObjectType();
    v16 = *(v13 + 16);
    v17 = a2;
    if (v16(v15, v13) == 2)
    {
      if (one-time initialization token for siriPhone != -1)
      {
LABEL_85:
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
        _os_log_impl(&dword_0, v19, v20, "#ContactResolution intent is emergency call. bypassing contact resolution", v21, 2u);
      }

      return 1;
    }

    a1 = v14;
  }

  if (a3)
  {
    if (*(a3 + 16))
    {
      return 0;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_35;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "#ContactResolution ContactQueries is empty, bypassing contact resolution";
    goto LABEL_34;
  }

  v23 = (*(*(a6 + 8) + 8))(a5);
  if (v23)
  {
    v24 = v23;
    v25 = specialized Array.count.getter(v23);
    if (v25)
    {
      v26 = v25;
      v17 = 0;
      v27 = v24 & 0xC000000000000001;
      while (v26 != v17)
      {
        if (v27)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_82;
          }

          v28 = *(v24 + 8 * v17 + 32);
        }

        v29 = v28;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v30 = INPerson.hasHandleValue.getter();

        ++v17;
        if (!v30)
        {
          v38 = 0;
          while (1)
          {
            if (v27)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v38 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_84;
              }

              v39 = *(v24 + 8 * v38 + 32);
            }

            v17 = v39;
            v40 = (v38 + 1);
            if (__OFADD__(v38, 1))
            {
              goto LABEL_83;
            }

            v41 = [v39 personHandle];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 emergencyType];

              if (v43)
              {

                if (one-time initialization token for siriPhone != -1)
                {
LABEL_89:
                  swift_once();
                }

                v64 = type metadata accessor for Logger();
                __swift_project_value_buffer(v64, static Logger.siriPhone);
                v65 = Logger.logObject.getter();
                v66 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v65, v66))
                {
                  v67 = swift_slowAlloc();
                  v68 = swift_slowAlloc();
                  v75[0] = v68;
                  *v67 = 136315138;
                  *&v74[0] = v43;
                  type metadata accessor for INPersonHandleEmergencyType(0);
                  v69 = String.init<A>(describing:)();
                  v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v75);

                  *(v67 + 4) = v71;
                  _os_log_impl(&dword_0, v65, v66, "#ContactResolution contact has a handle with an emergency type %s. bypassing contact resolution", v67, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v68);
                }

                return 1;
              }
            }

            ++v38;
            if (v40 == v26)
            {
              v44 = a1[3];
              v45 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, v44);
              v43 = (v45 + 24);
              v46 = *(v45 + 24);
              v47 = *(v46(v44, v45) + 16);

              if (!v47)
              {
LABEL_74:

                return 0;
              }

              v48 = v46(v44, v45);
              v17 = 0;
              v49 = v48 + 32;
              v73 = *(v48 + 16);
              while (1)
              {
                if (v73 == v17)
                {

                  goto LABEL_77;
                }

                if (v17 >= *(v48 + 16))
                {
                  __break(1u);
                  goto LABEL_87;
                }

                _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v49, v74);
                v50 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
                if (v17 == v50)
                {
                  break;
                }

                if (v27)
                {
                  v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v17 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    goto LABEL_89;
                  }

                  v51 = *(v24 + 8 * v17 + 32);
                }

                v52 = v51;
                outlined init with take of SPHConversation(v74, v75);
                v78 = v52;
                v53 = v76;
                v43 = v77;
                __swift_project_boxed_opaque_existential_1(v75, v76);
                v54 = v43[4](v53, v43);
                if (!v55)
                {
                  goto LABEL_72;
                }

                v56 = v54;
                v57 = v55;

                v58 = HIBYTE(v57) & 0xF;
                if ((v57 & 0x2000000000000000) == 0)
                {
                  v58 = v56 & 0xFFFFFFFFFFFFLL;
                }

                if (!v58 || (v59 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v52), !v60))
                {
LABEL_72:
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v75, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_73:

                  goto LABEL_74;
                }

                v61 = v59;
                v62 = v60;

                if ((v62 & 0x2000000000000000) != 0)
                {
                  v63 = HIBYTE(v62) & 0xF;
                }

                else
                {
                  v63 = v61 & 0xFFFFFFFFFFFFLL;
                }

                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v75, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
                v49 += 40;
                ++v17;
                if (!v63)
                {
                  goto LABEL_73;
                }
              }

              __swift_destroy_boxed_opaque_existential_1(v74);
LABEL_77:
              if (one-time initialization token for siriPhone != -1)
              {
                swift_once();
              }

              v72 = type metadata accessor for Logger();
              __swift_project_value_buffer(v72, static Logger.siriPhone);
              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                *v34 = 0;
                v35 = "#ContactResolution server has already expanded contacts into the SK intent. bypassing contact resolution";
                goto LABEL_34;
              }

              goto LABEL_35;
            }
          }
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
LABEL_87:
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.siriPhone);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "#ContactResolution contacts have been fully resolved. bypassing contact resolution";
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.siriPhone);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "#ContactResolution no contacts to resolve. bypassing contact resolution";
LABEL_34:
    _os_log_impl(&dword_0, v32, v33, v35, v34, 2u);
  }

LABEL_35:

  return 1;
}

void *_s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO08populateafG005phoneB8NLIntent13contextNLType3app23resolvedSiriKitContacts17callStateProviderSo020FLOWSchemaFLOWDomainG0CSgAA0abL0_p_AA0afgN0O0Q13AppResolution0Y0CSgSay0Q9Inference08ResolvedqR7ContactVGAA0bU9Providing_ptFZTf4nnnnen_nAA0buV0V_Tt4g5(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of CallStateProvider(a5, v32);
  v9 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v9)
  {
    v5 = v9;
    v10 = [objc_allocWithZone(FLOWSchemaFLOWPhoneCallContext) init];
    if (v10)
    {
      v11 = v10;
      if (a2)
      {
        v12 = OUTLINED_FUNCTION_19_0();
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv4(phoneContext:resolvedSiriKitContacts:)(v12, v13);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v21 = OUTLINED_FUNCTION_123();
        v23 = v22(v21);
        static PhoneDomainContextMetricsUtils.addContactRecipientTypeNLv3(phoneCallContacts:phoneContext:)(v23, v11);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v24 = OUTLINED_FUNCTION_123();
      v26 = *(v25(v24) + 16);

      if (v26)
      {
        [v11 addPersonType:10];
      }

      _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO03addaB7AppType33_BC70FDE4337405FDAA5D97E0B7778BABLL05phoneB8NLIntent3app0tG017callStateProvideryAA0abU0_p_04SiriK10Resolution0K0CSgSo019FLOWSchemaFLOWPhonebG0CAA0bX9Providing_ptFZTf4nnnen_nAA0bxY0V_Tt3g5(a1, a3, v11);
      v27 = OUTLINED_FUNCTION_5_26();
      static PhoneDomainContextMetricsUtils.addPhoneCallType(phoneCallNLIntent:phoneContext:)(v27, v28);
      v29 = OUTLINED_FUNCTION_5_26();
      static PhoneDomainContextMetricsUtils.addEmergencyType(phoneCallNLIntent:phoneContext:)(v29, v30);
      [v5 setPhoneCallContext:v11];
      [v5 setHasPhoneCallContext:1];
      goto LABEL_15;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v15))
  {
    v16 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v16);
    OUTLINED_FUNCTION_40_3();
    _os_log_impl(v17, v18, v19, v20, v5, 2u);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v5 = 0;
LABEL_15:

  outlined destroy of CallStateProvider(v32);
  return v5;
}

id _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO03addaB7AppType33_BC70FDE4337405FDAA5D97E0B7778BABLL05phoneB8NLIntent3app0tG017callStateProvideryAA0abU0_p_04SiriK10Resolution0K0CSgSo019FLOWSchemaFLOWPhonebG0CAA0bX9Providing_ptFZTf4nnnen_nAA0bxY0V_Tt3g5(void *a1, uint64_t a2, void *a3)
{
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
    v16 = a2;
    v17 = v10;
    *v9 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B0CSgMd, &_s17SiriAppResolution0B0CSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "#PhoneDomainContextMetricsUtils addPhoneCallAppType with app: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  if (!a2)
  {
    return [a3 setPhoneCallAppType:0];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  if (PhoneCallNLIntent.isFaceTimeCall()() && App.isFirstParty()())
  {
    [a3 setPhoneCallAppType:{2, v16, v17}];
  }

  else if (App.isFirstParty()())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (PhoneCallNLIntent.isHangUpCall()() && (type metadata accessor for SiriEnvironment(), static SiriEnvironment.root.getter(), SiriEnvironment.callState.getter(), , v14 = dispatch thunk of CallStateEnvironmentProvider.isDropInCall.getter(), , (v14 & 1) != 0))
    {
      [a3 setPhoneCallAppType:{4, v16, v17}];
    }

    else
    {
      [a3 setPhoneCallAppType:{1, v16, v17}];
    }
  }

  else
  {
    [a3 setPhoneCallAppType:{3, v16, v17}];
  }
}

void specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_66();
  v23 = v22;
  HIDWORD(v92) = v24;
  v97 = v25;
  v98 = v26;
  v28 = v27;
  v96 = v29;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v36 = v35;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_12_5();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_13_5();
  v90 = v42;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v43);
  v45 = &v83 - v44;
  v46 = *(a22 + 8);
  v94 = v33;
  v95 = v23;
  v93 = a21;
  v91 = v46;
  if (specialized static ContactResolution.shouldSkipContactResolution(nlIntent:skIntent:contactQueries:)(v31, v33, 0, v23, a21, v46))
  {
LABEL_25:
    OUTLINED_FUNCTION_65();
  }

  else
  {
    v88 = v31;
    v89 = v28;
    v47 = v31[3];
    v48 = v31[4];
    v49 = OUTLINED_FUNCTION_101_1();
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v51 = (*(v48 + 24))(v47, v48);
    v52 = v51[2];
    if (v52)
    {
      OUTLINED_FUNCTION_64_4(_swiftEmptyArrayStorage);
      v53 = v101;
      v87 = v51;
      v54 = (v51 + 4);
      v99 = (v36 + 32);
      do
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v54, v100);
        OUTLINED_FUNCTION_54_11(v100);
        OUTLINED_FUNCTION_63_4();
        SiriPhoneContact.asSiriInferenceContact.getter();
        __swift_destroy_boxed_opaque_existential_1(v100);
        v101 = v53;
        v56 = v53[2];
        v55 = v53[3];
        if (v56 >= v55 >> 1)
        {
          OUTLINED_FUNCTION_76(v55);
          OUTLINED_FUNCTION_131_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v59, v60);
          v53 = v101;
        }

        v53[2] = v56 + 1;
        OUTLINED_FUNCTION_19_1();
        (*(v36 + 32))(v53 + v57 + *(v36 + 72) * v56, v40, v34);
        v54 += 40;
        --v52;
      }

      while (v52);
    }

    else
    {

      v53 = _swiftEmptyArrayStorage;
    }

    v61 = 0;
    v62 = v53[2];
    v63 = v36 + 16;
    v87 = (v36 + 32);
    v99 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v62 == v61)
      {

        v77 = v88;
        v78 = v88[3];
        v79 = OUTLINED_FUNCTION_5_26();
        __swift_project_boxed_opaque_existential_1(v79, v80);
        OUTLINED_FUNCTION_19_0();
        PhoneCallNLIntent.isDisplayNameEmergencyContact()();
        OUTLINED_FUNCTION_112_1();
        type metadata accessor for EmergencyContactResolution();
        v81 = swift_allocObject();
        LOBYTE(v82) = BYTE4(v92) & 1;
        specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v94, v99, v78 & 1, v96, v89, v77, v97, v98, v82, v34, v81, v95, v93, v91, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);

        __swift_destroy_boxed_opaque_existential_1(v100);
        goto LABEL_25;
      }

      if (v61 >= v53[2])
      {
        break;
      }

      v64 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v65 = *(v36 + 72);
      (*(v36 + 16))(v45, v53 + v64 + v65 * v61, v34);
      if (one-time initialization token for emptyQuery != -1)
      {
        OUTLINED_FUNCTION_13_22();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v34, static ContactQuery.emptyQuery);
      if (static ContactQuery.== infix(_:_:)())
      {
        goto LABEL_18;
      }

      if (one-time initialization token for emptyNLv4Query != -1)
      {
        OUTLINED_FUNCTION_12_29();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v34, static ContactQuery.emptyNLv4Query);
      if (static ContactQuery.== infix(_:_:)())
      {
LABEL_18:
        (*(v36 + 8))(v45, v34);
        ++v61;
      }

      else
      {
        v85 = *v87;
        v86 = v63;
        v85(v90, v45, v34);
        v66 = v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_55_9();
        }

        OUTLINED_FUNCTION_126_1();
        v63 = v86;
        if (v72)
        {
          OUTLINED_FUNCTION_76(v68);
          OUTLINED_FUNCTION_127_1();
          v84 = v73;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74, v75, v76);
          v71 = v99;
          v69 = v100[0];
          v70 = v84;
          v63 = v86;
        }

        ++v61;
        v69[2] = v71;
        v99 = v69;
        v85(v69 + v64 + v70 * v65, v90, v34);
      }
    }

    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type [Substring] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Substring] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Substring] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySsGMd, &_sSaySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Substring] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_59_4(v24, v25, v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_5_4();
  v34 = OUTLINED_FUNCTION_13(v33);
  type metadata accessor for PhoneError(v34);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v37);
  type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v39);
  type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v41);
  v42 = type metadata accessor for ContactResolverDomain();
  v43 = OUTLINED_FUNCTION_21(v42);
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v44);
  type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v50 = OUTLINED_FUNCTION_21(v49);
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_91();
  v203 = v52;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_91();
  v55 = OUTLINED_FUNCTION_15_0();
  type metadata accessor for ContactResolverConfigHashable(v55);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_12_5();
  v59 = v57 - v58;
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_138_0(v61);
  OUTLINED_FUNCTION_40();
  (*(v62 + 16))();
  type metadata accessor for ContactResolution();
  if (v21)
  {
    ObjectType = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v23, ObjectType, &protocol descriptor for CallingIntent);
    v64 = one-time initialization token for siriPhone;
    v65 = v23;
    if (v64 != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v66 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v66, static Logger.siriPhone);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v68))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_5_7();
    }

    v74 = [objc_allocWithZone(HKHealthStore) init];
    [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v74];

    v75 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
    OUTLINED_FUNCTION_52_7(v75, &protocol witness table for HKMedicalIDStore);
    v76 = OUTLINED_FUNCTION_93_3();
    v77(v76);

    __swift_destroy_boxed_opaque_existential_1(v204);
    goto LABEL_59;
  }

  v78 = OUTLINED_FUNCTION_102_1();
  if (_s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nTm(v78, v79, v80, v81, v82, v83))
  {
LABEL_59:
    __swift_destroy_boxed_opaque_existential_1(v205);
    OUTLINED_FUNCTION_65();
    return;
  }

  if (v199 && (App.appIdentifier.getter(), v84))
  {
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_120_0(v85);
    if (v87)
    {
      OUTLINED_FUNCTION_76(v86);
      OUTLINED_FUNCTION_131_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v201 = v197;
    }

    OUTLINED_FUNCTION_119_2();
  }

  else
  {
    v201 = _swiftEmptyArrayStorage;
  }

  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v88 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_project_boxed_opaque_existential_1(v202, v202[3]);
  v89 = OUTLINED_FUNCTION_88_2();
  v90(v89);
  v91 = v204[3];
  OUTLINED_FUNCTION_54_11(v204);
  OUTLINED_FUNCTION_63_4();
  DeviceState.siriInputLocale.getter();
  v92 = v23;

  outlined bridged method (ob) of @objc INIntent.intentId.getter(v92);
  OUTLINED_FUNCTION_98_2();
  v93 = OUTLINED_FUNCTION_39_11();
  v94(v93);
  *(v59 + *(v91 + 28)) = v201;

  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartAudioCallIntent, v203);
  v198 = v92;
  if ([v92 preferredCallProvider] == &dword_0 + 2)
  {
    v95 = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v92, v95, &protocol descriptor for CallingIntent);
    v97 = v96;
    v98 = swift_getObjectType();
    v99 = *(v97 + 24);
    v92 = v92;
    v99(v98, v97);
  }

  OUTLINED_FUNCTION_24_13();
  v100 = OUTLINED_FUNCTION_14_25();
  v101(v100);
  v102 = OUTLINED_FUNCTION_79_3();
  v103(v102);
  v104 = OUTLINED_FUNCTION_83_3();
  v22(v104);
  OUTLINED_FUNCTION_80_2();
  static ContactResolverDomain.phone.getter();
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_69_4();
  v105 = OUTLINED_FUNCTION_97_0();
  v106(v105);
  OUTLINED_FUNCTION_50_9();
  v107 = OUTLINED_FUNCTION_118_1();
  v108(v107);
  OUTLINED_FUNCTION_31_7();
  v109 = OUTLINED_FUNCTION_67_3();
  v110(v109);
  ContactResolverConfig.actionType.setter();
  v111 = v92 + 8;
  v112 = OUTLINED_FUNCTION_101_1();
  v113(v112);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v203, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v114 = OUTLINED_FUNCTION_96_1();
  v115(v114);
  outlined init with take of ContactResolverConfigHashable(v59, v200);
  __swift_destroy_boxed_opaque_existential_1(v204);
  v116 = v202[4];
  __swift_project_boxed_opaque_existential_1(v202, v202[3]);
  v117 = OUTLINED_FUNCTION_20_17();
  v118(v117);
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_94_2();
  v120 = v119();
  if (v116)
  {

    __swift_destroy_boxed_opaque_existential_1(v204);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v121 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v121, static Logger.siriPhone);
    swift_errorRetain();
    v122 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_116_0();
    if (OUTLINED_FUNCTION_115_1())
    {
      OUTLINED_FUNCTION_42();
      v204[0] = OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_110_0(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v123 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, v204);
      OUTLINED_FUNCTION_113_0();
      *(v59 + 4) = v111;
      OUTLINED_FUNCTION_21_12();
      _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_52();
    }

    OUTLINED_FUNCTION_108_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    OUTLINED_FUNCTION_2_4();
    v130 = type metadata accessor for InferenceError();
    if (OUTLINED_FUNCTION_65_6(v130))
    {
      dispatch thunk of InferenceError.log()();
    }

    else
    {
      getpid();
      OUTLINED_FUNCTION_108_1();
      String.init<A>(describing:)();
      String._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_105_1();

      OUTLINED_FUNCTION_91_3();
    }

    specialized INPersonContainingIntent.clearContactsSlotMatches()(outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter, INStartAudioCallIntent.overwriteContacts(newContacts:));

    goto LABEL_58;
  }

  v131 = v120;
  v132 = OUTLINED_FUNCTION_32_10();
  v133 = [v198 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v134;

  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v205, v204);
  OUTLINED_FUNCTION_106();
  v136 = swift_allocObject();
  OUTLINED_FUNCTION_109_0(v136);

  OUTLINED_FUNCTION_49_7();
  v141 = OUTLINED_FUNCTION_66_7(v137, v138, v139, v140);
  OUTLINED_FUNCTION_85_1(v141);

  v142 = *(v131 + 16);
  if (v142)
  {
    OUTLINED_FUNCTION_114_3(_swiftEmptyArrayStorage);
    OUTLINED_FUNCTION_33_9();
    do
    {
      v143 = OUTLINED_FUNCTION_130_1();
      v144(v143);
      ResolvedSiriKitContact.person.getter();
      v145 = OUTLINED_FUNCTION_133_0();
      v146(v145);
      v132 = v204;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_107_0();
      OUTLINED_FUNCTION_104();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v59 += v135;
      --v142;
    }

    while (v142);

    v147 = v204[0];
  }

  else
  {

    v147 = _swiftEmptyArrayStorage;
  }

  specialized Array.count.getter(v147);
  OUTLINED_FUNCTION_121_0();
  if (v148)
  {
    static ContactResolution.dedupeContacts(contacts:)(v147);
    OUTLINED_FUNCTION_40_0();

    v147 = v132;
  }

  if (a21)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v149 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v149, static Logger.siriPhone);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_51_0(v151))
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v152 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v135);
  if (!v152)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v164 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v164, static Logger.siriPhone);
    v150 = Logger.logObject.getter();
    v165 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_51_0(v165))
    {
      goto LABEL_57;
    }

LABEL_56:
    v166 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_103(v166);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v167, v168, v169, v170, v171, 2u);
    OUTLINED_FUNCTION_52();
LABEL_57:

    v172 = OUTLINED_FUNCTION_89_0();
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v172);

LABEL_58:
    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    goto LABEL_59;
  }

  v153 = v152;
  if (!specialized Array.count.getter(v147))
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_46_7();
  if (v132)
  {
    v154 = OUTLINED_FUNCTION_140_0();
  }

  else
  {
    v154 = v147[4];
  }

  v155 = v154;
  OUTLINED_FUNCTION_82_2();
  if (v132 < 0 || specialized Array.count.getter(v153) <= v132 || (specialized Array.count.getter(v147), v156 = OUTLINED_FUNCTION_5(), specialized Array.count.getter(v156) < v132))
  {

LABEL_47:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v157 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v157, static Logger.siriPhone);
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v159))
    {
      v160 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v160);
      OUTLINED_FUNCTION_47_1(&dword_0, v161, v162, "#ContactResolution: overwriting contacts slot");
      OUTLINED_FUNCTION_35();
    }

    v163 = OUTLINED_FUNCTION_89_0();
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v163);
    goto LABEL_52;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v173 = type metadata accessor for Logger();
  __swift_project_value_buffer(v173, static Logger.siriPhone);
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_43(v175))
  {
    v176 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_57_8(v176, 3.852e-34);
    OUTLINED_FUNCTION_30_3();
    _os_log_impl(v177, v178, v179, v180, v181, 0xCu);
    OUTLINED_FUNCTION_5_7();
  }

  specialized Array.count.getter(v153);
  OUTLINED_FUNCTION_82_2();
  if (v182 <= v174)
  {
    v187 = OUTLINED_FUNCTION_26_13();
    OUTLINED_FUNCTION_53_11(v187);
    OUTLINED_FUNCTION_5_34();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_21_8(v189))
    {
      v190 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_58_3(v190, 3.8521e-34);
      *(v190 + 14) = specialized Array.count.getter(v153);
      OUTLINED_FUNCTION_34_5();
      _os_log_impl(v191, v192, v193, v194, v195, 0x16u);
      OUTLINED_FUNCTION_26_0(v190);
    }

    v196 = OUTLINED_FUNCTION_89_0();
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v196);

    goto LABEL_52;
  }

  v183 = v155;
  OUTLINED_FUNCTION_125_1();
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v153 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v153 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  if (*(&dword_10 + (v153 & 0xFFFFFFFFFFFFFF8)) > v174)
  {
    v185 = *(&stru_20.cmd + 8 * v174 + (v153 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v174 + (v153 & 0xFFFFFFFFFFFFFF8)) = v147;

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v186);

LABEL_52:

    OUTLINED_FUNCTION_0_46();
    _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();

    goto LABEL_59;
  }

  __break(1u);
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo07INStartbK0C_Tt5g5Tf4nennnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_66();
  v22 = v21;
  HIDWORD(v86) = v23;
  v89 = v24;
  v90 = v25;
  v27 = v26;
  v88 = v28;
  v30 = v29;
  v31 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v33 = v32;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_12_5();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_13_5();
  v85 = v39;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v40);
  v42 = &v76 - v41;
  v43 = *(v22 - 1);
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_4();
  v47 = v46 - v45;
  (*(v43 + 16))();
  v87 = v30;
  if (_s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo07INStartbT0C_Tt2g5Tf4enn_n(v47, v30, 0, v22, a21))
  {
LABEL_25:
    (*(v43 + 8))(v47, v22);
    OUTLINED_FUNCTION_65();
  }

  else
  {
    v81 = v43;
    v82 = a21;
    v83 = v27;
    v84 = v22;
    v48 = *(a21 + 24);
    v91 = v47;
    v49 = v48(v22, a21);
    v50 = *(v49 + 16);
    if (v50)
    {
      OUTLINED_FUNCTION_64_4(_swiftEmptyArrayStorage);
      v51 = v94;
      v80 = v49;
      v52 = v49 + 32;
      v92 = v33 + 32;
      do
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v52, v93);
        OUTLINED_FUNCTION_54_11(v93);
        SiriPhoneContact.asSiriInferenceContact.getter();
        __swift_destroy_boxed_opaque_existential_1(v93);
        v94 = v51;
        v30 = v51[2];
        v53 = v51[3];
        if (v30 >= v53 >> 1)
        {
          v57 = OUTLINED_FUNCTION_76(v53);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57, v30 + 1, 1);
          v51 = v94;
        }

        v51[2] = v30 + 1;
        OUTLINED_FUNCTION_19_1();
        v55 = OUTLINED_FUNCTION_129_0(v54);
        v56(v55, v37, v31);
        v52 += 40;
        --v50;
      }

      while (v50);
    }

    else
    {

      v51 = _swiftEmptyArrayStorage;
    }

    v58 = 0;
    v59 = v51[2];
    v92 = v33 + 16;
    v80 = v33 + 32;
    v60 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v59 == v58)
      {

        v22 = v84;
        v72 = v82;
        PhoneCallNLIntent.isDisplayNameEmergencyContact()();
        OUTLINED_FUNCTION_112_1();
        type metadata accessor for EmergencyContactResolution();
        swift_allocObject();
        OUTLINED_FUNCTION_122_0();
        v79 = v22;
        v80 = v72;
        v73 = OUTLINED_FUNCTION_124_0();
        _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v73, v60, v74, v75, v83, v91, v89, v90, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);

        v47 = v91;

        __swift_destroy_boxed_opaque_existential_1(v93);
        v43 = v81;
        goto LABEL_25;
      }

      if (v58 >= v51[2])
      {
        break;
      }

      v61 = OUTLINED_FUNCTION_60_5();
      v62(v61);
      if (one-time initialization token for emptyQuery != -1)
      {
        OUTLINED_FUNCTION_13_22();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v31, static ContactQuery.emptyQuery);
      if (static ContactQuery.== infix(_:_:)())
      {
        goto LABEL_18;
      }

      if (one-time initialization token for emptyNLv4Query != -1)
      {
        OUTLINED_FUNCTION_12_29();
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v31, static ContactQuery.emptyNLv4Query);
      if (static ContactQuery.== infix(_:_:)())
      {
LABEL_18:
        (*(v33 + 8))(v42, v31);
        ++v58;
      }

      else
      {
        v63 = OUTLINED_FUNCTION_128();
        v79 = v64;
        (v64)(v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93[0] = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_55_9();
          v60 = v93[0];
        }

        v67 = *(v60 + 2);
        v66 = *(v60 + 3);
        v68 = v67 + 1;
        if (v67 >= v66 >> 1)
        {
          v69 = OUTLINED_FUNCTION_76(v66);
          v78 = v70;
          v77 = v71;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69, v70, 1);
          v68 = v78;
          v67 = v77;
          v60 = v93[0];
        }

        ++v58;
        *(v60 + 2) = v68;
        v79(&v60[v37 + v67 * v30], v85, v31);
      }
    }

    __break(1u);
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B1LL8nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo07INStartbT0C_Tt2g5Tf4enn_n(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a4;
  v86 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  ObjectType = swift_getObjectType();
  dynamic_cast_existential_1_unconditional(a2, ObjectType, &protocol descriptor for CallingIntent);
  v13 = v12;
  v14 = swift_getObjectType();
  v15 = *(v13 + 16);
  v16 = a2;
  if (v15(v14, v13) == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_83:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#ContactResolution intent is emergency call. bypassing contact resolution", v20, 2u);
    }

    goto LABEL_33;
  }

  if (!a3)
  {
    v22 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v16);
    if (v22)
    {
      v16 = v22;
      v23 = specialized Array.count.getter(v22);
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = v16 & 0xC000000000000001;
        v27 = v16 & 0xFFFFFFFFFFFFFF8;
        while (v24 != v25)
        {
          if (v26)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_81;
            }

            v28 = *(v16 + 8 * v25 + 32);
          }

          v29 = v28;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v30 = INPerson.hasHandleValue.getter();

          ++v25;
          if (!v30)
          {
            v39 = 0;
            do
            {
              if (v26)
              {
                v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v39 >= *(v27 + 16))
                {
                  __break(1u);
                  goto LABEL_85;
                }

                v40 = *(v16 + 8 * v39 + 32);
              }

              v41 = v40;
              v42 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_82;
              }

              v43 = [v40 personHandle];
              if (v43)
              {
                v44 = v43;
                v45 = [v43 emergencyType];

                if (v45)
                {

                  if (one-time initialization token for siriPhone != -1)
                  {
LABEL_89:
                    swift_once();
                  }

                  v70 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v70, static Logger.siriPhone);
                  v71 = Logger.logObject.getter();
                  v72 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v71, v72))
                  {
                    v73 = swift_slowAlloc();
                    v74 = swift_slowAlloc();
                    v80[0] = v74;
                    *v73 = 136315138;
                    *&v79[0] = v45;
                    type metadata accessor for INPersonHandleEmergencyType(0);
                    v75 = String.init<A>(describing:)();
                    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v80);

                    *(v73 + 4) = v77;
                    _os_log_impl(&dword_0, v71, v72, "#ContactResolution contact has a handle with an emergency type %s. bypassing contact resolution", v73, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v74);
                  }

                  goto LABEL_33;
                }
              }

              ++v39;
              v46 = v42 == v24;
              v26 = v16 & 0xC000000000000001;
              v27 = v16 & 0xFFFFFFFFFFFFFF8;
            }

            while (!v46);
            v47 = v85;
            v48 = v86;
            __swift_project_boxed_opaque_existential_1(v84, v85);
            v49 = *(a5 + 24);
            v50 = *(v49(a4, a5) + 16);

            if (!v50)
            {
LABEL_73:

              goto LABEL_8;
            }

            v51 = v49(v47, v48);
            v52 = 0;
            v53 = *(v51 + 16);
            v54 = v51 + 32;
            v41 = (v16 & 0xFFFFFFFFFFFFFF8);
            v45 = (v16 >> 62);
            while (1)
            {
              if (v53 == v52)
              {

                goto LABEL_76;
              }

              if (v52 >= *(v51 + 16))
              {
                __break(1u);
                goto LABEL_87;
              }

              _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v54, v79);
              v55 = v45 ? _CocoaArrayWrapper.endIndex.getter() : v41[2];
              if (v52 == v55)
              {
                break;
              }

              if ((v16 & 0xC000000000000001) != 0)
              {
                v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v52 >= v41[2])
                {
                  __break(1u);
                  goto LABEL_89;
                }

                v56 = *(v16 + 8 * v52 + 32);
              }

              v57 = v56;
              outlined init with take of SPHConversation(v79, v80);
              v83 = v57;
              v59 = v81;
              v58 = v82;
              __swift_project_boxed_opaque_existential_1(v80, v81);
              v60 = (*(v58 + 32))(v59, v58);
              if (!v61)
              {
                goto LABEL_71;
              }

              v62 = v60;
              v63 = v61;

              v64 = HIBYTE(v63) & 0xF;
              if ((v63 & 0x2000000000000000) == 0)
              {
                v64 = v62 & 0xFFFFFFFFFFFFLL;
              }

              if (!v64 || (v65 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v57), !v66))
              {
LABEL_71:
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v80, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_72:

                goto LABEL_73;
              }

              v67 = v65;
              v68 = v66;

              if ((v68 & 0x2000000000000000) != 0)
              {
                v69 = HIBYTE(v68) & 0xF;
              }

              else
              {
                v69 = v67 & 0xFFFFFFFFFFFFLL;
              }

              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v80, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
              v54 += 40;
              ++v52;
              v41 = (v16 & 0xFFFFFFFFFFFFFF8);
              if (!v69)
              {
                goto LABEL_72;
              }
            }

            __swift_destroy_boxed_opaque_existential_1(v79);
LABEL_76:
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v78 = type metadata accessor for Logger();
            __swift_project_value_buffer(v78, static Logger.siriPhone);
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              *v34 = 0;
              v35 = "#ContactResolution server has already expanded contacts into the SK intent. bypassing contact resolution";
              goto LABEL_31;
            }

            goto LABEL_32;
          }
        }

        if (one-time initialization token for siriPhone != -1)
        {
LABEL_87:
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.siriPhone);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          v35 = "#ContactResolution contacts have been fully resolved. bypassing contact resolution";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriPhone);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v32, v33))
    {
LABEL_32:

LABEL_33:
      v21 = 1;
      goto LABEL_34;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "#ContactResolution no contacts to resolve. bypassing contact resolution";
LABEL_31:
    _os_log_impl(&dword_0, v32, v33, v35, v34, 2u);

    goto LABEL_32;
  }

  if (!*(a3 + 16))
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_85:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_32;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "#ContactResolution ContactQueries is empty, bypassing contact resolution";
    goto LABEL_31;
  }

LABEL_8:
  v21 = 0;
LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v21;
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_59_4(v24, v25, v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_5_4();
  v34 = OUTLINED_FUNCTION_13(v33);
  type metadata accessor for PhoneError(v34);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v37);
  type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v39);
  type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v41);
  v42 = type metadata accessor for ContactResolverDomain();
  v43 = OUTLINED_FUNCTION_21(v42);
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v44);
  type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v50 = OUTLINED_FUNCTION_21(v49);
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_91();
  v201 = v52;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_91();
  v55 = OUTLINED_FUNCTION_15_0();
  type metadata accessor for ContactResolverConfigHashable(v55);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_12_5();
  v59 = v57 - v58;
  __chkstk_darwin(v60);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_138_0(v61);
  OUTLINED_FUNCTION_40();
  (*(v62 + 16))();
  type metadata accessor for ContactResolution();
  if ((v21 & 1) == 0)
  {
    v78 = OUTLINED_FUNCTION_102_1();
    if (_s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo07INStartbT0C_Tt2g5Tf4enn_n(v78, v79, v80, v81, v82))
    {
      goto LABEL_59;
    }

    if (v197 && (App.appIdentifier.getter(), v83))
    {
      OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_120_0(v84);
      if (v86)
      {
        OUTLINED_FUNCTION_76(v85);
        OUTLINED_FUNCTION_131_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v199 = v195;
      }

      OUTLINED_FUNCTION_119_2();
    }

    else
    {
      v199 = _swiftEmptyArrayStorage;
    }

    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
    }

    v87 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_project_boxed_opaque_existential_1(v200, v200[3]);
    v88 = OUTLINED_FUNCTION_88_2();
    v89(v88);
    v90 = v202[3];
    OUTLINED_FUNCTION_54_11(v202);
    OUTLINED_FUNCTION_63_4();
    DeviceState.siriInputLocale.getter();
    v91 = v23;

    outlined bridged method (ob) of @objc INIntent.intentId.getter(v91);
    OUTLINED_FUNCTION_98_2();
    v92 = OUTLINED_FUNCTION_39_11();
    v93(v92);
    *(v59 + *(v90 + 28)) = v199;

    static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartCallIntent, v201);
    v196 = v91;
    if ([v91 preferredCallProvider] == &dword_0 + 2)
    {
      ObjectType = swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v91, ObjectType, &protocol descriptor for CallingIntent);
      v96 = v95;
      v97 = swift_getObjectType();
      v98 = *(v96 + 24);
      v91 = v91;
      v98(v97, v96);
    }

    OUTLINED_FUNCTION_24_13();
    v99 = OUTLINED_FUNCTION_14_25();
    v100(v99);
    v101 = OUTLINED_FUNCTION_79_3();
    v102(v101);
    v103 = OUTLINED_FUNCTION_83_3();
    v22(v103);
    OUTLINED_FUNCTION_80_2();
    static ContactResolverDomain.phone.getter();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_69_4();
    v104 = OUTLINED_FUNCTION_97_0();
    v105(v104);
    OUTLINED_FUNCTION_50_9();
    v106 = OUTLINED_FUNCTION_118_1();
    v107(v106);
    OUTLINED_FUNCTION_31_7();
    v108 = OUTLINED_FUNCTION_67_3();
    v109(v108);
    ContactResolverConfig.actionType.setter();
    v110 = v91 + 8;
    v111 = OUTLINED_FUNCTION_101_1();
    v112(v111);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v201, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    v113 = OUTLINED_FUNCTION_96_1();
    v114(v113);
    outlined init with take of ContactResolverConfigHashable(v59, v198);
    __swift_destroy_boxed_opaque_existential_1(v202);
    v115 = v200[4];
    __swift_project_boxed_opaque_existential_1(v200, v200[3]);
    v116 = OUTLINED_FUNCTION_20_17();
    v117(v116);
    OUTLINED_FUNCTION_30_12();
    OUTLINED_FUNCTION_94_2();
    v119 = v118();
    if (v115)
    {

      __swift_destroy_boxed_opaque_existential_1(v202);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v120 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v120, static Logger.siriPhone);
      swift_errorRetain();
      v121 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_116_0();
      if (OUTLINED_FUNCTION_115_1())
      {
        OUTLINED_FUNCTION_42();
        v202[0] = OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_110_0(4.8149e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v122 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, v202);
        OUTLINED_FUNCTION_113_0();
        *(v59 + 4) = v110;
        OUTLINED_FUNCTION_21_12();
        _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
        OUTLINED_FUNCTION_22_8();
        OUTLINED_FUNCTION_52();
      }

      OUTLINED_FUNCTION_108_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      OUTLINED_FUNCTION_2_4();
      v129 = type metadata accessor for InferenceError();
      if (OUTLINED_FUNCTION_65_6(v129))
      {
        dispatch thunk of InferenceError.log()();
      }

      else
      {
        getpid();
        OUTLINED_FUNCTION_108_1();
        String.init<A>(describing:)();
        String._bridgeToObjectiveC()();
        OUTLINED_FUNCTION_105_1();

        OUTLINED_FUNCTION_91_3();
      }

      specialized INPersonContainingIntent.clearContactsSlotMatches()(outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter, INStartCallIntent.overwriteContacts(newContacts:));

      goto LABEL_58;
    }

    v130 = v119;
    v131 = OUTLINED_FUNCTION_32_10();
    v132 = [v196 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v133;

    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v203, v202);
    OUTLINED_FUNCTION_106();
    v135 = swift_allocObject();
    OUTLINED_FUNCTION_109_0(v135);

    OUTLINED_FUNCTION_49_7();
    v140 = OUTLINED_FUNCTION_66_7(v136, v137, v138, v139);
    OUTLINED_FUNCTION_85_1(v140);

    v141 = *(v130 + 16);
    if (v141)
    {
      OUTLINED_FUNCTION_114_3(_swiftEmptyArrayStorage);
      OUTLINED_FUNCTION_33_9();
      do
      {
        v142 = OUTLINED_FUNCTION_130_1();
        v143(v142);
        ResolvedSiriKitContact.person.getter();
        v144 = OUTLINED_FUNCTION_133_0();
        v145(v144);
        v131 = v202;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_107_0();
        OUTLINED_FUNCTION_104();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v59 += v134;
        --v141;
      }

      while (v141);

      v146 = v202[0];
    }

    else
    {

      v146 = _swiftEmptyArrayStorage;
    }

    specialized Array.count.getter(v146);
    OUTLINED_FUNCTION_121_0();
    if (v147)
    {
      static ContactResolution.dedupeContacts(contacts:)(v146);
      OUTLINED_FUNCTION_40_0();

      v146 = v131;
    }

    if (a21)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v148 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v148, static Logger.siriPhone);
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_51_0(v150))
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    v151 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v134);
    if (!v151)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v163 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v163, static Logger.siriPhone);
      v149 = Logger.logObject.getter();
      v164 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_51_0(v164))
      {
        goto LABEL_57;
      }

LABEL_56:
      v165 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v165);
      OUTLINED_FUNCTION_14_9();
      _os_log_impl(v166, v167, v168, v169, v170, 2u);
      OUTLINED_FUNCTION_52();
LABEL_57:

      v171 = OUTLINED_FUNCTION_89_0();
      INStartCallIntent.overwriteContacts(newContacts:)(v171);

LABEL_58:
      OUTLINED_FUNCTION_0_46();
      _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
      goto LABEL_59;
    }

    v152 = v151;
    if (!specialized Array.count.getter(v146))
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_46_7();
    if (v131)
    {
      v153 = OUTLINED_FUNCTION_140_0();
    }

    else
    {
      v153 = v146[4];
    }

    v154 = v153;
    OUTLINED_FUNCTION_82_2();
    if (v131 < 0 || specialized Array.count.getter(v152) <= v131 || (specialized Array.count.getter(v146), v155 = OUTLINED_FUNCTION_5(), specialized Array.count.getter(v155) < v131))
    {

LABEL_47:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v156 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v156, static Logger.siriPhone);
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v158))
      {
        v159 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v159);
        OUTLINED_FUNCTION_47_1(&dword_0, v160, v161, "#ContactResolution: overwriting contacts slot");
        OUTLINED_FUNCTION_35();
      }

      v162 = OUTLINED_FUNCTION_89_0();
      INStartCallIntent.overwriteContacts(newContacts:)(v162);
      goto LABEL_52;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v172 = type metadata accessor for Logger();
    __swift_project_value_buffer(v172, static Logger.siriPhone);
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_43(v174))
    {
      v175 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_57_8(v175, 3.852e-34);
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v176, v177, v178, v179, v180, 0xCu);
      OUTLINED_FUNCTION_5_7();
    }

    specialized Array.count.getter(v152);
    OUTLINED_FUNCTION_82_2();
    if (v181 <= v173)
    {
      v186 = OUTLINED_FUNCTION_26_13();
      OUTLINED_FUNCTION_53_11(v186);
      OUTLINED_FUNCTION_5_34();
      _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
      _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();
      v173 = Logger.logObject.getter();
      v187 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_21_8(v187))
      {
LABEL_74:

        v194 = OUTLINED_FUNCTION_89_0();
        INStartCallIntent.overwriteContacts(newContacts:)(v194);

        goto LABEL_52;
      }

      v132 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_58_3(v132, 3.8521e-34);
      if (!(v152 >> 62))
      {
        v188 = *(&dword_10 + (v152 & 0xFFFFFFFFFFFFFF8));
LABEL_73:
        *(v132 + 14) = v188;
        OUTLINED_FUNCTION_34_5();
        _os_log_impl(v189, v190, v191, v192, v193, 0x16u);
        OUTLINED_FUNCTION_26_0(v132);
        goto LABEL_74;
      }
    }

    else
    {

      v182 = v154;
      OUTLINED_FUNCTION_125_1();
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v152 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v152 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      if (*(&dword_10 + (v152 & 0xFFFFFFFFFFFFFF8)) > v173)
      {
        v184 = *(&stru_20.cmd + 8 * v173 + (v152 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * v173 + (v152 & 0xFFFFFFFFFFFFFF8)) = v146;

        INStartCallIntent.overwriteContacts(newContacts:)(v185);

LABEL_52:

        OUTLINED_FUNCTION_0_46();
        _s27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVWOhTm_0();

        goto LABEL_59;
      }

      __break(1u);
    }

    v188 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_73;
  }

  v63 = swift_getObjectType();
  dynamic_cast_existential_1_unconditional(v23, v63, &protocol descriptor for CallingIntent);
  v64 = one-time initialization token for siriPhone;
  v65 = v23;
  if (v64 != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v66 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v66, static Logger.siriPhone);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_43(v68))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_30_3();
    _os_log_impl(v69, v70, v71, v72, v73, 2u);
    OUTLINED_FUNCTION_5_7();
  }

  v74 = [objc_allocWithZone(HKHealthStore) init];
  [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v74];

  v75 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  OUTLINED_FUNCTION_52_7(v75, &protocol witness table for HKMedicalIDStore);
  v76 = OUTLINED_FUNCTION_93_3();
  v77(v76);

  __swift_destroy_boxed_opaque_existential_1(v202);
LABEL_59:
  __swift_destroy_boxed_opaque_existential_1(v203);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo012INStartAudiobK0C_Tt5g5Tf4nennnn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t), void (*a23)(uint64_t, void *))
{
  OUTLINED_FUNCTION_66();
  v24 = v23;
  v92 = v25;
  v96 = v26;
  v97 = v27;
  v94 = v28;
  v95 = v29;
  v31 = v30;
  v32 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v34 = v33;
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_12_5();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_13_5();
  v91 = v40;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v41);
  v43 = &v82 - v42;
  v44 = *(v24 - 8);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_4();
  v48 = v47 - v46;
  (*(v44 + 16))();
  v93 = v31;
  if (_s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nTm(v48, v31, 0, v24, a21, a22))
  {
LABEL_25:
    v80 = OUTLINED_FUNCTION_101_1();
    v81(v80);
    OUTLINED_FUNCTION_65();
  }

  else
  {
    v87 = v48;
    v88 = v44;
    v86 = a23;
    v49 = *(a21 + 24);
    v89 = a21;
    v90 = v24;
    v50 = v49(v24);
    v51 = *(v50 + 16);
    if (v51)
    {
      OUTLINED_FUNCTION_64_4(_swiftEmptyArrayStorage);
      v52 = v100;
      v85 = v50;
      v53 = v50 + 32;
      v98 = (v34 + 32);
      do
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v53, v99);
        OUTLINED_FUNCTION_54_11(v99);
        OUTLINED_FUNCTION_63_4();
        SiriPhoneContact.asSiriInferenceContact.getter();
        __swift_destroy_boxed_opaque_existential_1(v99);
        v100 = v52;
        v31 = v52[2];
        v24 = v31 + 1;
        if (v31 >= v52[3] >> 1)
        {
          OUTLINED_FUNCTION_131_0();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57, v58, v59);
          v52 = v100;
        }

        v52[2] = v24;
        OUTLINED_FUNCTION_19_1();
        v55 = OUTLINED_FUNCTION_129_0(v54);
        v56(v55, v38, v32);
        v53 += 40;
        --v51;
      }

      while (v51);
    }

    else
    {

      v52 = _swiftEmptyArrayStorage;
    }

    v60 = 0;
    v61 = v52[2];
    v62 = v34 + 16;
    v85 = v34 + 32;
    v98 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v61 == v60)
      {

        v77 = v90;
        v78 = v89;
        PhoneCallNLIntent.isDisplayNameEmergencyContact()();
        OUTLINED_FUNCTION_112_1();
        type metadata accessor for EmergencyContactResolution();
        swift_allocObject();
        OUTLINED_FUNCTION_122_0();
        v85 = v77;
        v86 = v78;
        v79 = OUTLINED_FUNCTION_124_0();
        v86(v79, v98);

        __swift_destroy_boxed_opaque_existential_1(v99);
        goto LABEL_25;
      }

      if (v60 >= v52[2])
      {
        break;
      }

      v63 = OUTLINED_FUNCTION_60_5();
      v64(v63);
      if (one-time initialization token for emptyQuery != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v32, static ContactQuery.emptyQuery);
      if (static ContactQuery.== infix(_:_:)())
      {
        goto LABEL_18;
      }

      if (one-time initialization token for emptyNLv4Query != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_123_1(v32, static ContactQuery.emptyNLv4Query);
      if (static ContactQuery.== infix(_:_:)())
      {
LABEL_18:
        (*(v34 + 8))(v43, v32);
        ++v60;
      }

      else
      {
        v84 = v62;
        v65 = OUTLINED_FUNCTION_128();
        v83 = v66;
        (v66)(v65);
        v67 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99[0] = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_55_9();
        }

        OUTLINED_FUNCTION_126_1();
        v62 = v84;
        if (v72)
        {
          OUTLINED_FUNCTION_127_1();
          v82 = v73;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74, v75, v76);
          v71 = v98;
          v69 = v99[0];
          v70 = v82;
          v62 = v84;
        }

        ++v60;
        v69[2] = v71;
        v98 = v69;
        v83(v69 + v24 + v70 * v31, v91, v32);
      }
    }

    __break(1u);
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B1LL8nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nTm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v98 = a4;
  v99 = a5;
  __swift_allocate_boxed_opaque_existential_1(v97);
  OUTLINED_FUNCTION_40();
  (*(v10 + 16))();
  ObjectType = swift_getObjectType();
  dynamic_cast_existential_1_unconditional(a2, ObjectType, &protocol descriptor for CallingIntent);
  v13 = v12;
  v14 = swift_getObjectType();
  v15 = *(v13 + 16);
  v16 = a2;
  if ((v15)(v14, v13) == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_82;
    }

    goto LABEL_3;
  }

  if (a3)
  {
    if (*(a3 + 16))
    {
LABEL_8:
      v26 = 0;
      goto LABEL_34;
    }

    if (one-time initialization token for siriPhone != -1)
    {
LABEL_84:
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v37))
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v27 = a6(v16);
  if (!v27)
  {
LABEL_24:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v40))
    {
LABEL_22:
      v38 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v38);
LABEL_31:
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v44, v45, v46, v47, v15, 2u);
      OUTLINED_FUNCTION_26_0(v15);
    }

LABEL_32:

    goto LABEL_33;
  }

  v16 = v27;
  v28 = specialized Array.count.getter(v27);
  if (!v28)
  {

    goto LABEL_24;
  }

  v29 = v28;
  v30 = 0;
  v15 = v16 & 0xC000000000000001;
  v31 = v16 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v29 == v30)
    {

      if (one-time initialization token for siriPhone != -1)
      {
LABEL_86:
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
      v36 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v42))
      {
        goto LABEL_32;
      }

LABEL_30:
      v43 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v43);
      goto LABEL_31;
    }

    if (v15)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_80;
      }

      v32 = *(v16 + 8 * v30 + 32);
    }

    v33 = v32;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v34 = INPerson.hasHandleValue.getter();

    ++v30;
    if (!v34)
    {
      v49 = 0;
      do
      {
        if (v15)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v49 >= *(v31 + 16))
          {
            __break(1u);
            goto LABEL_84;
          }

          v50 = *(v16 + 8 * v49 + 32);
        }

        v51 = v50;
        v52 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_81;
        }

        v53 = [v50 personHandle];
        if (v53)
        {
          v54 = v53;
          v55 = [v53 emergencyType];

          if (v55)
          {

            if (one-time initialization token for siriPhone != -1)
            {
LABEL_88:
              OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
            }

            v77 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_9_0(v77, static Logger.siriPhone);
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_10_0(v79))
            {
              v80 = OUTLINED_FUNCTION_42();
              v81 = swift_slowAlloc();
              v93[0] = v81;
              *v80 = 136315138;
              *&v92[0] = v55;
              type metadata accessor for INPersonHandleEmergencyType(0);
              v82 = String.init<A>(describing:)();
              v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v93);

              *(v80 + 4) = v84;
              OUTLINED_FUNCTION_40_3();
              _os_log_impl(v85, v86, v87, v88, v80, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v81);
              OUTLINED_FUNCTION_52();
              OUTLINED_FUNCTION_26_0(v80);
            }

            goto LABEL_33;
          }
        }

        ++v49;
        v31 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      while (v52 != v29);
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v56 = *(a5 + 24);
      v57 = *(v56(a4) + 16);

      if (!v57)
      {
LABEL_72:

        goto LABEL_8;
      }

      v58 = OUTLINED_FUNCTION_123();
      v15 = v56(v58);
      v59 = 0;
      v60 = *(v15 + 16);
      v61 = v15 + 32;
      v51 = (v16 & 0xFFFFFFFFFFFFFF8);
      v55 = (v16 >> 62);
      while (1)
      {
        if (v60 == v59)
        {

          goto LABEL_75;
        }

        if (v59 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_86;
        }

        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v61, v92);
        v62 = v55 ? _CocoaArrayWrapper.endIndex.getter() : v51[2];
        if (v59 == v62)
        {
          break;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_5_26();
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v59 >= v51[2])
          {
            __break(1u);
            goto LABEL_88;
          }

          v63 = *(v16 + 8 * v59 + 32);
        }

        v64 = v63;
        outlined init with take of SPHConversation(v92, v93);
        v96 = v64;
        v66 = v94;
        v65 = v95;
        __swift_project_boxed_opaque_existential_1(v93, v94);
        v67 = (*(v65 + 32))(v66, v65);
        if (!v68)
        {
          goto LABEL_70;
        }

        v69 = v67;
        v70 = v68;

        v71 = HIBYTE(v70) & 0xF;
        if ((v70 & 0x2000000000000000) == 0)
        {
          v71 = v69 & 0xFFFFFFFFFFFFLL;
        }

        if (!v71 || (v72 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v64), !v73))
        {
LABEL_70:
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_71:

          goto LABEL_72;
        }

        v74 = v72;
        v75 = v73;

        if ((v75 & 0x2000000000000000) != 0)
        {
          v76 = HIBYTE(v75) & 0xF;
        }

        else
        {
          v76 = v74 & 0xFFFFFFFFFFFFLL;
        }

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
        v61 += 40;
        ++v59;
        v51 = (v16 & 0xFFFFFFFFFFFFFF8);
        if (!v76)
        {
          goto LABEL_71;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v92);
LABEL_75:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v89 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v89, static Logger.siriPhone);
      v36 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v90))
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_3:
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v19))
  {
    v20 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_103(v20);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_52();
  }

LABEL_33:
  v26 = 1;
LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(v97);
  return v26;
}