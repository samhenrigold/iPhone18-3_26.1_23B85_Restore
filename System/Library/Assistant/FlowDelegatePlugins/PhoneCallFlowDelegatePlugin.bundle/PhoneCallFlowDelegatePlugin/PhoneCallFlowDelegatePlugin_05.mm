uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.offerFollowUpIntent(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v4 + 72) = v1;

  if (!v1)
  {
    *(v4 + 80) = a1;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.readGroupFaceTimeInviteAnnouncement(participants:_:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  GroupFaceTimeInviteAnnouncementParameters = type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0);
  v1[6] = GroupFaceTimeInviteAnnouncementParameters;
  OUTLINED_FUNCTION_21(GroupFaceTimeInviteAnnouncementParameters);
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[2];
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 0;
  v9 = v1 + v2[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + v2[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + v2[9]) = v4;

  v3(v1);
  GroupFaceTimeInviteAnnouncement = AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.asKeyValuePairs()();
  v0[8] = GroupFaceTimeInviteAnnouncement;
  v12 = OUTLINED_FUNCTION_12_0();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = AnnounceGroupFaceTimeInviteCATPatternsExecutor.readGroupFaceTimeInviteAnnouncement(participants:_:);

  return v14(0xD00000000000003FLL, 0x8000000000451D50, GroupFaceTimeInviteAnnouncement);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_25();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_25();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.readGroupFaceTimeInviteAnnouncement(participants:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v4 + 80) = v1;

  if (!v1)
  {
    *(v4 + 88) = a1;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t outlined destroy of AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  OUTLINED_FUNCTION_40();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_4();
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(v3, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of SpeakableString?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for AnnounceGroupFaceTimeInviteCATPatternsExecuting.offerFollowUpIntent(_:) in conformance AnnounceGroupFaceTimeInviteCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + class metadata base offset for AnnounceGroupFaceTimeInviteCATPatternsExecutor) + **(**v2 + class metadata base offset for AnnounceGroupFaceTimeInviteCATPatternsExecutor));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v8(a1, a2);
}

uint64_t protocol witness for AnnounceGroupFaceTimeInviteCATPatternsExecuting.readGroupFaceTimeInviteAnnouncement(participants:_:) in conformance AnnounceGroupFaceTimeInviteCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for AnnounceGroupFaceTimeInviteCATPatternsExecutor + 8) + **(**v3 + class metadata base offset for AnnounceGroupFaceTimeInviteCATPatternsExecutor + 8));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return v10(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(uint64_t a1)
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(uint64_t a1)
{
  type metadata accessor for Double?();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for PhonePerson?, type metadata accessor for PhonePerson, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for [PhonePerson], type metadata accessor for PhonePerson, &type metadata accessor for Array);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
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

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATs::Properties_optional __swiftcall AnnounceGroupFaceTimeInviteCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceGroupFaceTimeInviteCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATs_Properties_readGroupFaceTimeInviteAnnouncement;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATs_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATs.offerFollowUpIntent()(uint64_t a1)
{
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = closure #2 in ActionableCallControlFlow.execute();

  return (v5)(a1, 0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage);
}

uint64_t AnnounceGroupFaceTimeInviteCATs.offerFollowUpIntent()()
{
  v3 = &async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AddCallParticipantCATs.errorNoTargetCall();

  return (v3)(0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage);
}

{
  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a6;
  v41 = a8;
  v42 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = OUTLINED_FUNCTION_21(v16);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v21 = OUTLINED_FUNCTION_19_16(v20);
  *(v21 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v22 + 32) = 0xD000000000000011;
  *(v22 + 40) = v23;
  outlined init with copy of SpeakableString?(a1, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v24 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
  {
    outlined destroy of SpeakableString?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
  }

  else
  {
    *(v21 + 72) = v24;
    __swift_allocate_boxed_opaque_existential_1((v21 + 48));
    OUTLINED_FUNCTION_40();
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_2_19();
  *(v21 + 80) = v26;
  *(v21 + 88) = v27;
  if (a2)
  {
    v28 = type metadata accessor for PhonePerson(0);
    v29 = a2;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    *(v21 + 104) = 0;
    *(v21 + 112) = 0;
  }

  *(v21 + 96) = v29;
  *(v21 + 120) = v28;
  strcpy((v21 + 128), "participants");
  *(v21 + 141) = 0;
  *(v21 + 142) = -5120;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v21 + 144) = a3;
  *(v21 + 168) = v30;
  *(v21 + 176) = 0x646E497473727562;
  *(v21 + 184) = 0xEA00000000007865;
  if (a5)
  {
    a4 = 0;
    *(v21 + 200) = 0;
    *(v21 + 208) = 0;
  }

  *(v21 + 192) = a4;
  OUTLINED_FUNCTION_13_10();
  *(v21 + 216) = v31;
  *(v21 + 224) = 0xD000000000000014;
  *(v21 + 232) = v32;
  if (v42)
  {
    v33 = 0;
    *(v21 + 248) = 0;
    *(v21 + 256) = 0;
  }

  else
  {
    v33 = v40;
  }

  *(v21 + 240) = v33;
  OUTLINED_FUNCTION_13_10();
  *(v21 + 264) = v34;
  *(v21 + 272) = 0xD000000000000020;
  *(v21 + 280) = v35;
  if (v36)
  {
    OUTLINED_FUNCTION_5_15();
    *(v21 + 296) = 0;
    *(v21 + 304) = 0;
  }

  else
  {
    v37 = &type metadata for Double;
    v38 = v41;
  }

  *(v21 + 288) = v38;
  *(v21 + 312) = v37;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_15();
  *(v11 + 114) = a10;
  *(v11 + 64) = a9;
  *(v11 + 72) = v10;
  *(v11 + 113) = v12;
  *(v11 + 112) = v13;
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  *(v11 + 16) = v18;
  *(v11 + 24) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v20);
  *(v11 + 80) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v21, v22, v23);
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_19_16(v3);
  *(v0 + 88) = v4;
  *(v4 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = 0xD000000000000011;
  *(v5 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = *(v0 + 32);
  OUTLINED_FUNCTION_2_19();
  *(v4 + 80) = v10;
  *(v4 + 88) = v11;
  if (v9)
  {
    v12 = type metadata accessor for PhonePerson(0);
    v13 = v9;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7_7();
  }

  v14 = *(v0 + 112);
  OUTLINED_FUNCTION_0_20(v12, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v15);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  else
  {
    v17 = *(v0 + 48);
    v16 = &type metadata for Double;
  }

  *(v4 + 192) = v17;
  OUTLINED_FUNCTION_10_8(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
  }

  else
  {
    v20 = *(v0 + 56);
    v19 = &type metadata for Double;
  }

  *(v4 + 240) = v20;
  OUTLINED_FUNCTION_9_12(v19);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    *(v4 + 296) = 0;
    *(v4 + 304) = 0;
  }

  else
  {
    v22 = *(v0 + 64);
    v23 = &type metadata for Double;
  }

  *(v4 + 288) = v22;
  *(v4 + 312) = v23;
  OUTLINED_FUNCTION_11_7();

  v24 = swift_task_alloc();
  *(v0 + 96) = v24;
  *v24 = v0;
  v24[1] = AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);
  v25 = *(v0 + 16);

  return v27(v25, 0xD00000000000003FLL, 0x8000000000451D50, v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v9();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_19_16(v3);
  *(v0 + 80) = v4;
  *(v4 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = 0xD000000000000011;
  *(v5 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = *(v0 + 24);
  OUTLINED_FUNCTION_2_19();
  *(v4 + 80) = v10;
  *(v4 + 88) = v11;
  if (v9)
  {
    v12 = type metadata accessor for PhonePerson(0);
    v13 = v9;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7_7();
  }

  v14 = *(v0 + 104);
  OUTLINED_FUNCTION_0_20(v12, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v15);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  else
  {
    v17 = *(v0 + 40);
    v16 = &type metadata for Double;
  }

  *(v4 + 192) = v17;
  OUTLINED_FUNCTION_10_8(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
  }

  else
  {
    v20 = *(v0 + 48);
    v19 = &type metadata for Double;
  }

  *(v4 + 240) = v20;
  OUTLINED_FUNCTION_9_12(v19);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    *(v4 + 296) = 0;
    *(v4 + 304) = 0;
  }

  else
  {
    v22 = *(v0 + 56);
    v23 = &type metadata for Double;
  }

  *(v4 + 288) = v22;
  *(v4 + 312) = v23;
  OUTLINED_FUNCTION_11_7();

  v24 = swift_task_alloc();
  *(v0 + 88) = v24;
  *v24 = v0;
  v24[1] = AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);

  return v26(0xD00000000000003FLL, 0x8000000000451D50, v4);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  *(v10 + 56) = v11;
  *(v10 + 64) = v9;
  *(v10 + 106) = a9;
  *(v10 + 105) = v12;
  *(v10 + 40) = v13;
  *(v10 + 48) = v14;
  *(v10 + 104) = v15;
  *(v10 + 24) = v16;
  *(v10 + 32) = v17;
  *(v10 + 16) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v19);
  *(v10 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v20, v21, v22);
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v5 + 96) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(a1);
  }
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a9;
  v36 = a8;
  v37 = a5;
  v38 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_21(v13);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v18 = OUTLINED_FUNCTION_19_16(v17);
  *(v18 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v19 + 32) = 0xD000000000000011;
  *(v19 + 40) = v20;
  outlined init with copy of SpeakableString?(a1, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
  {
    outlined destroy of SpeakableString?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
  }

  else
  {
    *(v18 + 72) = v21;
    __swift_allocate_boxed_opaque_existential_1((v18 + 48));
    OUTLINED_FUNCTION_40();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_2_19();
  *(v18 + 80) = v23;
  *(v18 + 88) = v24;
  if (a2)
  {
    v25 = type metadata accessor for PhonePerson(0);
    v26 = a2;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_0_20(v25, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v27);
  if (v37)
  {
    a4 = 0;
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
  }

  *(v18 + 192) = a4;
  OUTLINED_FUNCTION_13_10();
  *(v18 + 216) = v28;
  *(v18 + 224) = 0xD000000000000014;
  *(v18 + 232) = v29;
  if (v38)
  {
    a6 = 0;
    *(v18 + 248) = 0;
    *(v18 + 256) = 0;
  }

  *(v18 + 240) = a6;
  OUTLINED_FUNCTION_13_10();
  *(v18 + 264) = v30;
  *(v18 + 272) = 0xD000000000000020;
  *(v18 + 280) = v31;
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    *(v18 + 296) = 0;
    *(v18 + 304) = 0;
  }

  else
  {
    v33 = &type metadata for Double;
    v34 = v36;
  }

  *(v18 + 288) = v34;
  *(v18 + 312) = v33;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceGroupFaceTimeInviteCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATs;
  if (!type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.offerFollowUpIntent()()
{
  OUTLINED_FUNCTION_27();
  v3 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return (v3)(0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage);
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::OfferFollowUpIntentDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::OfferFollowUpIntentDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.offerFollowUpIntentAsLabels()()
{
  OUTLINED_FUNCTION_27();
  v4 = &async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds();
  *v1 = v0;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return (v4)(0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage, &type metadata for AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds, v2);
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_8(v1, v2, v3, v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  v3[10] = v5;
  *(v5 + 16) = xmmword_427BC0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0x8000000000457900;
  outlined init with copy of SpeakableString?(v0, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20_12(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  OUTLINED_FUNCTION_4_11();
  if (v0)
  {
    v9 = type metadata accessor for PhonePerson(0);
    v10 = v0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_1_27(v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v11);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  else
  {
    v13 = v3[5];
    v12 = &type metadata for Double;
  }

  *(v5 + 192) = v13;
  OUTLINED_FUNCTION_10_8(v12);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
  }

  else
  {
    v16 = v3[6];
    v15 = &type metadata for Double;
  }

  *(v5 + 240) = v16;
  OUTLINED_FUNCTION_9_12(v15);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v18 = v3[7];
    v19 = &type metadata for Double;
  }

  *(v5 + 288) = v18;
  *(v5 + 312) = v19;
  OUTLINED_FUNCTION_11_7();

  v20 = swift_task_alloc();
  v3[11] = v20;
  *v20 = v3;
  v20[1] = AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);

  return v22(v4 + 46, 0x8000000000451D50, v5);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v2 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_49();

    return v8(v7);
  }
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::ReadGroupFaceTimeInviteAnnouncementDialogIds_optional __swiftcall AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD000000000000031;
      break;
    case 3:
      result = 0xD00000000000003BLL;
      break;
    case 4:
    case 8:
      result = 0xD000000000000033;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000032;
      break;
    case 9:
      result = 0xD00000000000003DLL;
      break;
    case 10:
      result = 0xD000000000000035;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::ReadGroupFaceTimeInviteAnnouncementDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::ReadGroupFaceTimeInviteAnnouncementDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncementAsLabels(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_8(v1, v2, v3, v4, v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  v3[10] = v5;
  *(v5 + 16) = xmmword_427BC0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0x8000000000457900;
  outlined init with copy of SpeakableString?(v0, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20_12(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  OUTLINED_FUNCTION_4_11();
  if (v0)
  {
    v9 = type metadata accessor for PhonePerson(0);
    v10 = v0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_1_27(v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v11);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  else
  {
    v13 = v3[5];
    v12 = &type metadata for Double;
  }

  *(v5 + 192) = v13;
  OUTLINED_FUNCTION_10_8(v12);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
  }

  else
  {
    v16 = v3[6];
    v15 = &type metadata for Double;
  }

  *(v5 + 240) = v16;
  OUTLINED_FUNCTION_9_12(v15);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v18 = v3[7];
    v19 = &type metadata for Double;
  }

  *(v5 + 288) = v18;
  *(v5 + 312) = v19;
  OUTLINED_FUNCTION_11_7();

  v20 = swift_task_alloc();
  v3[11] = v20;
  GroupFaceTimeInviteAnnouncementDialogIds = lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds();
  *v20 = v3;
  v20[1] = AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncementAsLabels(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);

  return v23(v4 + 46, 0x8000000000451D50, v5, &type metadata for AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds, GroupFaceTimeInviteAnnouncementDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v2 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_49();

    return v8(v7);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds);
  }

  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceGroupFaceTimeInviteCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATs::Properties_optional __swiftcall AnnounceIncomingCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATs_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATs_Properties_unknownDefault;
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

unint64_t AnnounceIncomingCallCATs.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceIncomingCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceIncomingCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "incomingCallConcept");
  if (a1)
  {
    v6 = type metadata accessor for PhoneIncomingCall();
    v7 = a1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v7;
  *(v5 + 72) = v6;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_14(v5);

  return v9(v7);
}

{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:);

  return v8(0xD00000000000002ALL, 0x8000000000452030, v3);
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 48) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(a1);
  }
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *(v3 + 16) = xmmword_424FD0;
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000000457A70;
  if (a1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
    v5 = a1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_35_1(v8);
  *(v9 + 16) = xmmword_424FD0;
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40();
    (*(v11 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[5];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[6] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[7] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_14(v7);

  return v11(v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  v1 = v0[4];
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:);

  return v10(0xD000000000000028, 0x8000000000452060, v4);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 56) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(a1);
  }
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_35_1(v6);
  *(v7 + 16) = xmmword_424FD0;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_40();
    (*(v9 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceIncomingCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceIncomingCallCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceIncomingCallCATs;
  if (!type metadata singleton initialization cache for AnnounceIncomingCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::Properties_optional __swiftcall AnnounceIncomingCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATsSimple_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATsSimple_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:);

  return v7(0xD00000000000002ALL, 0x8000000000452030, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  result = 0x656D695465636146;
  switch(a1)
  {
    case 2:
      result = 0x636972656E6547;
      break;
    case 3:
      result = 0x656E6F6850;
      break;
    case 4:
    case 5:
    case 6:
      result = 0x7261506472696854;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds();
  *v5 = v0;
  v5[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);

  return v8(0xD00000000000002ALL, 0x8000000000452030, v3, &type metadata for AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds, v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  *v9 = v2;
  v9[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:);

  return v11(v3 + 23, 0x8000000000452060, v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::OfferFollowUpIntentDialogIds_optional __swiftcall AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::OfferFollowUpIntentDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::OfferFollowUpIntentDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds@<X0>(unint64_t *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  v10 = lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds();
  *v9 = v2;
  v9[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:);

  return v12(v3 + 23, 0x8000000000452060, v5, &type metadata for AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds, v10);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t AnnounceIncomingCallCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t AnnounceIncomingCallCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceIncomingCallCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceIncomingCallCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceIncomingCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for IncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:) in conformance AnnounceIncomingCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

uint64_t protocol witness for IncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:) in conformance AnnounceIncomingCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

uint64_t AnnounceIncomingCallerOutputStrategy.init(announceCallsContext:incomingCallCats:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = type metadata accessor for AnnounceIncomingCallCATsSimple(0);
  *(a4 + 24) = result;
  *(a4 + 32) = &protocol witness table for AnnounceIncomingCallCATsSimple;
  *a4 = a3;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2 & 1;
  return result;
}

void *IdentifyIncomingCallerOutputStrategy.announceCallsContext.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t AnnounceIncomingCallerOutputStrategy.makePromptForConfirmationFlow<A>(app:intentResponse:sharedGlobals:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for IncomingCallActionConfirmationStrategy(0, a4, a5, a4);
  outlined init with copy of SignalProviding(v5, v26);
  outlined init with copy of SignalProviding(a3, v25);
  v10 = *(v5 + 40);
  v11 = *(v5 + 48);
  v12 = v10;
  v13 = a2;
  v14 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a4, a5);
  default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(a4, a5);
  v15 = IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(v13, v26, v25, v10, v11, v14, &v24);
  type metadata accessor for AnnounceCallConfirmationStrategy(0, a4, a5, v16);
  outlined init with copy of SignalProviding(a3, v26);
  v17 = AnnounceCallConfirmationStrategy.__allocating_init(wrapped:sharedGlobals:)(v15, v26);
  v18 = type metadata accessor for IncomingCallActionConfirmation(255);
  v19 = lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation();
  type metadata accessor for BargeInCapablePromptForConfirmationFlow(0, a4, v18, v19);
  *&v25[0] = v13;
  *&v24 = v17;
  outlined init with copy of SignalProviding(a3, v26);
  v20 = v13;

  swift_getWitnessTable();
  BargeInCapablePromptForConfirmationFlow.__allocating_init<A>(itemToConfirm:strategy:sharedGlobals:)();
  *&v26[0] = v21;
  swift_getWitnessTable();
  v22 = Flow.eraseToAnyValueFlow()();

  return v22;
}

unint64_t lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation()
{
  result = lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation;
  if (!lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation)
  {
    type metadata accessor for IncomingCallActionConfirmation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation);
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

uint64_t getEnumTagSinglePayload for AnnounceIncomingCallerOutputStrategy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AnnounceIncomingCallerOutputStrategy(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t key path setter for AnnounceIncomingCallNotificationDirectAction.callProviderBundleId : AnnounceIncomingCallNotificationDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.callProviderBundleId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 56, a2);
  v3 = *(v2 + 56);

  return v3;
}

uint64_t key path setter for AnnounceIncomingCallNotificationDirectAction.callUUID : AnnounceIncomingCallNotificationDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.callUUID.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 72, a2);
  v3 = *(v2 + 72);

  return v3;
}

void key path setter for AnnounceIncomingCallNotificationDirectAction.caller : AnnounceIncomingCallNotificationDirectAction(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
  v5 = v2;
}

void *AnnounceIncomingCallNotificationDirectAction.caller.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 88, a2);
  v3 = *(v2 + 88);
  v4 = v3;
  return v3;
}

void key path setter for AnnounceIncomingCallNotificationDirectAction.notification : AnnounceIncomingCallNotificationDirectAction(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
  v5 = v2;
}

id AnnounceIncomingCallNotificationDirectAction.notification.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 96, a2);
  v3 = *(v2 + 96);

  return v3;
}

uint64_t key path setter for AnnounceIncomingCallNotificationDirectAction.callCapability : AnnounceIncomingCallNotificationDirectAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  OUTLINED_FUNCTION_9_1();
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = specialized AnnounceIncomingCallNotificationDirectAction.__allocating_init(invocation:contactStore:)(a1, v9, v2, v4, v5);
  return OUTLINED_FUNCTION_9_14(v11);
}

uint64_t AnnounceIncomingCallNotificationDirectAction.__allocating_init(appBundleId:notification:contactStore:)()
{
  OUTLINED_FUNCTION_7_8();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v1);
  v3 = OUTLINED_FUNCTION_3_9(v2, v7);
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_16();
  return OUTLINED_FUNCTION_9_14(v5);
}

uint64_t AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)()
{
  OUTLINED_FUNCTION_7_8();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v1);
  v3 = OUTLINED_FUNCTION_3_9(v2, v7);
  v4(v3);
  v5 = OUTLINED_FUNCTION_5_16();
  return OUTLINED_FUNCTION_9_14(v5);
}

id AnnounceIncomingCallNotificationDirectAction.callRecord.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  OUTLINED_FUNCTION_2_0();
  v4 = (*(v3 + 152))();
  v6 = v5;
  v7 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  OUTLINED_FUNCTION_2_0();
  v9 = (*(v8 + 176))();
  OUTLINED_FUNCTION_2_0();
  v11 = (*(v10 + 224))();
  v12 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  OUTLINED_FUNCTION_2_0();
  v14 = (*(v13 + 128))();
  v16 = v15;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  v18 = objc_allocWithZone(INCallRecord);
  v19 = @nonobjc INCallRecord.init(__identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v4, v6, v2, v9, 6, v11, 0, 0, 3, v12, 0, 0, v14, v16, isa);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = v19;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_0, v22, v23, "#AnnounceIncomingCallNotificationDirectAction: Call Notification INCallRecord to announce = %@.", v24, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v25);
    OUTLINED_FUNCTION_26_0(v24);
  }

  return v21;
}

id AnnounceIncomingCallNotificationDirectAction.makeINPerson(contact:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  if (!a1)
  {
    return 0;
  }

  v6 = a1;
  v7 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v6, &selRef_cnContactIdentifier);
  if (v8 && (v9 = v7, v10 = v8, v11 = v1[5], v12 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v11), v36 = (*(v12 + 8))(v9, v10, v11, v12), , v36))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "#AnnounceIncomingCallNotificationDirectAction: Make INPerson in CNContactStore.", v40, 2u);
      OUTLINED_FUNCTION_26_0(v40);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#AnnounceIncomingCallNotificationDirectAction: Make INPerson with custom identifier.", v16, 2u);
      OUTLINED_FUNCTION_26_0(v16);
    }

    v17 = [v6 handle];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v6 handleType];
    v22 = objc_allocWithZone(INPersonHandle);
    v23 = @nonobjc INPersonHandle.init(value:type:)(v18, v20, v21);
    v24 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v24);
    v25 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v6, &selRef_displayName);
    v27 = v26;
    v28 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v6, &selRef_cnContactIdentifier);
    v30 = v29;
    v31 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v6, &selRef_customIdentifier);
    v33 = v32;
    v34 = objc_allocWithZone(INPerson);
    v36 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v23, v5, v25, v27, 0, v28, v30, v31, v33);
  }

  return v36;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.__deallocating_deinit()
{
  AnnounceIncomingCallNotificationDirectAction.deinit();

  return swift_deallocClassInstance();
}

id @nonobjc INCallRecord.init(__identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = String._bridgeToObjectiveC()();

  v19 = type metadata accessor for Date();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v19) != 1)
  {
    v20 = a3;
    Date._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_8_17();
    (*(v21 + 8))(a3, v19);
  }

  if (a12)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  if (a14)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v26 initWithIdentifier:v18 dateCreated:v20 caller:a4 callRecordType:a5 callCapability:a6 callDuration:a7 unseen:a8 preferredCallProvider:a9 numberOfCalls:a10 providerId:v22 providerBundleId:v23 isCallerIdBlocked:a15];

  return v24;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = type metadata accessor for PersonNameComponents();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = a2;
    PersonNameComponents._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_8_17();
    (*(v18 + 8))(a2, v16);
  }

  if (a4)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  if (!a7)
  {
    v20 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v20 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = String._bridgeToObjectiveC()();

LABEL_11:
  v22 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21];

  return v22;
}

uint64_t outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t specialized AnnounceIncomingCallNotificationDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48[3] = a4;
  v48[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = Parse.DirectInvocation.userData.getter();
  if (!v10)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "#AnnounceIncomingCallNotificationDirectAction: No userData.";
LABEL_23:
    _os_log_impl(&dword_0, v18, v19, v21, v20, 2u);

LABEL_24:

    v24 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v24 - 8) + 8))(a1, v24);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return 0;
  }

  v11 = v10;
  specialized Dictionary.subscript.getter(0x6C646E7542707061, 0xEB00000000644965, v10, &v44);
  if (!v45)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v44, &_sypSgMd, &_sypSgMR);
LABEL_13:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "#AnnounceIncomingCallNotificationDirectAction: No App bundleId.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v13 = v46;
  v12 = v47;
  specialized Dictionary.subscript.getter(0x6163696669746F6ELL, 0xEC0000006E6F6974, v11, &v44);

  if (!v45)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v44, &_sypSgMd, &_sypSgMR);
LABEL_19:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "#AnnounceIncomingCallNotificationDirectAction: No notification data in UserData.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v15 = v46;
  v14 = v47;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for UNNotification, UNNotification_ptr);
  v16 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v27 = v16;
  if (!v16)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v18, v38, "#AnnounceIncomingCallNotificationDirectAction: No notification in archived data.", v39, 2u);
    }

    outlined consume of Data._Representation(v15, v14);
    goto LABEL_24;
  }

  v28 = one-time initialization token for siriPhone;
  v29 = v16;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  v31 = v29;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    log = v32;
    v34 = swift_slowAlloc();
    v41 = v33;
    v35 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v44 = v43;
    *v34 = 136315394;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v44);
    *(v34 + 12) = 2112;
    *(v34 + 14) = v31;
    *v35 = v27;
    v36 = v31;
    _os_log_impl(&dword_0, log, v41, "#AnnounceIncomingCallNotificationDirectAction: initialized with bundleID: %s and notification %@.", v34, 0x16u);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
  }

  outlined init with copy of SignalProviding(v48, &v44);
  v25 = (*(a3 + 248))(v13, v12, v31, &v44);
  outlined consume of Data._Representation(v15, v14);

  v40 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v40 - 8) + 8))(a1, v40);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v25;
}

void *specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35[3] = a6;
  v35[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[11] = 0;
  a5[7] = a1;
  a5[8] = a2;
  v14 = [a3 request];
  v15 = [v14 identifier];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  a5[9] = v16;
  a5[10] = v18;
  a5[12] = a3;
  outlined init with copy of SignalProviding(v35, (a5 + 2));
  v19 = a3;
  v20 = [v19 request];
  v21 = [v20 content];

  v22 = [v21 communicationContext];
  if (!v22)
  {
    v28 = 0;
    a5[13] = 1;
LABEL_12:
    v29 = (*(*a5 + 264))(v28);

    goto LABEL_13;
  }

  v23 = [v22 capabilities];
  v24 = 1;
  if (v23 == &dword_0 + 1)
  {
    v24 = 2;
  }

  a5[13] = v24;
  v25 = [v22 sender];
  if (!v25)
  {
    v30 = [v22 recipients];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _UNNotificationContact, _UNNotificationContact_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v31))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v31 & 0xC000000000000001) == 0, v31);
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v31 + 32);
      }

      v28 = v32;
    }

    else
    {

      v28 = 0;
    }

    goto LABEL_12;
  }

  v26 = v25;
  v27 = *(*a5 + 264);
  v28 = v25;
  v29 = v27(v26);

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v35);
  swift_beginAccess();
  v33 = a5[11];
  a5[11] = v29;

  return a5;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATs::Properties_optional __swiftcall AnnounceVoicemailCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATs_Properties_readVoicemailAnnouncementHint;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATs_Properties_unknownDefault;
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

unint64_t AnnounceVoicemailCATsSimple.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceVoicemailCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:completion:)(unint64_t a1, char a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_1_14(v11, xmmword_426980);
  if (a2)
  {
    a1 = 0;
    v11[3].n128_u64[1] = 0;
    v11[4].n128_u64[0] = 0;
  }

  v11[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v11[4].n128_u64[1] = v12;
  v11[5].n128_u64[0] = 0xD00000000000001FLL;
  v11[5].n128_u64[1] = v13;
  v11[6].n128_u8[0] = a3 & 1;
  OUTLINED_FUNCTION_2_20(&type metadata for Bool);
  if (a4)
  {
    v14 = type metadata accessor for PhoneCallRecord(0);
    v15 = a4;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v11[9].n128_u64[1] = 0;
    v11[10].n128_u64[0] = 0;
  }

  v11[9].n128_u64[0] = v15;
  v11[10].n128_u64[1] = v14;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_1_14(v3, xmmword_426980);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  else
  {
    v4 = *(v0 + 24);
  }

  v5 = *(v0 + 32);
  v3[3].n128_u64[0] = v4;
  OUTLINED_FUNCTION_39_0();
  v3[4].n128_u64[1] = v6;
  v3[5].n128_u64[0] = 0xD00000000000001FLL;
  v3[5].n128_u64[1] = v7;
  v3[6].n128_u8[0] = v8;
  OUTLINED_FUNCTION_2_20(&type metadata for Bool);
  v9 = 0;
  if (v5)
  {
    v9 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[9].n128_u64[1] = 0;
    v3[10].n128_u64[0] = 0;
  }

  v3[9].n128_u64[0] = v5;
  v3[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v12 = *(v0 + 16);

  return v14(v12, 0xD00000000000002BLL, 0x80000000004520E0, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v7();
  }
}

{
  v1 = *(v0 + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  *(v0 + 40) = v3;
  OUTLINED_FUNCTION_1_14(v3, xmmword_426980);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  else
  {
    v4 = *(v0 + 16);
  }

  v5 = *(v0 + 24);
  v3[3].n128_u64[0] = v4;
  OUTLINED_FUNCTION_39_0();
  v3[4].n128_u64[1] = v6;
  v3[5].n128_u64[0] = 0xD00000000000001FLL;
  v3[5].n128_u64[1] = v7;
  v3[6].n128_u8[0] = v8;
  OUTLINED_FUNCTION_2_20(&type metadata for Bool);
  v9 = 0;
  if (v5)
  {
    v9 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[9].n128_u64[1] = 0;
    v3[10].n128_u64[0] = 0;
  }

  v3[9].n128_u64[0] = v5;
  v3[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v10;
  *v10 = v11;
  v10[1] = AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);

  return v13(0xD00000000000002BLL, 0x80000000004520E0, v3);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_5_2();

    return v8(v7);
  }
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 65) = a3;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(unint64_t a1, char a2, char a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_1_14(v9, xmmword_426980);
  if (a2)
  {
    a1 = 0;
    v9[3].n128_u64[1] = 0;
    v9[4].n128_u64[0] = 0;
  }

  v9[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v9[4].n128_u64[1] = v10;
  v9[5].n128_u64[0] = 0xD00000000000001FLL;
  v9[5].n128_u64[1] = v11;
  v9[6].n128_u8[0] = a3 & 1;
  v9[7].n128_u64[1] = &type metadata for Bool;
  v9[8].n128_u64[0] = 0x69616D6563696F76;
  v9[8].n128_u64[1] = 0xE90000000000006CLL;
  if (a4)
  {
    v12 = type metadata accessor for PhoneCallRecord(0);
    v13 = a4;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v9[9].n128_u64[1] = 0;
    v9[10].n128_u64[0] = 0;
  }

  v9[9].n128_u64[0] = v13;
  v9[10].n128_u64[1] = v12;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:completion:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  *(v15 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = 0xD000000000000011;
  *(v16 + 40) = v17;
  if (a2)
  {
    a1 = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
  }

  *(v15 + 48) = a1;
  OUTLINED_FUNCTION_39_0();
  *(v15 + 72) = v18;
  *(v15 + 80) = 0xD000000000000011;
  *(v15 + 88) = v19;
  if (a4)
  {
    a3 = 0;
    *(v15 + 104) = 0;
    *(v15 + 112) = 0;
  }

  *(v15 + 96) = a3;
  OUTLINED_FUNCTION_3_10();
  *(v15 + 120) = v20;
  *(v15 + 128) = v21;
  *(v15 + 136) = 0xE900000000000074;
  if (a6)
  {
    a5 = 0;
    v22 = 0;
    *(v15 + 152) = 0;
    *(v15 + 160) = 0;
  }

  else
  {
    v22 = &type metadata for Double;
  }

  *(v15 + 144) = a5;
  *(v15 + 168) = v22;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = v7;
  *(v8 + 82) = a7;
  *(v8 + 81) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 80) = a3;
  *(v8 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)()
{
  v1 = *(v0 + 80);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v6 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_11_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v8 = *(v0 + 32);
  }

  *(v3 + 96) = v8;
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_13_11(v9);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 40);
    v12 = &type metadata for Double;
  }

  *(v3 + 144) = v11;
  *(v3 + 168) = v12;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v13;
  *v13 = v14;
  v13[1] = AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:);
  v15 = *(v0 + 16);

  return v17(v15, 0xD00000000000002FLL, 0x8000000000452110, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v6 = &type metadata for Double;
  }

  OUTLINED_FUNCTION_11_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v8 = *(v0 + 24);
  }

  *(v3 + 96) = v8;
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_13_11(v9);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = &type metadata for Double;
  }

  *(v3 + 144) = v11;
  *(v3 + 168) = v12;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v13;
  *v13 = v14;
  v13[1] = AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:);

  return v16(0xD00000000000002FLL, 0x8000000000452110, v3);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_5_2();

    return v8(v7);
  }
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = v6;
  *(v7 + 73) = a4;
  *(v7 + 72) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47(v12);
  *(v13 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000011;
  *(v14 + 40) = v15;
  if (a2)
  {
    a1 = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  *(v13 + 48) = a1;
  OUTLINED_FUNCTION_39_0();
  *(v13 + 72) = v16;
  *(v13 + 80) = 0xD000000000000011;
  *(v13 + 88) = v17;
  if (a4)
  {
    a3 = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  *(v13 + 96) = a3;
  OUTLINED_FUNCTION_3_10();
  *(v13 + 120) = v18;
  *(v13 + 128) = v19;
  *(v13 + 136) = 0xE900000000000074;
  if (a6)
  {
    a5 = 0;
    v20 = 0;
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  else
  {
    v20 = &type metadata for Double;
  }

  *(v13 + 144) = a5;
  *(v13 + 168) = v20;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceVoicemailCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceVoicemailCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceVoicemailCATs;
  if (!type metadata singleton initialization cache for AnnounceVoicemailCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::Properties_optional __swiftcall AnnounceVoicemailCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATsSimple_Properties_readVoicemailAnnouncementHint;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATsSimple_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 65) = a3;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)()
{
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_1_14(v5, xmmword_426980);
  if (v3)
  {
    OUTLINED_FUNCTION_5_15();
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_14_13(v6);
  v7 = OUTLINED_FUNCTION_3_11(&type metadata for Bool);
  if (v0)
  {
    v7 = type metadata accessor for PhoneCallRecord(v7);
  }

  else
  {
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v0;
  v5[10].n128_u64[1] = v7;
  OUTLINED_FUNCTION_9_13();
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  *v8 = v1;
  v8[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);

  return v10(v2 + 12, 0x80000000004520E0, v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementDialogIds_optional __swiftcall AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746361746E6F63;
  }

  if (a1 == 1)
  {
    return 0x72656C6C61436F6ELL;
  }

  return 0xD000000000000012;
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 65) = a3;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:)()
{
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_1_14(v5, xmmword_426980);
  if (v3)
  {
    OUTLINED_FUNCTION_5_15();
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_14_13(v6);
  v7 = OUTLINED_FUNCTION_3_11(&type metadata for Bool);
  if (v0)
  {
    v7 = type metadata accessor for PhoneCallRecord(v7);
  }

  else
  {
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v0;
  v5[10].n128_u64[1] = v7;
  OUTLINED_FUNCTION_9_13();
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  VoicemailAnnouncementDialogIds = lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds();
  *v8 = v1;
  v8[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:);

  return v11(v2 + 12, 0x80000000004520E0, v5, &type metadata for AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds, VoicemailAnnouncementDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds);
  }

  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = v6;
  *(v7 + 73) = a4;
  *(v7 + 72) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_426980;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x8000000000457C50;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v0 + 16);
    v4 = &type metadata for Double;
  }

  v6 = *(v0 + 73);
  *(v3 + 48) = v5;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000011;
  *(v3 + 88) = 0x8000000000457C70;
  if (v6)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v7 = *(v0 + 24);
  }

  *(v3 + 96) = v7;
  OUTLINED_FUNCTION_3_10();
  *(v3 + 120) = v8;
  *(v3 + 128) = v9;
  *(v3 + 136) = 0xE900000000000074;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = &type metadata for Double;
  }

  *(v3 + 144) = v11;
  *(v3 + 168) = v12;
  v15 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  *v13 = v0;
  v13[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:);

  return v15(0xD00000000000002FLL, 0x8000000000452110, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementHintDialogIds_optional __swiftcall AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementHintDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementHintDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHintAsLabels(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = v6;
  *(v7 + 73) = a4;
  *(v7 + 72) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHintAsLabels(announcementCount:daysSinceLastHint:hintCount:)()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_426980;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x8000000000457C50;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v0 + 16);
    v4 = &type metadata for Double;
  }

  v6 = *(v0 + 73);
  *(v3 + 48) = v5;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000011;
  *(v3 + 88) = 0x8000000000457C70;
  if (v6)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v7 = *(v0 + 24);
  }

  *(v3 + 96) = v7;
  OUTLINED_FUNCTION_3_10();
  *(v3 + 120) = v8;
  *(v3 + 128) = v9;
  *(v3 + 136) = 0xE900000000000074;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = &type metadata for Double;
  }

  *(v3 + 144) = v11;
  *(v3 + 168) = v12;
  v16 = (&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  VoicemailAnnouncementHintDialogIds = lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds();
  *v13 = v0;
  v13[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHintAsLabels(announcementCount:daysSinceLastHint:hintCount:);

  return v16(0xD00000000000002FLL, 0x8000000000452110, v3, &type metadata for AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds, VoicemailAnnouncementHintDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds);
  }

  return result;
}

uint64_t AnnounceVoicemailCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
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

uint64_t AnnounceVoicemailCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t AnnounceVoicemailCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceVoicemailCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnnounceVoicemailCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceVoicemailCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

__int128 *AnnounceVoicemailDirectAction.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_6_12(&one-time initialization token for identifier);
  }

  return &static AnnounceVoicemailDirectAction.identifier;
}

uint64_t static AnnounceVoicemailDirectAction.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_6_12(&one-time initialization token for identifier);
  }

  v0 = static AnnounceVoicemailDirectAction.identifier;

  return v0;
}

uint64_t AnnounceVoicemailReadingState.lastNotificationId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *AnnounceVoicemailDirectAction.__allocating_init(voicemailIdentifier:contactInfo:synchronousBurstIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10_15();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *AnnounceVoicemailDirectAction.init(voicemailIdentifier:contactInfo:synchronousBurstIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

id AnnounceVoicemailDirectAction.toCallRecord(contactStore:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v48 - v5;
  v7 = v1[5];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = v2[4];
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v29 = ContactStoring.persons(withHandle:)(v8, v7, v9, v10);
  v30 = specialized Array.count.getter(v29);
  if (!v30)
  {

LABEL_3:
    v11 = 0;
    goto LABEL_4;
  }

  v31 = v30;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v29 & 0xC000000000000001) == 0, v29);
  if ((v29 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v32 = *(v29 + 32);
  }

  v11 = v32;
  if (v31 < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  specialized Array._checkIndex(_:)(1, v29);
  specialized Array._checkIndex(_:)(v31, v29);
  if ((v29 & 0xC000000000000001) == 0 || v31 == 1)
  {
  }

  else
  {
    type metadata accessor for INPerson();

    v33 = 1;
    do
    {
      v34 = v33 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v33);
      v33 = v34;
    }

    while (v31 != v34);
  }

  if (v29 >> 62)
  {
LABEL_28:
    v41 = _CocoaArrayWrapper.subscript.getter();
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v35 = v41;

    if ((v38 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v35 = v29 & 0xFFFFFFFFFFFFFF8;
  v36 = v35 + 32;
  v37 = 1;
  v38 = (2 * v31) | 1;
  if ((v38 & 1) == 0)
  {
LABEL_25:
    specialized _copyCollectionToContiguousArray<A>(_:)(v35, v36, v37, v38);
    v40 = v39;
LABEL_35:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

LABEL_29:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    v45 = _swiftEmptyArrayStorage;
  }

  v46 = v45[2];

  if (__OFSUB__(v38 >> 1, v37))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v46 != (v38 >> 1) - v37)
  {
LABEL_38:
    swift_unknownObjectRelease_n();
    goto LABEL_25;
  }

  v40 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v40)
  {
    v40 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

LABEL_36:
  outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v40, v11);

  v47 = v11;
LABEL_4:
  v12 = v2[2];
  v13 = v2[3];
  v14 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_426260;
    *(v15 + 32) = v11;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(NSNumber);

  v17 = [v16 initWithInteger:1];
  v18 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v19 = objc_allocWithZone(INCallRecord);
  v20 = @nonobjc INCallRecord.init(__identifier:dateCreated:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:participants:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v12, v13, v6, 5, 1, 0, 0, 1, v15, v17, 0, 0, 0, 0, v18);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriPhone);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_0, v23, v24, "Voicemail INCallRecord to announce = %@", v25, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  return v22;
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional __swiftcall AnnounceVoicemailDirectAction.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailDirectAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t AnnounceVoicemailDirectAction.CodingKeys.rawValue.getter(char a1)
{
  result = 0x49746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailDirectAction.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailDirectAction.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailDirectAction.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceVoicemailDirectAction.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance AnnounceVoicemailDirectAction.CodingKeys@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailDirectAction.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnounceVoicemailDirectAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnounceVoicemailDirectAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnounceVoicemailDirectAction.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_10_15();
  v2 = swift_allocObject();
  AnnounceVoicemailDirectAction.init(from:)(a1);
  return v2;
}

void *AnnounceVoicemailDirectAction.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for AnnounceVoicemailDirectAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v33) = 1;
    OUTLINED_FUNCTION_7_9();
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v8 = v6;
    if (v6)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriPhone);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      v30 = v11;
      if (os_log_type_enabled(v10, v11))
      {
        v31 = v10;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v33 = v13;
        *v12 = 136315138;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v8, &v33);
        _os_log_impl(&dword_0, v31, v30, "#AnnounceVoicemailDirectAction Using MessageIdentifier %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {
      }
    }

    else
    {
      LOBYTE(v33) = 0;
      OUTLINED_FUNCTION_7_9();
      v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (v15)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.siriPhone);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_0, v17, v18, "#AnnounceVoicemailDirectAction Could not find a voicemail identifier in direct invocation payload", v19, 2u);
          OUTLINED_FUNCTION_8();
        }

        v32 = 0;
        v8 = 0xE000000000000000;
      }

      else
      {
        v24 = v14;
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.siriPhone);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          *(v28 + 4) = v24;
          _os_log_impl(&dword_0, v26, v27, "#AnnounceVoicemailDirectAction Using VMVoicemailIdentifier %ld", v28, 0xCu);
          OUTLINED_FUNCTION_8();
        }

        v33 = v24;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v8 = v29;
      }
    }

    v3[2] = v32;
    v3[3] = v8;
    LOBYTE(v33) = 2;
    OUTLINED_FUNCTION_7_9();
    v3[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v3[5] = v20;
    LOBYTE(v33) = 3;
    OUTLINED_FUNCTION_7_9();
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = OUTLINED_FUNCTION_5_17();
    v23(v22);
    v3[6] = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unsigned __int8 *AnnounceVoicemailDirectAction.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = v45 - v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v45[0] = v8;
  __chkstk_darwin(v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7();
  v46 = v13;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v16 = v45 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  v45[1] = v2;
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v30 = v45[0];
    (*(v45[0] + 32))(v11, v6, v7);
    LOBYTE(v48) = 1;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v31;
    if (v31)
    {
      (*(v30 + 8))(v11, v7);
      return (*(v46 + 8))(v16, v12);
    }

    (*(v30 + 8))(v11, v7);
    goto LABEL_76;
  }

  v19 = v47;
  result = _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = HIBYTE(v17) & 0xF;
  v22 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v23 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_76;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {

    specialized _parseInteger<A, B>(ascii:radix:)(v18, v17, 10);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_76:
    LOBYTE(v48) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    if (!v19)
    {
      LOBYTE(v48) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    return (*(v46 + 8))(v16, v12);
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      result = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v24 = *result;
    if (v24 == 43)
    {
      if (v22 >= 1)
      {
        if (v22 != 1)
        {
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_12();
              if (!v26 & v25)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_1_28();
              if (!v26 || __OFADD__(v35, v34))
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_13_12();
              if (v26)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_73;
      }

      goto LABEL_84;
    }

    if (v24 != 45)
    {
      if (v22)
      {
        v38 = 0;
        if (result)
        {
          while (1)
          {
            v39 = *result - 48;
            if (v39 > 9)
            {
              goto LABEL_73;
            }

            v40 = 10 * v38;
            if ((v38 * 10) >> 64 != (10 * v38) >> 63)
            {
              goto LABEL_73;
            }

            v38 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v22)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_73:
      v29 = 1;
LABEL_74:
      v50 = v29;
      if (v29)
      {
        goto LABEL_76;
      }

LABEL_75:
      LOBYTE(v48) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v19)
      {
        goto LABEL_76;
      }

      return (*(v46 + 8))(v16, v12);
    }

    if (v22 >= 1)
    {
      if (v22 != 1)
      {
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_12();
            if (!v26 & v25)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_1_28();
            if (!v26 || __OFSUB__(v28, v27))
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_13_12();
            if (v26)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_64:
        v29 = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v48 = v18;
  v49 = v17 & 0xFFFFFFFFFFFFFFLL;
  if (v18 != 43)
  {
    if (v18 != 45)
    {
      if (v21)
      {
        while (1)
        {
          OUTLINED_FUNCTION_3_12();
          if (!v26 & v25)
          {
            break;
          }

          OUTLINED_FUNCTION_1_28();
          if (!v26 || __OFADD__(v42, v41))
          {
            break;
          }

          OUTLINED_FUNCTION_13_12();
          if (v26)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v21)
    {
      if (v21 != 1)
      {
        OUTLINED_FUNCTION_15_16();
        while (1)
        {
          OUTLINED_FUNCTION_3_12();
          if (!v26 & v25)
          {
            break;
          }

          OUTLINED_FUNCTION_1_28();
          if (!v26 || __OFSUB__(v33, v32))
          {
            break;
          }

          OUTLINED_FUNCTION_13_12();
          if (v26)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_83;
  }

  if (v21)
  {
    if (v21 != 1)
    {
      OUTLINED_FUNCTION_15_16();
      while (1)
      {
        OUTLINED_FUNCTION_3_12();
        if (!v26 & v25)
        {
          break;
        }

        OUTLINED_FUNCTION_1_28();
        if (!v26 || __OFADD__(v37, v36))
        {
          break;
        }

        OUTLINED_FUNCTION_13_12();
        if (v26)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t AnnounceVoicemailDirectAction.deinit()
{

  return v0;
}

uint64_t AnnounceVoicemailDirectAction.__deallocating_deinit()
{
  AnnounceVoicemailDirectAction.deinit();
  OUTLINED_FUNCTION_10_15();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static DICodable.identifier.getter in conformance AnnounceVoicemailDirectAction()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = static AnnounceVoicemailDirectAction.identifier;

  return v0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnnounceVoicemailDirectAction@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id @nonobjc INCallRecord.init(__identifier:dateCreated:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:participants:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = String._bridgeToObjectiveC()();

  v19 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v19) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v19 - 8) + 8))(a3, v19);
  }

  if (a9)
  {
    type metadata accessor for INPerson();
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  if (a12)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  if (a14)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v28 initWithIdentifier:v18 dateCreated:isa callRecordType:a4 callCapability:a5 callDuration:a6 unseen:a7 preferredCallProvider:a8 participants:v21.super.isa numberOfCalls:a10 providerId:v22 providerBundleId:v23 isCallerIdBlocked:a15];

  return v24;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_9_15();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = (2 * ((v10 - 32) / 8)) | 1;
    }

    if (v5 != v4)
    {
      type metadata accessor for INPerson();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_9_15();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 88);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_9_15();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 16);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo8INPersonC_Tt1g5();

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, (v3 + 32), v2, v1);
    outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + 4, v1, a1);
  v5 = v7;

  outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo8INPersonC_Tt1g5();

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_11_15();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_12_15();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_11_15();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_12_15();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_2_21();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_12_15();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_2_21();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_12_15();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_2_21();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_12_15();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.subscript.getter(implicit closure #1 in static String._copying(_:), 0, a1, a2);
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized Array._checkIndex(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(uint64_t a1, void *a2)
{
  type metadata accessor for INPerson();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setAlternatives:isa];
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnnounceVoicemailDirectAction(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction and conformance AnnounceVoicemailDirectAction, a2, type metadata accessor for AnnounceVoicemailDirectAction, &protocol conformance descriptor for AnnounceVoicemailDirectAction);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction and conformance AnnounceVoicemailDirectAction, v3, type metadata accessor for AnnounceVoicemailDirectAction, &protocol conformance descriptor for AnnounceVoicemailDirectAction);
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailDirectAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
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
    while (v12 < v10)
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
            v10 = v12;
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
      if (v14 == v10)
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
  return result;
}

{
  v5 = result;
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
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
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
    while (v12 < v10)
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
            v10 = v12;
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
      if (v14 == v10)
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
  return result;
}

uint64_t *specialized Sequence._copySequenceContents(initializing:)(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for App();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type App and conformance App, 255, &type metadata accessor for App, &protocol conformance descriptor for App);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v16 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v16;
  v17 = -v16;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v11 = v18 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19 = v9;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_25;
        }

        type metadata accessor for App();
        swift_dynamicCast();
        result = v20;
        if (!v20)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v11 &= v11 - 1;

        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v19;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void key path setter for AnnounceVoicemailFlow.state : AnnounceVoicemailFlow(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v3 + 16) = v2;
  v6 = *(v3 + 24);
  *(v3 + 24) = v4;
  outlined copy of AnnounceVoicemailFlow.State(v2, v4);
  outlined consume of AnnounceVoicemailFlow.State(v5, v6);
}

void *AnnounceVoicemailFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of AnnounceVoicemailFlow.State(v1, *(v0 + 24));
  return v1;
}

id outlined copy of AnnounceVoicemailFlow.State(id result, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }
  }

  return result;
}

void AnnounceVoicemailFlow.__allocating_init(directAction:sharedGlobals:eventStore:contactStore:)()
{
  OUTLINED_FUNCTION_66();
  v25 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *(v5 + 24);
  v11 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v12);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v13);
  v15 = OUTLINED_FUNCTION_1_29(v14, v23);
  v16(v15);
  v18 = v4[3];
  v17 = v4[4];
  __swift_mutable_project_boxed_opaque_existential_1(v4, v18);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v19);
  v21 = OUTLINED_FUNCTION_0_21(v20, v24);
  v22(v21);
  specialized AnnounceVoicemailFlow.__allocating_init(directAction:sharedGlobals:eventStore:contactStore:)(v10, v8, v1, v2, v25, v12, v18, v11, v17);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_65();
}

void AnnounceVoicemailFlow.__allocating_init(state:eventStore:sharedGlobals:contactStore:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v26 = v4;
  v6 = v5;
  HIDWORD(v23) = v7;
  v9 = v8;
  v10 = swift_allocObject();
  v12 = v6[3];
  v11 = v6[4];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v12);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v13);
  v15 = OUTLINED_FUNCTION_1_29(v14, v23);
  v16(v15);
  v18 = v3[3];
  v17 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v18);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v19);
  v21 = OUTLINED_FUNCTION_0_21(v20, v24);
  v22(v21);
  specialized AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)(v9, v25, v0, v26, v1, v10, v12, v18, v11, v17);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_65();
}

void AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)()
{
  OUTLINED_FUNCTION_66();
  v24 = v3;
  v27 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *(v6 + 24);
  v12 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v13);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v14);
  v16 = OUTLINED_FUNCTION_1_29(v15, v24);
  v17(v16);
  v19 = v5[3];
  v18 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v19);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v20);
  v22 = OUTLINED_FUNCTION_0_21(v21, v25);
  v23(v22);
  specialized AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)(v11, v9, v1, v26, v2, v27, v13, v19, v12, v18);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

uint64_t AnnounceVoicemailFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnnounceVoicemailFlow();
  lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow, v2, type metadata accessor for AnnounceVoicemailFlow, &protocol conformance descriptor for AnnounceVoicemailFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceVoicemailFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[63] = v2;
  v1[64] = v0;
  type metadata accessor for CATOption();
  v1[65] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[66] = v3;
  v1[67] = *(v3 - 8);
  v1[68] = swift_task_alloc();

  return _swift_task_switch(AnnounceVoicemailFlow.execute(), 0, 0);
}

{
  v1 = (*(**(v0 + 512) + 112))();
  switch(v2)
  {
    case 1:
      v33 = *(v0 + 512);
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v33 + 9), v0 + 280);
      type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy();
      v34 = swift_allocObject();
      outlined init with take of SPHConversation((v0 + 280), v34 + 16);
      v35 = v33[12];
      v36 = v33[13];
      __swift_project_boxed_opaque_existential_1(v33 + 9, v35);
      (*(v36 + 16))(v35, v36);
      v37 = *(v0 + 256);
      v38 = *(v0 + 272);
      __swift_project_boxed_opaque_existential_1((v0 + 232), v37);
      *(v0 + 344) = v37;
      *(v0 + 352) = v38;
      __swift_allocate_boxed_opaque_existential_1((v0 + 320));
      OUTLINED_FUNCTION_40();
      (*(v39 + 16))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMR);
      swift_allocObject();
      lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy and conformance AnnounceVoicemailPromptForValueFlowStrategy, 255, type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy, &protocol conformance descriptor for AnnounceVoicemailPromptForValueFlowStrategy);
      v40 = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 232));
      *(v0 + 488) = v40;
      OUTLINED_FUNCTION_50();
      v41 = swift_allocObject();
      *(v41 + 16) = v33;
      *(v41 + 24) = v1;

      outlined copy of AnnounceVoicemailFlow.State(v1, 1);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMR, &protocol conformance descriptor for PromptForValueFlowAsync<A>);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailFlow.State(v1, 1);

      goto LABEL_10;
    case 2:
      v28 = one-time initialization token for siriPhone;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.siriPhone);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "Transitioning to follow-up action flow.", v32, 2u);
      }

      static ExecuteResponse.complete(next:)();
      outlined consume of AnnounceVoicemailFlow.State(v1, 2);
      outlined consume of AnnounceVoicemailFlow.State(v1, 2);
      break;
    case 3:
      static ExecuteResponse.complete()();
      break;
    default:
      v3 = *(v0 + 544);
      v4 = *(v0 + 536);
      v5 = *(v0 + 528);
      v6 = *(v0 + 512);
      v7 = v6[7];
      v8 = v6[8];
      __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
      static Date.distantFuture.getter();
      Date.timeIntervalSince1970.getter();
      v10 = v9;
      (*(v4 + 8))(v3, v5);
      *(v0 + 464) = 0;
      *(v0 + 472) = 0;
      *(v0 + 480) = v10;
      v11 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
      SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(0, v0 + 464, v7, &type metadata for AnnounceVoicemailHintHistory, v8, v11, v0 + 440);
      v46 = *(v0 + 448);
      v47 = *(v0 + 440);
      v12 = *(v0 + 456);
      v45 = v1[6];
      v44 = (*(*v1 + 112))(v6 + 14);
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v6 + 9), v0 + 360);
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v0 + 360, v0 + 16);
      v14 = *(v0 + 384);
      v13 = *(v0 + 392);
      __swift_project_boxed_opaque_existential_1((v0 + 360), v14);
      v15 = *(v13 + 32);
      *(v0 + 80) = &type metadata for BurstVoicemailFinder;
      *(v0 + 88) = &protocol witness table for BurstVoicemailFinder;
      *(v0 + 56) = swift_allocObject();
      v15(v14, v13);
      v16 = *(v0 + 384);
      v17 = *(v0 + 392);
      __swift_project_boxed_opaque_existential_1((v0 + 360), v16);
      (*(v17 + 8))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1((v0 + 360));
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v6 + 9), v0 + 400);
      type metadata accessor for AnnounceVoicemailCATs(0);
      static CATOption.defaultMode.getter();
      v18 = CATWrapper.__allocating_init(options:globals:)();
      outlined init with copy of BurstNotificationSearchManager(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_426260;
      *(v19 + 32) = v44;
      v20 = v44;
      static AnnounceVoicemailReadingState.makeInitialState(synchronousBurstIndex:voicemail:)(v45, v20, v0 + 176);

      type metadata accessor for AnnounceVoicemailReadingFlow();
      v21 = swift_allocObject();
      *(v21 + 128) = &type metadata for BurstNotificationSearchManager;
      *(v21 + 136) = &protocol witness table for BurstNotificationSearchManager;
      v22 = swift_allocObject();
      *(v21 + 104) = v22;
      memcpy((v22 + 16), (v0 + 96), 0x50uLL);
      *(v21 + 192) = 0;
      *(v21 + 16) = v19;
      v23 = *(v0 + 192);
      *(v21 + 24) = *(v0 + 176);
      *(v21 + 40) = v23;
      *(v21 + 56) = *(v0 + 208);
      *(v21 + 72) = *(v0 + 224);
      *(v21 + 80) = v47;
      *(v21 + 88) = v46;
      *(v21 + 96) = v12;
      *(v21 + 144) = v18;
      outlined init with take of SPHConversation((v0 + 400), v21 + 152);
      outlined destroy of BurstNotificationSearchManager(v0 + 16);
      *(v0 + 496) = v21;
      v24 = (*(*v6 + 168))(v47, v46, v12);
      v26 = v25;
      OUTLINED_FUNCTION_50();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = v26;
      lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow, 255, type metadata accessor for AnnounceVoicemailReadingFlow, &protocol conformance descriptor for AnnounceVoicemailReadingFlow);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailFlow.State(v1, 0);

LABEL_10:

      break;
  }

  OUTLINED_FUNCTION_11();

  return v42();
}

uint64_t (*AnnounceVoicemailFlow.readingFlowCompleted(previousHintHistory:)(uint64_t a1, uint64_t a2, double a3))(uint64_t a1)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  return partial apply for closure #1 in AnnounceVoicemailFlow.readingFlowCompleted(previousHintHistory:);
}

void AnnounceVoicemailFlow.readingFlowCompleted(previousHintHistory:readingState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = AnnounceVoicemailHintHistory.makeUpdatedHistoryAfterAnnouncement(announcementCount:didReadHint:)(*a3, *(a3 + 48));
  count = v19.count;
  hintCount = v19.hintCount;
  lastHintTimestamp = v19.lastHintTimestamp;
  v9 = *(v4 + 56);
  v10 = *(v4 + 64);
  __swift_project_boxed_opaque_existential_1((v4 + 32), v9);
  v18[0] = count;
  v18[1] = hintCount;
  *&v18[2] = lastHintTimestamp;
  v11 = *(v10 + 16);
  v12 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  v11(0, v18, &type metadata for AnnounceVoicemailHintHistory, v12, v9, v10);
  v13 = specialized BidirectionalCollection.last.getter(*(a3 + 8), specialized Array._checkSubscript(_:wasNativeTypeChecked:));
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  swift_beginAccess();
  v16 = *(v4 + 16);
  *(v4 + 16) = v14;
  v17 = *(v4 + 24);
  *(v4 + 24) = v15;
  outlined consume of AnnounceVoicemailFlow.State(v16, v17);
}

double specialized BidirectionalCollection.last.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    outlined init with copy of TransformationResult(a1 + 88 * v2 - 56, a2);
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TerminalElement();
    OUTLINED_FUNCTION_40();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = OUTLINED_FUNCTION_11_16();
  }

  else
  {
    type metadata accessor for TerminalElement();
    v8 = OUTLINED_FUNCTION_11_6();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) - 8);
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a2);
    v7 = OUTLINED_FUNCTION_11_16();
  }

  else
  {
    type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
    v7 = OUTLINED_FUNCTION_11_6();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

char *specialized BidirectionalCollection.last.getter(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

uint64_t specialized BidirectionalCollection.last.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void AnnounceVoicemailFlow.offerSilentPromptCompleted(lastVoicemail:response:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin017AnnounceVoicemaild8ForValueC8StrategyC0K20AnnouncementResponseOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin017AnnounceVoicemaild8ForValueC8StrategyC0K20AnnouncementResponseOGMR);
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = *(v8 + 16);
  v16(&v55 - v14, v3, v6, v13);
  if ((*(v8 + 88))(v15, v6) != enum case for PromptResult.answered<A>(_:))
  {
    OUTLINED_FUNCTION_16_18();
    v29 = *(v1 + 16);
    *(v1 + 16) = 0;
    v30 = *(v1 + 24);
    v31 = 3;
    goto LABEL_5;
  }

  (v16)(v11, v15, v6);
  (*(v8 + 96))(v11, v6);
  if (*v11)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
    v17 = OUTLINED_FUNCTION_3_13();
    v18(v17);
    v19 = v69[3];
    v20 = v69[5];
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    v63 = v19;
    v64 = v20;
    __swift_allocate_boxed_opaque_existential_1(v62);
    OUTLINED_FUNCTION_40();
    (*(v21 + 16))();
    v22 = [v5 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    OUTLINED_FUNCTION_50();
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v25;
    OUTLINED_FUNCTION_50();
    v27 = swift_allocObject();
    *(v27 + 16) = &async function pointer to partial apply for closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:);
    *(v27 + 24) = v26;
    type metadata accessor for SimpleOutputFlowAsync();
    swift_allocObject();
    v28 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    __swift_destroy_boxed_opaque_existential_1(v69);
    v69[0] = v28;
    Flow.eraseToAnyFlow()();

    OUTLINED_FUNCTION_16_18();
    v29 = OUTLINED_FUNCTION_13_13();
LABEL_5:
    *(v1 + 24) = v31;
    outlined consume of AnnounceVoicemailFlow.State(v29, v30);
    goto LABEL_24;
  }

  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(v69, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v66 = &type metadata for PhoneCallFeatureFlags;
  v67 = &protocol witness table for PhoneCallFeatureFlags;
  *&v65 = swift_allocObject();
  memcpy((v65 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v65, v68);
  outlined init with copy of PhoneCallFeatureFlags(v69, v62);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  v32 = OUTLINED_FUNCTION_3_13();
  v33(v32);
  __swift_project_boxed_opaque_existential_1(v62, v63);
  OUTLINED_FUNCTION_3_13();
  v34 = dispatch thunk of DeviceState.isMac.getter();
  v57 = v15;
  if (v34)
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v35 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v62, v63);
    OUTLINED_FUNCTION_3_13();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v35 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v62, v63);
      OUTLINED_FUNCTION_3_13();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v35 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v35 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v36 = v35[5];
  v61 = v35[3];
  v37 = *v35;
  v38 = v35[1];
  v59 = v36;
  v60 = v38;
  v56 = v37;

  __swift_destroy_boxed_opaque_existential_1(v62);
  v39 = objc_allocWithZone(INCallRecordFilter);
  v40 = @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:preferredCallProvider:)(0, 0, 0, 0);
  v41 = _INCallAudioRouteHeySiriAudioRoute;
  v42 = objc_allocWithZone(INStartCallIntent);
  v58 = v40;
  v43 = v5;
  v44 = @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:)(v40, v5, v41, 5, 1, 0, 0, 1);
  v45 = *(v1 + 96);
  v46 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v45);
  (*(v46 + 104))(v62, v45, v46);
  v47 = v63;
  v55 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v48 = type metadata accessor for StartCallRCHFlowDelegate(0);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v1 + 72, &v65);
  v49 = StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(&v65, 0);
  v50 = lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type StartCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for StartCallRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
  v51 = SiriKitFlowFactoryProtocol.makeDelegateBasedRCHFlow<A>(delegate:app:intent:)(v49, v56, v44, v47, v48, v55, v50);

  __swift_destroy_boxed_opaque_existential_1(v62);
  v62[0] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INStartCallIntent, INStartCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR, &protocol conformance descriptor for AnyValueFlow<A>);
  Flow.eraseToAnyFlow()();

  swift_beginAccess();
  v52 = OUTLINED_FUNCTION_13_13();
  *(v1 + 24) = v53;
  outlined consume of AnnounceVoicemailFlow.State(v52, v54);
  v15 = v57;
LABEL_24:
  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:), 0, 0);
}

uint64_t closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPlayVoicemailIntent, INPlayVoicemailIntent_ptr);
  v2 = static INPlayVoicemailIntent.makeFirstPartyHandleIntent(identifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_426260;
  *(v3 + 32) = v2;
  v1[3] = type metadata accessor for AceOutput();
  v1[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v1);
  AceOutput.init(commands:flowActivity:)();
  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t AnnounceVoicemailFlow.deinit()
{
  outlined consume of AnnounceVoicemailFlow.State(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  return v0;
}

uint64_t AnnounceVoicemailFlow.__deallocating_deinit()
{
  AnnounceVoicemailFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceVoicemailFlow(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnnounceVoicemailFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnnounceVoicemailFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

id @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:preferredCallProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v5 initWithParticipants:v9.super.isa callTypes:a2 callCapability:a3 preferredCallProvider:a4];

  return v10;
}

uint64_t specialized AnnounceVoicemailFlow.__allocating_init(directAction:sharedGlobals:eventStore:contactStore:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[3] = a6;
  v24[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v23[3] = a7;
  v23[4] = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v24, v22);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v21);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v23, v20);
  v18 = (*(a5 + 136))(a1, 0, v22, v21, v20);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v18;
}

uint64_t specialized AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a6 + 56) = a7;
  *(a6 + 64) = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 32));
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a3, a7);
  *(a6 + 136) = a8;
  *(a6 + 144) = a10;
  v19 = __swift_allocate_boxed_opaque_existential_1((a6 + 112));
  (*(*(a8 - 8) + 32))(v19, a5, a8);
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  outlined init with take of SPHConversation(a4, a6 + 72);
  return a6;
}

void outlined consume of AnnounceVoicemailFlow.State(void *a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:

    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed AnnounceVoicemailReadingState) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin017AnnounceVoicemailC0C5StateO(uint64_t a1)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailFlow.State(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for AnnounceVoicemailFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t outlined init with copy of DisambiguationItemWithDirectInvocationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  v2 = OUTLINED_FUNCTION_12_16();

  return closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)(v2, v3, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> (@out Output)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  v2 = OUTLINED_FUNCTION_12_16();

  return v3(v2);
}

uint64_t lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

PhoneCallFlowDelegatePlugin::AnnounceVoicemailHintHistory __swiftcall AnnounceVoicemailHintHistory.init()()
{
  v0 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v2 + 8))(v5, v0);
  v8 = 0;
  v9 = 0;
  v10 = v7;
  result.lastHintTimestamp = v10;
  result.hintCount = v9;
  result.count = v8;
  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailHintHistory __swiftcall AnnounceVoicemailHintHistory.makeUpdatedHistoryAfterAnnouncement(announcementCount:didReadHint:)(Swift::Int announcementCount, Swift::Bool didReadHint)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v10 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  *&v16 = __chkstk_darwin(v13).n128_u64[0];
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __OFADD__(v7, announcementCount);
  v20 = v7 + announcementCount;
  if (v19)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (didReadHint)
  {
    v19 = __OFADD__(v6++, 1);
    if (!v19)
    {
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v5 = v21;
      (*(v12 + 8))(v18, v10);
      goto LABEL_5;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_5:
  v14 = v20;
  v15 = v6;
  v16 = v5;
LABEL_8:
  result.lastHintTimestamp = v16;
  result.hintCount = v15;
  result.count = v14;
  return result;
}

double AnnounceVoicemailHintHistory.init(count:hintCount:lastHintDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(a3, v6);
  return v5;
}

uint64_t AnnounceVoicemailHintHistory.daysSinceLastHint.getter(double a1)
{
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.distance(to:)();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v6, v1);
  result = (v12)(v9, v1);
  v14 = v11 / 86400.0;
  v15 = COERCE__INT64(fabs(v11 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (v11 / 86400.0 >= 0.0)
  {
    if (v15)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v14 = 0.0;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t AnnounceVoicemailHintHistory.description.getter(double a1)
{
  _StringGuts.grow(_:)(50);
  v1._countAndFlagsBits = 0x3A746E756F630A7BLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x6F43746E69680A2CLL;
  v3._object = 0xED0000203A746E75;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x8000000000457DD0;
  v5._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v5);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 32010;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t AnnounceVoicemailHintHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E756F43746E6968 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000000457DF0 == a2)
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

uint64_t AnnounceVoicemailHintHistory.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746E756F63;
  }

  if (a1 == 1)
  {
    return 0x6E756F43746E6968;
  }

  return 0xD000000000000011;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnnounceVoicemailHintHistory.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnounceVoicemailHintHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnnounceVoicemailHintHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance AnnounceVoicemailHintHistory.CodingKeys@<W0>(Swift::Int a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallProvider.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnounceVoicemailHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnounceVoicemailHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnounceVoicemailHintHistory.encode(to:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMR);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

double AnnounceVoicemailHintHistory.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMR);
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14 = 0;
  OUTLINED_FUNCTION_1_30();
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  OUTLINED_FUNCTION_1_30();
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  OUTLINED_FUNCTION_1_30();
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

Swift::Int protocol witness for SiriPhoneDefaultsCodable.init() in conformance AnnounceVoicemailHintHistory@<X0>(uint64_t a1@<X8>)
{
  v3 = AnnounceVoicemailHintHistory.init()();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3.lastHintTimestamp;
  return v3.count;
}

unint64_t instantiation function for generic protocol witness table for AnnounceVoicemailHintHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  a1[2] = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  result = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnnounceVoicemailHintHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  result = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  *(a1 + 16) = result;
  return result;
}

void protocol witness for Decodable.init(from:) in conformance AnnounceVoicemailHintHistory(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = AnnounceVoicemailHintHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailHintHistory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailHintHistory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailHintHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.__allocating_init(sharedGlobals:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v2 + 16);
  return v2;
}

Swift::Int AppAndDeviceRestriction.AppCategory.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AppAndDeviceRestriction.AppCategory.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.actionForInput(_:)()
{
  if (AnnounceVoicemailPromptForValueFlowStrategy.parseInput(input:)() == 2)
  {

    return static ActionForInput.ignore()();
  }

  else
  {

    return static ActionForInput.handle()();
  }
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.parseValueResponse(input:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1 = AnnounceVoicemailPromptForValueFlowStrategy.parseInput(input:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.parseInput(input:)()
{
  v1 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v10 = (*(v9 + 72))(v8, v9);
  Input.parse.getter();
  (*(*v10 + 192))(&v42, v7);
  (*(v3 + 8))(v7, v1);
  if (!v43)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v42, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return 2;
  }

  outlined init with take of SPHConversation(&v42, v44);
  v11 = v45;
  v12 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v13 = (*(v12 + 104))(v11, v12);
  if (v13 != 17)
  {
    if (PhoneCallVerb.rawValue.getter(v13) == 0x636162206C6C6163 && v18 == 0xE90000000000006BLL)
    {

      goto LABEL_15;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_15;
    }
  }

  __swift_project_boxed_opaque_existential_1(v44, v45);
  if (PhoneCallNLIntent.isAnyCallToReference()())
  {
LABEL_15:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_13_14();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v25 = swift_slowAlloc();
      *&v42 = v25;
      *v24 = 136315138;
      type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy();
      OUTLINED_FUNCTION_11_17();

      v26 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v42);
      OUTLINED_FUNCTION_11_17();

      *(v24 + 4) = v9;
      OUTLINED_FUNCTION_15_7(&dword_0, v28, v29, "#%s User asked to call back");
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    return 0;
  }

  v14 = v45;
  v15 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v16 = (*(v15 + 112))(v14, v15);
  if (v16 == 6)
  {
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1(v44);
    return 2;
  }

  if (VoiceMail.VoiceMailVerb.rawValue.getter(v16) == 2036427888 && v30 == 0xE400000000000000)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriPhone);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    OUTLINED_FUNCTION_13_14();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v37 = swift_slowAlloc();
    *&v42 = v37;
    *v36 = 136315138;
    type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy();
    OUTLINED_FUNCTION_11_17();

    v38 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v42);
    OUTLINED_FUNCTION_11_17();

    *(v36 + 4) = v9;
    OUTLINED_FUNCTION_15_7(&dword_0, v40, v41, "#%s User asked to play the voicemail");
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  return 1;
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v1[26] = v2;
  v1[27] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for NLContextUpdate();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(AnnounceVoicemailPromptForValueFlowStrategy.makePromptForValue(), 0, 0);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#AnnounceVoicemail Sending output for silent prompt", v4, 2u);
    OUTLINED_FUNCTION_8();
  }

  v5 = *(v0 + 248);
  v57 = *(v0 + 216);

  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_424FF0;
  *(v6 + 32) = PhoneCallNLConstants.canonicalName.getter(15);
  *(v6 + 40) = v7;
  *(v6 + 48) = PhoneCallNLConstants.canonicalName.getter(14);
  *(v6 + 56) = v8;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_426980;
  *(v0 + 56) = String.uppercased()();
  *(v0 + 72) = 32;
  *(v0 + 80) = 0xE100000000000000;
  *(v0 + 88) = 95;
  *(v0 + 96) = 0xE100000000000000;
  v10 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_2_22(v0 + 72, v0 + 88);

  v11 = PhoneCallNLConstants.canonicalName.getter(14);
  v63 = v12;
  OUTLINED_FUNCTION_9_16(v11, v12, v13, v14, v15, v16, v17, v18, &type metadata for String, v10, v10, v10, v49, v52, v5, v57, v11);
  v19 = String.uppercased()();
  String.append(_:)(v19);

  *(v9 + 32) = *v60;
  *(v9 + 40) = v63;
  *(v0 + 104) = String.uppercased()();
  *(v0 + 120) = 32;
  *(v0 + 128) = 0xE100000000000000;
  *(v0 + 136) = 95;
  *(v0 + 144) = 0xE100000000000000;
  OUTLINED_FUNCTION_2_22(v0 + 120, v0 + 136);

  v20 = PhoneCallNLConstants.canonicalName.getter(15);
  v64 = v21;
  OUTLINED_FUNCTION_9_16(v20, v21, v22, v23, v24, v25, v26, v27, &type metadata for String, v10, v10, v10, v50, v53, v55, v58, v20);
  v28 = String.uppercased()();
  String.append(_:)(v28);

  *(v9 + 48) = *v61;
  *(v9 + 56) = v64;
  *(v0 + 152) = String.uppercased()();
  *(v0 + 168) = 32;
  *(v0 + 176) = 0xE100000000000000;
  *(v0 + 184) = 95;
  *(v0 + 192) = 0xE100000000000000;
  OUTLINED_FUNCTION_2_22(v0 + 168, v0 + 184);

  v29 = PhoneCallNLConstants.canonicalName.getter(15);
  v65 = v30;
  OUTLINED_FUNCTION_9_16(v29, v30, v31, v32, v33, v34, v35, v36, &type metadata for String, v10, v10, v10, v51, v54, v56, v59, v29);
  v37 = String.uppercased()();
  String.append(_:)(v37);

  *(v9 + 64) = *v62;
  *(v9 + 72) = v65;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v38 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_424FD0;
  AnnounceVoicemailPromptForValueFlowStrategy.getSystemDialogAct()(v40 + v39);
  v42 = *(v0 + 240);
  v41 = *(v0 + 248);
  v43 = *(v0 + 224);
  v44 = *(v0 + 232);
  v45 = *(v0 + 208);
  NLContextUpdate.nluSystemDialogActs.setter();
  NLContextUpdate.submitAsSpokenNotificationContext.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  (*(v42 + 16))(v43, v41, v44);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
  v46 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v45[3] = v46;
  v45[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v45);
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v43, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v42 + 8))(v41, v44);

  OUTLINED_FUNCTION_11();

  return v47();
}