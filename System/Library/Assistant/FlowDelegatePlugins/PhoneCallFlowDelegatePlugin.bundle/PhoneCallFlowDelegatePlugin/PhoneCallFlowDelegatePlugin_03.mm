uint64_t AddCallParticipantCATPatternsExecutor.intentHandledResponse(isFaceTimeFirstDevice:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v4 + 96) = v1;

  if (v1)
  {
    v7 = AddCallParticipantCATPatternsExecutor.intentHandledResponse(isFaceTimeFirstDevice:_:);
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = AddCallParticipantCATPatternsExecutor.intentHandledResponse(isFaceTimeFirstDevice:_:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t AddCallParticipantCATPatternsExecutor.promptForParticipant(isUnsupportedFollowup:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATPatternsExecutor.promptForParticipant(isUnsupportedFollowup:)()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x8000000000457010;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = AddCallParticipantCATPatternsExecutor.promptForParticipant(isUnsupportedFollowup:);

  return v6(0xD000000000000027, 0x80000000004519D0, v2);
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AddCallParticipantCATPatternsExecutor.promptForParticipant(isUnsupportedFollowup:)(uint64_t a1)
{
  v8 = *v2;
  v4 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v8 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(AddCallParticipantCATPatternsExecutor.promptForParticipant(isUnsupportedFollowup:), 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6(a1);
  }
}

uint64_t AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall()()
{
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return v3(0xD00000000000002ALL, 0x8000000000451A00, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_15();
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

uint64_t AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported()()
{
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v3(0xD000000000000045, 0x8000000000451A30, _swiftEmptyArrayStorage);
}

uint64_t AddCallParticipantCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATPatternsIdentifiers and conformance AddCallParticipantCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATPatternsIdentifiers and conformance AddCallParticipantCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATPatternsIdentifiers and conformance AddCallParticipantCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATPatternsIdentifiers and conformance AddCallParticipantCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for AddCallParticipantCATPatternsExecuting.intentHandledResponse(isFaceTimeFirstDevice:_:) in conformance AddCallParticipantCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for AddCallParticipantCATPatternsExecutor) + **(**v3 + class metadata base offset for AddCallParticipantCATPatternsExecutor));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for AddCallParticipantCATPatternsExecuting.promptForParticipant(isUnsupportedFollowup:) in conformance AddCallParticipantCATPatternsExecutor(uint64_t a1)
{
  v6 = (*(**v1 + class metadata base offset for AddCallParticipantCATPatternsExecutor + 8) + **(**v1 + class metadata base offset for AddCallParticipantCATPatternsExecutor + 8));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v6(a1);
}

uint64_t protocol witness for AddCallParticipantCATPatternsExecuting.unsupportedNoActiveCall() in conformance AddCallParticipantCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for AddCallParticipantCATPatternsExecutor + 16) + **(**v0 + class metadata base offset for AddCallParticipantCATPatternsExecutor + 16));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for AddCallParticipantCATPatternsExecuting.unsupportedParticipantsMultipleContactsUnsupported() in conformance AddCallParticipantCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for AddCallParticipantCATPatternsExecutor + 24) + **(**v0 + class metadata base offset for AddCallParticipantCATPatternsExecutor + 24));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t getEnumTagSinglePayload for AddCallParticipantCATPatternsIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AddCallParticipantIntentHandledResponseParameters(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AddCallParticipantIntentHandledResponseParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddCallParticipantPromptForParticipantParameters(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AddCallParticipantPromptForParticipantParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for AddCallParticipantCATPatternsExecutor(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddCallParticipantCATPatternsExecutor;
  if (!type metadata singleton initialization cache for AddCallParticipantCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATs::Properties_optional __swiftcall AddCallParticipantCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATs.Properties.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t AddCallParticipantCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000025;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000002ELL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
    case 5:
    case 6:
      result = 0xD000000000000030;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 9:
      result = 0xD000000000000027;
      break;
    case 10:
      result = 0xD000000000000045;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATs::Properties_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AddCallParticipantCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AddCallParticipantCATs.confirmParticipant(contactToConfirm:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_23_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1(v1) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = v3;
  if (v0)
  {
    v4 = type metadata accessor for DialogPerson();
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v4, v5);

  OUTLINED_FUNCTION_29_11(0xD000000000000025, 0x8000000000451A80);
  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.confirmParticipant(contactToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.confirmParticipant(contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v9 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1(v12);
  *(OUTLINED_FUNCTION_50_0(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = v15;
  v16 = 0;
  if (v11)
  {
    v16 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v16);
  v29 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_16_12(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_24(v18);
  OUTLINED_FUNCTION_65_2();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v9 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1(v12);
  *(OUTLINED_FUNCTION_51(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = v15;
  v16 = 0;
  if (v11)
  {
    v16 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v16);
  v28 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v9 + 40) = v17;
  *v17 = v18;
  v17[1] = AddCallParticipantCATs.confirmParticipant(contactToConfirm:);
  OUTLINED_FUNCTION_65_2();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

uint64_t AddCallParticipantCATs.confirmParticipant(contactToConfirm:)()
{
  OUTLINED_FUNCTION_15();
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
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

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
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = v4;
  if (v0)
  {
    v5 = type metadata accessor for DialogPerson();
    v6 = v0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_18_2();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_55_3(v5, v6);

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AddCallParticipantCATs.confirmParticipant(contactToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

void AddCallParticipantCATs.errorAddRestricted(currentCall:unsupportedReason:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_61_6();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v25 = OUTLINED_FUNCTION_21(v24);
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v29 = OUTLINED_FUNCTION_45_0(v28);
  OUTLINED_FUNCTION_0_12(v29, xmmword_424FF0);
  if (v23)
  {
    type metadata accessor for PhoneCallRecord(0);
    v30 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  *(v29 + 48) = v30;
  OUTLINED_FUNCTION_36_7();
  *(v29 + 72) = v31;
  *(v29 + 80) = 0xD000000000000011;
  *(v29 + 88) = v32;
  outlined init with copy of SpeakableString?(v21, v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v33 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v27, 1, v33) == 1)
  {

    outlined destroy of SpeakableString?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v29 + 96) = 0u;
    *(v29 + 112) = 0u;
  }

  else
  {
    *(v29 + 120) = v33;
    __swift_allocate_boxed_opaque_existential_1((v29 + 96));
    OUTLINED_FUNCTION_40();
    (*(v34 + 32))();
  }

  OUTLINED_FUNCTION_29_11(0xD000000000000025, 0x8000000000451AB0);

  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.errorAddRestricted(currentCall:unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
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

  OUTLINED_FUNCTION_11();

  return v0();
}

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
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v1);
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t AddCallParticipantCATs.errorAddRestricted(currentCall:unsupportedReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = v11[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v11[7] = v14;
  OUTLINED_FUNCTION_0_12(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v15 = v11[6];
  *(v14 + 48) = v12;
  OUTLINED_FUNCTION_39_0();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000011;
  *(v14 + 88) = v17;
  outlined init with copy of SpeakableString?(v18, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = type metadata accessor for SpeakableString();
  v20 = OUTLINED_FUNCTION_58(v19);
  v21 = v11[6];
  if (v20 == 1)
  {

    outlined destroy of SpeakableString?(v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
  }

  else
  {
    *(v14 + 120) = v10;
    __swift_allocate_boxed_opaque_existential_1((v14 + 96));
    OUTLINED_FUNCTION_40();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[8] = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_44_2(v23);
  OUTLINED_FUNCTION_65_2();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = v11[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v11[6] = v14;
  OUTLINED_FUNCTION_0_12(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v15 = v11[5];
  *(v14 + 48) = v12;
  OUTLINED_FUNCTION_39_0();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000011;
  *(v14 + 88) = v17;
  outlined init with copy of SpeakableString?(v18, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = type metadata accessor for SpeakableString();
  v20 = OUTLINED_FUNCTION_58(v19);
  v21 = v11[5];
  if (v20 == 1)
  {

    outlined destroy of SpeakableString?(v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
  }

  else
  {
    *(v14 + 120) = v10;
    __swift_allocate_boxed_opaque_existential_1((v14 + 96));
    OUTLINED_FUNCTION_40();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[7] = v23;
  *v23 = v24;
  v23[1] = AddCallParticipantCATs.errorAddRestricted(currentCall:unsupportedReason:);
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

void AddCallParticipantCATs.errorAddRestricted(currentCall:unsupportedReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_61_6();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  OUTLINED_FUNCTION_37_4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v24 = OUTLINED_FUNCTION_21(v23);
  __chkstk_darwin(v24);
  v26 = &a9 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  OUTLINED_FUNCTION_0_12(v28, xmmword_424FF0);
  if (v18)
  {
    type metadata accessor for PhoneCallRecord(0);
    v29 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
  }

  *(v28 + 48) = v29;
  OUTLINED_FUNCTION_36_7();
  *(v28 + 72) = v30;
  *(v28 + 80) = 0xD000000000000011;
  *(v28 + 88) = v31;
  outlined init with copy of SpeakableString?(v22, v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v32 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v26, 1, v32) == 1)
  {

    outlined destroy of SpeakableString?(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
  }

  else
  {
    *(v28 + 120) = v32;
    __swift_allocate_boxed_opaque_existential_1((v28 + 96));
    OUTLINED_FUNCTION_40();
    (*(v33 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.errorMaxParticipantsReached(currentCall:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  if (v0)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v4, v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11(0xD00000000000002ELL, v1 | 0x8000000000000000);
}

uint64_t AddCallParticipantCATs.errorMaxParticipantsReached(currentCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorMaxParticipantsReached(currentCall:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_24(v8);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(46);
  OUTLINED_FUNCTION_65_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_55_3(v3, v4);

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AddCallParticipantCATs.errorMaxParticipantsReached(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorNoTargetCall()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_26_2();
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD000000000000024, 0x8000000000451B10, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v3(0xD000000000000024, 0x8000000000451B10, _swiftEmptyArrayStorage);
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

{
  return OUTLINED_FUNCTION_33_1(36);
}

uint64_t AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_2_11(v5, xmmword_426980);
  if (v3)
  {
    type metadata accessor for PhonePerson(0);
    v6 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v5[3].n128_u64[0] = v6;
  OUTLINED_FUNCTION_27_2();
  v5[4].n128_u64[1] = v7;
  v5[5].n128_u64[0] = 0xD000000000000018;
  v5[5].n128_u64[1] = v8;
  OUTLINED_FUNCTION_9_7(&type metadata for Bool);
  if (v1)
  {
    v9 = type metadata accessor for PhoneCallRecord(0);
    v10 = v1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_2();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v10;
  v5[10].n128_u64[1] = v9;

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  v10[6] = v14;
  OUTLINED_FUNCTION_2_11(v14, xmmword_426980);
  if (v12)
  {
    type metadata accessor for PhonePerson(0);
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_38_3();
  v15 = v10[4];
  v14[3].n128_u64[0] = v16;
  OUTLINED_FUNCTION_27_2();
  v14[4].n128_u64[1] = v17;
  v14[5].n128_u64[0] = v11;
  v14[5].n128_u64[1] = v18;
  OUTLINED_FUNCTION_9_7(&type metadata for Bool);
  v19 = 0;
  if (v15)
  {
    v19 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v14[9].n128_u64[1] = 0;
    v14[10].n128_u64[0] = 0;
  }

  v14[9].n128_u64[0] = v15;
  v14[10].n128_u64[1] = v19;
  OUTLINED_FUNCTION_17_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[7] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_44_2(v20);
  OUTLINED_FUNCTION_60();

  return v26(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  v10[5] = v14;
  OUTLINED_FUNCTION_2_11(v14, xmmword_426980);
  if (v12)
  {
    type metadata accessor for PhonePerson(0);
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_38_3();
  v15 = v10[3];
  v14[3].n128_u64[0] = v16;
  OUTLINED_FUNCTION_27_2();
  v14[4].n128_u64[1] = v17;
  v14[5].n128_u64[0] = v11;
  v14[5].n128_u64[1] = v18;
  OUTLINED_FUNCTION_9_7(&type metadata for Bool);
  v19 = 0;
  if (v15)
  {
    v19 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v14[9].n128_u64[1] = 0;
    v14[10].n128_u64[0] = 0;
  }

  v14[9].n128_u64[0] = v15;
  v14[10].n128_u64[1] = v19;
  OUTLINED_FUNCTION_17_8();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_12(v20);
  *v21 = v22;
  v21[1] = AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:);
  OUTLINED_FUNCTION_60();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:)()
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

  OUTLINED_FUNCTION_11();

  return v0();
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
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_2_11(v8, xmmword_426980);
  if (v6)
  {
    type metadata accessor for PhonePerson(0);
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_38_3();
  v8[3].n128_u64[0] = v9;
  OUTLINED_FUNCTION_27_2();
  v8[4].n128_u64[1] = v10;
  v8[5].n128_u64[0] = v0;
  v8[5].n128_u64[1] = v11;
  v8[6].n128_u8[0] = v4 & 1;
  v8[7].n128_u64[1] = &type metadata for Bool;
  v8[8].n128_u64[0] = 0x43746E6572727563;
  v8[8].n128_u64[1] = 0xEB000000006C6C61;
  if (v2)
  {
    v12 = type metadata accessor for PhoneCallRecord(0);
    v13 = v2;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_18_2();
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  v8[9].n128_u64[0] = v13;
  v8[10].n128_u64[1] = v12;
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorRestrictedDeviceByRegion(location:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_7_3(v3, xmmword_424FD0);
  if (v0)
  {
    v4 = type metadata accessor for DialogLocationAddress();
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v4, v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11(0xD000000000000030, v1 | 0x8000000000000000);
}

uint64_t AddCallParticipantCATs.errorRestrictedDeviceByRegion(location:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorRestrictedDeviceByRegion(location:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  OUTLINED_FUNCTION_7_3(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for DialogLocationAddress();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_24(v8);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_7_3(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for DialogLocationAddress();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(48);
  OUTLINED_FUNCTION_65_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_7_3(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for DialogLocationAddress();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_55_3(v3, v4);

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AddCallParticipantCATs.errorRestrictedDeviceByRegion(location:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  OUTLINED_FUNCTION_2_11(v5, xmmword_424FF0);
  if (v3)
  {
    type metadata accessor for PhonePerson(0);
    v6 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v5[3].n128_u64[0] = v6;
  OUTLINED_FUNCTION_36_7();
  v5[4].n128_u64[1] = v7;
  v5[5].n128_u64[0] = 0xD000000000000018;
  v5[5].n128_u64[1] = v8;
  v5[7].n128_u64[1] = &type metadata for Bool;
  v5[6].n128_u8[0] = v1 & 1;

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v9 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_50_0(v14);
  OUTLINED_FUNCTION_2_11(v15, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhonePerson(0);
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  *(v10 + 48) = v12;
  OUTLINED_FUNCTION_39_0();
  *(v10 + 88) = v16;
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 96) = v17;
  OUTLINED_FUNCTION_26_2();
  v32 = v18;
  OUTLINED_FUNCTION_38_3();
  *(v10 + 72) = v19;
  *(v10 + 80) = v11;

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_12(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_24(v21);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_65_2();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v9 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_51(v14);
  OUTLINED_FUNCTION_2_11(v15, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhonePerson(0);
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  *(v10 + 48) = v12;
  OUTLINED_FUNCTION_39_0();
  *(v10 + 88) = v16;
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 96) = v17;
  OUTLINED_FUNCTION_26_2();
  v31 = v18;
  OUTLINED_FUNCTION_38_3();
  *(v10 + 72) = v19;
  *(v10 + 80) = v11;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v9 + 40) = v20;
  *v20 = v21;
  v20[1] = AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:);
  OUTLINED_FUNCTION_65_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31);
}

uint64_t AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:)()
{
  OUTLINED_FUNCTION_15();
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
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

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
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_61_6();
  v3 = v2;
  OUTLINED_FUNCTION_37_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  OUTLINED_FUNCTION_2_11(v5, xmmword_424FF0);
  if (v0)
  {
    type metadata accessor for PhonePerson(0);
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v5[3].n128_u64[0] = v6;
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_38_3();
  v5[4].n128_u64[1] = v7;
  v5[5].n128_u64[0] = v1;
  v5[5].n128_u64[1] = v8;
  v5[7].n128_u64[1] = &type metadata for Bool;
  v5[6].n128_u8[0] = v3 & 1;

  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorSelfAdd(currentCall:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  if (v0)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v4, v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11(0xD00000000000001FLL, v1 | 0x8000000000000000);
}

uint64_t AddCallParticipantCATs.errorSelfAdd(currentCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.errorSelfAdd(currentCall:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_24(v8);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(31);
  OUTLINED_FUNCTION_65_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_55_3(v3, v4);

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AddCallParticipantCATs.errorSelfAdd(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:completion:)(unint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_2_10(v9, xmmword_426980);
  if (a1)
  {
    v10 = type metadata accessor for PhoneCallInvite(0);
    v11 = a1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_2();
    v9[3].n128_u64[1] = 0;
    v9[4].n128_u64[0] = 0;
  }

  v9[3].n128_u64[0] = v11;
  v9[4].n128_u64[1] = v10;
  v9[5].n128_u64[0] = 0x656369766564;
  v9[5].n128_u64[1] = 0xE600000000000000;
  if (a2)
  {
    type metadata accessor for SirikitDeviceState();
    v12 = a2;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v9[6].n128_u64[1] = 0;
    v9[7].n128_u64[0] = 0;
  }

  v9[6].n128_u64[0] = v12;
  OUTLINED_FUNCTION_36_7();
  v9[7].n128_u64[1] = v13;
  v9[8].n128_u64[0] = 0xD000000000000015;
  v9[8].n128_u64[1] = v14;
  v9[10].n128_u64[1] = &type metadata for Bool;
  v9[9].n128_u8[0] = a3 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47(v12);
  v10[6] = v13;
  OUTLINED_FUNCTION_2_10(v13, xmmword_426980);
  if (v11)
  {
    v14 = type metadata accessor for PhoneCallInvite(0);
    v15 = v11;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_14();
  }

  v16 = v10[4];
  OUTLINED_FUNCTION_15_9(v14, v15);
  if (v16)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_39_0();
  v13[8].n128_u64[1] = v17;
  v13[10].n128_u64[1] = &type metadata for Bool;
  v13[9].n128_u8[0] = v18;
  OUTLINED_FUNCTION_26_2();
  v32 = v19;
  OUTLINED_FUNCTION_42_3(v20);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[7] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_44_2(v21);
  OUTLINED_FUNCTION_60();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47(v12);
  v10[5] = v13;
  OUTLINED_FUNCTION_2_10(v13, xmmword_426980);
  if (v11)
  {
    v14 = type metadata accessor for PhoneCallInvite(0);
    v15 = v11;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_14();
  }

  v16 = v10[3];
  OUTLINED_FUNCTION_15_9(v14, v15);
  if (v16)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_39_0();
  v13[8].n128_u64[1] = v17;
  v13[10].n128_u64[1] = &type metadata for Bool;
  v13[9].n128_u8[0] = v18;
  OUTLINED_FUNCTION_26_2();
  v33 = v19;
  OUTLINED_FUNCTION_42_3(v20);

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_16_12(v21);
  *v22 = v23;
  v22[1] = AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:);
  OUTLINED_FUNCTION_60();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10);
}

uint64_t AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:)()
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
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_2_10(v7, xmmword_426980);
  if (v5)
  {
    v8 = type metadata accessor for PhoneCallInvite(0);
    v9 = v5;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_15_9(v8, v9);
  if (v3)
  {
    type metadata accessor for SirikitDeviceState();
    v10 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v7[6].n128_u64[1] = 0;
    v7[7].n128_u64[0] = 0;
  }

  v7[6].n128_u64[0] = v10;
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_42_3(v11);
  v7[8].n128_u64[1] = v12;
  v7[10].n128_u64[1] = &type metadata for Bool;
  v7[9].n128_u8[0] = v1 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:completion:)(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1(v2) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = v4;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = a1;
  OUTLINED_FUNCTION_29_11(0xD000000000000027, 0x80000000004519D0);
}

uint64_t AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);
  v9 = *(v0 + 16);

  return v11(v9, 0xD000000000000027, 0x80000000004519D0, v3);
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
  *(v3 + 48) = v0;

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
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);

  return v10(0xD000000000000027, 0x80000000004519D0, v3);
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
  *(v3 + 40) = v0;

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
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1(v2) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000015;
  *(v3 + 40) = v4;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = a1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_26_2();
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD000000000000045, 0x8000000000451A30, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v3(0xD000000000000045, 0x8000000000451A30, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(69);
}

uint64_t AddCallParticipantCATs.__allocating_init(templateDir:options:globals:)()
{
  OUTLINED_FUNCTION_23_4();
  swift_allocObject();
  return AddCallParticipantCATs.init(templateDir:options:globals:)(v2, v1, v0);
}

uint64_t AddCallParticipantCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATs.Properties and conformance AddCallParticipantCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATs.Properties and conformance AddCallParticipantCATs.Properties;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATs.Properties and conformance AddCallParticipantCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATs.Properties and conformance AddCallParticipantCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AddCallParticipantCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddCallParticipantCATs;
  if (!type metadata singleton initialization cache for AddCallParticipantCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddCallParticipantCATs.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t a1, uint64_t a2)
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_54_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 48) = a2;
  *(v2 + 72) = result;
  return result;
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::Properties_optional __swiftcall AddCallParticipantCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t AddCallParticipantCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000025;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000002ELL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
    case 5:
    case 6:
      result = 0xD000000000000030;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 9:
      result = 0xD000000000000027;
      break;
    case 10:
      result = 0xD000000000000045;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = AddCallParticipantCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AddCallParticipantCATsSimple.confirmParticipant(contactToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.confirmParticipant(contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v9 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1(v12);
  *(OUTLINED_FUNCTION_51(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = v15;
  v16 = 0;
  if (v11)
  {
    v16 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v16);
  v28 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v9 + 40) = v17;
  *v17 = v18;
  v17[1] = AddCallParticipantCATs.confirmParticipant(contactToConfirm:);
  OUTLINED_FUNCTION_65_2();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

BOOL AddCallParticipantCATsSimple.ConfirmParticipantDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.ConfirmParticipantDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AddCallParticipantCATsSimple.ConfirmParticipantDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.confirmParticipantAsLabels(contactToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.confirmParticipantAsLabels(contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v9 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1(v12);
  *(OUTLINED_FUNCTION_51(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = v15;
  v16 = 0;
  if (v11)
  {
    v16 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v16);
  v28 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v17);
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds();
  OUTLINED_FUNCTION_9();
  *v11 = v18;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_65_2();

  return v24(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ConfirmParticipantDialogIds and conformance AddCallParticipantCATsSimple.ConfirmParticipantDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.errorAddRestricted(currentCall:unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
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
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

uint64_t AddCallParticipantCATsSimple.errorAddRestricted(currentCall:unsupportedReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = v11[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v11[6] = v15;
  v16 = OUTLINED_FUNCTION_1_19(v15, xmmword_424FF0);
  if (v13)
  {
    type metadata accessor for PhoneCallRecord(v16);
  }

  else
  {
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
  }

  OUTLINED_FUNCTION_46_2();
  *(v15 + 48) = v13;
  OUTLINED_FUNCTION_39_0();
  *(v15 + 72) = v17;
  *(v15 + 80) = v12;
  *(v15 + 88) = v18;
  outlined init with copy of SpeakableString?(v19, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_51_6(v20);
  if (v21)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
  }

  else
  {
    *(v15 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_1((v15 + 96));
    OUTLINED_FUNCTION_40();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v35 = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[7] = v24;
  *v24 = v25;
  v24[1] = AddCallParticipantCATsSimple.errorAddRestricted(currentCall:unsupportedReason:);
  OUTLINED_FUNCTION_65_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::ErrorAddRestrictedDialogIds_optional __swiftcall AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x636972656E6547;
  }

  if (a1 == 1)
  {
    return 0x646C6F486E4FLL;
  }

  return 0x676E69676E6952;
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::ErrorAddRestrictedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::ErrorAddRestrictedDialogIds_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AddCallParticipantCATsSimple.errorAddRestrictedAsLabels(currentCall:unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
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
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

uint64_t AddCallParticipantCATsSimple.errorAddRestrictedAsLabels(currentCall:unsupportedReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = v11[2];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v11[6] = v15;
  v16 = OUTLINED_FUNCTION_1_19(v15, xmmword_424FF0);
  if (v13)
  {
    type metadata accessor for PhoneCallRecord(v16);
  }

  else
  {
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
  }

  OUTLINED_FUNCTION_46_2();
  *(v15 + 48) = v13;
  OUTLINED_FUNCTION_39_0();
  *(v15 + 72) = v17;
  *(v15 + 80) = v12;
  *(v15 + 88) = v18;
  outlined init with copy of SpeakableString?(v19, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_51_6(v20);
  if (v21)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
  }

  else
  {
    *(v15 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_1((v15 + 96));
    OUTLINED_FUNCTION_40();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v35 = v23;
  v24 = swift_task_alloc();
  v11[7] = v24;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds();
  OUTLINED_FUNCTION_9();
  *v24 = v25;
  v24[1] = AddCallParticipantCATsSimple.errorAddRestrictedAsLabels(currentCall:unsupportedReason:);
  OUTLINED_FUNCTION_65_2();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds and conformance AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.errorMaxParticipantsReached(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorMaxParticipantsReached(currentCall:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_1_19(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_29(46);
  OUTLINED_FUNCTION_65_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

BOOL AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.errorMaxParticipantsReachedAsLabels(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorMaxParticipantsReachedAsLabels(currentCall:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_1_19(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_29(46);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds and conformance AddCallParticipantCATsSimple.ErrorMaxParticipantsReachedDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.errorNoTargetCall()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return v4(0xD000000000000024, 0x8000000000451B10, _swiftEmptyArrayStorage);
}

BOOL AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.errorNoTargetCallAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000024, 0x8000000000451B10, _swiftEmptyArrayStorage, &type metadata for AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds and conformance AddCallParticipantCATsSimple.ErrorNoTargetCallDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_47(v15);
  v17 = OUTLINED_FUNCTION_47_3(v16);
  OUTLINED_FUNCTION_2_11(v17, xmmword_426980);
  if (v14)
  {
    type metadata accessor for PhonePerson(0);
    v18 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_37_5(v18);
  OUTLINED_FUNCTION_27_2();
  v12[9] = v19;
  v12[10] = v13;
  v12[11] = v20;
  v21 = OUTLINED_FUNCTION_16_15(&type metadata for Bool);
  if (v10)
  {
    v21 = type metadata accessor for PhoneCallRecord(v21);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  v12[18] = v10;
  v12[21] = v21;
  OUTLINED_FUNCTION_17_8();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 48) = v22;
  *v22 = v23;
  v22[1] = AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:);
  OUTLINED_FUNCTION_60();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

BOOL AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.errorParticipantAlreadyActiveAsLabels(participant:shouldIncludeHandleLabel:currentCall:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorParticipantAlreadyActiveAsLabels(participant:shouldIncludeHandleLabel:currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_47(v15);
  v17 = OUTLINED_FUNCTION_47_3(v16);
  OUTLINED_FUNCTION_2_11(v17, xmmword_426980);
  if (v14)
  {
    type metadata accessor for PhonePerson(0);
    v18 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_37_5(v18);
  OUTLINED_FUNCTION_27_2();
  v12[9] = v19;
  v12[10] = v13;
  v12[11] = v20;
  v21 = OUTLINED_FUNCTION_16_15(&type metadata for Bool);
  if (v10)
  {
    v21 = type metadata accessor for PhoneCallRecord(v21);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  v12[18] = v10;
  v12[21] = v21;
  OUTLINED_FUNCTION_17_8();

  v22 = swift_task_alloc();
  *(v11 + 48) = v22;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds();
  OUTLINED_FUNCTION_9();
  *v22 = v23;
  v22[1] = AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:);
  OUTLINED_FUNCTION_60();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds and conformance AddCallParticipantCATsSimple.ErrorParticipantAlreadyActiveDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedDeviceByRegion(location:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedDeviceByRegion(location:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_25_2(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for DialogLocationAddress();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_29(48);
  OUTLINED_FUNCTION_65_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x32676F6C616964;
  }

  else
  {
    return 0x31676F6C616964;
  }
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::ErrorRestrictedDeviceByRegionDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::ErrorRestrictedDeviceByRegionDialogIds_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedDeviceByRegionAsLabels(location:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedDeviceByRegionAsLabels(location:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_25_2(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for DialogLocationAddress();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_29(48);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_51(v14);
  OUTLINED_FUNCTION_2_11(v15, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhonePerson(0);
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  *(v11 + 48) = v12;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 88) = v16;
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v17;
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_45_3(v18);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v19;
  *v19 = v20;
  v19[1] = AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:);
  OUTLINED_FUNCTION_65_2();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

BOOL AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedForParticipantAsLabels(participant:shouldIncludeHandleLabel:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorRestrictedForParticipantAsLabels(participant:shouldIncludeHandleLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v15 = OUTLINED_FUNCTION_51(v14);
  OUTLINED_FUNCTION_2_11(v15, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhonePerson(0);
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  *(v11 + 48) = v12;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 88) = v16;
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v17;
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_45_3(v18);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v19);
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v20;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_65_2();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds and conformance AddCallParticipantCATsSimple.ErrorRestrictedForParticipantDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.errorSelfAdd(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorSelfAdd(currentCall:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_1_19(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_29(31);
  OUTLINED_FUNCTION_65_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

BOOL AddCallParticipantCATsSimple.ErrorSelfAddDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.ErrorSelfAddDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AddCallParticipantCATsSimple.ErrorSelfAddDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.errorSelfAddAsLabels(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.errorSelfAddAsLabels(currentCall:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  v6 = OUTLINED_FUNCTION_1_19(v5, xmmword_424FD0);
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_29(31);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.ErrorSelfAddDialogIds and conformance AddCallParticipantCATsSimple.ErrorSelfAddDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_2_10(v16, xmmword_426980);
  if (v13)
  {
    v17 = type metadata accessor for PhoneCallInvite(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v10;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 136) = v19;
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 144) = v20;
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_44_3(v21);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 48) = v22;
  *v22 = v23;
  v22[1] = AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:);
  OUTLINED_FUNCTION_60();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t AddCallParticipantCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1735289202;
  }

  else
  {
    return 6579297;
  }
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = AddCallParticipantCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AddCallParticipantCATsSimple.intentHandledResponseAsLabels(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.intentHandledResponseAsLabels(callInvite:device:isFaceTimeFirstDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47(v14);
  v16 = OUTLINED_FUNCTION_47_3(v15);
  OUTLINED_FUNCTION_2_10(v16, xmmword_426980);
  if (v13)
  {
    v17 = type metadata accessor for PhoneCallInvite(0);
    v18 = v13;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_20_1(v17, v18);
  if (v10)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v10;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 136) = v19;
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 144) = v20;
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_44_3(v21);

  v22 = swift_task_alloc();
  *(v11 + 48) = v22;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v22 = v23;
  v22[1] = AddCallParticipantCATs.intentHandledResponse(callInvite:device:isFaceTimeFirstDevice:);
  OUTLINED_FUNCTION_60();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.IntentHandledResponseDialogIds and conformance AddCallParticipantCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.promptForParticipant(isUnsupportedFollowup:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.promptForParticipant(isUnsupportedFollowup:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = v6;
  *(v0 + 24) = v3;
  *(v3 + 16) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v8;
  *v8 = v9;
  v8[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);

  return v11(0xD000000000000027, 0x80000000004519D0, v3);
}

uint64_t AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  OUTLINED_FUNCTION_33_2();
  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t AddCallParticipantCATsSimple.PromptForParticipantDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F725074726F6873;
  }

  else
  {
    return 0x6D6F7250676E6F6CLL;
  }
}

PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::PromptForParticipantDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AddCallParticipantCATsSimple::PromptForParticipantDialogIds_optional *a2@<X8>)
{
  result.value = AddCallParticipantCATsSimple.PromptForParticipantDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = AddCallParticipantCATsSimple.PromptForParticipantDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v6;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds();
  OUTLINED_FUNCTION_9();
  *v7 = v8;
  v7[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
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
  *(v3 + 40) = v0;

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

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.PromptForParticipantDialogIds and conformance AddCallParticipantCATsSimple.PromptForParticipantDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.unsupportedParticipantsMultipleContactsUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD000000000000045, 0x8000000000451A30, _swiftEmptyArrayStorage);
}

BOOL AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AddCallParticipantCATsSimple.unsupportedParticipantsMultipleContactsUnsupportedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000045, 0x8000000000451A30, _swiftEmptyArrayStorage, &type metadata for AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds);
}

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds and conformance AddCallParticipantCATsSimple.UnsupportedParticipantsMultipleContactsUnsupportedDialogIds);
  }

  return result;
}

uint64_t AddCallParticipantCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t AddCallParticipantCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
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

uint64_t AddCallParticipantCATsSimple.init(useResponseMode:options:)(uint64_t a1)
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

unint64_t lazy protocol witness table accessor for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddCallParticipantCATsSimple.Properties and conformance AddCallParticipantCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AddCallParticipantCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddCallParticipantCATsSimple;
  if (!type metadata singleton initialization cache for AddCallParticipantCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.ErrorAddRestrictedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.ErrorRestrictedDeviceByRegionDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AddCallParticipantCATsSimple.ConfirmParticipantDialogIds(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return getEnumTag for YesNoConfirmationModel.CodingKeys(a1);
}

_BYTE *storeEnumTagSinglePayload for AddCallParticipantCATsSimple.ConfirmParticipantDialogIds(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_45_3(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = 0xD000000000000018;
}

uint64_t SiriInferenceContactSlotResolver.rchFlowContext.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  v4 = v2;
  v5 = v3;
  return v1;
}

void *AddCallParticipantContactSlotResolver.__allocating_init(rchFlowContext:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  outlined init with take of SPHConversation(a4, (v8 + 5));
  return v8;
}

void *AddCallParticipantContactSlotResolver.init(rchFlowContext:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  outlined init with take of SPHConversation(a4, (v4 + 5));
  return v4;
}

uint64_t AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for ResolvedSiriKitContact();
  v1[15] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for RecommenderType();
  v1[18] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[19] = v7;
  v1[20] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for SearchSuggestedContacts();
  v1[21] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[22] = v9;
  v1[23] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for ContactResolverDomain();
  OUTLINED_FUNCTION_21(v10);
  v1[24] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for ContactActionType();
  v1[25] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[26] = v12;
  v1[27] = OUTLINED_FUNCTION_62_4();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v1[30] = OUTLINED_FUNCTION_62_4();
  v1[31] = swift_task_alloc();
  v14 = type metadata accessor for Locale();
  v1[32] = v14;
  OUTLINED_FUNCTION_13_2(v14);
  v1[33] = v15;
  v1[34] = OUTLINED_FUNCTION_62_4();
  v1[35] = swift_task_alloc();
  v16 = type metadata accessor for ContactResolverConfigHashable(0);
  v1[36] = v16;
  OUTLINED_FUNCTION_21(v16);
  v1[37] = OUTLINED_FUNCTION_62_4();
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v17, v18, v19);
}

char *AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  v149 = v0;
  v1 = v0[13];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *((*(v3 + 136))(v2, v3) + 16);

  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_65_0();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#AddCallParticipantContactSlotResolver user requested group name, which is not supported. Adding placeholder INPersons. This will force the extension to return MultipleContactsUnsupported, because we can only add 1 person at a time.", v8, 2u);
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v9 = objc_allocWithZone(INPersonHandle);
    OUTLINED_FUNCTION_66_0();
    v13 = @nonobjc INPersonHandle.init(value:type:)(v10, v11, v12);
    isa = INPerson.init(personHandle:)(v13).super.isa;
    v142 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v15 = (v142 & 0xFFFFFFFFFFFFFF8);
    v15[2] = 2;
    v15[4] = isa;
    v15[5] = isa;
    v16 = isa;
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    if (*(v0[14] + 16))
    {
      v20 = App.appIdentifier.getter();
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        OUTLINED_FUNCTION_1_20();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v24, v25, v26, v27, v28);
        v19 = v29;
        v30 = v29[2];
        if (v30 >= v29[3] >> 1)
        {
          OUTLINED_FUNCTION_1_20();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v114, v30 + 1, 1, v115, v116, v117, v118, v119);
          v19 = v120;
        }

        v19[2] = v30 + 1;
        v31 = &v19[2 * v30];
        v31[4] = v22;
        v31[5] = v23;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }
    }

    v145 = v19;
    v140 = v1;
    if (one-time initialization token for emptyAddCallParticipantIntent != -1)
    {
      swift_once();
    }

    v32 = v0[37];
    v134 = v0[36];
    v33 = v0[35];
    v34 = v0[33];
    v143 = v0[31];
    v35 = v0[14];
    v135 = v0[32];
    v136 = v0[12];
    v36 = [static PhoneCallIntentClassNames.emptyAddCallParticipantIntent _className];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v138 = v35;
    __swift_project_boxed_opaque_existential_1(v35 + 5, v35[8]);
    v40 = OUTLINED_FUNCTION_44_4();
    v41(v40);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_44_4();
    dispatch thunk of DeviceState.siriLocale.getter();

    v42 = v136;
    v43 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v42);
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    *v32 = v45;
    v32[1] = v46;
    v32[2] = v37;
    v32[3] = v39;
    v131 = *(v34 + 16);
    v131(v32 + *(v134 + 24), v33, v135);
    *(v32 + *(v134 + 28)) = v145;

    static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INAddCallParticipantIntent, v143);
    ObjectType = swift_getObjectType();
    v49 = &enum case for ContactActionType.facetimeVideo(_:);
    if (dynamic_cast_existential_1_conditional(v42, ObjectType, &protocol descriptor for CallingIntent))
    {
      v50 = v48;
      v51 = v0[12];
      v52 = swift_getObjectType();
      v53 = *(v50 + 24);
      v54 = v51;
      v55 = v53(v52, v50);

      if (v55 == 1)
      {
        v49 = &enum case for ContactActionType.facetimeAudio(_:);
      }
    }

    v132 = v0[38];
    v128 = v0[37];
    v144 = v0[35];
    v56 = v0[32];
    v57 = v0[29];
    v121 = v0[34];
    v122 = v0[30];
    v58 = v0[28];
    v129 = v0[27];
    v130 = v0[33];
    v60 = v0[25];
    v59 = v0[26];
    v123 = v0[31];
    v61 = v0[22];
    v124 = v0[23];
    v125 = v0[21];
    v62 = v0[19];
    v126 = v0[20];
    v127 = v0[18];
    v133 = v0[13];
    (*(v59 + 104))(v58, *v49, v60);
    (*(v59 + 32))(v57, v58, v60);
    v131(v121, v144, v56);
    static ContactResolverDomain.phone.getter();
    outlined init with copy of SpeakableString?(v123, v122, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v61 + 104))(v124, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v125);
    (*(v62 + 104))(v126, enum case for RecommenderType.mlRecommender(_:), v127);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    (*(v59 + 16))(v129, v57, v60);
    ContactResolverConfig.actionType.setter();
    (*(v59 + 8))(v57, v60);
    outlined destroy of SpeakableString?(v123, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v130 + 8))(v144, v56);
    outlined init with take of ContactResolverConfigHashable(v128, v132);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v63 = v138[8];
    v64 = v138[9];
    __swift_project_boxed_opaque_existential_1(v138 + 5, v63);
    (*(v64 + 96))(v63, v64);
    v65 = v0[10];
    v66 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v65);
    v67 = v140;
    v68 = v140[3];
    v69 = v140[4];
    __swift_project_boxed_opaque_existential_1(v133, v68);
    v70 = (*(v69 + 128))(v68, v69);
    v73 = (*(v66 + 16))(v70, v132, v65, v66, v71, v72);

    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = v0[16];
      v148 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v78 = *(v75 + 16);
      v76 = v75 + 16;
      v77 = v78;
      OUTLINED_FUNCTION_19_1();
      v80 = v73 + v79;
      v81 = *(v76 + 56);
      do
      {
        v82 = v0[17];
        v83 = v0[15];
        v77(v82, v80, v83);
        ResolvedSiriKitContact.person.getter();
        (*(v76 - 8))(v82, v83);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v80 += v81;
        --v74;
      }

      while (v74);

      v84 = v148;
      v67 = v140;
    }

    else
    {

      v84 = _swiftEmptyArrayStorage;
    }

    v85 = v0[13];
    v86 = v0[14];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    __swift_project_boxed_opaque_existential_1(v85, v67[3]);
    v87 = OUTLINED_FUNCTION_44_4();
    v89 = v88(v87);
    swift_retain_n();
    v90 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay27PhoneCallFlowDelegatePlugin04SiriF7Contact_pGSaySo8INPersonCGG_ALs5NeverOTg504_s27fghi25Plugin03AddB30Participantl45SlotResolverC07resolveI08skIntent02nlM0SaySo8m13CGSo05INAddbgY63C_AA0aB8NLIntent_ptYaKFAhA04SiriaH0_p_AHtcACcfu_AhaM_p_AHtcfu0_AH0qgsltU0CTf1cn_n(v89, v84, v86);

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.siriPhone);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    v142 = v90;
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v146 = v94;
      v147 = v141;
      *v94 = 136315138;
      v95 = specialized Array.count.getter(v90);
      if (v95)
      {
        v96 = v95;
        v137 = v93;
        v139 = v92;
        v148 = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95 & ~(v95 >> 63), 0);
        if (v96 < 0)
        {
          __break(1u);
          return result;
        }

        v97 = 0;
        v98 = v148;
        v99 = v90 & 0xC000000000000001;
        v100 = v90;
        do
        {
          if (v99)
          {
            v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v101 = *(v90 + 8 * v97 + 32);
          }

          v102 = v101;
          v103 = outlined bridged method (pb) of @objc INPerson.scoredAlternatives.getter(v101);

          if (!v103)
          {
            v103 = _swiftEmptyArrayStorage;
          }

          v148 = v98;
          v105 = v98[2];
          v104 = v98[3];
          if (v105 >= v104 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
            v98 = v148;
          }

          ++v97;
          v98[2] = v105 + 1;
          v98[v105 + 4] = v103;
          v90 = v100;
        }

        while (v96 != v97);
        v92 = v139;
        v93 = v137;
      }

      v109 = v0[38];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14INScoredPersonCGMd, &_sSaySo14INScoredPersonCGMR);
      v110 = Array.description.getter();
      v112 = v111;

      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, &v147);

      *(v146 + 1) = v113;
      _os_log_impl(&dword_0, v92, v93, "#AddCallParticipantContactSlotResolver resolved contacts: %s", v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);

      OUTLINED_FUNCTION_10_10();
      v108 = v109;
    }

    else
    {
      v106 = v0[38];

      OUTLINED_FUNCTION_10_10();
      v108 = v106;
    }

    outlined destroy of ContactResolverConfigHashable(v108, v107);
  }

  v17 = v0[1];

  return v17(v142);
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay27PhoneCallFlowDelegatePlugin04SiriF7Contact_pGSaySo8INPersonCGG_ALs5NeverOTg504_s27fghi25Plugin03AddB30Participantl45SlotResolverC07resolveI08skIntent02nlM0SaySo8m13CGSo05INAddbgY63C_AA0aB8NLIntent_ptYaKFAhA04SiriaH0_p_AHtcACcfu_AhaM_p_AHtcfu0_AH0qgsltU0CTf1cn_n(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = specialized Array.count.getter(a2);
  v7 = v6;
  if (v6 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v29 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v7 < 0)
  {
LABEL_38:
    __break(1u);
  }

  else
  {
    v21 = v3;
    v23 = v3 >> 62;
    if (!v8)
    {
      v11 = v3 & 0xFFFFFFFFFFFFFF8;
      v22 = v3 & 0xC000000000000001;
LABEL_19:
      v15 = v4 + 40 * v8 + 32;
      while (v5 != v8)
      {
        if (v8 >= v5)
        {
          goto LABEL_35;
        }

        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v15, v24);
        if (__OFADD__(v8, 1))
        {
          goto LABEL_36;
        }

        if (v23)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v16 = *(v11 + 16);
        }

        if (v8 == v16)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          break;
        }

        if (v22)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v17 = *(v21 + 8 * v8 + 32);
        }

        v18 = v17;
        outlined init with take of SPHConversation(v24, v25);
        *(&v26 + 1) = v18;
        v27[0] = v25[0];
        v27[1] = v25[1];
        v28 = v26;
        AddCallParticipantContactSlotResolver.downgradePartialMatches(contact:skeleton:)(v27, v18);
        outlined destroy of SpeakableString?(v27, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v8;
        v15 += 40;
      }

      return v29;
    }

    v9 = 0;
    v20 = v4;
    v10 = v4 + 32;
    v11 = v3 & 0xFFFFFFFFFFFFFF8;
    v22 = v3 & 0xC000000000000001;
    while (v5 != v9)
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v10, v25);
      if (v23)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *(v11 + 16);
      }

      if (v9 == v12)
      {

        result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
        goto LABEL_41;
      }

      if (v22)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v13 = *(v3 + 8 * v9 + 32);
      }

      v14 = v13;
      ++v9;
      outlined init with take of SPHConversation(v25, v27);
      *(&v28 + 1) = v14;
      AddCallParticipantContactSlotResolver.downgradePartialMatches(contact:skeleton:)(v27, v14);
      outlined destroy of SpeakableString?(v27, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 40;
      v3 = v21;
      if (v8 == v9)
      {
        v4 = v20;
        goto LABEL_19;
      }
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v19);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  outlined init with take of SPHConversation(v19, (v15 + 6));
  v15[11] = a3;
  v15[12] = a4;

  v16 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return _swift_task_switch(closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:), 0, 0);
}

uint64_t closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  *v3 = v0;
  v3[1] = closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:);

  return Result<>.init(catching:)(v0 + 16, &async function pointer to partial apply for closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:), v2, v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(v0 + 56))(v1, 0, (v2 << 8));
  outlined consume of Result<[INPerson], Error>(v1, v2);
  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (*(*a2 + 104) + **(*a2 + 104));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:);

  return v9(a3, a4);
}

uint64_t closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_11();
  return v1();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v11 = OUTLINED_FUNCTION_48_5();
  outlined init with copy of SpeakableString?(v11, v12, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v0, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_40();
    (*(v15 + 8))(v0, v13);
  }

  v16 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_50();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v2;

  swift_task_create();

  outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_65();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSay17SiriAppResolution0F0CG_Tt2g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v11 = OUTLINED_FUNCTION_48_5();
  outlined init with copy of SpeakableString?(v11, v12, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of SpeakableString?(v0, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_40();
    (*(v15 + 8))(v0, v13);
  }

  v16 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_50();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  swift_task_create();

  outlined destroy of SpeakableString?(v6, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_65();
}

id AddCallParticipantContactSlotResolver.downgradePartialMatches(contact:skeleton:)(void *a1, void *a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = (&v38[-1] - v5);
  v7 = outlined bridged method (pb) of @objc INPerson.scoredAlternatives.getter(v37);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (!specialized Array.count.getter(v8))
  {

    goto LABEL_26;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;
  v11 = specialized Array.count.getter(v8);

  if (v11 != 1 || [v10 recommendation])
  {
    goto LABEL_25;
  }

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 384))(v12, v13);
  v14 = type metadata accessor for BackingContact(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    outlined destroy of SpeakableString?(v6, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
LABEL_20:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v23))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v24, v25, "#AddCallParticipantContactSlotResolver INAddCallParticipantIntent is only supported on NLX. This should never happen!");
      OUTLINED_FUNCTION_52();
    }

LABEL_25:
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_23_6();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of ContactResolverConfigHashable(v6, type metadata accessor for BackingContact);
    goto LABEL_20;
  }

  outlined init with take of SPHConversation(v6, v38);
  AddCallParticipantContactSlotResolver.isFullMatch(contact:)();
  if (v15)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v18))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v19, v20, "#AddCallParticipantContactSlotResolver Use existing recommendation for full name match");
      OUTLINED_FUNCTION_52();
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v30))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v31, v32, "#AddCallParticipantContactSlotResolver Downgrade confident => needsConfirmation for partial name match");
      OUTLINED_FUNCTION_52();
    }

    v33 = [v10 person];
    v34 = [objc_allocWithZone(INScoredPerson) initWithPerson:v33 recommendation:1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_426260;
    *(v35 + 32) = v34;
    v36 = v34;
    outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(v35, v37);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_26:
  v26 = v37;

  return v26;
}

void AddCallParticipantContactSlotResolver.isFullMatch(contact:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  matched = type metadata accessor for MatchInfo.MatchSignals();
  OUTLINED_FUNCTION_7();
  v41 = v2;
  __chkstk_darwin(v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v42 = &v39 - v7;
  v8 = type metadata accessor for UsoEntitySpan();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v39 - v14;
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = v1[3];
  v19 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v18);
  v20 = UsoContactConvertible.nameSpans.getter(v18, v19);
  v21 = 0;
  v49 = *(v20 + 2);
  v50 = v10 + 16;
  v22 = (v10 + 8);
  v44 = (v10 + 32);
  v23 = _swiftEmptyArrayStorage;
  while (v49 != v21)
  {
    if (v21 >= *(v20 + 2))
    {
      __break(1u);
      goto LABEL_20;
    }

    v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v25 = *(v10 + 72);
    (*(v10 + 16))(v17, &v20[v24 + v25 * v21], v8);
    if (closure #1 in AddCallParticipantContactSlotResolver.isFullMatch(contact:)(v17))
    {
      v43 = *v44;
      (v43)(v47, v17, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1);
        v23 = v51;
      }

      v28 = v23[2];
      v27 = v23[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v39 = v23[2];
        v40 = v28 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
        v28 = v39;
        v29 = v40;
        v23 = v51;
      }

      ++v21;
      v23[2] = v29;
      (v43)(v23 + v24 + v28 * v25, v47, v8);
    }

    else
    {
      (*v22)(v17, v8);
      ++v21;
    }
  }

  v49 = v23[2];
  if (!v49)
  {
LABEL_18:

    OUTLINED_FUNCTION_65();
    return;
  }

  v30 = 0;
  OUTLINED_FUNCTION_19_1();
  v47 = v23 + v31;
  v32 = v42;
  v44 = (v41 + 8);
  while (v30 < v23[2])
  {
    v33 = v23;
    v34 = v48;
    (*(v10 + 16))(v48, &v47[*(v10 + 72) * v30], v8);
    UsoEntitySpan.matchInfo.getter();
    v35 = v32;
    v17 = type metadata accessor for MatchInfo();
    if (__swift_getEnumTagSinglePayload(v32, 1, v17) == 1)
    {
      (*v22)(v34, v8);
      outlined destroy of SpeakableString?(v32, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
    }

    else
    {
      v36 = v45;
      static MatchInfo.MatchSignals.exactMatch.getter();
      v37 = MatchInfo.hasMatchSignals(_:)();
      (*v44)(v36, matched);
      (*v22)(v34, v8);
      OUTLINED_FUNCTION_40();
      (*(v38 + 8))(v35, v17);
      v32 = v35;
      if (v37)
      {
        goto LABEL_18;
      }
    }

    ++v30;
    v23 = v33;
    if (v49 == v30)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  __break(1u);

  (*v22)(v17, v8);

  __break(1u);
}

uint64_t closure #1 in AddCallParticipantContactSlotResolver.isFullMatch(contact:)(uint64_t a1)
{
  v2 = type metadata accessor for IdentifierAppBundle();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v40 = &v37[-v5];
  v6 = type metadata accessor for UsoEntitySpan.SpanSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v37[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  __chkstk_darwin(v13 - 8);
  v45 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v37[-v16];
  __chkstk_darwin(v18);
  v20 = &v37[-v19];
  v44 = a1;
  UsoEntitySpan.sourceComponent.getter();
  (*(v7 + 104))(v17, enum case for UsoEntitySpan.SpanSource.spanMatchSiriVocab(_:), v6);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v6);
  v21 = *(v10 + 56);
  outlined init with copy of SpeakableString?(v20, v12, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  outlined init with copy of SpeakableString?(v17, &v12[v21], &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) != 1)
  {
    v22 = v45;
    outlined init with copy of SpeakableString?(v12, v45, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    if (__swift_getEnumTagSinglePayload(&v12[v21], 1, v6) != 1)
    {
      v23 = &v12[v21];
      v24 = v39;
      (*(v7 + 32))(v39, v23, v6);
      lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource();
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v7 + 8);
      v25(v24, v6);
      outlined destroy of SpeakableString?(v17, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      outlined destroy of SpeakableString?(v20, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v25(v22, v6);
      outlined destroy of SpeakableString?(v12, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      if (v38)
      {
        goto LABEL_8;
      }

LABEL_15:
      v35 = 0;
      return v35 & 1;
    }

    outlined destroy of SpeakableString?(v17, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    outlined destroy of SpeakableString?(v20, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    (*(v7 + 8))(v22, v6);
LABEL_6:
    outlined destroy of SpeakableString?(v12, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
    goto LABEL_15;
  }

  outlined destroy of SpeakableString?(v17, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  outlined destroy of SpeakableString?(v20, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  if (__swift_getEnumTagSinglePayload(&v12[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of SpeakableString?(v12, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
LABEL_8:
  v26 = v40;
  UsoEntitySpan.appBundleSemantic.getter();
  v28 = v41;
  v27 = v42;
  v29 = v43;
  (*(v42 + 104))(v41, enum case for IdentifierAppBundle.abContacts(_:), v43);
  v30 = static IdentifierAppBundle.== infix(_:_:)();
  v31 = *(v27 + 8);
  v31(v28, v29);
  v31(v26, v29);
  if ((v30 & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = UsoEntitySpan.label.getter();
  if (!v33)
  {
    goto LABEL_15;
  }

  if (v32 == 0x75466E6F73726570 && v33 == 0xEE00656D614E6C6CLL)
  {

    v35 = 1;
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v35 & 1;
}

void *AddCallParticipantContactSlotResolver.deinit()
{
  v1 = v0[3];
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  return v0;
}

uint64_t AddCallParticipantContactSlotResolver.__deallocating_deinit()
{
  v1 = v0[3];
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  OUTLINED_FUNCTION_43_0();
  v9 = (*(v6 + 104) + **(v6 + 104));
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver;

  return v9(a2, a3);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:_:) in conformance AddCallParticipantContactSlotResolver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = *(**v4 + 112);

  v10(a1, a2, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> (), v9);
}

id @nonobjc INPersonHandle.init(value:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
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
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

void specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_1_20();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v3 + 1, 1, v1, v5, v6, v7, v8);
    *v0 = v9;
  }
}

{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_16_16();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v3 + 1, 1, v1, v5, v6, v7);
    *v0 = v8;
  }
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)()
{
  OUTLINED_FUNCTION_55_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_1_20();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, 1, v6, v7, v8, v9, v10);
    *v0 = v11;
  }
}

{
  OUTLINED_FUNCTION_55_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_16_16();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, 1, v6, v7, v8, v9);
    *v0 = v10;
  }
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  if (result + 1 > *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
      v7 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_11_11();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_1_20();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26INPersonHandleFaceTimeTypeVGMd, &_ss23_ContiguousArrayStorageCySo26INPersonHandleFaceTimeTypeVGMR);
      v7 = OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_27_5(v7);
      OUTLINED_FUNCTION_31_2(v8 / 8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 8 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine15SpeakableStringVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine15SpeakableStringVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v2)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMR);
      v8 = OUTLINED_FUNCTION_37_6(v7);
      OUTLINED_FUNCTION_27_5(v8);
      OUTLINED_FUNCTION_31_2(v9 / v3);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v2)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR);
      v8 = OUTLINED_FUNCTION_37_6(v7);
      OUTLINED_FUNCTION_27_5(v8);
      OUTLINED_FUNCTION_31_2(v9 / v3);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pMd, &_s11SiriSignals15SignalProviding_pMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v4 = v2;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6ResultOy11SiriKitFlow010TemplatingH0Vs5Error_pG_Tt1g5Tm(*(v0 + 16), v4, &_ss23_ContiguousArrayStorageCys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGGMd, &_ss23_ContiguousArrayStorageCys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_4_8(v7);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v2)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR);
      v8 = OUTLINED_FUNCTION_37_6(v7);
      OUTLINED_FUNCTION_27_5(v8);
      OUTLINED_FUNCTION_31_2(v9 / v3);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMd, &_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
      v6 = OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_27_5(v6);
      OUTLINED_FUNCTION_31_2(v7 / 32);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v4)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for RREntity();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVGMR);
  v8 = OUTLINED_FUNCTION_24_10();
  type metadata accessor for DisambiguationItemWithDirectInvocationModel(v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_8(v9);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11DisplayHintVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow13SemanticValueVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_21_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v4 = v2;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6ResultOy11SiriKitFlow010TemplatingH0Vs5Error_pG_Tt1g5Tm(*(v0 + 16), v4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV0lN0tGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV0lN0tGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_4_8(v7);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMR);
      v7 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_11_11();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_16_16();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v0, v1, v2, v3, v4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE9AttributeOGMR, v5);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_UsoEntityIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_UsoEntityIdentifierVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_30_6();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_10();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_AC0fg1_H7_PersonC6persontGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_AC0fg1_H7_PersonC6persontGMR);
      v7 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_11_11();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_14_12();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_AA0cd1_E7_PersonC6persontMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_AA0cd1_E7_PersonC6persontMR);
    OUTLINED_FUNCTION_22_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D8RRTargetVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D8RRTargetVGMR);
  v8 = OUTLINED_FUNCTION_24_10();
  type metadata accessor for PhoneRRTarget(v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_8(v9);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy13SiriInference15CommsAppFeatureVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference15CommsAppFeatureVGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for CommsAppFeature();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
  v8 = OUTLINED_FUNCTION_24_10();
  type metadata accessor for AppDescription(v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_8(v9);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_3_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_21_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_38_4(v2, v5, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RRResultOGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RRResultOGMR);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for RRResult();
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_8(v8);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
  }
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGccGMd, &_ss23_ContiguousArrayStorageCyyys6ResultOy11SiriKitFlow010TemplatingD0Vs5Error_pGccGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideOGMR, &type metadata for AppQuery.Override, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin07ReadingE6RecordVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin07ReadingE6RecordVGMR, &type metadata for ReadingCallRecord, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE16IntentClassNamesOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE16IntentClassNamesOGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR, &type metadata for Data, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D9NumberTagOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0D9NumberTagOGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE13EmergencyTypeOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0dE13EmergencyTypeOGMR, &type metadata for PhoneCallEmergencyType, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v13 == v14))
  {
LABEL_6:
    OUTLINED_FUNCTION_42_4();
    if (v9)
    {
      OUTLINED_FUNCTION_53_7(v15, v16, v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v21);
      OUTLINED_FUNCTION_11_11();
      v21[2] = v8;
      v21[3] = v22;
      if (a1)
      {
LABEL_8:
        v23 = OUTLINED_FUNCTION_45_4();
        a8(v23);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_35_6();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v13)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_12();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_53_7(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v11)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_7;
  }

  __break(1u);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = OUTLINED_FUNCTION_41_3();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_11_11();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

char *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6ResultOy11SiriKitFlow010TemplatingH0Vs5Error_pG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  v6 = OUTLINED_FUNCTION_23_6();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_13_2(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC13SiriInference12ContactQueryV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = a5(0);
  OUTLINED_FUNCTION_13_2(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_34_2();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v1;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_34_2();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_57_3();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_42_4();
    if (v4)
    {
      OUTLINED_FUNCTION_53_7(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_41_3();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * ((v15 - 32) / 32);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_45_4();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_35_6();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_57_3();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_8_12(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_42_4();
    if (v4)
    {
      OUTLINED_FUNCTION_53_7(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_41_3();
      _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_11_11();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_45_4();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_35_6();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_6;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_66();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_8_12();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_25_3();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_8();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_53_7(v0, v1, v2, v3, v4, v5);
  v17 = v9(0);
  OUTLINED_FUNCTION_13_2(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_19_1();
  if (v11)
  {
    v7(v10 + v25, v15, v22 + v25);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_65();
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin8SmsGroup_pMd, &_s27PhoneCallFlowDelegatePlugin8SmsGroup_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD7Contact_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo14INScoredPersonCGGMd, &_ss23_ContiguousArrayStorageCySaySo14INScoredPersonCGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14INScoredPersonCGMd, &_sSaySo14INScoredPersonCGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pMd, &_s27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin18ContactGroupResult_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin18ContactGroupResult_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18ContactGroupResult_pMd, &_s27PhoneCallFlowDelegatePlugin18ContactGroupResult_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_So8INPersonC7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_So8INPersonC7elementtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_So8INPersonC7elementtMd, &_sSi6offset_So8INPersonC7elementtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0kL11ContactRoleO07contactQ0tGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMd, &_s12SiriOntology22UsoEntity_common_AgentC5agent_27PhoneCallFlowDelegatePlugin0hI11ContactRoleO07contactN0tMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSgGMd, &_ss23_ContiguousArrayStorageCyypSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySS5IndexVGGMd, &_ss23_ContiguousArrayStorageCySnySS5IndexVGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology10IntentNode_pMd, &_s12SiriOntology10IntentNode_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMd, &_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV5querytGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin04SiriD11ContactImplC7contact_0I9Inference0J5QueryV5querytGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t outlined bridged method (ob) of @objc INIntent.intentId.getter(void *a1)
{
  v2 = [a1 intentId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INPerson.scoredAlternatives.getter(void *a1)
{
  v1 = [a1 scoredAlternatives];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with take of ContactResolverConfigHashable(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverConfigHashable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_32_3(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t partial apply for closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[11];
  v4 = v0[12];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18(v5);
  *v6 = v7;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();
  v8 = OUTLINED_FUNCTION_59_1();

  return closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(v8, v9, v10, v1, v2, v11, v3, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5TQ0_()
{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSay17SiriAppResolution0E0CG_TG5TA()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_58_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_4(v1);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource()
{
  result = lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource;
  if (!lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource)
  {
    type metadata accessor for UsoEntitySpan.SpanSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource);
  }

  return result;
}

uint64_t outlined destroy of ContactResolverConfigHashable(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_40();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_58_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_4(v1);

  return v4(v3);
}

uint64_t partial apply for closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18(v2);
  *v3 = v4;
  v3[1] = closure #2 in ActionableCallControlFlow.execute();
  v5 = OUTLINED_FUNCTION_59_1();

  return closure #1 in closure #1 in AddCallParticipantContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(v5, v6, v7, v1);
}

uint64_t outlined consume of Result<[INPerson], Error>(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_37_6(uint64_t a1)
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_38_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC13SiriInference12ContactQueryV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t one-time initialization function for typeName()
{
  type metadata accessor for AddCallParticipantFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03Addb11ParticipantC0CmMd, &_s27PhoneCallFlowDelegatePlugin03Addb11ParticipantC0CmMR);
  result = String.init<A>(describing:)();
  static AddCallParticipantFlow.typeName = result;
  unk_54CFA0 = v1;
  return result;
}

void *AddCallParticipantFlow.init(nlIntent:app:sharedGlobals:)(void *a1, uint64_t a2, void *a3)
{
  outlined init with copy of SignalProviding(a1, v3 + direct field offset for AddCallParticipantFlow.nlIntent);
  *(v3 + direct field offset for AddCallParticipantFlow.app) = a2;
  outlined init with copy of SignalProviding(a3, v9);
  v7 = specialized PhoneFlow.init(sharedGlobals:)(v9, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

void *specialized PhoneFlow.init(sharedGlobals:)(__int128 *a1)
{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(sharedGlobals:)(a1, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMR);
}

void *specialized PhoneFlow.init(sharedGlobals:)(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v3[2] = 0x6F6C46656E6F6850;
  v3[3] = 0xE900000000000077;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  swift_storeEnumTagMultiPayload();
  outlined init with take of SPHConversation(a1, v3 + *(*v3 + 120));
  return v3;
}

uint64_t AddCallParticipantFlow.execute()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  type metadata accessor for CATOption();
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(AddCallParticipantFlow.execute(), 0, 0);
}

uint64_t AddCallParticipantFlow.execute()()
{
  v28 = v0;
  v1 = *(**(v0 + 136) + 128);
  v1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v2 = **(v0 + 168);
      (*(**(v0 + 136) + 152))();
      type metadata accessor for AddCallParticipantCATsSimple(0);
      static CATOption.defaultMode.getter();
      v3 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for AddCallParticipantGuardFlowFactory();
      v4 = swift_allocObject();
      outlined init with take of SPHConversation((v0 + 16), v4 + 16);
      *(v4 + 56) = v3;
      v5 = AddCallParticipantGuardFlowFactory.makeGuardFlow()();

      *(v0 + 96) = v2;
      *(v0 + 104) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR);
      type metadata accessor for GuardFlow();
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR, &protocol conformance descriptor for AnyValueFlow<A>);
      *(v0 + 112) = Flow.guarded<A>(by:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMd, &_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type ConditionalFlow<RCHFlowResult<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>> and conformance ConditionalFlow<A>, &_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMd, &_s11SiriKitFlow011ConditionalC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGGMR, &protocol conformance descriptor for ConditionalFlow<A>);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_5;
    case 5u:
      v6 = *(v0 + 160);
      v7 = *(v0 + 136);
      type metadata accessor for AddCallParticipantRCHFlow(0);
      outlined init with copy of SignalProviding(v7 + direct field offset for AddCallParticipantFlow.nlIntent, v0 + 56);
      v8 = *(v7 + direct field offset for AddCallParticipantFlow.app);
      v9 = *(*v7 + 152);

      v9(v27, v10);
      *(v0 + 120) = AddCallParticipantRCHFlow.__allocating_init(phoneCallNLIntent:app:sharedGlobals:)((v0 + 56), v8, v27);
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>, type metadata accessor for AddCallParticipantRCHFlow, &protocol conformance descriptor for PhoneIntentRCHFlow<A, B>);
      v11 = Flow.eraseToAnyValueFlow()();

      *v6 = v11;
      swift_storeEnumTagMultiPayload();
      v12 = *(*v7 + 136);

      v12(v6);
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_5:

      break;
    case 6u:
      (*(**(v0 + 136) + 232))();
      break;
    case 7u:
      static ExecuteResponse.complete()();
      break;
    default:
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
        v27[0] = swift_slowAlloc();
        *v16 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v17 = *(v0 + 160);
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static AddCallParticipantFlow.typeName, unk_54CFA0, v27);
        *(v16 + 12) = 2080;
        v1();
        v18 = specialized PhoneCallFlowState.description.getter();
        v20 = v19;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v27);

        *(v16 + 14) = v21;
        _os_log_impl(&dword_0, v14, v15, "%s: execute called with flow in unexpected state: %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      v23 = *(v0 + 160);
      v22 = *(v0 + 168);
      v24 = *(v0 + 136);
      swift_storeEnumTagMultiPayload();
      (*(*v24 + 136))(v23);
      static ExecuteResponse.ongoing(requireInput:)();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
      break;
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t AddCallParticipantFlow.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for AddCallParticipantFlow.nlIntent));
}

void *AddCallParticipantFlow.deinit()
{
  v0 = specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for AddCallParticipantFlow.nlIntent));

  return v0;
}

void *specialized PhoneFlow.deinit()
{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartAudioB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo012INStartVideoB6IntentCSo0ghbI8ResponseCGMR);
}

{
  return specialized PhoneFlow.deinit(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo07INStartB6IntentCSo0gbH8ResponseCGMR);
}

void *specialized PhoneFlow.deinit(uint64_t *a1, uint64_t *a2)
{

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2 + *(*v2 + 112), a1, a2);
  __swift_destroy_boxed_opaque_existential_1((v2 + *(*v2 + 120)));
  return v2;
}

uint64_t AddCallParticipantFlow.__deallocating_deinit()
{
  AddCallParticipantFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized PhoneCallFlowState.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo26INAddCallParticipantIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo26INAddCallParticipantIntentCSo0fghI8ResponseCGMR);
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v32 - v2;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  __chkstk_darwin(v8);
  v10 = (&v32 - v9);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0, &v32 - v9, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo05INAddB17ParticipantIntentCSo0gbhI8ResponseCGMR);
  v11 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v18 = *(v10 + *(v17 + 48));
      v19 = *(v17 + 64);
      (*(v5 + 32))(v7, v10, v4);
      outlined init with take of SPHConversation((v10 + v19), &v37);
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v20._object = 0x80000000004572B0;
      v20._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v20);
      v34 = v18;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 8236;
      v22._object = 0xE200000000000000;
      String.append(_:)(v22);
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24._countAndFlagsBits = 8236;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
      _print_unlocked<A, B>(_:_:)();
      v25._countAndFlagsBits = 41;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);

      v11 = v35;
      __swift_destroy_boxed_opaque_existential_1(&v37);
      (*(v5 + 8))(v7, v4);
      break;
    case 2u:
      v26 = *v10;
      v37 = 0x284843526E75722ELL;
      v38 = 0xE800000000000000;
      v35 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo26INAddCallParticipantIntentCSo0hijK8ResponseCGGMR, &protocol conformance descriptor for AnyValueFlow<A>);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      goto LABEL_8;
    case 3u:
      v14 = v33;
      (*(v33 + 32))(v3, v10, v1);
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);
      v15._object = 0x8000000000457290;
      v15._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v15);
      _print_unlocked<A, B>(_:_:)();
      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v11 = v37;
      (*(v14 + 8))(v3, v1);
      break;
    case 4u:
      v28 = *v10;
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v29._countAndFlagsBits = 0x6F707075736E752ELL;
      v29._object = 0xED00002864657472;
      String.append(_:)(v29);
      v35 = v28;
      type metadata accessor for SimpleOutputFlowAsync();
      _print_unlocked<A, B>(_:_:)();
LABEL_8:
      v30._countAndFlagsBits = 41;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);

      v11 = v37;
      break;
    case 5u:
      return v11;
    case 6u:
      v11 = 0x7373696D7369642ELL;
      break;
    case 7u:
      v11 = 0x706F74732ELL;
      break;
    default:
      (*(v5 + 32))(v7, v10, v4);
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v37 = 0xD000000000000012;
      v38 = 0x80000000004572D0;
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 41;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v11 = v37;
      (*(v5 + 8))(v7, v4);
      break;
  }

  return v11;
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo18INHangUpCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo18INHangUpCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v39 = v2;
  __chkstk_darwin(v3);
  v5 = &v38 - v4;
  v6 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v12);
  v14 = (&v38 - v13);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0, &v38 - v13, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v15 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v23 = *(v14 + *(v22 + 48));
      v24 = *(v22 + 64);
      v25 = OUTLINED_FUNCTION_3_4();
      v26(v25);
      outlined init with take of SPHConversation((v14 + v24), &v43);
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      OUTLINED_FUNCTION_5_12(".runIntentConversion(");
      v40 = v23;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 8236;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      OUTLINED_FUNCTION_0_14();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(v29, v30, &protocol conformance descriptor for Input);
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 8236;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_6_5();

      v15 = v41;
      __swift_destroy_boxed_opaque_existential_1(&v43);
      (*(v8 + 8))(v11, v6);
      break;
    case 2u:
      v33 = *v14;
      v43 = 0x284843526E75722ELL;
      v44 = 0xE800000000000000;
      v41 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR, &protocol conformance descriptor for AnyValueFlow<A>);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      goto LABEL_8;
    case 3u:
      v21 = v39;
      (*(v39 + 32))(v5, v14, v1);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(24);
      OUTLINED_FUNCTION_5_12(".offerFollowUpAction(");
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_6_5();
      v15 = v43;
      (*(v21 + 8))(v5, v1);
      break;
    case 4u:
      v35 = *v14;
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(16);
      v36._countAndFlagsBits = 0x6F707075736E752ELL;
      v36._object = 0xED00002864657472;
      String.append(_:)(v36);
      v41 = v35;
      type metadata accessor for SimpleOutputFlowAsync();
      _print_unlocked<A, B>(_:_:)();
LABEL_8:
      OUTLINED_FUNCTION_6_5();

      v15 = v43;
      break;
    case 5u:
      return v15;
    case 6u:
      v15 = 0x7373696D7369642ELL;
      break;
    case 7u:
      v15 = 0x706F74732ELL;
      break;
    default:
      v16 = OUTLINED_FUNCTION_3_4();
      v17(v16);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(21);

      v43 = 0xD000000000000012;
      v44 = 0x80000000004572D0;
      OUTLINED_FUNCTION_0_14();
      lazy protocol witness table accessor for type AddCallParticipantRCHFlow and conformance PhoneIntentRCHFlow<A, B>(v18, v19, &protocol conformance descriptor for Input);
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      OUTLINED_FUNCTION_6_5();
      v15 = v43;
      (*(v8 + 8))(v11, v6);
      break;
  }

  return v15;
}