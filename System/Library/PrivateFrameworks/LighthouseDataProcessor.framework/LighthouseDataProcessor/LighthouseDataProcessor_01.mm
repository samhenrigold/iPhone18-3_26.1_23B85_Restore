id sub_20E04AFA4(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D580D8]) init];
  sub_20E04B3E4(a1, v13);
  v15 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_20E04B454(v13, v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
          v17 = sub_20E1A1288(v7);
          if (!v14)
          {
            sub_20E04B4BC(v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

            return v14;
          }

          [v14 setUserAuthenticationRequired_];

          v18 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
          v19 = v7;
        }

        else
        {
          sub_20E04B454(v13, v4, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
          if (v14)
          {
            v25 = objc_allocWithZone(MEMORY[0x277D580F0]);
            v26 = v14;
            v27 = [v25 init];
            v28 = v27;
            if (v27)
            {
              [v27 setIsPreciseLocationRequired_];
              if (v4[32])
              {
                v29 = 0;
              }

              else
              {
                v29 = *(v4 + 3);
              }

              [v28 setTimeoutForLocationFetch_];
            }

            [v26 setUserLocationForSystemRequired_];
          }

          v18 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
          v19 = v4;
        }
      }

      else
      {
        sub_20E04B454(v13, v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
        v20 = [objc_allocWithZone(MEMORY[0x277D580E8]) init];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
          v23 = sub_20E322860();
          [v22 setBundleId_];
        }

        v24 = v14;
        [v24 setProtectedAppApprovalRequired_];

        v18 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
        v19 = v10;
      }

      sub_20E04B4BC(v19, v18);
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (v14)
        {
          [v14 setCarPlayIncompatible_];
        }
      }

      else if (v14)
      {
        [v14 setCarBluetoothIncompatible_];
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (v14)
      {
        [v14 setDeviceUnlockRequired_];
      }
    }

    else if (v14)
    {
      [v14 setAppLaunchRequired_];
    }
  }

  return v14;
}

uint64_t sub_20E04B3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04B454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E04B4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::ClientIdentifier_optional __swiftcall ClientIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E322C20();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ClientIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_20E04B5C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6E776F6E6B6E55;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x800000020E359F10;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x6E776F6E6B6E55;
  }

  if (*a2)
  {
    v6 = 0x800000020E359F10;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20E322D60();
  }

  return v8 & 1;
}

uint64_t sub_20E04B66C()
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E04B6F4(uint64_t a1)
{
  sub_20E3228F0();
}

uint64_t sub_20E04B768(uint64_t a1)
{
  sub_20E322DE0();
  sub_20E3228F0();

  return sub_20E322E00();
}

uint64_t sub_20E04B7EC@<X0>(char *a2@<X8>)
{
  v3 = sub_20E322C20();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_20E04B84C(unint64_t *a1@<X8>)
{
  v2 = 0x800000020E359F10;
  v3 = 0x6E776F6E6B6E55;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t AnalyticsType.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

unint64_t sub_20E04B920()
{
  result = qword_27C863AB0;
  if (!qword_27C863AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863AB0);
  }

  return result;
}

unint64_t sub_20E04B978()
{
  result = qword_27C863AB8;
  if (!qword_27C863AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863AB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextProtoRetrievedTool.AppSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextProtoRetrievedTool.AppSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_20E04BBC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v30 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC0, &qword_20E323C68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v10, &qword_27C863AC0, &qword_20E323C68);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20E04875C(v10, &qword_27C863AC0, &qword_20E323C68);
    return 0;
  }

  else
  {
    sub_20E04BFDC(v10, v14);
    v16 = [objc_allocWithZone(MEMORY[0x277D57CE0]) init];
    v15 = v16;
    if (v16)
    {
      [v16 setExists_];
      v17 = objc_allocWithZone(MEMORY[0x277D58078]);
      v18 = v15;
      v19 = [v17 init];
      sub_20E0486F4(v14, v7, &qword_27C8639D0, &unk_20E33C230);
      v20 = type metadata accessor for TranscriptProtoStatementID(0);
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      v30 = v21 + 48;
      v31 = v22;
      if (v22(v7, 1, v20) == 1)
      {
        sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v23 = *v7;
        sub_20E04C040(v7, type metadata accessor for TranscriptProtoStatementID);
        [v19 setIndex_];
      }

      [v18 setCancelledActionStatementId_];

      v24 = *(v11 + 20);
      v25 = objc_allocWithZone(MEMORY[0x277D58078]);
      v26 = v18;
      v27 = [v25 init];
      sub_20E0486F4(&v14[v24], v5, &qword_27C8639D0, &unk_20E33C230);
      if (v31(v5, 1, v20) == 1)
      {
        sub_20E04875C(v5, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v28 = *v5;
        sub_20E04C040(v5, type metadata accessor for TranscriptProtoStatementID);
        [v27 setIndex_];
      }

      [v26 setStatementId_];
    }

    sub_20E04C040(v14, type metadata accessor for TranscriptProtoActionCancellation);
  }

  return v15;
}

uint64_t sub_20E04BFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionCancellation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04C040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E04C0A0()
{
  if (*v0)
  {
    return 0x4974736575716572;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_20E04C0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v6 || (sub_20E322D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E322D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20E04C1C8(uint64_t a1)
{
  v2 = sub_20E04C42C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E04C204(uint64_t a1)
{
  v2 = sub_20E04C42C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceFlowSessionIdSiriRequestIdMap.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC8, &qword_20E323C70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E04C42C();
  sub_20E322E40();
  v8[15] = 0;
  sub_20E322060();
  sub_20E04C7E8(&qword_27C863AD8, MEMORY[0x277CC95F8]);
  sub_20E322D40();
  if (!v1)
  {
    type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap(0);
    v8[14] = 1;
    sub_20E322D10();
  }

  return (*(v4 + 8))(v6, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20E04C42C()
{
  result = qword_27C863AD0;
  if (!qword_27C863AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863AD0);
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap(uint64_t a1)
{
  result = qword_27C863AF0;
  if (!qword_27C863AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceFlowSessionIdSiriRequestIdMap.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_20E322060();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AE0, &qword_20E323C78);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E04C42C();
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_20E04C7E8(&qword_27C863AE8, MEMORY[0x277CC9618]);
  v14 = v26;
  sub_20E322CB0();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_20E322C80();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_20E04C82C(v19, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_20E04C890(v19);
}

uint64_t sub_20E04C7E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20E322060();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20E04C82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04C890(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowSessionIdSiriRequestIdMap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04C944(uint64_t a1)
{
  result = sub_20E322060();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of SessionBuilder.buildSessionView()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20E04CE24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionBuilder.buildSessionView(streams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20E04CC18;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_20E04CC18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_20E04CD20()
{
  result = qword_27C863B00;
  if (!qword_27C863B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863B00);
  }

  return result;
}

unint64_t sub_20E04CD78()
{
  result = qword_27C863B08;
  if (!qword_27C863B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863B08);
  }

  return result;
}

unint64_t sub_20E04CDD0()
{
  result = qword_27C863B10;
  if (!qword_27C863B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863B10);
  }

  return result;
}

id sub_20E04CE28(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57E08]) init];
  if (v2)
  {
    v3 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 20);
    v4 = v2;
    v5 = sub_20E04EA80(a1 + v3);
    [v4 setTypeIdentifier_];

    v6 = objc_allocWithZone(MEMORY[0x277D57DE0]);
    v7 = v4;
    v8 = [v6 init];
    v9 = v8;
    if (v8)
    {
      [v8 setExists_];
    }

    [v7 setDisplayRepresentation_];
  }

  return v2;
}

id sub_20E04CF14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v102 = v88 - v3;
  v101 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v110 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v100 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v88 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v99 = v88 - v17;
  MEMORY[0x28223BE20](v16);
  v104 = v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v103 = (v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v98 = v88 - v22;
  v97 = type metadata accessor for TranscriptProtoParameter(0);
  v109 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v24 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v88 - v26;
  v28 = type metadata accessor for TranscriptProtoParameterSet(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E0486F4(a1, v27, &qword_27C863B30, &qword_20E323E58);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_20E04875C(v27, &qword_27C863B30, &qword_20E323E58);
    return 0;
  }

  sub_20E04DDE4(v27, v31, type metadata accessor for TranscriptProtoParameterSet);
  v32 = *v31;
  v33 = objc_allocWithZone(MEMORY[0x277D57EE0]);

  v34 = [v33 init];
  if (!v34)
  {
    sub_20E04DE4C(v31, type metadata accessor for TranscriptProtoParameterSet);

    return 0;
  }

  v35 = v34;
  v94 = v8;
  v95 = sub_20E04DD34();
  v36 = sub_20E322960();
  v96 = v35;
  [v35 setParameters_];

  v37 = *(v32 + 16);
  if (v37)
  {
    v89 = v31;
    v38 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v88[1] = v32;
    v39 = v32 + v38;
    v90 = (v110 + 56);
    v106 = *(v109 + 72);
    v92 = (v110 + 48);
    v93 = v15;
    v41 = v103;
    v40 = v104;
    v42 = v96;
    v43 = 0x277E1B000uLL;
    while (1)
    {
      sub_20E04DD80(v39, v24);
      v44 = [objc_allocWithZone(MEMORY[0x277D57EA8]) *(v43 + 3936)];
      if (v44)
      {
        v45 = v44;
        v46 = [objc_allocWithZone(MEMORY[0x277D57D68]) *(v43 + 3936)];
        if (v46)
        {
          v109 = *(v97 + 24);
          v110 = v46;
          sub_20E0486F4(&v24[v109], v40, &qword_27C863B28, &unk_20E33C3E0);
          v47 = type metadata accessor for TranscriptProtoCandidate(0);
          v48 = *(v47 - 1);
          v49 = *(v48 + 48);
          v107 = v48 + 48;
          v108 = v49;
          if (v49(v40, 1, v47) == 1)
          {
            sub_20E04875C(v40, &qword_27C863B28, &unk_20E33C3E0);
            v50 = type metadata accessor for TranscriptProtoStatementID(0);
            v51 = v98;
            (*(*(v50 - 8) + 56))(v98, 1, 1, v50);
          }

          else
          {
            v51 = v98;
            sub_20E0486F4(v40 + v47[7], v98, &qword_27C8639D0, &unk_20E33C230);
            sub_20E04DE4C(v40, type metadata accessor for TranscriptProtoCandidate);
          }

          v52 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          sub_20E0486F4(v51, v41, &qword_27C8639D0, &unk_20E33C230);
          v53 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v53 - 8) + 48))(v41, 1, v53) == 1)
          {
            sub_20E04875C(v51, &qword_27C8639D0, &unk_20E33C230);
            v54 = v41;
          }

          else
          {
            v55 = v41;
            v56 = *v41;
            sub_20E04DE4C(v55, type metadata accessor for TranscriptProtoStatementID);
            [v52 setIndex_];
            v54 = v51;
          }

          v57 = v99;
          sub_20E04875C(v54, &qword_27C8639D0, &unk_20E33C230);
          [v110 setStatementId_];

          sub_20E0486F4(&v24[v109], v57, &qword_27C863B28, &unk_20E33C3E0);
          if (v108(v57, 1, v47) == 1)
          {
            sub_20E04875C(v57, &qword_27C863B28, &unk_20E33C3E0);
            v58 = 0;
          }

          else
          {
            v59 = *v57;
            sub_20E04DE4C(v57, type metadata accessor for TranscriptProtoCandidate);
            v58 = (v59 + 1);
          }

          v60 = v101;
          [v110 setSource_];
          v61 = v93;
          sub_20E0486F4(&v24[v109], v93, &qword_27C863B28, &unk_20E33C3E0);
          if (v108(v61, 1, v47) == 1)
          {
            sub_20E04875C(v61, &qword_27C863B28, &unk_20E33C3E0);
            v62 = v105;
            (*v90)(v105, 1, 1, v60);
          }

          else
          {
            v62 = v105;
            sub_20E0486F4(v61 + v47[6], v105, &qword_27C863B20, &unk_20E33C290);
            sub_20E04DE4C(v61, type metadata accessor for TranscriptProtoCandidate);
          }

          v63 = v94;
          sub_20E0486F4(v62, v94, &qword_27C863B20, &unk_20E33C290);
          if ((*v92)(v63, 1, v60) == 1)
          {
            sub_20E04875C(v63, &qword_27C863B20, &unk_20E33C290);
            goto LABEL_27;
          }

          v64 = v91;
          sub_20E04DDE4(v63, v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          if (*(v64 + 9))
          {
            sub_20E04DE4C(v64, type metadata accessor for TranscriptProtoCandidatePromptStatus);
LABEL_27:
            v65 = 0;
LABEL_28:
            v66 = v105;
            v41 = v103;
          }

          else
          {
            v82 = *v64;
            v83 = *(v64 + 8);
            v84 = [objc_allocWithZone(MEMORY[0x277D57D70]) init];
            v85 = v64;
            v65 = v84;
            if (!v84)
            {
              sub_20E04DE4C(v85, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              goto LABEL_28;
            }

            if (v83)
            {
              if (v82)
              {
                [v84 setConfirmed_];
              }

              else
              {
                [v84 setNotPrompted_];
              }
            }

            else
            {
              [v84 setPicked_];
            }

            v86 = v105;
            v41 = v103;
            sub_20E04DE4C(v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v66 = v86;
          }

          sub_20E04875C(v66, &qword_27C863B20, &unk_20E33C290);
          [v110 setPromptStatus_];

          v67 = v100;
          sub_20E0486F4(&v24[v109], v100, &qword_27C863B28, &unk_20E33C3E0);
          if (v108(v67, 1, v47) == 1)
          {
            sub_20E04875C(v67, &qword_27C863B28, &unk_20E33C3E0);
            v68 = type metadata accessor for ToolKitProtoTypedValue(0);
            v69 = v102;
            (*(*(v68 - 8) + 56))(v102, 1, 1, v68);
          }

          else
          {
            v70 = v67 + v47[5];
            v69 = v102;
            sub_20E0486F4(v70, v102, &qword_27C863B18, &qword_20E323EB0);
            sub_20E04DE4C(v67, type metadata accessor for TranscriptProtoCandidate);
          }

          v71 = sub_20E06E458(v69);
          v72 = v69;
          v73 = v71;
          sub_20E04875C(v72, &qword_27C863B18, &qword_20E323EB0);
          v74 = v110;
          [v110 setValue_];

          [v45 setCandidate_];
          v75 = sub_20E322860();
          [v45 setKey_];

          if (v24[24])
          {
            v76 = -1;
          }

          else
          {
            v76 = *(v24 + 2);
          }

          [v45 setCollectionIndex_];
          v42 = v96;
          v77 = [v96 parameters];
          if (v77)
          {
            v78 = v77;
            v79 = sub_20E322970();

            v111 = v79;
            v80 = v45;
            MEMORY[0x20F32BF90]();
            if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20E322990();
              v42 = v96;
            }

            sub_20E3229B0();
            if (v111)
            {
              v81 = sub_20E322960();
            }

            else
            {
              v81 = 0;
            }

            v40 = v104;
            [v42 setParameters_];

            sub_20E04DE4C(v24, type metadata accessor for TranscriptProtoParameter);
            v43 = 0x277E1B000;
          }

          else
          {
            [v42 setParameters_];

            sub_20E04DE4C(v24, type metadata accessor for TranscriptProtoParameter);
            v40 = v104;
            v43 = 0x277E1B000;
          }

          goto LABEL_7;
        }

        sub_20E04DE4C(v24, type metadata accessor for TranscriptProtoParameter);
      }

      else
      {
        sub_20E04DE4C(v24, type metadata accessor for TranscriptProtoParameter);
      }

LABEL_7:
      v39 += v106;
      if (!--v37)
      {

        v31 = v89;
        goto LABEL_55;
      }
    }
  }

  v42 = v96;
LABEL_55:
  sub_20E04DE4C(v31, type metadata accessor for TranscriptProtoParameterSet);
  return v42;
}

unint64_t sub_20E04DD34()
{
  result = qword_27C863B38;
  if (!qword_27C863B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B38);
  }

  return result;
}

uint64_t sub_20E04DD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04DDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E04DE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E04DEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B40, &qword_20E323E60);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v41 = type metadata accessor for TranscriptProtoResponseParameter(0);
  v37 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20E0486F4(a1, v14, &qword_27C863B48, &unk_20E33C280);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20E04875C(v14, &qword_27C863B48, &unk_20E33C280);
    return 0;
  }

  else
  {
    sub_20E04E584(v14, v18, type metadata accessor for TranscriptProtoResponseManifest);
    v20 = [objc_allocWithZone(MEMORY[0x277D58030]) init];
    v19 = v20;
    if (v20)
    {
      [v20 setUseTemplateAsFallback_];
      v36 = v18;
      v21 = *v18;
      v42 = MEMORY[0x277D84F90];
      v22 = *(v21 + 16);
      v35 = v19;
      if (v22)
      {
        v23 = v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v24 = *(v37 + 72);
        v40 = (v37 + 56);
        v25 = (v37 + 48);
        v26 = v19;
        v37 = MEMORY[0x277D84F90];
        v38 = v24;
        do
        {
          sub_20E04E474(v23, v11);
          sub_20E04E474(v11, v7);
          v27 = v41;
          (*v40)(v7, 0, 1, v41);
          sub_20E0486F4(v7, v5, &qword_27C863B40, &qword_20E323E60);
          if ((*v25)(v5, 1, v27) == 1)
          {
            sub_20E04875C(v7, &qword_27C863B40, &qword_20E323E60);
            sub_20E04E4D8(v11, type metadata accessor for TranscriptProtoResponseParameter);
            sub_20E04875C(v5, &qword_27C863B40, &qword_20E323E60);
          }

          else
          {
            v28 = v39;
            sub_20E04E584(v5, v39, type metadata accessor for TranscriptProtoResponseParameter);
            v29 = [objc_allocWithZone(MEMORY[0x277D58038]) init];
            if (v29)
            {
              v30 = v29;
              [v29 setProfanityFilter_];
              [v30 setIsRequired_];
              sub_20E04E4D8(v28, type metadata accessor for TranscriptProtoResponseParameter);
              sub_20E04875C(v7, &qword_27C863B40, &qword_20E323E60);
              v31 = sub_20E04E4D8(v11, type metadata accessor for TranscriptProtoResponseParameter);
              MEMORY[0x20F32BF90](v31);
              if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20E322990();
              }

              sub_20E3229B0();
              v37 = v42;
            }

            else
            {
              sub_20E04E4D8(v28, type metadata accessor for TranscriptProtoResponseParameter);
              sub_20E04875C(v7, &qword_27C863B40, &qword_20E323E60);
              sub_20E04E4D8(v11, type metadata accessor for TranscriptProtoResponseParameter);
            }

            v24 = v38;
          }

          v23 += v24;
          --v22;
        }

        while (v22);
      }

      else
      {
        v32 = v19;
        v37 = MEMORY[0x277D84F90];
      }

      sub_20E04E538();
      v33 = sub_20E322960();

      v19 = v35;
      [v35 setParameters_];

      v18 = v36;
    }

    sub_20E04E4D8(v18, type metadata accessor for TranscriptProtoResponseManifest);
  }

  return v19;
}

uint64_t sub_20E04E474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04E4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E04E538()
{
  result = qword_27C863B50;
  if (!qword_27C863B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B50);
  }

  return result;
}

uint64_t sub_20E04E584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20E04E5EC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for TranscriptProtoParameterValue(0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D57CE8]) init];
  if (v8)
  {
    v26 = a1;
    v27 = v8;
    v9 = *a1;
    v10 = *a1 + 64;
    v11 = 1 << *(*a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(*a1 + 64);
    v14 = (v11 + 63) >> 6;

    v16 = 0;
    while (v13)
    {
LABEL_11:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_20E04E8E4(*(v9 + 56) + *(v28 + 72) * (v18 | (v16 << 6)), v7);
      sub_20E04E948(&v7[*(v29 + 20)], v4);
      sub_20E04EA20(v7, type metadata accessor for TranscriptProtoParameterValue);
      v19 = type metadata accessor for TranscriptProtoPromptSelection(0);
      if ((*(*(v19 - 8) + 48))(v4, 1, v19) == 1)
      {
        result = sub_20E04E9B8(v4);
      }

      else
      {
        v20 = *v4;
        v21 = v4[8];
        v22 = v4[9];
        result = sub_20E04EA20(v4, type metadata accessor for TranscriptProtoPromptSelection);
        if ((v22 & 1) == 0)
        {
          if (v21)
          {
            if (v20)
            {
              result = [v27 setDenied_];
            }

            else
            {
              result = [v27 setConfirmed_];
            }
          }

          else
          {
            result = [v27 setSelectedInDisambiguation_];
          }
        }
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v23 = type metadata accessor for TranscriptProtoActionConfirmation(0);
        v24 = sub_20E19B704(v26 + *(v23 + 20));
        v25 = v27;
        [v27 setSystemStyle_];

        return v25;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_20E04E8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04E948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04E9B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04EA20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E04EA80(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31[-v12];
  v14 = [objc_allocWithZone(MEMORY[0x277D58128]) init];
  sub_20E0486F4(a1, v10, &qword_27C863B60, &qword_20E323F50);
  v15 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_20E04EF04(v10);
    v16 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  else
  {
    sub_20E0486F4(v10, v13, &qword_27C863B68, &unk_20E346230);
    sub_20E04EFD4(v10, type metadata accessor for ToolKitProtoTypeIdentifier);
    v17 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
    if ((*(*(v17 - 8) + 48))(v13, 1, v17) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E04EF6C(v13, v4, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
        if (v14)
        {
          v18 = objc_allocWithZone(MEMORY[0x277D57DD0]);
          v19 = v14;
          v20 = [v18 init];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
            v23 = sub_20E322860();
            [v22 setBundleId_];

            v24 = v22;
            v25 = sub_20E322860();
            [v24 setCustomTypeName_];
          }

          [v19 setCustom_];
        }

        v26 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom;
        v27 = v4;
      }

      else
      {
        sub_20E04EF6C(v13, v7, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
        v28 = *v7;
        if (v28 != 41)
        {
          v29 = [objc_allocWithZone(MEMORY[0x277D57F48]) init];
          if (v29)
          {
            v32 = v28;
            [v29 setPrimitiveType_];
          }

          if (!v14)
          {
            sub_20E04EFD4(v7, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

            return v14;
          }

          [v14 setPrimitive_];
        }

        v26 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive;
        v27 = v7;
      }

      sub_20E04EFD4(v27, v26);
    }
  }

  return v14;
}

uint64_t sub_20E04EF04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04EF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E04EFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E04F034(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D58170]) init];
  if (!v12)
  {
    return 0;
  }

  v26 = v12;
  v13 = *a1;
  v29 = MEMORY[0x277D84F90];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v28 = *(v9 + 72);
    v16 = (v9 + 56);
    v17 = (v9 + 48);
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_20E04F364(v15, v11);
      sub_20E04F364(v11, v7);
      (*v16)(v7, 0, 1, v8);
      v18 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      sub_20E04F3C8(v7, v5);
      if ((*v17)(v5, 1, v8) == 1)
      {
        sub_20E04F438(v7);
        sub_20E04F4A0(v11);
        v19 = sub_20E04F438(v5);
        if (v18)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v20 = v8;
        v21 = *v5;
        sub_20E04F4A0(v5);
        v22 = v21;
        v8 = v20;
        [v18 setIndex_];
        sub_20E04F438(v7);
        v19 = sub_20E04F4A0(v11);
        if (v18)
        {
LABEL_10:
          MEMORY[0x20F32BF90](v19);
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = v8;
            sub_20E322990();
            v8 = v27;
          }

          sub_20E3229B0();
          v27 = v29;
        }
      }

      v15 += v28;
      if (!--v14)
      {
        goto LABEL_14;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_14:
  sub_20E04F4FC();
  v24 = sub_20E322960();

  v23 = v26;
  [v26 setStatementIds_];

  return v23;
}

uint64_t sub_20E04F364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04F3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E04F438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04F4A0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E04F4FC()
{
  result = qword_27C863B70;
  if (!qword_27C863B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B70);
  }

  return result;
}

void *sub_20E04F548(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D57D90]) init];
  if (v5)
  {
    v6 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 20);
    v7 = v5;
    v8 = sub_20E04EA80(a1 + v6);
    [v7 setTypeIdentifier_];
  }

  v23 = v5;
  v24 = MEMORY[0x277D84F90];
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v11 = type metadata accessor for ToolKitProtoTypedValue(0);
    v12 = *(v11 - 8);
    v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    v15 = (v12 + 56);
    do
    {
      sub_20E04FAE4(v13, v4, type metadata accessor for ToolKitProtoTypedValue);
      (*v15)(v4, 0, 1, v11);
      v16 = sub_20E24FF14(v4);
      sub_20E04875C(v4, &qword_27C863B18, &qword_20E323EB0);
      if (v16)
      {
        v17 = v16;
        MEMORY[0x20F32BF90]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22[1] = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20E322990();
        }

        sub_20E3229B0();
      }

      v13 += v14;
      --v10;
    }

    while (v10);
  }

  v18 = v23;
  if (v23)
  {
    sub_20E04FB4C();
    v19 = v18;
    v20 = sub_20E322960();

    [v19 setValues_];
  }

  else
  {
  }

  return v18;
}

id sub_20E04F7F0(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [objc_allocWithZone(MEMORY[0x277D57D90]) init];
  if (!(v9 >> 61))
  {
    v11 = swift_projectBox();
    sub_20E04FAE4(v11, v8, type metadata accessor for ToolKitProtoTypeIdentifier);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v12 = sub_20E3227C0();
    __swift_project_value_buffer(v12, qword_280E12C48);
    v13 = sub_20E3227B0();
    v14 = sub_20E322A40();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20E031000, v13, v14, "Converter - Collection value is TypeInstanceKind of type identifier, converting...", v15, 2u);
      MEMORY[0x20F32CA80](v15, -1, -1);
    }

    if (v10)
    {
      sub_20E04FAE4(v8, v4, type metadata accessor for ToolKitProtoTypeIdentifier);
      (*(v6 + 56))(v4, 0, 1, v5);
      v16 = v10;
      v17 = sub_20E04EA80(v4);
      sub_20E04875C(v4, &qword_27C863B60, &qword_20E323F50);
      [v16 setTypeIdentifier_];
    }

    sub_20E04FA88(v8);
  }

  return v10;
}

uint64_t sub_20E04FA88(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E04FAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E04FB4C()
{
  result = qword_27C863B78;
  if (!qword_27C863B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C863B78);
  }

  return result;
}

id sub_20E04FB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B80, &qword_20E323E70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v68 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v68 - v8;
  v78 = sub_20E322060();
  v81 = *(v78 - 8);
  v9 = MEMORY[0x28223BE20](v78);
  v71 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v68 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B88, &qword_20E323E78);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v77 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v75 = &v68 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  v25 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v26 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  sub_20E0486F4(a1, v24, &qword_27C863B88, &qword_20E323E78);
  v29 = *(v26 + 48);
  if (v29(v24, 1, v25) == 1)
  {
    sub_20E04875C(v24, &qword_27C863B88, &qword_20E323E78);
    return 0;
  }

  else
  {
    v70 = v4;
    sub_20E050524(v24, v28);
    v80 = [objc_allocWithZone(MEMORY[0x277D580B0]) init];
    v72 = v29;
    if (v80)
    {
      v31 = v25[7];
      v32 = objc_allocWithZone(MEMORY[0x277D58078]);
      v33 = v80;
      v34 = [v32 init];
      sub_20E0486F4(&v28[v31], v14, &qword_27C8639D0, &unk_20E33C230);
      v35 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v35 - 8) + 48))(v14, 1, v35) == 1)
      {
        sub_20E04875C(v14, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v36 = *v14;
        sub_20E050588(v14, type metadata accessor for TranscriptProtoStatementID);
        [v34 setIndex_];
      }

      [v33 setStatementId_];

      v37 = v25[6];
      v38 = v33;
      v39 = sub_20E065D94(&v28[v37]);
      [v38 setUserAction_];

      v29 = v72;
    }

    v69 = v28;
    v40 = v79;
    sub_20E0486F4(v79, v22, &qword_27C863B88, &qword_20E323E78);
    v41 = v29(v22, 1, v25);
    v42 = v78;
    if (v41 == 1)
    {
      sub_20E04875C(v22, &qword_27C863B88, &qword_20E323E78);
    }

    else
    {

      sub_20E050588(v22, type metadata accessor for TranscriptProtoSystemPromptResolution);
    }

    v43 = v73;
    v44 = v74;
    sub_20E06C5DC(4, v73);
    v45 = v43;

    v46 = v81;
    v47 = *(v81 + 48);
    if (v47(v45, 1, v42) == 1)
    {
      sub_20E04875C(v45, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      (*(v46 + 32))(v44, v45, v42);
      v48 = v80;
      if (v80)
      {
        v49 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v50 = v48;
        v51 = sub_20E322030();
        v52 = [v49 initWithNSUUID_];

        [v50 setActionEventId_];
        v46 = v81;

        v29 = v72;
      }

      (*(v46 + 8))(v44, v42);
    }

    v53 = v75;
    sub_20E0486F4(v40, v75, &qword_27C863B88, &qword_20E323E78);
    if (v29(v53, 1, v25) == 1)
    {
      sub_20E04875C(v53, &qword_27C863B88, &qword_20E323E78);
    }

    else
    {

      sub_20E050588(v53, type metadata accessor for TranscriptProtoSystemPromptResolution);
    }

    v54 = v76;
    sub_20E06C5DC(12, v76);

    if (v47(v54, 1, v42) == 1)
    {
      sub_20E04875C(v54, &qword_27C863A90, &unk_20E33C020);
      v55 = v70;
    }

    else
    {
      v56 = v71;
      (*(v46 + 32))(v71, v54, v42);
      v55 = v70;
      v57 = v80;
      if (v80)
      {
        v58 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v59 = v57;
        v60 = sub_20E322030();
        v61 = [v58 initWithNSUUID_];

        [v59 setSystemResponseEventId_];
        v46 = v81;
      }

      (*(v46 + 8))(v56, v42);
    }

    v62 = v77;
    sub_20E0486F4(v40, v77, &qword_27C863B88, &qword_20E323E78);
    v63 = v72(v62, 1, v25);
    v30 = v80;
    v64 = v69;
    if (v63 == 1)
    {
      sub_20E04875C(v62, &qword_27C863B88, &qword_20E323E78);
      v65 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
      (*(*(v65 - 8) + 56))(v55, 1, 1, v65);
    }

    else
    {
      sub_20E0486F4(v62 + v25[8], v55, &qword_27C863B80, &qword_20E323E70);
      sub_20E050588(v62, type metadata accessor for TranscriptProtoSystemPromptResolution);
    }

    v66 = sub_20E304654(v55);
    sub_20E04875C(v55, &qword_27C863B80, &qword_20E323E70);
    [v30 setInput_];
    sub_20E050588(v64, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  return v30;
}

uint64_t sub_20E050524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E050588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_20E0505E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v38 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B98, &qword_20E323E80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for TranscriptProtoToolResolution(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v13, &qword_27C863B98, &qword_20E323E80);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20E04875C(v13, &qword_27C863B98, &qword_20E323E80);
    return 0;
  }

  sub_20E050C38(v13, v17);
  v18 = [objc_allocWithZone(MEMORY[0x277D58118]) init];
  if (!v18)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v23 = sub_20E3227C0();
    __swift_project_value_buffer(v23, qword_280E12C48);
    v24 = sub_20E3227B0();
    v25 = sub_20E322A40();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_20E31B6C4(0xD00000000000002DLL, 0x800000020E35A260, &v40);
      _os_log_impl(&dword_20E031000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F32CA80](v27, -1, -1);
      MEMORY[0x20F32CA80](v26, -1, -1);
    }

    v41 = 96;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v41, 0xD00000000000002DLL, 0x800000020E35A260);
    sub_20E050C9C(v17, type metadata accessor for TranscriptProtoToolResolution);
    return 0;
  }

  v19 = v18;
  sub_20E0486F4(v17, v10, &qword_27C863B90, &unk_20E345EF0);
  v20 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v21 = (*(*(v20 - 8) + 48))(v10, 1, v20);
  v39 = v5;
  if (v21 == 1)
  {
    sub_20E04875C(v10, &qword_27C863B90, &unk_20E345EF0);
    v22 = 0;
  }

  else
  {

    sub_20E050C9C(v10, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v22 = sub_20E322860();
  }

  [v19 setToolId_];

  v28 = *(v14 + 20);
  v29 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
  sub_20E0486F4(&v17[v28], v7, &qword_27C8639D0, &unk_20E33C230);
  v30 = type metadata accessor for TranscriptProtoStatementID(0);
  v31 = *(*(v30 - 8) + 48);
  if (v31(v7, 1, v30) == 1)
  {
    sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v32 = *v7;
    sub_20E050C9C(v7, type metadata accessor for TranscriptProtoStatementID);
    [v29 setIndex_];
  }

  [v19 setStatementId_];

  v33 = *(v14 + 24);
  v34 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
  v35 = v39;
  sub_20E0486F4(&v17[v33], v39, &qword_27C8639D0, &unk_20E33C230);
  if (v31(v35, 1, v30) == 1)
  {
    sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v36 = *v35;
    sub_20E050C9C(v35, type metadata accessor for TranscriptProtoStatementID);
    [v34 setIndex_];
  }

  [v19 setOriginProgramStatementId_];

  sub_20E050C9C(v17, type metadata accessor for TranscriptProtoToolResolution);
  return v19;
}

uint64_t sub_20E050C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoToolResolution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E050C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E050CFC(uint64_t a1)
{
  v29 = MEMORY[0x277D84F90];
  v2 = [objc_allocWithZone(MEMORY[0x277D57E78]) init];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 80);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    if (v7)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return v10;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        do
        {
LABEL_9:
          v12 = __clz(__rbit64(v7)) | (v9 << 6);
          v13 = (*(v4 + 48) + 16 * v12);
          v14 = *v13;
          v15 = v13[1];
          v16 = *(*(v4 + 56) + 8 * v12);
          v17 = *v13 == 0x616E6964726F6F63 && v15 == 0xEB00000000726F74;
          if (v17 || (sub_20E322D60() & 1) != 0)
          {
            v18 = 1;
          }

          else
          {
            v20 = v14 == 0x746E65696C63 && v15 == 0xE600000000000000;
            if (v20 || (sub_20E322D60() & 1) != 0)
            {
              v18 = 2;
            }

            else
            {
              v21 = v14 == 0x726F747563657865 && v15 == 0xE800000000000000;
              if (v21 || (sub_20E322D60() & 1) != 0)
              {
                v18 = 3;
              }

              else if (v14 == 0x72656E6E616C70 && v15 == 0xE700000000000000 || (sub_20E322D60() & 1) != 0)
              {
                v18 = 4;
              }

              else if (v14 == 0x624F6E6F69746361 && v15 == 0xEE00726576726573)
              {
                v18 = 6;
              }

              else if (sub_20E322D60())
              {
                v18 = 6;
              }

              else
              {
                v18 = 0;
              }
            }
          }

          [v3 setParticipant_];
          [v3 setSpanId_];
          v19 = v3;
          MEMORY[0x20F32BF90]();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20E322990();
          }

          v7 &= v7 - 1;
          sub_20E3229B0();
          v10 = v29;
        }

        while (v7);
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  if (qword_280E12B88 != -1)
  {
LABEL_48:
    swift_once();
  }

  v22 = sub_20E3227C0();
  __swift_project_value_buffer(v22, qword_280E12C48);
  v23 = sub_20E3227B0();
  v24 = sub_20E322A50();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_20E31B6C4(0xD000000000000045, 0x800000020E35A290, &v28);
    _os_log_impl(&dword_20E031000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F32CA80](v26, -1, -1);
    MEMORY[0x20F32CA80](v25, -1, -1);
  }

  LOBYTE(v28) = 96;
  _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v28, 0xD000000000000045, 0x800000020E35A290);
  return MEMORY[0x277D84F90];
}

void *sub_20E05115C(uint64_t *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57EB8]) init];
  v3 = v2;
  if (v2)
  {
    [v2 setExists_];
    v4 = v3;
    v5 = sub_20E322860();
    [v4 setParameterId_];
  }

  if ((a1[3] & 1) == 0)
  {
    [v3 setParameterIndex_];
  }

  if (v3)
  {
    v6 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 24);
    v7 = v3;
    v8 = sub_20E06E458(a1 + v6);
    [v7 setItem_];
  }

  return v3;
}

NSObject *sub_20E051258(uint64_t a1)
{
  v108 = a1;
  v1 = type metadata accessor for TranscriptProtoActionFailure(0);
  MEMORY[0x28223BE20](v1 - 8);
  v106 = (&v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v105 = (&v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v104 = (&v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TranscriptProtoActionRequirement(0);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  MEMORY[0x28223BE20](v98);
  v107 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = (&v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = (&v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v97 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v97 - v31;
  v33 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(v108, v32, &qword_27C863BA8, &unk_20E345F00);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v37 = &qword_27C863BA8;
    v38 = &unk_20E345F00;
    v39 = v32;
LABEL_17:
    sub_20E04875C(v39, v37, v38);
    return 0;
  }

  sub_20E0520A8(v32, v36, type metadata accessor for TranscriptProtoStatementOutcome);
  v40 = [objc_allocWithZone(MEMORY[0x277D58080]) init];
  sub_20E0486F4(v36, v29, &qword_27C863BA0, &unk_20E325F20);
  v41 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v42 = v36;
  if ((*(*(v41 - 8) + 48))(v29, 1, v41) == 1)
  {
LABEL_4:
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v43 = sub_20E3227C0();
    __swift_project_value_buffer(v43, qword_280E12C48);
    v44 = sub_20E3227B0();
    v45 = sub_20E322A50();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_20E031000, v44, v45, "IFTStatementOutcomeConverter.convert returns nil", v46, 2u);
      MEMORY[0x20F32CA80](v46, -1, -1);
      v47 = v40;
    }

    else
    {
      v47 = v44;
      v44 = v40;
    }

    sub_20E052110(v42, type metadata accessor for TranscriptProtoStatementOutcome);
    v37 = &qword_27C863BA0;
    v38 = &unk_20E325F20;
    v39 = v29;
    goto LABEL_17;
  }

  sub_20E0486F4(v29, v27, &qword_27C863BA0, &unk_20E325F20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v52 = v106;
        sub_20E0520A8(v27, v106, type metadata accessor for TranscriptProtoActionFailure);
        if (v40)
        {
          v80 = v40;
          v81 = sub_20E30225C(v52);
          [v80 setFailure:v81];
        }

        v55 = type metadata accessor for TranscriptProtoActionFailure;
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          sub_20E052110(v27, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          goto LABEL_4;
        }

        v52 = v105;
        sub_20E0520A8(v27, v105, type metadata accessor for TranscriptProtoValueDisambiguation);
        if (v40)
        {
          v62 = v40;
          v63 = sub_20E1A0C90(v52);
          [v62 setValueDisambiguation:v63];
        }

        v55 = type metadata accessor for TranscriptProtoValueDisambiguation;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v20 = v107;
        sub_20E0520A8(v27, v107, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
        if (v40)
        {
          v68 = objc_allocWithZone(MEMORY[0x277D57EB0]);
          v69 = v40;
          v70 = [v68 init];
          v71 = v70;
          if (v70)
          {
            [v70 setExists_];
            v72 = v71;
            v73 = sub_20E322860();
            [v72 setParameterId_];

            v74 = *(v98 + 20);
            v75 = v72;
            v76 = sub_20E06E458(&v20[v74]);
            [v75 setValue_];
          }

          [v69 setParameterCandidatesNotFounds:v71];
        }

        v51 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
        goto LABEL_46;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v52 = v102;
        sub_20E0520A8(v27, v102, type metadata accessor for TranscriptProtoActionRequirement);
        if (v40)
        {
          v53 = v40;
          v54 = sub_20E1A14FC(v52);
          [v53 setActionRequirement:v54];
        }

        v55 = type metadata accessor for TranscriptProtoActionRequirement;
      }

      else
      {
        v52 = v104;
        sub_20E0520A8(v27, v104, type metadata accessor for TranscriptProtoToolDisambiguation);
        if (v40)
        {
          v88 = v40;
          v89 = sub_20E315438(v52);
          [v88 setToolDisambiguation:v89];
        }

        v55 = type metadata accessor for TranscriptProtoToolDisambiguation;
      }
    }

LABEL_62:
    v66 = v55;
    v67 = v52;
    goto LABEL_63;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E0520A8(v27, v23, type metadata accessor for TranscriptProtoActionSuccess);
      if (v40)
      {
        v64 = v40;
        v65 = sub_20E066FF0(v23);
        [v64 setSuccess:v65];
      }

      v66 = type metadata accessor for TranscriptProtoActionSuccess;
      v67 = v23;
      goto LABEL_63;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v82 = v100;
      sub_20E0520A8(v27, v100, type metadata accessor for TranscriptProtoParameterNeedsValue);
      v83 = [objc_allocWithZone(MEMORY[0x277D57EC8]) init];
      v84 = v83;
      if (v83)
      {
        [v83 setExists_];
        v85 = v84;
        v86 = sub_20E322860();
        [v85 setParameterId_];
      }

      v87 = v40;
      [v87 setParameterNeedsValue:v84];

      v66 = type metadata accessor for TranscriptProtoParameterNeedsValue;
      v67 = v82;
      goto LABEL_63;
    }

    sub_20E0520A8(v27, v20, type metadata accessor for TranscriptProtoActionConfirmation);
    if (v40)
    {
      v49 = v40;
      v50 = sub_20E04E5EC(v20);
      [v49 setActionConfirmation:v50];
    }

    v51 = type metadata accessor for TranscriptProtoActionConfirmation;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v77 = v99;
    sub_20E0520A8(v27, v99, type metadata accessor for TranscriptProtoParameterConfirmation);
    if (v40)
    {
      v78 = v40;
      v79 = sub_20E05115C(v77);
      [v78 setParameterConfirmation:v79];
    }

    v66 = type metadata accessor for TranscriptProtoParameterConfirmation;
    v67 = v77;
    goto LABEL_63;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v52 = v101;
    sub_20E0520A8(v27, v101, type metadata accessor for TranscriptProtoParameterNotAllowed);
    if (v40)
    {
      v90 = v40;
      v91 = sub_20E2505B0(v52);
      [v90 setParameterNotAllowed:v91];
    }

    v55 = type metadata accessor for TranscriptProtoParameterNotAllowed;
    goto LABEL_62;
  }

  v20 = v103;
  sub_20E0520A8(v27, v103, type metadata accessor for TranscriptProtoParameterDisambiguation);
  if (v40)
  {
    v56 = objc_allocWithZone(MEMORY[0x277D57EC0]);
    v57 = v40;
    v58 = [v56 init];
    v59 = v58;
    if (v58)
    {
      [v58 setExists_];
      v60 = v59;
      v61 = sub_20E322860();
      [v60 setParameterId_];
    }

    if ((v20[32] & 1) == 0)
    {
      [v59 setParameterIndex_];
    }

    [v57 setParameterDisambiguation:v59];
  }

  v51 = type metadata accessor for TranscriptProtoParameterDisambiguation;
LABEL_46:
  v66 = v51;
  v67 = v20;
LABEL_63:
  sub_20E052110(v67, v66);
  sub_20E04875C(v29, &qword_27C863BA0, &unk_20E325F20);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v92 = sub_20E3227C0();
  __swift_project_value_buffer(v92, qword_280E12C48);
  v93 = sub_20E3227B0();
  v94 = sub_20E322A40();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_20E031000, v93, v94, "IFTStatementOutcomeConverter.convert returns successfully", v95, 2u);
    MEMORY[0x20F32CA80](v95, -1, -1);
  }

  sub_20E052110(v42, type metadata accessor for TranscriptProtoStatementOutcome);
  return v40;
}

uint64_t sub_20E0520A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E052110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E052170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v70 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v61 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - v8;
  v73 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v73 - 8);
  v11 = MEMORY[0x28223BE20](v73);
  v65 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v61 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - v16;
  v69 = sub_20E322060();
  v18 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v68 = v9;
  v24 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v27 = v10;
    v28 = (v18 + 48);
    v29 = *(v21 + 72);
    v71 = v7;
    v72 = v29;
    v62 = (v18 + 32);
    v63 = v14;
    v61 = (v18 + 8);
    v30 = (v27 + 48);
    v66 = (v27 + 48);
    v67 = v17;
    do
    {
      sub_20E0528EC(v26, v23);
      v32 = [objc_allocWithZone(MEMORY[0x277D57E88]) init];
      if (v32)
      {
        v33 = v32;
        sub_20E06C5DC(4, v17);
        v34 = v69;
        if ((*v28)(v17, 1, v69) == 1)
        {
          sub_20E04875C(v17, &qword_27C863A90, &unk_20E33C020);
        }

        else
        {
          v35 = v64;
          (*v62)(v64, v17, v34);
          v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v37 = v20;
          v38 = v28;
          v39 = v34;
          v40 = sub_20E322030();
          v41 = [v36 initWithNSUUID_];

          [v33 setActionEventId_];
          v42 = v35;
          v7 = v71;
          v43 = v39;
          v28 = v38;
          v20 = v37;
          v30 = v66;
          (*v61)(v42, v43);
        }

        v44 = v68;
        sub_20E04F3C8(&v23[v20[5]], v68);
        v45 = *v30;
        if ((*v30)(v44, 1, v73) == 1)
        {
          sub_20E04875C(v44, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v46 = v63;
          sub_20E0529B0(v44, v63);
          v47 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          v48 = v47;
          if (v47)
          {
            [v47 setIndex_];
          }

          [v33 setResultStatementId_];

          sub_20E052950(v46, type metadata accessor for TranscriptProtoStatementID);
          v30 = v66;
        }

        sub_20E04F3C8(&v23[v20[6]], v7);
        if (v45(v7, 1, v73) == 1)
        {
          sub_20E04875C(v7, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v49 = v7;
          v50 = v65;
          sub_20E0529B0(v49, v65);
          v51 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
          v52 = v51;
          if (v51)
          {
            [v51 setIndex_];
          }

          [v33 setOriginProgramStatementId_];

          sub_20E052950(v50, type metadata accessor for TranscriptProtoStatementID);
        }

        if (*&v23[v20[8] + 8])
        {
          v53 = sub_20E322860();
        }

        else
        {
          v53 = 0;
        }

        [v33 setToolId_];

        v54 = sub_20E051258(v23);
        [v33 setOutcome_];

        v55 = v20[9];
        v56 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
        v57 = &v23[v55];
        v58 = v70;
        sub_20E04F3C8(v57, v70);
        if (v45(v58, 1, v73) == 1)
        {
          sub_20E04875C(v58, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v59 = *v58;
          sub_20E052950(v58, type metadata accessor for TranscriptProtoStatementID);
          [v56 setIndex_];
        }

        [v33 setOriginTaskStatementId_];

        v31 = v33;
        MEMORY[0x20F32BF90]();
        v7 = v71;
        if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v24 = v74;
        v17 = v67;
      }

      sub_20E052950(v23, type metadata accessor for TranscriptProtoInterpretedStatementResult);
      v26 += v72;
      --v25;
    }

    while (v25);
  }

  return v24;
}

uint64_t sub_20E0528EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E052950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E0529B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_20E052A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB0, &unk_20E33C350);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC0, &unk_20E323E90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64 - v9;
  v75 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v11 = *(v75 - 1);
  MEMORY[0x28223BE20](v75);
  v74 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v64 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC8, &unk_20E3461C0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v72 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - v19;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v22 = *(Step - 1);
  MEMORY[0x28223BE20](Step);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_20E0486F4(a1, v20, &qword_27C863BC8, &unk_20E3461C0);
  v25 = *(v22 + 48);
  if (v25(v20, 1, Step) != 1)
  {
    sub_20E0533D4(v20, v24, type metadata accessor for TranscriptProtoQueryStep);
    v27 = [objc_allocWithZone(MEMORY[0x277D57F80]) init];
    v26 = v27;
    v73 = v24;
    if (v27)
    {
      [v27 setExists_];
    }

    v28 = Step[5];
    v29 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
    v30 = &v73[v28];
    v31 = v73;
    sub_20E0486F4(v30, v15, &qword_27C8639D0, &unk_20E33C230);
    v32 = type metadata accessor for TranscriptProtoStatementID(0);
    if ((*(*(v32 - 8) + 48))(v15, 1, v32) == 1)
    {
      sub_20E04875C(v15, &qword_27C8639D0, &unk_20E33C230);
    }

    else
    {
      v33 = *v15;
      sub_20E05343C(v15, type metadata accessor for TranscriptProtoStatementID);
      v34 = v33;
      v31 = v73;
      [v29 setIndex_];
    }

    v35 = v26;
    [v35 setStatementId_];
    sub_20E0486F4(v31 + Step[6], v10, &qword_27C863BC0, &unk_20E323E90);
    if ((*(v11 + 48))(v10, 1, v75) == 1)
    {

      sub_20E05343C(v31, type metadata accessor for TranscriptProtoQueryStep);
      sub_20E04875C(v10, &qword_27C863BC0, &unk_20E323E90);
      return v26;
    }

    v67 = v35;
    v36 = v74;
    sub_20E0533D4(v10, v74, type metadata accessor for TranscriptProtoActionParameterContext);
    v37 = [objc_allocWithZone(MEMORY[0x277D57ED8]) init];
    if (!v37)
    {

      sub_20E05343C(v36, type metadata accessor for TranscriptProtoActionParameterContext);
      v47 = v31;
LABEL_28:
      sub_20E05343C(v47, type metadata accessor for TranscriptProtoQueryStep);
      return v26;
    }

    v38 = v37;
    v39 = [objc_allocWithZone(MEMORY[0x277D57D18]) init];
    if (!v39)
    {

      v48 = v74;
LABEL_27:
      sub_20E05343C(v48, type metadata accessor for TranscriptProtoActionParameterContext);
      v47 = v73;
      goto LABEL_28;
    }

    v40 = v39;
    v65 = v29;
    v66 = v38;
    [v39 setStatementId_];
    v41 = v74;
    v42 = v71;
    sub_20E0486F4(v74 + v75[7], v71, &qword_27C8639C8, &unk_20E323870);
    v43 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
    v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
    v45 = v67;
    if (v44 == 1)
    {
      sub_20E04875C(v42, &qword_27C8639C8, &unk_20E323870);
      v46 = 0;
    }

    else
    {

      sub_20E05343C(v42, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v46 = sub_20E322860();
    }

    v49 = v72;
    [v40 setToolId_];

    [v40 setActionClass_];
    if (!v26)
    {
      v56 = v66;
      [0 addQueries_];
      v45 = v40;
      v51 = v65;
LABEL_26:

      v48 = v41;
      goto LABEL_27;
    }

    v75 = v40;
    [v45 setContext_];
    [v45 addQueries_];

    sub_20E0486F4(v69, v49, &qword_27C863BC8, &unk_20E3461C0);
    v50 = v25(v49, 1, Step);
    v51 = v65;
    if (v50 == 1)
    {
      v52 = v45;
      v53 = &qword_27C863BC8;
      v54 = &unk_20E3461C0;
      v55 = v49;
    }

    else
    {
      v57 = v68;
      sub_20E0486F4(v49 + Step[7], v68, &qword_27C863BB0, &unk_20E33C350);
      v58 = v45;
      sub_20E05343C(v49, type metadata accessor for TranscriptProtoQueryStep);
      Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
      if ((*(*(Payload - 8) + 48))(v57, 1, Payload) != 1)
      {
        v60 = v70;
        sub_20E0486F4(v57, v70, &qword_27C863BB8, &qword_20E323E88);
        sub_20E05343C(v57, type metadata accessor for TranscriptProtoQueryPayload);
        v56 = v66;
        goto LABEL_25;
      }

      v53 = &qword_27C863BB0;
      v54 = &unk_20E33C350;
      v55 = v57;
    }

    sub_20E04875C(v55, v53, v54);
    v60 = v70;
    v56 = v66;
    PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
    (*(*(PayloadEnum - 8) + 56))(v60, 1, 1, PayloadEnum);
LABEL_25:
    v62 = sub_20E06DB4C(v60);
    sub_20E04875C(v60, &qword_27C863BB8, &qword_20E323E88);
    [v45 setPayloadType_];

    goto LABEL_26;
  }

  sub_20E04875C(v20, &qword_27C863BC8, &unk_20E3461C0);
  return 0;
}

uint64_t sub_20E0533D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E05343C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::ContextProtoContextDataSource_optional __swiftcall ContextProtoContextDataSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0534BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0639C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoContextType_optional __swiftcall ContextProtoContextType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 15;
  switch(rawValue)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v2 = 1;
      goto LABEL_25;
    case 2:
      v2 = 2;
      goto LABEL_25;
    case 3:
      v2 = 3;
      goto LABEL_25;
    case 4:
      v2 = 4;
      goto LABEL_25;
    case 5:
      v2 = 5;
      goto LABEL_25;
    case 6:
      v2 = 6;
      goto LABEL_25;
    case 7:
      v2 = 7;
      goto LABEL_25;
    case 8:
      v2 = 8;
      goto LABEL_25;
    case 9:
      v2 = 9;
      goto LABEL_25;
    case 10:
      v2 = 10;
      goto LABEL_25;
    case 11:
      v2 = 11;
      goto LABEL_25;
    case 12:
      v2 = 12;
      goto LABEL_25;
    case 13:
      v2 = 13;
      goto LABEL_25;
    case 14:
      v2 = 14;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 15:
LABEL_26:
      *v1 = v3;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    case 31:
      *v1 = 31;
      break;
    case 32:
      *v1 = 32;
      break;
    default:
      *v1 = 33;
      break;
  }

  return rawValue;
}

uint64_t sub_20E0536C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E06396C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructedContextNowPlayingMediaRemotePlaybackState_optional __swiftcall ContextProtoStructedContextNowPlayingMediaRemotePlaybackState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E05373C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063918();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType_optional __swiftcall ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0537B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0638C4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType_optional __swiftcall ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E05383C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063870();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructuredContextSiriRequestContextUserClassification_optional __swiftcall ContextProtoStructuredContextSiriRequestContextUserClassification.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0538C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E06381C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoStructuredContextSiriRequestContextDeviceIdiom_optional __swiftcall ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E053944(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0637C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ContextProtoConfidenceBucket_optional __swiftcall ContextProtoConfidenceBucket.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E0539C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063774();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063720();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0636CC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063678();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E053B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063624();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ContextProtoRetrievedContext.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoRetrievedContext(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v6 = v2[6];
  v7 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[7];
  v9 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v5(&a1[v2[8]], 1, 1, v4);
  v10 = v2[9];
  v11 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[10]];
  *v12 = 0;
  v12[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ContextProtoRetrievedContext.init(value:relevance:type:metadata:typedValue:structuredContext:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v25 = *a3;
  v11 = type metadata accessor for ContextProtoRetrievedContext(0);
  v12 = v11[5];
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a9[v12], 1, 1, v13);
  v15 = v11[6];
  v16 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v11[7];
  v18 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v11[8];
  v14(&a9[v19], 1, 1, v13);
  v20 = v11[9];
  v21 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v11[10]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v12], &qword_27C863B18, &qword_20E323EB0);
  sub_20E05EC5C(a2, &a9[v15], &qword_27C863BD0, &qword_20E323EB8);
  *a9 = v25;
  sub_20E05EC5C(a4, &a9[v17], &qword_27C863BD8, &qword_20E323EC0);
  sub_20E05EC5C(a5, &a9[v19], &qword_27C863B18, &qword_20E323EB0);
  result = sub_20E05EC5C(a6, &a9[v20], &qword_27C863BE0, &qword_20E323EC8);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t ContextProtoContextMetadata.onScreenSurroundingText.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.entityID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ContextProtoContextMetadata.entityID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ContextProtoContextMetadata.appBundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.seq.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_20E054938(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 40));

  return v2;
}

uint64_t sub_20E054998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.isSelected.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.isPrimary.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));

  return v1;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.elementVisibility.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoContextMetadata.processInstanceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 80));

  return v1;
}

uint64_t ContextProtoContextMetadata.processInstanceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoContextMetadata(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 84);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoContextMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 84);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoContextMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoContextMetadata(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v3 = v2[7];
  v4 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for ContextProtoBoundingBox(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  v7(a1 + v2[13], 1, 1, v6);
  *(a1 + v2[14]) = 6;
  v10 = v2[15];
  v11 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = (a1 + v2[16]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v2[17];
  v14 = type metadata accessor for ContextProtoCGRect(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[18], 1, 1, v14);
  v16 = a1 + v2[19];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (a1 + v2[20]);
  *v17 = 0;
  v17[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoContextMetadata.init(entityID:appBundleID:saliency:onScreenSurroundingText:onScreenBoundingBox:seq:groupID:isSelected:isPrimary:screenDimensions:dataSource:displayRepresentation:appBundleIdentifier:screenSize:frame:elementVisibility:processInstanceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25)
{
  v56 = *a16;
  v26 = type metadata accessor for ContextProtoContextMetadata(0);
  v27 = v26[7];
  v28 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v28 - 8) + 56))(&a9[v27], 1, 1, v28);
  v29 = v26[8];
  v47 = v29;
  v30 = type metadata accessor for ContextProtoBoundingBox(0);
  v31 = *(*(v30 - 8) + 56);
  v31(&a9[v29], 1, 1, v30);
  v32 = &a9[v26[9]];
  v45 = &a9[v26[10]];
  v48 = v26[12];
  v49 = v26[11];
  v46 = v26[13];
  v31(&a9[v46], 1, 1, v30);
  v33 = v26[14];
  a9[v33] = 6;
  v34 = v26[15];
  v44 = v33;
  v35 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v35 - 8) + 56))(&a9[v34], 1, 1, v35);
  v36 = v26[17];
  v37 = &a9[v26[16]];
  v38 = type metadata accessor for ContextProtoCGRect(0);
  v39 = *(*(v38 - 8) + 56);
  v39(&a9[v36], 1, 1, v38);
  v40 = v26[18];
  v39(&a9[v40], 1, 1, v38);
  v41 = &a9[v26[19]];
  v42 = &a9[v26[20]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a9 + 1) = a1;
  *(a9 + 2) = a2;
  *(a9 + 3) = a3;
  *(a9 + 4) = a4;
  sub_20E05EC5C(a5, &a9[v27], &qword_27C863BD0, &qword_20E323EB8);
  *a9 = a6;
  sub_20E05EC5C(a7, &a9[v47], &qword_27C863BE8, &qword_20E323ED0);
  *v32 = a8;
  v32[8] = a10 & 1;
  *v45 = a11;
  *(v45 + 1) = a12;
  a9[v49] = a13;
  a9[v48] = a14;
  sub_20E05EC5C(a15, &a9[v46], &qword_27C863BE8, &qword_20E323ED0);
  a9[v44] = v56;
  sub_20E05EC5C(a17, &a9[v34], &qword_27C863BF0, &qword_20E323ED8);
  *v37 = a18;
  *(v37 + 1) = a19;
  sub_20E05EC5C(a20, &a9[v36], &qword_27C863BF8, &qword_20E323EE0);
  result = sub_20E05EC5C(a21, &a9[v40], &qword_27C863BF8, &qword_20E323EE0);
  *v41 = a22;
  v41[8] = a23 & 1;
  *v42 = a24;
  *(v42 + 1) = a25;
  return result;
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  *a1 = 0u;
  a1[1] = 0u;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ContextProtoBoundingBox.xCoordinate.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.yCoordinate.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.width.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.height.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  type metadata accessor for ContextProtoBoundingBox(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoBoundingBox.init(xCoordinate:yCoordinate:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ContextProtoBoundingBox(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 4) = BYTE4(a1) & 1;
  *(a5 + 8) = a2;
  *(a5 + 12) = BYTE4(a2) & 1;
  *(a5 + 16) = a3;
  *(a5 + 20) = BYTE4(a3) & 1;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t sub_20E055E78@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E055F14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoSurroundingText.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoSurroundingText(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoSurroundingText.init(text:onScreenBoundingBox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
  v9 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_20E05EC5C(a3, &a4[v8], &qword_27C863BE8, &qword_20E323ED0);
}

uint64_t ContextProtoConfidence.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoConfidence(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 4) = 0;
  return result;
}

uint64_t ContextProtoConfidence.init(score:bucket:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = *a1;
  type metadata accessor for ContextProtoConfidence(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.appBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.appBundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.contentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.contentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.brandIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.brandIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreAlbumIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.iTunesStoreArtistIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.title.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.albumName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.albumName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.trackArtistName.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.trackArtistName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.currentlyPlayingSongAdamID.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.currentlyPlayingSongAdamID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = 1031;
  *(a1 + 91) = 9;
  type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

__n128 ContextProtoStructedContextNowPlayingMediaItem.init(appBundleID:contentIdentifier:brandIdentifier:iTunesStoreIdentifier:iTunesStoreAlbumIdentifier:iTunesStoreArtistIdentifier:playbackState:mediaType:mediaSubType:title:albumName:trackArtistName:currentlyPlayingSongAdamID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, char *a14, char *a15, char *a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20, uint64_t a21)
{
  v25 = *a14;
  v26 = *a15;
  v27 = *a16;
  *(a9 + 89) = 1031;
  *(a9 + 91) = 9;
  type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 89) = v25;
  *(a9 + 90) = v26;
  *(a9 + 91) = v27;
  *(a9 + 96) = a17;
  *(a9 + 112) = a18;
  result = a19;
  *(a9 + 128) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.bargeInModes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.getter()
{
  v1 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  v2 = *v1;
  sub_20E047C8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  result = sub_20E047D10(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.uiScale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.allowUserGeneratedContent.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.censorSpeech.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *a1 = *(v1 + *(result + 100));
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 100)) = v2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.didPscfire.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(a1 + 80) = 33686018;
  *(a1 + 84) = 2;
  v3 = v2[15];
  v4 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[16]) = xmmword_20E323EA0;
  v5 = (a1 + v2[17]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[18]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[19];
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[20];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + v2[21]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v2[22]) = 2;
  *(a1 + v2[23]) = 2;
  v11 = v2[24];
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v2[25]) = 12;
  *(a1 + v2[26]) = 2;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v14 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v14;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init(sessionID:requestID:inputOrigin:responseMode:isEyesFree:isMultiUser:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:deviceRestrictions:bargeInModes:identifiedUser:encodedLocation:countryCode:siriLocale:contentRestrictions:uiScale:temperatureUnit:allowUserGeneratedContent:censorSpeech:meCard:deviceIdiom:didPscfire:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, char a26, uint64_t a27, char *a28, char a29)
{
  v56 = *a28;
  v30 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v31 = v30[15];
  v47 = v31;
  v32 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  v33 = a9 + v30[16];
  *v33 = xmmword_20E323EA0;
  v34 = (a9 + v30[17]);
  v35 = (a9 + v30[18]);
  v36 = v30[19];
  v37 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = a9 + v30[20];
  v39 = (a9 + v30[21]);
  v45 = v30[23];
  v46 = v30[22];
  v40 = v30[24];
  v41 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  v42 = v30[25];
  *(a9 + v42) = 12;
  v44 = v30[26];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 81) = *(&a10 + 1);
  *a9 = a11;
  *(a9 + 8) = a12;
  sub_20E05EC5C(a13, a9 + v47, &qword_27C863C08, &qword_20E323EF0);
  sub_20E047D10(*v33, *(v33 + 8));
  *v33 = a14;
  *(v33 + 8) = a15;
  *v34 = a16;
  v34[1] = a17;
  *v35 = a18;
  v35[1] = a19;
  sub_20E05EC5C(a20, a9 + v36, &qword_27C863C10, &qword_20E323EF8);
  *v38 = a21;
  *(v38 + 8) = a22 & 1;
  *v39 = a23;
  v39[1] = a24;
  *(a9 + v46) = a25;
  *(a9 + v45) = a26;
  result = sub_20E05EC5C(a27, a9 + v40, &qword_27C863C18, &qword_20E323F00);
  *(a9 + v42) = v56;
  *(a9 + v44) = a29;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.appRestriction.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.movieRestriction.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.tvRestriction.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_20E057F0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E057FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init(appRestriction:countryCode:movieRestriction:tvRestriction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 4) = BYTE4(a1) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1282;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init(userID:isOnlyUserInHome:classification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  *(a5 + 17) = 5;
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = v9;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init(givenName:middleName:familyName:nickName:fullName:addresses:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a9[2] = a2;
  a9[3] = a3;
  a9[4] = a4;
  a9[5] = a5;
  a9[6] = a6;
  a9[7] = a7;
  a9[8] = a8;
  a9[9] = a10;
  a9[10] = a11;
  *a9 = a12;
  a9[1] = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_20E058790@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E05882C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

__n128 ContextProtoStructuredContextSiriRequestContextAddress.init(label:street:city:state:postalCode:countryCode:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.menuHierarchyComponents.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init(identifier:title:standaloneTitle:embeddingDescription:isDisabled:menuHierarchyComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  return result;
}

uint64_t sub_20E058CBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E058D58(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructedContextAppInFocusContext.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.init(bundleID:appName:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.category.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ContextProtoStructedContextAppContext.category.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppContext(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.init(bundleID:appName:category:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  type metadata accessor for ContextProtoStructedContextAppContext(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 16) = a7;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.fractionVisible.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v3 = v2[5];
  v4 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  v7[8] = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.init(text:boundingBox:uiMetadata:fractionVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v15 = v14[5];
  v16 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = v14[6];
  v18 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  (*(*(v18 - 8) + 56))(&a7[v17], 1, 1, v18);
  v19 = &a7[v14[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 1) = a2;
  sub_20E05EC5C(a3, &a7[v15], &qword_27C863BF8, &qword_20E323EE0);
  result = sub_20E05EC5C(a4, &a7[v17], &qword_27C863C20, &qword_20E323F08);
  *v19 = a5;
  v19[8] = a6 & 1;
  return result;
}

uint64_t sub_20E0596F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E059790(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E059884@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));

  return v1;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = v2[5];
  v4 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(isActive:boundingBox:fractionVisible:appBundleID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v13 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v14 = v13[5];
  v15 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[v13[6]];
  v17 = &a7[v13[7]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  result = sub_20E05EC5C(a2, &a7[v14], &qword_27C863BF8, &qword_20E323EE0);
  *v16 = a3;
  v16[8] = a4 & 1;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ContextProtoCGRect.init(origin:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContextProtoCGPoint(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
  v8 = type metadata accessor for ContextProtoCGSize(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863C30, &qword_20E323F18);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C863C38, &unk_20E323F20);
}

uint64_t sub_20E05A264@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_20E05A2BC@<X0>(uint64_t (*a1)(void)@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a3;
  a2[1] = a4;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));

  return v1;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_20E05A5E8(uint64_t a1, uint64_t a2)
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E05A638(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E0635D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E05A684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = *(DecorationOutput + 44);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + *(DecorationOutput + 48));
  *v5 = 0;
  v5[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init(version:spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v17 = *(DecorationOutput + 44);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a8 + v17, 1, 1, DecorationToolRetrievalResponse);
  v19 = (a8 + *(DecorationOutput + 48));
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  result = sub_20E05EC5C(a3, a8 + v17, &qword_27C863C40, &unk_20E33C460);
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  *v19 = a9;
  v19[1] = a10;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.context.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 44));

  return v1;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 48);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 48);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = *(DecorationOutput + 40);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + *(DecorationOutput + 44));
  *v5 = 0;
  v5[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.init(spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v18 = *(DecorationOutput + 40);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a9 + v18, 1, 1, DecorationToolRetrievalResponse);
  v20 = (a9 + *(DecorationOutput + 44));
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_20E05EC5C(a3, a9 + v18, &qword_27C863C40, &unk_20E33C460);
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *v20 = a8;
  v20[1] = a10;
  return result;
}

uint64_t sub_20E05B098@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E05B134(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoQueryDecorationInput.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoQueryDecorationInput(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoQueryDecorationInput.init(query:requestID:caller:contextID:loggingSalt:servicesExecuted:deviceIdsID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a5;
  type metadata accessor for ContextProtoQueryDecorationInput(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v19;
  *(a9 + 40) = a4;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 72) = a10;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t ContextProtoDynamicEnumerationEntity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoDynamicEnumerationEntity.init(identifier:parameterTypeInstance:typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_20E05EC5C(a3, &a5[v11], &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C863B18, &qword_20E323EB0);
}

LighthouseDataProcessor::ContextProtoRetrievedTool::AppSource_optional __swiftcall ContextProtoRetrievedTool.AppSource.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E05B834(uint64_t a1, uint64_t a2)
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E05B898(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E06357C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E05B8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20E322DE0();
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E05B960(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E063528();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ContextProtoRetrievedTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
  v3 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  v5 = MEMORY[0x277D84F90];
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  return result;
}

uint64_t ContextProtoRetrievedTool.init(definition:similarityScore:sampleInvocations:stage:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v11 = *a3;
  v12 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
  v13 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, a5 + v12, &qword_27C863C50, &qword_20E323F38);
  *a5 = a6;
  *(a5 + 8) = a2;
  *(a5 + 16) = v11;
  *(a5 + 24) = a4;
  return result;
}

uint64_t ContextProtoUIControlTool.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoUIControlTool.init(appBundleID:command:commandID:toolDef:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = *(type metadata accessor for ContextProtoUIControlTool(0) + 28);
  v17 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  return sub_20E05EC5C(a7, &a8[v16], &qword_27C863B90, &unk_20E345EF0);
}

uint64_t ContextProtoSampleInvocation.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoSampleInvocation(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ContextProtoSampleInvocation.init(invocationString:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  type metadata accessor for ContextProtoSampleInvocation(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t sub_20E05C2E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a2(0) + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoToolRetrievalType.init(identifier:definition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ContextProtoToolRetrievalType(0) + 20);
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863B60, &qword_20E323F50);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C863C60, &qword_20E323F58);
}

uint64_t ContextProtoToolQuery.appBundleIds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContextProtoToolQuery.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ContextProtoToolQuery(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoToolQuery.init(query:appBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for ContextProtoToolQuery(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_20E05C7A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  a3(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  return sub_20E05EC5C(a1, a6, a4, a5);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.types.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_20E05C988@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E05CA24(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v3;
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t ContextProtoSpanMatchedEntity.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 20);
  v3 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoSpanMatchedEntity.init(typedValue:matchMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 20);
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a3[v6], &qword_27C863B18, &qword_20E323EB0);
  *a3 = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.entityName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContextProtoEntityMatch.entityName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.userUtterance.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ContextProtoEntityMatch.userUtterance.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));

  return v1;
}

uint64_t ContextProtoEntityMatch.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoEntityMatch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoEntityMatch.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoEntityMatch(0);
  v3 = *(v2 + 48);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a1 + v3, 1, 1, matched);
  v5 = (a1 + *(v2 + 52));
  *v5 = 0;
  v5[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 45) = 0;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = 0;
  a1[10] = 0xE000000000000000;
  return result;
}

__n128 ContextProtoEntityMatch.init(sourceItemIdentifier:entityName:startIndex:endIndex:matchScore:matchProperties:matcherType:originAppBundleID:userUtterance:identifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = *a8;
  v23 = type metadata accessor for ContextProtoEntityMatch(0);
  v24 = *(v23 + 48);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a9 + v24, 1, 1, matched);
  v26 = (a9 + *(v23 + 52));
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a10;
  sub_20E05EC5C(a7, a9 + v24, &qword_27C863C68, &qword_20E323F60);
  *(a9 + 52) = v22;
  result = a11;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  *v26 = a14;
  v26[1] = a15;
  return result;
}

uint64_t ContextProtoMatchProperties.maxTokenCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.matchedTokenCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = *(type metadata accessor for ContextProtoMatchProperties(0) + 24);
  v3 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ContextProtoMatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for ContextProtoMatchProperties(0) + 24);
  v13 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return sub_20E05EC5C(a5, a6 + v12, &qword_27C863C70, &qword_20E323F68);
}

uint64_t ContextProtoAliasTypes.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ContextProtoAliasTypes(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoAliasTypes.init(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ContextProtoAliasTypes(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t _s23LighthouseDataProcessor25ContextProtoRetrievedToolV0dE14DefinitionEnumO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v15 = MEMORY[0x28223BE20](v14);
  v48 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EA8, &qword_20E325CF8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v45 - v30;
  v32 = *(v29 + 56);
  sub_20E063ADC(v49, &v45 - v30, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_20E063ADC(v50, &v31[v32], type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E063ADC(v31, v25, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v38 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
        v39 = v25;
        goto LABEL_19;
      }

      sub_20E063A74(&v31[v32], v6, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v35 = static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)(v25, v6);
      v41 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
      sub_20E063A14(v6, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v36 = v25;
    }

    else
    {
      sub_20E063ADC(v31, v27, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v38 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
        v39 = v27;
        goto LABEL_19;
      }

      sub_20E063A74(&v31[v32], v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v35 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v27, v13);
      v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      sub_20E063A14(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v36 = v27;
    }

LABEL_21:
    v37 = v41;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E063ADC(v31, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v38 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      v39 = v22;
      goto LABEL_19;
    }

    v40 = v45;
    sub_20E063A74(&v31[v32], v45, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v35 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v22, v40);
    v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
    sub_20E063A14(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v36 = v22;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v42 = v48;
    sub_20E063ADC(v31, v48, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v38 = type metadata accessor for ContextProtoUIControlTool;
      v39 = v42;
      goto LABEL_19;
    }

    v43 = v47;
    sub_20E063A74(&v31[v32], v47, type metadata accessor for ContextProtoUIControlTool);
    v35 = _s23LighthouseDataProcessor25ContextProtoUIControlToolV2eeoiySbAC_ACtFZ_0(v42, v43);
    v41 = type metadata accessor for ContextProtoUIControlTool;
    sub_20E063A14(v43, type metadata accessor for ContextProtoUIControlTool);
    v36 = v42;
    goto LABEL_21;
  }

  sub_20E063ADC(v31, v19, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v34 = v46;
    sub_20E063A74(&v31[v32], v46, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v35 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v19, v34);
    sub_20E063A14(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v36 = v19;
    v37 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
LABEL_22:
    sub_20E063A14(v36, v37);
    sub_20E063A14(v31, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    return v35 & 1;
  }

  v38 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
  v39 = v19;
LABEL_19:
  sub_20E063A14(v39, v38);
  sub_20E04875C(v31, &qword_27C863EA8, &qword_20E325CF8);
  v35 = 0;
  return v35 & 1;
}

uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredD4KindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v51 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v51 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v51 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v51 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v51 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB0, &qword_20E325D00);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v51 - v34;
  v36 = *(v33 + 56);
  sub_20E063ADC(v57, &v51 - v34, type metadata accessor for ContextProtoStructuredContextKind);
  sub_20E063ADC(v58, &v35[v36], type metadata accessor for ContextProtoStructuredContextKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_20E063ADC(v35, v23, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v45 = v54;
        sub_20E063A74(&v35[v36], v54, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
        v39 = _s23LighthouseDataProcessor022ContextProtoStructuredD14OnScreenUITextV2eeoiySbAC_ACtFZ_0(v23, v45);
        v40 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
        sub_20E063A14(v45, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
        v41 = v23;
        goto LABEL_25;
      }

      v43 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
      v44 = v23;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E063ADC(v35, v20, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v42 = v55;
        sub_20E063A74(&v35[v36], v55, type metadata accessor for ContextProtoStructedContextAppContext);
        v39 = static ContextProtoStructedContextAppContext.== infix(_:_:)(v20, v42);
        v40 = type metadata accessor for ContextProtoStructedContextAppContext;
        sub_20E063A14(v42, type metadata accessor for ContextProtoStructedContextAppContext);
        v41 = v20;
        goto LABEL_25;
      }

      v43 = type metadata accessor for ContextProtoStructedContextAppContext;
      v44 = v20;
    }

    else
    {
      sub_20E063ADC(v35, v17, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v47 = v56;
        sub_20E063A74(&v35[v36], v56, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
        v39 = static ContextProtoStructedContextNowPlayingMediaItem.== infix(_:_:)(v17, v47);
        sub_20E063A14(v47, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
        v41 = v17;
        v48 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem;
LABEL_26:
        sub_20E063A14(v41, v48);
        sub_20E063A14(v35, type metadata accessor for ContextProtoStructuredContextKind);
        return v39 & 1;
      }

      v43 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem;
      v44 = v17;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E063ADC(v35, v29, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v52;
        sub_20E063A74(&v35[v36], v52, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
        v39 = _s23LighthouseDataProcessor022ContextProtoStructuredd19IntelligenceCommandD0V2eeoiySbAC_ACtFZ_0(v29, v38);
        v40 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
        sub_20E063A14(v38, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
        v41 = v29;
LABEL_25:
        v48 = v40;
        goto LABEL_26;
      }

      v43 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
      v44 = v29;
    }

    else
    {
      sub_20E063ADC(v35, v26, type metadata accessor for ContextProtoStructuredContextKind);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v46 = v53;
        sub_20E063A74(&v35[v36], v53, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
        v39 = static ContextProtoStructedContextAppInFocusContext.== infix(_:_:)(v26, v46);
        v40 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
        sub_20E063A14(v46, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
        v41 = v26;
        goto LABEL_25;
      }

      v43 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
      v44 = v26;
    }
  }

  else
  {
    sub_20E063ADC(v35, v31, type metadata accessor for ContextProtoStructuredContextKind);
    if (!swift_getEnumCaseMultiPayload())
    {
      v49 = v51;
      sub_20E063A74(&v35[v36], v51, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      v39 = _s23LighthouseDataProcessor022ContextProtoStructuredd11SiriRequestD0V2eeoiySbAC_ACtFZ_0(v31, v49);
      v40 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
      sub_20E063A14(v49, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      v41 = v31;
      goto LABEL_25;
    }

    v43 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
    v44 = v31;
  }

  sub_20E063A14(v44, v43);
  sub_20E04875C(v35, &qword_27C863EB0, &qword_20E325D00);
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_20E05E834(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20E05E888(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20E05EC5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_20E05ECE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20E05ED20()
{
  result = qword_27C863C78;
  if (!qword_27C863C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863C78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_20E05EDF0()
{
  result = qword_27C863C90;
  if (!qword_27C863C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863C90);
  }

  return result;
}

unint64_t sub_20E05EE78()
{
  result = qword_27C863CA8;
  if (!qword_27C863CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CA8);
  }

  return result;
}

unint64_t sub_20E05EF00()
{
  result = qword_27C863CC0;
  if (!qword_27C863CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CC0);
  }

  return result;
}

unint64_t sub_20E05EF88()
{
  result = qword_27C863CD8;
  if (!qword_27C863CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CD8);
  }

  return result;
}

unint64_t sub_20E05F010()
{
  result = qword_27C863CF0;
  if (!qword_27C863CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863CF0);
  }

  return result;
}

unint64_t sub_20E05F098()
{
  result = qword_27C863D08;
  if (!qword_27C863D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D08);
  }

  return result;
}

unint64_t sub_20E05F120()
{
  result = qword_27C863D20;
  if (!qword_27C863D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D20);
  }

  return result;
}

unint64_t sub_20E05F1A8()
{
  result = qword_27C863D38;
  if (!qword_27C863D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D38);
  }

  return result;
}

unint64_t sub_20E05F230()
{
  result = qword_27C863D50;
  if (!qword_27C863D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D50);
  }

  return result;
}

unint64_t sub_20E05F2B8()
{
  result = qword_27C863D68;
  if (!qword_27C863D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D68);
  }

  return result;
}

unint64_t sub_20E05F340()
{
  result = qword_27C863D80;
  if (!qword_27C863D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D80);
  }

  return result;
}

unint64_t sub_20E05F3C8()
{
  result = qword_27C863D98;
  if (!qword_27C863D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863D98);
  }

  return result;
}

unint64_t sub_20E05F450()
{
  result = qword_27C863DB0;
  if (!qword_27C863DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863DB0);
  }

  return result;
}

unint64_t sub_20E05F4D8()
{
  result = qword_27C863DC8;
  if (!qword_27C863DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863DC8);
  }

  return result;
}

uint64_t sub_20E05F55C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for ContextProtoContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextProtoContextType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.PersonReachableAs(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptProtoPlanSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptProtoPlanSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitProtoRuntimePlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRuntimePlatform(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_20E05FE18(uint64_t a1)
{
  sub_20E05FFF4(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0FB00, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E05FFF4(319, qword_280E12A88, type metadata accessor for ContextProtoContextMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E116D8, type metadata accessor for ContextProtoStructuredContext, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20E05FFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20E060080(uint64_t a1)
{
  sub_20E05FFF4(319, &qword_280E03FE0, type metadata accessor for ContextProtoSurroundingText, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E05FFF4(319, qword_280E0FB00, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E0EF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E0634D8(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20E0634D8(319, qword_280E12A28, &type metadata for ContextProtoContextDataSource, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_20E05FFF4(319, qword_280E04C80, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_20E05FFF4(319, qword_280E10250, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_20E3221C0();
                    if (v10 <= 0x3F)
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

void sub_20E060394(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E060464(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E03F00, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E060538(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0EF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E0606D4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoStructedContextAppInFocusContext(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for ContextProtoStructedContextAppContext(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_20E0607C0(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E0634D8(319, qword_280E11910, &type metadata for ContextProtoStructedContextNowPlayingMediaRemotePlaybackState, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E0634D8(319, qword_280E11870, &type metadata for ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E11868, &type metadata for ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20E0609A0(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E0634D8(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E11200, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B40, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E05FFF4(319, qword_280E112A8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_20E05FFF4(319, qword_280E11150, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_20E0634D8(319, qword_280E112F8, &type metadata for ContextProtoStructuredContextSiriRequestContextDeviceIdiom, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_20E3221C0();
                    if (v10 <= 0x3F)
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

void sub_20E060CA0(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E03ED8, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E060DB8(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B60, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E0634D8(319, qword_280E11248, &type metadata for ContextProtoStructuredContextSiriRequestContextUserClassification, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E060F00(uint64_t a1)
{
  sub_20E05FFF4(319, &qword_280E04058, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E061024(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E061100(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E061224(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E0612FC(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E0613DC(uint64_t a1)
{
  sub_20E05FFF4(319, qword_280E10250, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E115A0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E0615BC(uint64_t a1)
{
  sub_20E05FFF4(319, qword_280E10250, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E03F08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20E061720(uint64_t a1)
{
  sub_20E05FFF4(319, qword_280E100D8, type metadata accessor for ContextProtoCGPoint, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E101B0, type metadata accessor for ContextProtoCGSize, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_336Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_20E3221C0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_337Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_20E3221C0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_20E061988(uint64_t a1)
{
  sub_20E05FFF4(319, &qword_280E03F90, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_27C863DF0, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E05FFF4(319, &qword_280E04060, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E04E60, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContextProtoVersionedQueryDecorationOutput.Version(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_20E061C78(uint64_t a1)
{
  sub_20E05FFF4(319, &qword_280E03F90, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_27C863DF0, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E05FFF4(319, &qword_280E04060, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_20E05FFF4(319, qword_280E04E60, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E3221C0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20E061E70(uint64_t a1)
{
  sub_20E0634D8(319, &qword_27C863E18, &type metadata for ContextProtoQueryDecorationCoreService, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E061F98(uint64_t a1)
{
  sub_20E05FFF4(319, qword_280E0ECE8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E0620CC(uint64_t a1)
{
  sub_20E05FFF4(319, &qword_280E03FB8, type metadata accessor for ContextProtoSampleInvocation, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E04010, &type metadata for ContextProtoRetrievedTool.AppSource, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E05FFF4(319, qword_280E0E7E8, type metadata accessor for ContextProtoRetrievedTool.Definition, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E3221C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20E06222C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20E0622BC(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20E06243C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoUIControlTool(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_20E0624F4(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E12080, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E062628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_20E3221C0();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_327Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = *(v13 + 48);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a2)
  {
    v14 = v17;
    v15 = *(v18 + 48);
    v16 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v20 = sub_20E3221C0();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + *(a3 + 24);

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_328Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = v14;
    v17 = *(v15 + 56);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a3)
  {
    v16 = v19;
    v17 = *(v20 + 56);
    v18 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v22 = sub_20E3221C0();
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + *(a4 + 24);

  return v23(v24, a2, a2, v22);
}

void sub_20E062988(uint64_t a1)
{
  sub_20E05FFF4(319, qword_280E0DAC0, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0DC88, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_443Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20E3221C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_444Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20E3221C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20E062BFC(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E12B68, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_203Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_20E3221C0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_204Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_20E3221C0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_20E062F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_20E3221C0();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20E062FCC(uint64_t a1)
{
  sub_20E05FFF4(319, &qword_280E04008, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_280E03F88, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E063110(uint64_t a1)
{
  sub_20E05FFF4(319, &qword_280E04028, type metadata accessor for ContextProtoEntityMatch, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, qword_280E0F1E0, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E063234(uint64_t a1)
{
  sub_20E05FFF4(319, qword_280E0D640, type metadata accessor for ContextProtoMatchProperties, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E0634D8(319, &qword_280E12B78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E063384(uint64_t a1)
{
  sub_20E0634D8(319, &qword_280E03ED0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E05FFF4(319, &qword_280E0FBA0, type metadata accessor for ContextProtoAliasTypes, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E3221C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20E0634D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20E063528()
{
  result = qword_27C863E30;
  if (!qword_27C863E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E30);
  }

  return result;
}

unint64_t sub_20E06357C()
{
  result = qword_27C863E38;
  if (!qword_27C863E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E38);
  }

  return result;
}

unint64_t sub_20E0635D0()
{
  result = qword_27C863E40;
  if (!qword_27C863E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E40);
  }

  return result;
}

unint64_t sub_20E063624()
{
  result = qword_27C863E48;
  if (!qword_27C863E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E48);
  }

  return result;
}

unint64_t sub_20E063678()
{
  result = qword_27C863E50;
  if (!qword_27C863E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E50);
  }

  return result;
}

unint64_t sub_20E0636CC()
{
  result = qword_27C863E58;
  if (!qword_27C863E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E58);
  }

  return result;
}

unint64_t sub_20E063720()
{
  result = qword_27C863E60;
  if (!qword_27C863E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E60);
  }

  return result;
}

unint64_t sub_20E063774()
{
  result = qword_27C863E68;
  if (!qword_27C863E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E68);
  }

  return result;
}

unint64_t sub_20E0637C8()
{
  result = qword_27C863E70;
  if (!qword_27C863E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E70);
  }

  return result;
}

unint64_t sub_20E06381C()
{
  result = qword_27C863E78;
  if (!qword_27C863E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E78);
  }

  return result;
}

unint64_t sub_20E063870()
{
  result = qword_27C863E80;
  if (!qword_27C863E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E80);
  }

  return result;
}

unint64_t sub_20E0638C4()
{
  result = qword_27C863E88;
  if (!qword_27C863E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E88);
  }

  return result;
}

unint64_t sub_20E063918()
{
  result = qword_27C863E90;
  if (!qword_27C863E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E90);
  }

  return result;
}

unint64_t sub_20E06396C()
{
  result = qword_27C863E98;
  if (!qword_27C863E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863E98);
  }

  return result;
}

unint64_t sub_20E0639C0()
{
  result = qword_27C863EA0;
  if (!qword_27C863EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C863EA0);
  }

  return result;
}

uint64_t sub_20E063A14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E063A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E063ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E063DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  if (!a1)
  {
    return 0;
  }

  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = type metadata accessor for TranscriptProtoParameterSet(0);
    v8 = *(v7 - 8);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    v11 = (v8 + 56);
    do
    {
      sub_20E063F94(v9, v4);
      (*v11)(v4, 0, 1, v7);
      v12 = sub_20E04CF14(v4);
      sub_20E063FF8(v4);
      if (v12)
      {
        v13 = v12;
        MEMORY[0x20F32BF90]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v5 = v16;
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

uint64_t sub_20E063F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E063FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E064060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC0, &qword_20E325D10);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D57E00]) init];
  if (v14)
  {
    sub_20E0486F4(a1, v10, &qword_27C863EC0, &qword_20E325D10);
    v15 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
    v16 = *(*(v15 - 8) + 48);
    if (v16(v10, 1, v15) == 1)
    {
      v17 = v14;
      sub_20E04875C(v10, &qword_27C863EC0, &qword_20E325D10);
      v18 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    }

    else
    {
      sub_20E0486F4(&v10[*(v15 + 24)], v13, &qword_27C863B60, &qword_20E323F50);
      v19 = v14;
      sub_20E06442C(v10);
    }

    v20 = sub_20E04EA80(v13);
    sub_20E04875C(v13, &qword_27C863B60, &qword_20E323F50);
    [v14 setTypeIdentifier_];

    sub_20E0486F4(a1, v8, &qword_27C863EC0, &qword_20E325D10);
    if (v16(v8, 1, v15) == 1)
    {
      v21 = v14;
      sub_20E04875C(v8, &qword_27C863EC0, &qword_20E325D10);
      v22 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    }

    else
    {
      sub_20E0486F4(&v8[*(v15 + 28)], v4, &qword_27C863EB8, &qword_20E325D08);
      v23 = v14;
      sub_20E06442C(v8);
    }

    v24 = [objc_allocWithZone(MEMORY[0x277D57DE0]) init];
    v25 = v24;
    if (v24)
    {
      [v24 setExists_];
    }

    sub_20E04875C(v4, &qword_27C863EB8, &qword_20E325D08);
    [v14 setDisplayRepresentation_];
  }

  return v14;
}

uint64_t sub_20E06442C(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E064488(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x616E6964726F6F63 && a2 == 0xEB00000000726F74)
  {
    return 1;
  }

  if (sub_20E322D60())
  {
    return 1;
  }

  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_20E322D60() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x726F747563657865 && a2 == 0xE800000000000000 || (sub_20E322D60() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000 || (sub_20E322D60() & 1) != 0)
  {
    return 4;
  }

  result = 6;
  if (a1 != 0x624F6E6F69746361 || a2 != 0xEE00726576726573)
  {
    if (sub_20E322D60())
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_20E064624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v163 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v166 = &v151 - v5;
  v159 = type metadata accessor for TranscriptProtoExecutorError(0);
  v6 = MEMORY[0x28223BE20](v159);
  v165 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v168 = &v151 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v162 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v167 = &v151 - v12;
  v158 = type metadata accessor for TranscriptProtoPlannerError(0);
  v13 = MEMORY[0x28223BE20](v158);
  v164 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v169 = &v151 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v161 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v151 - v19;
  v157 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v21 = MEMORY[0x28223BE20](v157);
  v23 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v170 = &v151 - v24;
  v25 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v160 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v156 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v155 = &v151 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v154 = &v151 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v151 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v151 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v151 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v151 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v46 = &v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v151 - v47;
  v49 = [objc_allocWithZone(MEMORY[0x277D58058]) init];
  if (v49)
  {
    v152 = v23;
    v153 = v20;
    v171 = v49;
    sub_20E0486F4(a1, v48, &qword_27C863EE0, &qword_20E325D18);
    v50 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
    if ((*(*(v50 - 8) + 48))(v48, 1, v50) == 1)
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v51 = sub_20E3227C0();
      __swift_project_value_buffer(v51, qword_280E12C48);
      v172 = 0;
      v173 = 0xE000000000000000;
      sub_20E322B00();

      v172 = 0xD000000000000026;
      v173 = 0x800000020E35A2E0;
      type metadata accessor for TranscriptProtoSessionError(0);
      sub_20E065D4C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
      v52 = sub_20E322470();
      MEMORY[0x20F32BF40](v52);

      v54 = v172;
      v53 = v173;

      v55 = sub_20E3227B0();
      v56 = sub_20E322A40();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v172 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_20E31B6C4(v54, v53, &v172);
        _os_log_impl(&dword_20E031000, v55, v56, "%s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x20F32CA80](v58, -1, -1);
        MEMORY[0x20F32CA80](v57, -1, -1);
      }

      LOBYTE(v172) = 98;
      _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v172, v54, v53);

      goto LABEL_8;
    }

    v151 = v48;
    sub_20E0486F4(v48, v46, &qword_27C863EE0, &qword_20E325D18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v59 = v171;
      if (EnumCaseMultiPayload == 2)
      {
        v67 = v169;
        sub_20E065C1C(v46, v169, type metadata accessor for TranscriptProtoPlannerError);
        v68 = [objc_allocWithZone(MEMORY[0x277D57F38]) init];
        v48 = v151;
        if (v68)
        {
          v69 = v68;
          v70 = v167;
          sub_20E0486F4(v67, v167, &qword_27C863ED0, &unk_20E33C2C0);
          v71 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
          if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
          {
            if (qword_280E12B88 != -1)
            {
              swift_once();
            }

            v72 = sub_20E3227C0();
            __swift_project_value_buffer(v72, qword_280E12C48);
            v73 = v164;
            sub_20E065CE4(v67, v164, type metadata accessor for TranscriptProtoPlannerError);
            v74 = sub_20E3227B0();
            v75 = sub_20E322A40();
            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v172 = v77;
              *v76 = 136315138;
              sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);
              v78 = sub_20E322470();
              v79 = v73;
              v81 = v80;
              sub_20E065C84(v79, type metadata accessor for TranscriptProtoPlannerError);
              v82 = sub_20E31B6C4(v78, v81, &v172);

              *(v76 + 4) = v82;
              _os_log_impl(&dword_20E031000, v74, v75, "IFTSchemaIFTPlannerError, unknown error. %s", v76, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v77);
              MEMORY[0x20F32CA80](v77, -1, -1);
              MEMORY[0x20F32CA80](v76, -1, -1);
            }

            else
            {

              sub_20E065C84(v73, type metadata accessor for TranscriptProtoPlannerError);
            }

            v59 = v171;
          }

          else
          {
            v113 = v162;
            sub_20E0486F4(v70, v162, &qword_27C863ED0, &unk_20E33C2C0);
            v114 = swift_getEnumCaseMultiPayload();
            if (v114)
            {
              if (v114 == 1)
              {
                v115 = v155;
                sub_20E065C1C(v113, v155, type metadata accessor for TranscriptProtoIntelligenceFlowError);
                v116 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
                v117 = v116;
                if (v116)
                {
                  v118 = v116;
                  v119 = sub_20E322860();
                  [v118 setDomain_];

                  [v118 setCode_];
                }

                [v69 setNetworkError_];

                sub_20E065C84(v115, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              }

              else
              {
                [v69 setFailedToPlan_];
              }
            }

            else
            {
              v136 = v113;
              v137 = v154;
              sub_20E065C1C(v136, v154, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              v138 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
              v139 = v138;
              if (v138)
              {
                v140 = v138;
                v59 = v171;
                v141 = sub_20E322860();
                [v140 setDomain_];

                [v140 setCode_];
              }

              [v69 setOther_];

              sub_20E065C84(v137, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            }
          }

          sub_20E04875C(v70, &qword_27C863ED0, &unk_20E33C2C0);
          [v59 setPlannerError_];
        }

        v135 = type metadata accessor for TranscriptProtoPlannerError;
      }

      else
      {
        v67 = v168;
        sub_20E065C1C(v46, v168, type metadata accessor for TranscriptProtoExecutorError);
        v98 = [objc_allocWithZone(MEMORY[0x277D57E20]) init];
        v48 = v151;
        if (v98)
        {
          v99 = v98;
          v100 = v166;
          sub_20E0486F4(v67, v166, &qword_27C863EC8, &unk_20E359E90);
          v101 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
          if ((*(*(v101 - 8) + 48))(v100, 1, v101) == 1)
          {
            if (qword_280E12B88 != -1)
            {
              swift_once();
            }

            v102 = sub_20E3227C0();
            __swift_project_value_buffer(v102, qword_280E12C48);
            v103 = v165;
            sub_20E065CE4(v67, v165, type metadata accessor for TranscriptProtoExecutorError);
            v104 = sub_20E3227B0();
            v105 = sub_20E322A40();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v172 = v107;
              *v106 = 136315138;
              sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
              v108 = sub_20E322470();
              v109 = v103;
              v111 = v110;
              sub_20E065C84(v109, type metadata accessor for TranscriptProtoExecutorError);
              v112 = sub_20E31B6C4(v108, v111, &v172);

              *(v106 + 4) = v112;
              _os_log_impl(&dword_20E031000, v104, v105, "IFTSchemaIFTExecutorError, unknown error. %s", v106, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v107);
              MEMORY[0x20F32CA80](v107, -1, -1);
              MEMORY[0x20F32CA80](v106, -1, -1);
            }

            else
            {

              sub_20E065C84(v103, type metadata accessor for TranscriptProtoExecutorError);
            }

            v59 = v171;
          }

          else
          {
            v129 = v163;
            sub_20E0486F4(v100, v163, &qword_27C863EC8, &unk_20E359E90);
            if ((*(v160 + 48))(v129, 1, v25) == 1)
            {
              [v99 setFailedToExecute_];
            }

            else
            {
              v130 = v156;
              sub_20E065C1C(v129, v156, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              v131 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
              v132 = v131;
              if (v131)
              {
                v133 = v131;
                v134 = sub_20E322860();
                [v133 setDomain_];

                v59 = v171;
                [v133 setCode_];
              }

              [v99 setOther_];

              sub_20E065C84(v130, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            }
          }

          sub_20E04875C(v100, &qword_27C863EC8, &unk_20E359E90);
          [v59 setExecutorError_];
        }

        v135 = type metadata accessor for TranscriptProtoExecutorError;
      }

      v65 = v135;
      v66 = v67;
      goto LABEL_66;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_20E065C1C(v46, v42, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v61 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
      v62 = v61;
      v48 = v151;
      if (v61)
      {
        v63 = v61;
        v64 = sub_20E322860();
        [v63 setDomain_];

        [v63 setCode_];
      }

      v59 = v171;
      [v171 setOther_];

      v65 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v66 = v42;
LABEL_66:
      sub_20E065C84(v66, v65);
      goto LABEL_67;
    }

    v83 = v170;
    sub_20E065C1C(v46, v170, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v84 = [objc_allocWithZone(MEMORY[0x277D58050]) init];
    v48 = v151;
    if (!v84)
    {
LABEL_74:
      sub_20E065C84(v83, type metadata accessor for TranscriptProtoSessionCoordinatorError);
LABEL_8:
      v59 = v171;
LABEL_67:
      sub_20E04875C(v48, &qword_27C863EE0, &qword_20E325D18);
      return v59;
    }

    v85 = v84;
    v86 = v153;
    sub_20E0486F4(v83, v153, &qword_27C863ED8, &unk_20E33C2B0);
    v87 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
    if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
    {
      if (qword_280E12B88 != -1)
      {
        swift_once();
      }

      v88 = sub_20E3227C0();
      __swift_project_value_buffer(v88, qword_280E12C48);
      v89 = v152;
      sub_20E065CE4(v83, v152, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v90 = sub_20E3227B0();
      v91 = sub_20E322A40();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v172 = v93;
        *v92 = 136315138;
        sub_20E065D4C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);
        v94 = sub_20E322470();
        v96 = v95;
        sub_20E065C84(v89, type metadata accessor for TranscriptProtoSessionCoordinatorError);
        v97 = sub_20E31B6C4(v94, v96, &v172);

        *(v92 + 4) = v97;
        _os_log_impl(&dword_20E031000, v90, v91, "IFTSchemaIFTSessionCoordinatorError has no failedToConvertClientEvent. %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x20F32CA80](v93, -1, -1);
        MEMORY[0x20F32CA80](v92, -1, -1);

LABEL_73:
        sub_20E04875C(v153, &qword_27C863ED8, &unk_20E33C2B0);
        [v171 setSessionCoordinatorError_];

        goto LABEL_74;
      }

      v127 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
      v128 = v89;
    }

    else
    {
      v120 = v86;
      v121 = v161;
      sub_20E0486F4(v120, v161, &qword_27C863ED8, &unk_20E33C2B0);
      v122 = swift_getEnumCaseMultiPayload();
      if (v122)
      {
        if (v122 == 1)
        {
          sub_20E065C1C(v121, v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v123 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
          v124 = v123;
          if (v123)
          {
            v125 = v123;
            v126 = sub_20E322860();
            [v125 setDomain_];

            [v125 setCode_];
          }

          [v85 setFailedToWriteTranscript_];

          v127 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
          v128 = v37;
        }

        else
        {
          sub_20E065C1C(v121, v34, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v147 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
          v148 = v147;
          if (v147)
          {
            v149 = v147;
            v150 = sub_20E322860();
            [v149 setDomain_];

            [v149 setCode_];
          }

          [v85 setFailedToConvertClientEvent_];

          v127 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
          v128 = v34;
        }
      }

      else
      {
        sub_20E065C1C(v121, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v142 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
        v143 = v142;
        if (v142)
        {
          v144 = v142;
          v145 = sub_20E322860();
          [v144 setDomain_];

          [v144 setCode_];
        }

        [v85 setOther_];

        v127 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
        v128 = v40;
      }
    }

    sub_20E065C84(v128, v127);
    goto LABEL_73;
  }

  return 0;
}

uint64_t sub_20E065C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E065C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E065CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E065D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_20E065D94(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F10, &unk_20E33C3B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v13, &qword_27C863F10, &unk_20E33C3B0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_20E066340(v13, v17, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    v18 = [objc_allocWithZone(MEMORY[0x277D580D0]) init];
    sub_20E0486F4(v17, v10, &qword_27C863F08, &qword_20E325D20);
    v19 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) != 1)
    {
      sub_20E0486F4(v10, v8, &qword_27C863F08, &qword_20E325D20);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          [v18 setDisambiguationIndexSelected_];
          goto LABEL_9;
        }

        if (EnumCaseMultiPayload == 4)
        {
          sub_20E066340(v8, v4, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          if (v18)
          {
            v26 = objc_allocWithZone(MEMORY[0x277D580C8]);
            v27 = v18;
            v28 = [v26 init];
            [v27 setRequirementAddressed_];

            v29 = [v27 requirementAddressed];
            if (v29)
            {
              v30 = v29;
              [v29 setIsRequirementSatisfied_];
            }
          }

          sub_20E0663A8(v4, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          goto LABEL_9;
        }

        sub_20E0663A8(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        if (!v18 || (v31 = objc_allocWithZone(MEMORY[0x277D580B8]), v32 = v18, v33 = [v31 init], objc_msgSend(v32, sel_setActionCanceled_, v33), v32, v33, (v34 = objc_msgSend(v32, sel_actionCanceled)) == 0))
        {
LABEL_9:
          sub_20E0663A8(v17, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
          sub_20E04875C(v10, &qword_27C863F08, &qword_20E325D20);
          return v18;
        }

        v21 = v34;
        [v34 setExists:1];
LABEL_8:

        goto LABEL_9;
      }

      if (!EnumCaseMultiPayload)
      {
        if (v18)
        {
          [v18 setIsActionConfirmed_];
        }

        goto LABEL_9;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (v18)
        {
          [v18 setIsParameterConfirmed_];
        }

        goto LABEL_9;
      }

      sub_20E0663A8(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    }

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v20 = sub_20E3227C0();
    __swift_project_value_buffer(v20, qword_280E12C48);
    v21 = sub_20E3227B0();
    v22 = sub_20E322A40();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20E031000, v21, v22, "Unknown prompt resolution user action value", v23, 2u);
      MEMORY[0x20F32CA80](v23, -1, -1);
    }

    goto LABEL_8;
  }

  sub_20E04875C(v13, &qword_27C863F10, &unk_20E33C3B0);
  return 0;
}

uint64_t sub_20E066340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E0663A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_20E066408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v55 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v54 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
  v7 = MEMORY[0x28223BE20](v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v48 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v57 = a1;

  v22 = 0;
  v48 = v20;
  v49 = a1 + 64;
  v53 = v6;
  v50 = v14;
  if (v19)
  {
    while (1)
    {
      v60 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v19)) | (v22 << 6);
      v25 = *(v57 + 56);
      v26 = (*(v57 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = type metadata accessor for TranscriptProtoStatementID(0);
      v58 = *(v29 - 8);
      v59 = v29;
      v30 = v56;
      sub_20E04F364(v25 + *(v58 + 72) * v24, &v56[*(v6 + 48)]);
      *v30 = v27;
      v30[1] = v28;
      sub_20E066940(v30, v14);
      v31 = objc_allocWithZone(MEMORY[0x277D580A0]);

      v32 = [v31 init];
      if (!v32)
      {
        break;
      }

      v60 = v32;
      v33 = v51;
      sub_20E0486F4(v14, v51, &qword_27C863F18, &qword_20E325D28);
      v34 = *(v6 + 48);
      v35 = sub_20E322860();

      v36 = v33 + v34;
      v37 = v60;
      sub_20E04F4A0(v36);
      [v37 setStructuredSearchParameterName_];

      v38 = v52;
      sub_20E0486F4(v14, v52, &qword_27C863F18, &qword_20E325D28);

      v39 = v54;
      sub_20E0529B0(v38 + *(v6 + 48), v54);
      v41 = v58;
      v40 = v59;
      (*(v58 + 56))(v39, 0, 1, v59);
      v42 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
      v43 = v55;
      sub_20E0486F4(v39, v55, &qword_27C8639D0, &unk_20E33C230);
      if ((*(v41 + 48))(v43, 1, v40) == 1)
      {
        sub_20E04875C(v39, &qword_27C8639D0, &unk_20E33C230);
        v44 = v43;
      }

      else
      {
        v45 = *v43;
        sub_20E04F4A0(v43);
        v46 = v45;
        v37 = v60;
        [v42 setIndex_];
        v44 = v39;
      }

      sub_20E04875C(v44, &qword_27C8639D0, &unk_20E33C230);
      [v37 setStatementId_];

      v47 = v37;
      MEMORY[0x20F32BF90]();
      v6 = v53;
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20E322990();
      }

      v19 &= v19 - 1;
      sub_20E3229B0();

      v14 = v50;
      result = sub_20E04875C(v50, &qword_27C863F18, &qword_20E325D28);
      v15 = v61;
      v20 = v48;
      v16 = v49;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    sub_20E04875C(v14, &qword_27C863F18, &qword_20E325D28);

    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        return v15;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        v60 = v15;
        v22 = v23;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20E066940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20E0669B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  sub_20E066E54(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20E04875C(v11, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    sub_20E066EC4(v11, v18);
    v19 = [objc_allocWithZone(MEMORY[0x277D58130]) init];
    v20 = *v18;
    if ((~*v18 & 0xF000000000000007) != 0)
    {
      if (v20 >> 61)
      {
        if (v20 >> 61 != 1)
        {

          sub_20E066F28(v18, type metadata accessor for ToolKitProtoTypeInstance);

          sub_20E047CA8(v20);
          return 0;
        }

        v21 = swift_projectBox();
        sub_20E066F88(v21, v16, type metadata accessor for ToolKitProtoTypeInstance);
        v22 = *v16;
        if ((~*v16 & 0xF000000000000007) == 0 || v19 == 0)
        {
        }

        else
        {
          v32 = *v16;
          sub_20E047CF8(v20);
          sub_20E047CF8(v22);
          v28 = v19;
          v29 = sub_20E04F7F0(&v32);
          [v28 setCollection_];

          sub_20E047CA8(v22);
        }

        sub_20E066F28(v16, type metadata accessor for ToolKitProtoTypeInstance);
        v30 = v18;
      }

      else
      {
        v24 = swift_projectBox();
        sub_20E066F88(v24, v8, type metadata accessor for ToolKitProtoTypeIdentifier);
        if (v19)
        {
          sub_20E066F88(v8, v4, type metadata accessor for ToolKitProtoTypeIdentifier);
          (*(v6 + 56))(v4, 0, 1, v5);
          sub_20E047CF8(v20);
          v25 = v19;
          v26 = sub_20E04EA80(v4);
          sub_20E04875C(v4, &qword_27C863B60, &qword_20E323F50);
          [v25 setTypeIdentifier_];
        }

        else
        {
        }

        sub_20E066F28(v8, type metadata accessor for ToolKitProtoTypeIdentifier);
        v30 = v18;
      }

      sub_20E066F28(v30, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E047CA8(v20);
      return v19;
    }

    sub_20E066F28(v18, type metadata accessor for ToolKitProtoTypeInstance);
  }

  return 0;
}

uint64_t sub_20E066E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E066EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E066F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E066F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_20E066FF0(unsigned __int8 *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57D38]) init];
  v3 = v2;
  if (v2)
  {
    [v2 setExists_];
    v4 = type metadata accessor for TranscriptProtoActionSuccess(0);
    v5 = *(v4 + 24);
    v6 = v3;
    v7 = sub_20E06E458(&a1[v5]);
    [v6 setReturnValue_];

    [v6 setDidShowInAppResult_];
    v8 = *(v4 + 32);
    v9 = v6;
    v10 = sub_20E21DBBC(&a1[v8]);
    [v9 setFollowUpAction_];

    [v9 setShouldOpen_];
  }

  return v3;
}

void *sub_20E0670F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v23 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F20, &unk_20E3461D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for TranscriptProtoClientAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863F20, &unk_20E3461D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20E04875C(v7, &qword_27C863F20, &unk_20E3461D0);
    return 0;
  }

  else
  {
    sub_20E067430(v7, v11);
    v13 = [objc_allocWithZone(MEMORY[0x277D57D78]) init];
    v12 = v13;
    if (v13)
    {
      [v13 setExists_];
      v14 = *(v8 + 36);
      v15 = objc_allocWithZone(MEMORY[0x277D58078]);
      v16 = v12;
      v17 = [v15 init];
      sub_20E0486F4(&v11[v14], v4, &qword_27C8639D0, &unk_20E33C230);
      v18 = type metadata accessor for TranscriptProtoStatementID(0);
      if ((*(*(v18 - 8) + 48))(v4, 1, v18) == 1)
      {
        sub_20E04875C(v4, &qword_27C8639D0, &unk_20E33C230);
      }

      else
      {
        v19 = *v4;
        sub_20E067494(v4, type metadata accessor for TranscriptProtoStatementID);
        [v17 setIndex_];
      }

      [v16 setStatementId_];

      v20 = v16;
      v21 = sub_20E322860();
      [v20 setToolId_];
    }

    sub_20E067494(v11, type metadata accessor for TranscriptProtoClientAction);
  }

  return v12;
}

uint64_t sub_20E067430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoClientAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E067494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E0674F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D57F60]) init];
  sub_20E067630(a1, v4);
  v6 = type metadata accessor for ToolKitProtoQuery(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_20E0676A0(v4);
    goto LABEL_7;
  }

  v7 = *v4;
  sub_20E067708(v4);
  if (!v7)
  {
LABEL_7:
    if (v5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    return v5;
  }

  if (v7 != 1)
  {
    if (!v5)
    {
      return v5;
    }

    v8 = 2;
    goto LABEL_9;
  }

  if (v5)
  {
    v8 = 1;
LABEL_9:
    [v5 setSortOrder_];
  }

  return v5;
}