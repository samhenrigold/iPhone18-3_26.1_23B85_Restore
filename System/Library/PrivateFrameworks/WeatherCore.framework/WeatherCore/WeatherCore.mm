uint64_t type metadata accessor for AppConfiguration(uint64_t a1)
{
  result = qword_1EDB7F200;
  if (!qword_1EDB7F200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9460BBC(uint64_t a1)
{
  sub_1C96A4A54();
  if (v1 <= 0x3F)
  {
    sub_1C9460DE8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocationsConfiguration(319);
      if (v3 <= 0x3F)
      {
        sub_1C9461074(319, &qword_1EDB7CEC8, &type metadata for NamedNetworkConfiguration);
        if (v4 <= 0x3F)
        {
          sub_1C9461074(319, &qword_1EDB7CED8, &type metadata for LanguageConfiguration);
          if (v5 <= 0x3F)
          {
            sub_1C9461074(319, &qword_1EDB7CE20, MEMORY[0x1E69E7360]);
            if (v6 <= 0x3F)
            {
              sub_1C9461074(319, &qword_1EDB7CE38, MEMORY[0x1E69E72F0]);
              if (v7 <= 0x3F)
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

void sub_1C9460DE8(uint64_t a1)
{
  if (!qword_1EDB7CEE8)
  {
    type metadata accessor for EndpointConfiguration(255);
    v1 = sub_1C96A7344();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB7CEE8);
    }
  }
}

uint64_t type metadata accessor for EndpointConfiguration(uint64_t a1)
{
  result = qword_1EDB7E3E0;
  if (!qword_1EDB7E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9460E8C(uint64_t a1)
{
  v1 = sub_1C96A4764();
  if (v2 <= 0x3F)
  {
    sub_1C9460F40(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_1C9460F40(uint64_t a1)
{
  if (!qword_1EDB7FD70)
  {
    sub_1C96A4764();
    v1 = sub_1C96A7934();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB7FD70);
    }
  }
}

uint64_t type metadata accessor for LocationsConfiguration(uint64_t a1)
{
  result = qword_1EDB7E098;
  if (!qword_1EDB7E098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9460FE4(uint64_t a1)
{
  result = sub_1C96A4764();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C9461074(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C96A7344();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for SavedLocation(uint64_t a1)
{
  result = qword_1EDB7A248;
  if (!qword_1EDB7A248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C946110C(uint64_t a1)
{
  result = type metadata accessor for Location(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Location(uint64_t a1)
{
  result = qword_1EDB7FE80;
  if (!qword_1EDB7FE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94611C0(uint64_t a1)
{
  sub_1C96A4DF4();
  if (v1 <= 0x3F)
  {
    sub_1C96162DC(319, &qword_1EDB80050, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1C9461318();
      if (v3 <= 0x3F)
      {
        sub_1C96162DC(319, &qword_1EDB7FDA8, sub_1C94B7264);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C94612C0(uint64_t a1)
{
  if (!qword_1EDB80050)
  {
    sub_1C96A4A54();
    v1 = sub_1C96A7934();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB80050);
    }
  }
}

void sub_1C9461318()
{
  if (!qword_1EDB7FDC0)
  {
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7FDC0);
    }
  }
}

uint64_t type metadata accessor for LocationOfInterest(uint64_t a1)
{
  result = qword_1EDB7C308;
  if (!qword_1EDB7C308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94613B4(uint64_t a1)
{
  type metadata accessor for Location(319);
  if (v1 <= 0x3F)
  {
    sub_1C9461318();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CurrentLocation(uint64_t a1)
{
  result = qword_1EDB79F58;
  if (!qword_1EDB79F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C94614BC(uint64_t a1)
{
  result = type metadata accessor for Location(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C9461550(uint64_t a1)
{
  sub_1C9566898(319, &unk_1EDB79F70, type metadata accessor for CurrentLocation);
  if (v1 <= 0x3F)
  {
    sub_1C9566898(319, &qword_1EDB7A270, type metadata accessor for SavedLocation);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1C946162C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69D6218];

  return sub_1C9469CB4(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_26()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  sub_1C950B5B8(va, 0, a1);
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return sub_1C96A7D44();
}

void OUTLINED_FUNCTION_40()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x1EEE44048](v4, a2, a3, 0);
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_1C96A4F34();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return type metadata accessor for PrecipitationNotificationLocalizationToken(0);
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return sub_1C9489990();
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A4F44();
}

void OUTLINED_FUNCTION_3_37()
{
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A3E24();
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_1C96A4BD4();
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return sub_1C96A4C14();
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

void OUTLINED_FUNCTION_3_46()
{

  JUMPOUT(0x1CCA8CB00);
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_3_53()
{

  return sub_1C9489AF8(v1, v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_3_57@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = a1;
  *&v10 = v1;
  *(&v10 + 1) = v3;
  *&v11 = v5;
  *(&v11 + 1) = v6;
  *(v4 + 40) = v11;
  *(v4 + 24) = v10;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  return v9 + 40;
}

void *OUTLINED_FUNCTION_3_58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[7] = a2;
  result[8] = v2;
  result[4] = v3;
  result[12] = a2;
  result[13] = v2;
  result[9] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_64(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C96A7144();
}

uint64_t OUTLINED_FUNCTION_3_65()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_3_66()
{
  *v1 = v4;
  *(v1 + 8) = v3;
  v8 = *(v5 - 168);
  *(v1 + 16) = *(v5 - 160);
  *(v1 + 24) = v2;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = *(v5 - 252);
  v9 = *(v5 - 248);
  *(v1 + 56) = *(v5 - 240);
  *(v1 + 64) = v9;
  v10 = (v1 + v0[6]);
  v11 = *(v5 - 72);
  *v10 = v8;
  v10[1] = v11;
  v12 = (v1 + v0[8]);
  v13 = *(v5 - 184);
  *v12 = *(v5 - 176);
  v12[1] = v13;
  v14 = (v1 + v0[9]);
  v15 = *(v5 - 200);
  *v14 = *(v5 - 192);
  v14[1] = v15;
  v16 = (v1 + v0[10]);
  v17 = *(v5 - 216);
  *v16 = *(v5 - 208);
  v16[1] = v17;
  v18 = (v1 + v0[11]);
  v19 = *(v5 - 232);
  *v18 = *(v5 - 224);
  v18[1] = v19;
}

uint64_t sub_1C9462084(uint64_t a1)
{
  result = type metadata accessor for Location(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Assembly.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57E0, &qword_1C96B05E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C96AC330;
  v3 = type metadata accessor for AutomationAssembly();
  v4 = OUTLINED_FUNCTION_0_34(v3);
  *(v2 + 56) = v1;
  *(v2 + 64) = sub_1C946307C(&qword_1EDB7EBB0, type metadata accessor for AutomationAssembly, &unk_1C96C3544);
  *(v2 + 32) = v4;
  v5 = type metadata accessor for ManagerAssembly();
  v6 = OUTLINED_FUNCTION_0_34(v5);
  *(v2 + 96) = v1;
  *(v2 + 104) = sub_1C946307C(&unk_1EDB7F4B8, type metadata accessor for ManagerAssembly, &unk_1C96C4204);
  *(v2 + 72) = v6;
  v7 = type metadata accessor for MonitorAssembly();
  v8 = OUTLINED_FUNCTION_0_34(v7);
  *(v2 + 136) = v1;
  *(v2 + 144) = sub_1C946307C(qword_1EDB7F370, type metadata accessor for MonitorAssembly, &unk_1C96BE5B4);
  *(v2 + 112) = v8;
  v9 = type metadata accessor for ServiceAssembly();
  v10 = OUTLINED_FUNCTION_0_34(v9);
  *(v2 + 176) = v1;
  *(v2 + 184) = sub_1C946307C(qword_1EDB7F2D0, type metadata accessor for ServiceAssembly, &unk_1C96AC47C);
  *(v2 + 152) = v10;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_1C96A5084();
}

__n128 OUTLINED_FUNCTION_0_5()
{
  v2 = *(v0 + 32);
  *(v1 - 160) = *(v0 + 16);
  *(v1 - 144) = v2;
  result = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 - 128) = result;
  *(v1 - 112) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return sub_1C96A50E4();
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C96A7BA4();
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_1(unint64_t *a1)
{
  v2 = MEMORY[0x1E6968090];

  return sub_1C955D018(a1, v2);
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return sub_1C9495F48();
}

uint64_t OUTLINED_FUNCTION_0_47(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_48(uint64_t a1, uint64_t a2)
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_0_49(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_52(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_54(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_71(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return sub_1C96A4A14();
}

uint64_t OUTLINED_FUNCTION_0_75(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_76(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_79(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_83()
{

  return sub_1C9499C50(v0, type metadata accessor for LocationsConfiguration);
}

uint64_t OUTLINED_FUNCTION_0_87(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C96A7544();
}

uint64_t OUTLINED_FUNCTION_0_88(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_89(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_91(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_93(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_94(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_95(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C74();
}

char *OUTLINED_FUNCTION_0_96@<X0>(unint64_t a1@<X8>)
{

  return sub_1C94B6C6C((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_0_97(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  return v3;
}

uint64_t OUTLINED_FUNCTION_0_100()
{

  return sub_1C94B37E0(v0, type metadata accessor for UserIdentity);
}

uint64_t OUTLINED_FUNCTION_0_101(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_108(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_109()
{

  return sub_1C96A7004();
}

uint64_t OUTLINED_FUNCTION_0_111(uint64_t a1)
{

  return sub_1C96A78B4();
}

uint64_t OUTLINED_FUNCTION_0_112(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_0_113()
{

  return sub_1C96A79E4();
}

_OWORD *sub_1C946306C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C946307C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9463174(uint64_t a1)
{
  v2 = sub_1C96A57B4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A5594();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = a1;
  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for AutomationDataService();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  v28 = *MEMORY[0x1E69D6AD0];
  v14 = *(v10 + 104);
  v29 = v10 + 104;
  v30 = v14;
  (v14)(v13);
  sub_1C96A5064();

  v15 = *(v10 + 8);
  v27[1] = v10 + 8;
  v31 = v15;
  v16 = OUTLINED_FUNCTION_38();
  v17(v16);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B90, &unk_1C96C3570);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  v18 = *(v4 + 104);
  v18(v7, *MEMORY[0x1E69D6BE8], v2);
  sub_1C96A5034();

  v19 = *(v4 + 8);
  v19(v7, v2);
  v18(v7, *MEMORY[0x1E69D6BF0], v2);
  sub_1C96A5034();

  v19(v7, v2);
  v20 = v28;
  v21 = v30;
  v30(v13, v28, v8);
  sub_1C96A5064();

  v22 = OUTLINED_FUNCTION_38();
  v31(v22);
  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for StubPPTWeatherDataManager();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for StubPPTSavedLocationsManager();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  v21(v13, v20, v8);
  sub_1C96A5064();

  v23 = OUTLINED_FUNCTION_38();
  v24 = v31;
  v31(v23);
  sub_1C96A5334();
  OUTLINED_FUNCTION_58();
  type metadata accessor for StubPPTSavedSingleLocationManager();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  v21(v13, v20, v8);
  sub_1C96A5064();

  v25 = OUTLINED_FUNCTION_38();
  return v24(v25);
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_1C96A5084();
}

uint64_t OUTLINED_FUNCTION_16_0()
{
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{

  return sub_1C96A7D44();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return sub_1C948E888(v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_1_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_33(uint64_t a1)
{

  return sub_1C96A7D44();
}

void OUTLINED_FUNCTION_1_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_1_36(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = 1752392040;
  *(result + 12) = 2049;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_48(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_54@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);

  return sub_1C9499B10(v3);
}

void OUTLINED_FUNCTION_1_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_1_59(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_66()
{

  return sub_1C96A50E4();
}

uint64_t OUTLINED_FUNCTION_1_68(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7D14();
}

char *OUTLINED_FUNCTION_1_69()
{

  return sub_1C94B6C6C(0, v0, 0);
}

id OUTLINED_FUNCTION_1_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14)
{

  return sub_1C963D3EC(0xD000000000000015, a2, a3, v16 | 0x8000000000000000, v17, v15, v18, a8, v14, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_1_80(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_1_82(uint64_t a1)
{

  return sub_1C96A78B4();
}

uint64_t OUTLINED_FUNCTION_1_83()
{

  return sub_1C96A5544();
}

uint64_t OUTLINED_FUNCTION_1_86()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_1_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_14_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_82_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1 + 24);

  return __swift_project_boxed_opaque_existential_1((a1 + v1), v3);
}

void OUTLINED_FUNCTION_38_0()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_43_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1C94C4364(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_43_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

BOOL OUTLINED_FUNCTION_43_5()
{

  return os_log_type_enabled(v1, v0);
}

BOOL OUTLINED_FUNCTION_21(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_43_12()
{
  result = v1;
  *(v2 - 312) = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_43_14()
{
  *(v7 - 144) = v5;
  *(v7 - 136) = v1;
  *(v7 - 128) = v4;
  *(v7 - 120) = v0;
  *(v7 - 112) = v6;
  *(v7 - 104) = v3;
  *(v7 - 96) = v2;
}

void *OUTLINED_FUNCTION_28_0(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x48uLL);
}

uint64_t sub_1C9464160(uint64_t a1)
{
  sub_1C96A52C4();
  OUTLINED_FUNCTION_1();
  v100 = v3;
  v101 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_37_0();
  v99 = v4;
  OUTLINED_FUNCTION_15_4();
  sub_1C96A57B4();
  OUTLINED_FUNCTION_1();
  v112 = v5;
  v113 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37_0();
  v111 = v7;
  OUTLINED_FUNCTION_15_4();
  v8 = sub_1C96A5594();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5334();
  v98[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5070, &qword_1C96AC510);
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v14 = *MEMORY[0x1E69D6AD0];
  v16 = v10 + 104;
  v15 = *(v10 + 104);
  v17 = OUTLINED_FUNCTION_7_48();
  v15(v17);
  OUTLINED_FUNCTION_12_38();

  v18 = *(v10 + 8);
  v19 = OUTLINED_FUNCTION_41_0();
  v18(v19);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D40, &qword_1C96C4230);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v20 = OUTLINED_FUNCTION_7_48();
  v15(v20);
  OUTLINED_FUNCTION_12_38();

  v21 = OUTLINED_FUNCTION_41_0();
  v18(v21);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D48, &qword_1C96C4238);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v22 = OUTLINED_FUNCTION_7_48();
  v15(v22);
  OUTLINED_FUNCTION_12_38();

  v23 = OUTLINED_FUNCTION_41_0();
  v18(v23);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D50, &qword_1C96C4240);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v104 = v14;
  (v15)(v13, v14, v8);
  v110 = v15;
  OUTLINED_FUNCTION_12_38();

  v24 = OUTLINED_FUNCTION_41_0();
  v18(v24);
  v103 = v18;
  v105 = v10 + 8;
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D58, &qword_1C96C4248);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_13_42();
  v25 = OUTLINED_FUNCTION_7_48();
  v15(v25);
  OUTLINED_FUNCTION_12_38();

  v26 = OUTLINED_FUNCTION_41_0();
  v18(v26);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D60, &qword_1C96C4250);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  v102 = a1;
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5360, &qword_1C96AD9E8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5488, &qword_1C96ADC58);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v106 = *MEMORY[0x1E69D6BF0];
  v27 = v112;
  v28 = v113;
  v107 = *(v113 + 104);
  v108 = v113 + 104;
  v29 = v111;
  v107(v111);
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v109 = *(v28 + 8);
  v113 = v28 + 8;
  v109(v29, v27);
  v30 = v104;
  v31 = v110;
  (v110)(v13, v104, v8);
  sub_1C96A5064();

  v32 = OUTLINED_FUNCTION_41_0();
  v33 = v103;
  v103(v32);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D68, &qword_1C96C4258);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  (v31)(v13, v30, v8);
  v34 = v16;
  OUTLINED_FUNCTION_10_43();

  v33(v13, v8);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5078, &qword_1C96AC518);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D70, &qword_1C96C4260);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v35 = v111;
  v36 = v112;
  (v107)(v111, v106, v112);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v109(v35, v36);
  v37 = v104;
  v98[1] = v34;
  v38 = v110;
  (v110)(v13, v104, v8);
  sub_1C96A5064();

  v39 = v103;
  (v103)(v13, v8);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D78, &qword_1C96C4268);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v98[0] = v8;
  (v38)(v13, v37, v8);
  OUTLINED_FUNCTION_10_43();

  v39(v13, v8);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D80, &qword_1C96C4270);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v40 = v111;
  v41 = v112;
  v42 = v107;
  (v107)(v111, *MEMORY[0x1E69D6BE8], v112);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v43 = v109;
  v109(v40, v41);
  (v42)(v40, v106, v41);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_9_42();
  v43(v40, v41);
  v44 = v98[0];
  v45 = v110;
  (v110)(v13, v104, v98[0]);
  OUTLINED_FUNCTION_10_43();

  v46 = OUTLINED_FUNCTION_41_0();
  v47 = v103;
  v103(v46);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D88, &qword_1C96C4278);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v48 = OUTLINED_FUNCTION_3_54();
  v45(v48);
  OUTLINED_FUNCTION_10_43();

  v49 = OUTLINED_FUNCTION_41_0();
  v47(v49);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D90, &qword_1C96C4280);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v50 = OUTLINED_FUNCTION_3_54();
  v45(v50);
  OUTLINED_FUNCTION_10_43();

  v51 = OUTLINED_FUNCTION_41_0();
  v47(v51);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D98, &qword_1C96C4288);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v52 = OUTLINED_FUNCTION_3_54();
  v45(v52);
  OUTLINED_FUNCTION_10_43();

  v53 = OUTLINED_FUNCTION_41_0();
  v47(v53);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5088, &qword_1C96AC528);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  v54 = OUTLINED_FUNCTION_3_54();
  v110(v54);
  sub_1C96A5064();

  v55 = OUTLINED_FUNCTION_41_0();
  v47(v55);
  v56 = v47;
  sub_1C96A5334();
  sub_1C96A5484();

  v57 = OUTLINED_FUNCTION_3_54();
  v58 = v110;
  v110(v57);
  sub_1C96A5064();

  v59 = OUTLINED_FUNCTION_41_0();
  v56(v59);
  sub_1C96A5334();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v60 = OUTLINED_FUNCTION_3_54();
  v58(v60);
  OUTLINED_FUNCTION_10_43();

  v61 = OUTLINED_FUNCTION_41_0();
  v56(v61);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA0, &qword_1C96C4290);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v62 = OUTLINED_FUNCTION_3_54();
  v58(v62);
  OUTLINED_FUNCTION_10_43();

  v63 = OUTLINED_FUNCTION_41_0();
  v56(v63);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA8, &qword_1C96C4298);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v64 = OUTLINED_FUNCTION_3_54();
  v58(v64);
  OUTLINED_FUNCTION_10_43();

  v65 = OUTLINED_FUNCTION_41_0();
  v56(v65);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DB0, &qword_1C96C42A0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v66 = OUTLINED_FUNCTION_3_54();
  v58(v66);
  OUTLINED_FUNCTION_10_43();

  v67 = OUTLINED_FUNCTION_41_0();
  v56(v67);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DB8, &qword_1C96C42A8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v68 = OUTLINED_FUNCTION_3_54();
  v58(v68);
  OUTLINED_FUNCTION_10_43();

  v69 = OUTLINED_FUNCTION_41_0();
  v56(v69);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DC0, &qword_1C96C42B0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DC8, &qword_1C96C42B8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DD0, &qword_1C96C42C0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v70 = OUTLINED_FUNCTION_11_40();
  v71(v70);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();
  OUTLINED_FUNCTION_15_36();
  v72 = OUTLINED_FUNCTION_14_35();
  v73(v72);
  (v58)(v13, v104, v44);
  sub_1C96A5064();

  v74 = OUTLINED_FUNCTION_41_0();
  v75 = v103;
  v103(v74);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DD8, &qword_1C96C42C8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5190, &qword_1C96AD2B8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v76 = OUTLINED_FUNCTION_3_54();
  v58(v76);
  OUTLINED_FUNCTION_10_43();

  v77 = OUTLINED_FUNCTION_41_0();
  v75(v77);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DE0, &qword_1C96C42D0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DE8, &qword_1C96C42D8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v78 = OUTLINED_FUNCTION_3_54();
  v58(v78);
  OUTLINED_FUNCTION_10_43();

  v79 = OUTLINED_FUNCTION_41_0();
  v75(v79);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DF0, &qword_1C96C42E0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DF8, &qword_1C96C42E8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v80 = OUTLINED_FUNCTION_3_54();
  v58(v80);
  OUTLINED_FUNCTION_10_43();

  v81 = OUTLINED_FUNCTION_41_0();
  v75(v81);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5490, &unk_1C96ADC70);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v82 = OUTLINED_FUNCTION_3_54();
  v58(v82);
  OUTLINED_FUNCTION_10_43();

  v83 = OUTLINED_FUNCTION_41_0();
  v75(v83);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E00, &qword_1C96C42F0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E08, &qword_1C96C42F8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  type metadata accessor for NotificationStore();
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E10, &qword_1C96C4300);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v84 = OUTLINED_FUNCTION_3_54();
  v58(v84);
  OUTLINED_FUNCTION_10_43();

  v85 = OUTLINED_FUNCTION_41_0();
  v75(v85);
  sub_1C96A5334();
  sub_1C946B5D0(0, &qword_1EDB7CD98, off_1E833FA20);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5474();
  OUTLINED_FUNCTION_9_42();
  v86 = OUTLINED_FUNCTION_3_54();
  v58(v86);
  OUTLINED_FUNCTION_10_43();

  v87 = OUTLINED_FUNCTION_41_0();
  v75(v87);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E18, &qword_1C96C4308);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v88 = OUTLINED_FUNCTION_3_54();
  v58(v88);
  OUTLINED_FUNCTION_10_43();

  v89 = OUTLINED_FUNCTION_41_0();
  v75(v89);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E20, &qword_1C96C4310);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E28, &qword_1C96C4318);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_9_42();
  v90 = OUTLINED_FUNCTION_11_40();
  v91(v90);
  OUTLINED_FUNCTION_6_55();
  sub_1C96A5034();

  v92 = OUTLINED_FUNCTION_14_35();
  v93(v92);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E30, &qword_1C96C4320);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E38, &qword_1C96C4328);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E40, &qword_1C96C4330);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5344();
  sub_1C96A5464();

  sub_1C96A5354();
  __swift_project_boxed_opaque_existential_1(v114, v114[3]);
  v95 = v99;
  v94 = v100;
  v96 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x1E69D6500], v101);
  sub_1C96A54F4();
  (*(v94 + 8))(v95, v96);
  return __swift_destroy_boxed_opaque_existential_1Tm(v114);
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_1C96A5714();
}

uint64_t OUTLINED_FUNCTION_15_11(uint64_t a1)
{

  return sub_1C96A6F94();
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_15_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return sub_1C96A4DF4();
}

uint64_t OUTLINED_FUNCTION_15_26()
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v1);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_15_27()
{
}

uint64_t OUTLINED_FUNCTION_15_33(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C96A7B54();
}

uint64_t OUTLINED_FUNCTION_15_36()
{
}

void OUTLINED_FUNCTION_15_37()
{

  sub_1C94FBB88();
}

uint64_t OUTLINED_FUNCTION_15_39()
{

  return sub_1C948EBA4(v0, type metadata accessor for LocationDataModel);
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C96A62D4();
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return sub_1C96A5064();
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_31(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

void OUTLINED_FUNCTION_6_15(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE500000000000000, v4, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_1C96A4DF4();
}

void OUTLINED_FUNCTION_6_17()
{

  os_unfair_lock_lock(v0 + 6);
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_19(unint64_t *a1)
{
  v2 = MEMORY[0x1E6968088];

  return sub_1C955D018(a1, v2);
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return sub_1C9489990();
}

uint64_t OUTLINED_FUNCTION_6_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_6_31(uint64_t a1, uint64_t a2)
{

  return sub_1C95933D4();
}

uint64_t OUTLINED_FUNCTION_6_34(unint64_t *a1)
{

  return sub_1C94892C0(a1, &protocol conformance descriptor for Location);
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return type metadata accessor for Location(0);
}

void OUTLINED_FUNCTION_39_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

double OUTLINED_FUNCTION_6_43()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_46@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_1C96A7C44();
}

void OUTLINED_FUNCTION_6_48()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_6_49()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_6_51()
{
}

uint64_t OUTLINED_FUNCTION_6_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

unint64_t OUTLINED_FUNCTION_6_54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    return a9;
  }

  else
  {
    return v10;
  }
}

unint64_t OUTLINED_FUNCTION_6_60(float a1)
{
  *v3 = a1;
  *(v3 + 4) = 1752392040;
  *(v3 + 12) = 2081;

  return sub_1C9484164(v2, v1, (v4 - 136));
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

void OUTLINED_FUNCTION_11_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_41(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v19 + *(a1 + 44)) = 0;
  *v19 = v18;
  *(v19 + 8) = v16;
  *(v19 + 16) = a15;
  *(v19 + 24) = v17;
  *(v19 + 32) = v21;
  *(v19 + 40) = v20;
  *(v19 + 48) = v15;
  *(v19 + 56) = a13;
  *(v19 + 64) = a12;
  return v19 + *(a1 + 20);
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2)
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{

  return sub_1C96A78B4();
}

uint64_t OUTLINED_FUNCTION_11_13(uint64_t a1)
{

  return sub_1C96A7DB4();
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_11_17(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return MEMORY[0x1EEE45510](v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_11_20()
{

  return sub_1C96A7924();
}

uint64_t OUTLINED_FUNCTION_11_25@<X0>(unint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  a2.n128_u64[0] = *v2;
  v5[10] = a2;
  a2.n128_u64[0] = *a1;
  v5[8] = a2;
  a2.n128_u64[0] = *v4;
  v5[11] = a2;
  a2.n128_u64[0] = *v3;
  v5[9] = a2;

  return sub_1C96A66B4();
}

uint64_t OUTLINED_FUNCTION_11_30()
{
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return sub_1C96A53C4();
}

double OUTLINED_FUNCTION_11_32()
{

  *&result = *&CLLocationCoordinate2DMake(v1, v2);
  return result;
}

void OUTLINED_FUNCTION_12_5()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_11_35()
{

  return sub_1C96A5504();
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_42()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return swift_arrayInitWithCopy();
}

BOOL OUTLINED_FUNCTION_14_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_14_11(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return sub_1C948F150(v1, v0);
}

id OUTLINED_FUNCTION_14_14@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return sub_1C96A53C4();
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_1C96A4F24();
}

uint64_t OUTLINED_FUNCTION_14_23()
{

  return sub_1C96A4314();
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return sub_1C95F5B4C(v0, type metadata accessor for DarwinNotifications);
}

_OWORD *OUTLINED_FUNCTION_14_26()
{

  return sub_1C946306C((v0 - 112), (v0 - 144));
}

void OUTLINED_FUNCTION_14_28()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_14_31()
{

  return type metadata accessor for SyncedData(0);
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return type metadata accessor for PrecipitationNotification(0);
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_14_37(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_14_39()
{

  return sub_1C96A7DE4();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C9466CF8()
{
  v0 = sub_1C96A5594();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5080, &qword_1C96AC520);
  sub_1C96A5484();

  (*(v1 + 104))(v3, *MEMORY[0x1E69D6AD0], v0);
  sub_1C96A5064();

  return (*(v1 + 8))(v3, v0);
}

void sub_1C9466EA8(uint64_t a1)
{
  if (!qword_1EDB7D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A6380, &qword_1C96BFFF0);
    v1 = sub_1C96A7934();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB7D080);
    }
  }
}

uint64_t *sub_1C9466F0C@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5010, &qword_1C96AC4B0);
  result = sub_1C96A5274();
  if (!v11[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5030, &qword_1C96AC4D0);
  result = sub_1C96A5274();
  if (!v10[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5020, &qword_1C96AC4C0);
  result = sub_1C96A5274();
  if (v9)
  {
    type metadata accessor for AppConfigurationRemoteSettingsProvider();
    v5 = swift_allocObject();
    *(v5 + 56) = 7;
    sub_1C94670AC(&v8, v5 + 16);
    type metadata accessor for AppConfigurationService();
    v6 = swift_allocObject();
    v7 = sub_1C946FE0C(v11, v10, v5, v6);
    result = sub_1C9470218(&qword_1EDB7DF60, type metadata accessor for AppConfigurationService, &protocol conformance descriptor for AppConfigurationService);
    *a2 = v7;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C94670AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C94670C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubAppConfigurationDataService();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xD000000000001184;
  *(result + 32) = 0x80000001C96CCAF0;
  a1[3] = v2;
  a1[4] = &protocol witness table for StubAppConfigurationDataService;
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_0()
{
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_1C96A6224();
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  v2 = *(v0 + 96);
  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  v5 = *(v2 + 272);
  v6 = *(v2 + 280);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  v7 = *(v2 + 288);
  *(v2 + 288) = 0x80;

  return sub_1C94AF5A0(v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2)
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return sub_1C96A5134();
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return sub_1C96A7F04();
}

uint64_t OUTLINED_FUNCTION_13_23()
{
  v2 = *(v0 - 80);
  *(v0 - 128) = *(v0 - 96);
  *(v0 - 112) = v2;

  return sub_1C96A62A4();
}

uint64_t OUTLINED_FUNCTION_13_24()
{

  return sub_1C948E940(v0, type metadata accessor for CurrentLocation);
}

uint64_t OUTLINED_FUNCTION_13_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_13_27()
{
}

uint64_t OUTLINED_FUNCTION_13_28(uint64_t a1)
{

  return sub_1C96A6BE4();
}

uint64_t OUTLINED_FUNCTION_13_32()
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

_OWORD *OUTLINED_FUNCTION_13_33()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C946306C(v4, (v2 - 144));
}

BOOL OUTLINED_FUNCTION_13_34()
{

  return sub_1C94CF63C();
}

uint64_t OUTLINED_FUNCTION_13_39(uint64_t a1, uint64_t a2)
{

  return sub_1C96A72C4();
}

uint64_t OUTLINED_FUNCTION_13_42()
{
}

uint64_t OUTLINED_FUNCTION_13_43()
{

  return LegacyNotificationSubscriptionManager.subscription(with:)(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_13_45(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7CD4();
}

uint64_t OUTLINED_FUNCTION_13_46(uint64_t a1, uint64_t a2)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_13_47@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 40 * a1);
  v5 = *v3;
  result = v3[1];
  *(v2 + 184) = result;
  v6 = v3[2];
  v7 = v3[3];
  *(v2 + 192) = v7;
  LOWORD(v3) = *(v3 + 16);
  *(v2 + 16) = v5;
  *(v2 + 24) = result;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;
  *(v2 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_5@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_1C9470AFC(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_7()
{
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1)
{

  return sub_1C9470AFC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_1C96A61C4();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_12_12(unsigned int a1)
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return sub_1C948CC3C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_1C96A5554();
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return sub_1C96A7F04();
}

uint64_t OUTLINED_FUNCTION_12_24(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C04();
}

void OUTLINED_FUNCTION_12_37(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(a1 + 80) = a2;
  *(a1 + 96) = a4;
  *(a1 + 112) = a3;
  *(a1 + 128) = 0x401C000000000000;
  *(a1 + 136) = 0;
  *(a1 + 137) = 33686018;
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_1C96A5064();
}

uint64_t OUTLINED_FUNCTION_12_39()
{

  return sub_1C948EAF4(v0, type metadata accessor for LocationModel);
}

void OUTLINED_FUNCTION_12_40()
{
  *(v0 + 12) = 2160;
  *(v0 + 14) = 1752392040;
  *(v0 + 22) = 2081;
}

uint64_t OUTLINED_FUNCTION_12_44()
{

  return sub_1C9484328(v0, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return sub_1C954BFB8();
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return sub_1C96A51A4();
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_31_10(char a1@<W8>)
{
  v4 = 0;
  *(v1 + 544) = 0u;
  *(v1 + 560) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 528) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 576) = a1;
  v5 = 0;

  WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)((v2 - 240), (v1 + 496), 2, *(&v5 - 8));
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_9_12(float a1)
{
  *v2 = a1;
  *(v2 + 4) = 1752392040;
  *(v2 + 12) = 2113;

  return v1;
}

void OUTLINED_FUNCTION_9_13(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE800000000000000, v4, v3, a2, a3);
}

BOOL OUTLINED_FUNCTION_9_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_9_20@<X0>(uint64_t a1@<X8>, uint64_t (*a2)(void)@<X2>)
{

  return sub_1C9573A60(v3 + a1, v2, a2);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_28()
{
}

uint64_t OUTLINED_FUNCTION_9_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return sub_1C96A6254();
}

double OUTLINED_FUNCTION_9_37@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  *(v2 - 256) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_42()
{
}

uint64_t OUTLINED_FUNCTION_9_44(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A4F44();
}

double OUTLINED_FUNCTION_9_47(uint64_t a1)
{

  return sub_1C94FA584(a1, 0xE800000000000000, v1);
}

uint64_t sub_1C946829C(uint64_t a1)
{
  v2 = sub_1C96A5594();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = a1;
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5008, &qword_1C96AC4A8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v35 = *MEMORY[0x1E69D6AD0];
  v34 = *(v4 + 104);
  v34(v7);
  OUTLINED_FUNCTION_6_10();

  v8 = *(v4 + 8);
  v32[2] = v4 + 8;
  v33 = v8;
  v9 = OUTLINED_FUNCTION_2_14();
  v10(v9);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5010, &qword_1C96AC4B0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_7_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5018, &qword_1C96AC4B8);
  v11 = sub_1C96A57B4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = *(v14 + 72);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C96AB910;
  v18 = v17 + v16;
  v19 = *(v13 + 104);
  v19(v18, *MEMORY[0x1E69D6BE8], v11);
  v19(v18 + v15, *MEMORY[0x1E69D6BF0], v11);
  v19(v18 + 2 * v15, *MEMORY[0x1E69D6BF8], v11);
  sub_1C96A5044();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5020, &qword_1C96AC4C0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C68, &qword_1C96AADD0);
  OUTLINED_FUNCTION_3_5();
  sub_1C96A5054();
  OUTLINED_FUNCTION_7_10();
  v20 = v34;
  (v34)(v7, v35, v2);
  sub_1C96A5064();

  v21 = OUTLINED_FUNCTION_2_14();
  v22 = v33;
  v33(v21);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5028, &qword_1C96AC4C8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  type metadata accessor for ActiveUserService();
  OUTLINED_FUNCTION_3_5();
  sub_1C96A5054();
  OUTLINED_FUNCTION_7_10();
  v23 = OUTLINED_FUNCTION_1_14();
  v20(v23);
  sub_1C96A5064();

  v24 = OUTLINED_FUNCTION_2_14();
  v22(v24);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5030, &qword_1C96AC4D0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5038, &qword_1C96AC4D8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v25 = OUTLINED_FUNCTION_1_14();
  v20(v25);
  OUTLINED_FUNCTION_6_10();

  v26 = OUTLINED_FUNCTION_2_14();
  v22(v26);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5040, &qword_1C96AC4E0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v27 = OUTLINED_FUNCTION_1_14();
  v20(v27);
  OUTLINED_FUNCTION_6_10();

  v28 = OUTLINED_FUNCTION_2_14();
  v22(v28);
  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5048, &qword_1C96AC4E8);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();
  OUTLINED_FUNCTION_4_13();
  v29 = OUTLINED_FUNCTION_1_14();
  v20(v29);
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_7_10();
  v30 = OUTLINED_FUNCTION_2_14();
  v22(v30);
  type metadata accessor for GeocodeService(0);
  OUTLINED_FUNCTION_3_5();
  sub_1C96A5054();

  sub_1C96A5334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5050, &qword_1C96AC4F0);
  OUTLINED_FUNCTION_0_12();
  sub_1C96A5484();

  sub_1C96A5344();
  sub_1C96A5464();
}

size_t OUTLINED_FUNCTION_4_8(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_13()
{
}

uint64_t OUTLINED_FUNCTION_4_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{
  *(a1 + 8) = sub_1C9528190;
  *(v3 + 16) = v2;
  return v1 + 208;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A4F74();
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return type metadata accessor for Location(0);
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2)
{

  return sub_1C96A4534();
}

void OUTLINED_FUNCTION_4_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_37()
{
  v2 = *(v1 - 120);
  v3 = *(v1 - 112);
  __swift_project_boxed_opaque_existential_1((v1 - 144), v2);

  sub_1C956C79C(v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_4_39()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_4_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return sub_1C95F97C0(v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_4_50(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_4_51()
{

  return sub_1C96A7C84();
}

uint64_t OUTLINED_FUNCTION_4_55()
{

  return sub_1C96A7D74();
}

_WORD *OUTLINED_FUNCTION_4_58(_WORD *result)
{
  *(v2 - 144) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_60(unint64_t *a1)
{

  return sub_1C9633BA0(a1, &protocol conformance descriptor for EndpointConfiguration);
}

uint64_t OUTLINED_FUNCTION_4_64(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C04();
}

void OUTLINED_FUNCTION_4_65()
{

  JUMPOUT(0x1CCA8D8A0);
}

uint64_t OUTLINED_FUNCTION_4_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_4_67(uint64_t a1, unint64_t *a2)
{

  return sub_1C946B5D0(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_4_68(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_69()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_4_70()
{

  return sub_1C96A7EE4();
}

void sub_1C94690E0(uint64_t a1)
{
  sub_1C9466EA8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C94691E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PermanentURLFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for PermanentURLFactory;
  *a1 = result;
  return result;
}

void sub_1C946924C(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5038, &qword_1C96AC4D8);
  sub_1C96A5274();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5040, &qword_1C96AC4E0);
    sub_1C96A5274();
    if (v6)
    {
      v4 = type metadata accessor for IdentityService(0);
      swift_allocObject();
      IdentityService.init(keyValueStoreProvider:iCloudStatusProvider:)();
      a2[3] = v4;
      a2[4] = &protocol witness table for IdentityService;
      *a2 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C946934C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDB7D5B0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDB7D5B8;
  a1[3] = type metadata accessor for UbiquitousKeyValueStoreProvider();
  a1[4] = &protocol witness table for UbiquitousKeyValueStoreProvider;
  *a1 = v2;

  return sub_1C96A3D04();
}

uint64_t sub_1C94693D0()
{
  type metadata accessor for iCloudStatusProvider();
  inited = swift_initStaticObject();
  type metadata accessor for UbiquitousKeyValueStoreProvider();
  v1 = swift_allocObject();
  result = sub_1C9469470(inited, v1);
  qword_1EDB7D5B8 = result;
  return result;
}

uint64_t sub_1C9469470(uint64_t a1, uint64_t a2)
{
  v32 = sub_1C96A5174();
  MEMORY[0x1EEE9AC00](v32);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A65E4();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A7724();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v36[3] = type metadata accessor for iCloudStatusProvider();
  v36[4] = &protocol witness table for iCloudStatusProvider;
  v36[0] = a1;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(a2 + 16) = sub_1C96A5124();
  v13 = MEMORY[0x1E69E7CC0];
  *(a2 + 64) = MEMORY[0x1E69E7CC0];
  v14 = v13;
  sub_1C9469B6C(v36, a2 + 88);
  v28[1] = sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v35 = v14;
  v28[3] = sub_1C9469C18(&qword_1EDB7CDC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v28[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  v29 = MEMORY[0x1E69E6328];
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320, MEMORY[0x1E69E6328]);
  sub_1C96A79E4();
  sub_1C96A6594();
  v15 = sub_1C96A7714();
  v16 = *(v34 + 8);
  v34 += 8;
  v16(v8, v33);
  v17 = *(v30 + 8);
  v17(v11, v9);
  *(a2 + 72) = v15;
  sub_1C96A65D4();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1C96A79E4();
  v18 = sub_1C96A7714();
  v17(v11, v9);
  v16(v8, v33);
  *(a2 + 80) = v18;
  v19 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  sub_1C9469C18(&qword_1EDB7D098, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350, &qword_1C96AD9E0);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350, &qword_1C96AD9E0, v29);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6540, &qword_1C96B77E0);
  swift_allocObject();
  *(a2 + 40) = sub_1C96A5544();
  v35 = v19;
  sub_1C96A79E4();
  swift_allocObject();
  *(a2 + 32) = sub_1C96A5544();
  v35 = v19;
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6638, &qword_1C96B77E8);
  swift_allocObject();
  *(a2 + 24) = sub_1C96A5544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6640, &qword_1C96B77F0);
  swift_allocObject();
  v20 = sub_1C96A54E4();
  *(a2 + 48) = v20;
  *(a2 + 56) = 0;
  v21 = objc_opt_self();
  sub_1C96A3D04();
  v22 = [v21 defaultCenter];
  v23 = *MEMORY[0x1E696A9E8];
  sub_1C96A3D04();
  v24 = sub_1C9469CFC();
  [v22 addObserver:a2 selector:sel_handleLocationsChangedExternally_ name:v23 object:v24];

  v25 = [v21 defaultCenter];
  sub_1C96A3D04();
  v26 = sub_1C9469D80();
  [v25 addObserver:a2 selector:sel_migrateToEncryptedStoreIfNeededAndHandleLocationsChangedExternally_ name:v23 object:v26];

  sub_1C946BEF4(v20);

  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return a2;
}

uint64_t sub_1C9469B6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C9469BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9469C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9469C60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C9469CB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id sub_1C9469D3C@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t sub_1C9469E78@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for iCloudStatusProvider();
  result = swift_initStaticObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for iCloudStatusProvider;
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for IdentityService(uint64_t a1)
{
  result = qword_1EDB7C618;
  if (!qword_1EDB7C618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9469F0C(uint64_t a1)
{
  if (!qword_1EDB7F998[0])
  {
    type metadata accessor for UserIdentity(255);
    v1 = sub_1C96A7934();
    if (!v2)
    {
      atomic_store(v1, qword_1EDB7F998);
    }
  }
}

uint64_t type metadata accessor for UserIdentity(uint64_t a1)
{
  result = qword_1EDB7F9E0;
  if (!qword_1EDB7F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9469FB0(uint64_t a1)
{
  result = sub_1C96A4A54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void IdentityService.init(keyValueStoreProvider:iCloudStatusProvider:)()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v57 = v2;
  v55 = v3;
  v56 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v54 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v53 = v7 - v6;
  v50 = sub_1C96A6574();
  OUTLINED_FUNCTION_1();
  v49 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v11 - v10);
  sub_1C96A5174();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v14 - v13);
  v47 = sub_1C96A7754();
  OUTLINED_FUNCTION_1();
  v46 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v18 - v17);
  sub_1C96A7724();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6_36(v21 - v20);
  v52 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v51 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  v26 = v25 - v24;
  v27 = sub_1C96A5114();
  v28 = OUTLINED_FUNCTION_7(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB7CDE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_1EDB7CDE8;
  *(v0 + 16) = qword_1EDB7CDE8;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v30 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lastKnownIdentity;
  v31 = type metadata accessor for UserIdentity(0);
  __swift_storeEnumTagSinglePayload(v0 + v30, 1, 1, v31);
  v32 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService_observers) = MEMORY[0x1E69E7CC0];
  v33 = v32;
  v34 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lock;
  v35 = v29;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v0 + v34) = sub_1C96A5124();
  v36 = OBJC_IVAR____TtC11WeatherCore15IdentityService_notifyQueue;
  sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  sub_1C96A6594();
  v58[0] = v33;
  sub_1C946F8C0(&qword_1EDB7CDC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  v37 = MEMORY[0x1E69E6328];
  v44 = MEMORY[0x1E69E6328];
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320, MEMORY[0x1E69E6328]);
  sub_1C96A79E4();
  (*(v46 + 104))(v45, *MEMORY[0x1E69E8090], v47);
  *(v0 + v36) = sub_1C96A7784();
  v38 = OBJC_IVAR____TtC11WeatherCore15IdentityService_appUpgradeKvsMigrator;
  type metadata accessor for AppUpgradeKeyValueStoreMigrator();
  swift_allocObject();
  *(v0 + v38) = sub_1C946C868();
  *(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService____lazy_storage___unencryptedStore) = 0;
  v39 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lazyUnencryptedStore;
  sub_1C946F8C0(&qword_1EDB7D098, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350, &qword_1C96AD9E0);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350, &qword_1C96AD9E0, v37);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6540, &qword_1C96B77E0);
  swift_allocObject();
  *(v0 + v39) = sub_1C96A5544();
  *(v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService____lazy_storage___encryptedStore) = 0;
  v40 = OBJC_IVAR____TtC11WeatherCore15IdentityService_lazyEncryptedStore;
  v58[0] = MEMORY[0x1E69E7CC0];
  sub_1C96A79E4();
  swift_allocObject();
  *(v0 + v40) = sub_1C96A5544();
  sub_1C9469B6C(v57, v0 + OBJC_IVAR____TtC11WeatherCore15IdentityService_iCloudStatusProvider);
  (*(v49 + 104))(v48, *MEMORY[0x1E69E7FA0], v50);
  v41 = sub_1C96A7794();
  (*(v49 + 8))(v48, v50);
  sub_1C9469B6C(v55, v59);
  v42 = swift_allocObject();
  *(v42 + 16) = v1;
  sub_1C94670AC(v59, v42 + 24);
  v58[4] = sub_1C946FE00;
  v58[5] = v42;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 1107296256;
  v58[2] = sub_1C946FCF8;
  v58[3] = &block_descriptor_9;
  v43 = _Block_copy(v58);
  sub_1C96A3D04();
  sub_1C96A6594();
  sub_1C946F8C0(&qword_1EDB7CF40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, v44);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v26, v53, v43);
  _Block_release(v43);

  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  (*(v54 + 8))(v53, v56);
  (*(v51 + 8))(v26, v52);

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C946A920()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C946A960()
{
  v0 = objc_opt_self();
  OUTLINED_FUNCTION_1_43();
  v1 = sub_1C96A7004();
  v2 = [v0 wc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_1EDB7CDE8 = v2;
}

unint64_t sub_1C946AA30()
{
  result = qword_1EDB7D0A8;
  if (!qword_1EDB7D0A8)
  {
    sub_1C96A5114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D0A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_10()
{
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A45D4();
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return sub_1C948E888(v0, type metadata accessor for SavedLocation);
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_19()
{

  return type metadata accessor for UserIdentity(0);
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_7_21(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_25()
{

  return sub_1C96A66B4();
}

uint64_t OUTLINED_FUNCTION_7_26(uint64_t a1)
{

  return sub_1C96A7D44();
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_31@<X0>(char a1@<W8>)
{
  *(v1 + 1272) = a1;

  return sub_1C96A7D44();
}

uint64_t OUTLINED_FUNCTION_7_33()
{

  return sub_1C95EAF44(v0, type metadata accessor for DataProtectionData);
}

uint64_t OUTLINED_FUNCTION_7_34()
{

  return sub_1C96A7CB4();
}

double OUTLINED_FUNCTION_7_35()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_36(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_38(char a1@<W8>, uint64_t x0_0@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 - 97) = a1;

  sub_1C9618150(x0_0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_7_39()
{

  return sub_1C96A6144();
}

uint64_t OUTLINED_FUNCTION_7_41(unint64_t *a1)
{
  v4 = MEMORY[0x1E69D6210];

  return sub_1C9469CB4(a1, v1, v2, v4);
}

void OUTLINED_FUNCTION_7_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_47(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_49()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_55(uint64_t result)
{
  *(v2 + 14) = result;
  *(v2 + 22) = 2160;
  *(v2 + 24) = v1;
  *(v2 + 32) = 1025;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return swift_arrayInitWithCopy();
}

unint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9476F90(a2, a3);
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7DE4();
}

void OUTLINED_FUNCTION_10_14()
{
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_10_16()
{

  return sub_1C95739FC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_19(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_10_24()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_10_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7B94();
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_10_33(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_10_35(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_10_40(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_10_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_43()
{

  return sub_1C96A5064();
}

void OUTLINED_FUNCTION_10_46()
{

  JUMPOUT(0x1CCA8CB00);
}

uint64_t OUTLINED_FUNCTION_10_47(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C04();
}

uint64_t OUTLINED_FUNCTION_10_49(__n128 a1, __n128 a2)
{

  return sub_1C96A7844();
}

uint64_t sub_1C946B5D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  sub_1C946306C((v0 - 152), (v0 - 120));

  return sub_1C9484328(v0 - 120, v0 - 152);
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{

  return sub_1C96A7B84();
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_27(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7784();
}

uint64_t OUTLINED_FUNCTION_2_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C96A7B54();
}

uint64_t OUTLINED_FUNCTION_2_29()
{

  return sub_1C96A4D64();
}

uint64_t OUTLINED_FUNCTION_2_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1, uint64_t a2)
{

  return sub_1C96A4534();
}

void OUTLINED_FUNCTION_2_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return type metadata accessor for SavedLocation(0);
}

uint64_t OUTLINED_FUNCTION_2_50()
{
}

uint64_t OUTLINED_FUNCTION_2_51(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_53(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_2_56(uint64_t a1)
{

  return sub_1C96A6F94();
}

void OUTLINED_FUNCTION_2_57(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

void OUTLINED_FUNCTION_2_59()
{
  v1[12] = sub_1C9613A14;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_2_60(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C96A7544();
}

uint64_t OUTLINED_FUNCTION_2_65(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_2_69(uint64_t a1)
{

  return sub_1C96A7C84();
}

uint64_t OUTLINED_FUNCTION_2_77(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_79()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_2_83(uint64_t a1)
{

  return sub_1C96A7EE4();
}

uint64_t OUTLINED_FUNCTION_2_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *sub_1C946BDD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5008, &qword_1C96AC4A8);
  result = sub_1C96A5274();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E00, &qword_1C96C42F0);
    result = sub_1C96A5274();
    if (v6[3])
    {
      v5 = type metadata accessor for AppConfigurationManager(0);
      swift_allocObject();
      result = AppConfigurationManager.init(appConfigurationService:appConfigurationStore:)(v7, v8, v6);
      a2[3] = v5;
      a2[4] = &protocol witness table for AppConfigurationManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C946BEF4(uint64_t a1)
{
  sub_1C96A5774();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A5664();
}

uint64_t sub_1C946C008()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C946C044(uint64_t *a1)
{
  if (qword_1EDB7D038 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB7D040);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Store might require migration, starting migrator", v4, 2u);
    MEMORY[0x1CCA8E3D0](v4, -1, -1);
  }

  return sub_1C96A5774();
}

uint64_t sub_1C946C188(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C96A6154();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C946C230(uint64_t a1)
{
  sub_1C9469F0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_1C96A7D74();
}

void OUTLINED_FUNCTION_28_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_8_12(uint64_t a1, double a2, double a3)
{

  sub_1C95447DC(a1, 0xE600000000000000, v4, v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_15(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_1C96A56A4();
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return sub_1C9573924(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_8_38()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_49(uint64_t a1)
{

  return sub_1C96A6FA4();
}

void OUTLINED_FUNCTION_8_52()
{

  JUMPOUT(0x1CCA8D880);
}

uint64_t sub_1C946C868()
{
  v1 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30, &unk_1C96B89B0);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C946AA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38, &qword_1C96AA2D0);
  sub_1C946C9C4();
  sub_1C96A79E4();
  v2 = sub_1C96A5134();
  OUTLINED_FUNCTION_23(v2);
  *(v0 + 16) = sub_1C96A5124();
  return v0;
}

unint64_t sub_1C946C9C4()
{
  result = qword_1EDB7CEA0;
  if (!qword_1EDB7CEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A38, &qword_1C96AA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CEA0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

{
  return sub_1C9484328(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

{
  return sub_1C9484328(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_17_3()
{
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C96A7D74();
}

__n128 *OUTLINED_FUNCTION_19_5(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

id OUTLINED_FUNCTION_19_9()
{

  return sub_1C9550094(v1, v0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_19_10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v3;

  return MEMORY[0x1EEDC5E80](v4, v5);
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_19_14@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_19_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_19_19(uint64_t a1, uint64_t a2)
{

  return sub_1C96A6CC4();
}

void OUTLINED_FUNCTION_19_24()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_19_25()
{

  return sub_1C948986C(v0, type metadata accessor for LocationDataModel);
}

uint64_t OUTLINED_FUNCTION_19_26()
{

  return sub_1C96A5544();
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1)
{

  return sub_1C9470AFC(a1, v1, v2);
}

__n128 *OUTLINED_FUNCTION_19_29(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 25705;
  result[2].n128_u64[1] = 0xE200000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_33(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return sub_1C95515E0(v2, v4);
}

uint64_t sub_1C946CFA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return a2;
}

id sub_1C946D054(void *a1)
{
  v1 = a1;
  CLLocation.debugDescription.getter();

  v2 = sub_1C96A7004();

  return v2;
}

uint64_t CLLocation.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4C50, &qword_1C96ADB00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96AEF50;
  [v0 coordinate];
  v2 = MEMORY[0x1E69E63B0];
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v4;
  [v0 coordinate];
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v5;

  return MEMORY[0x1EEDC5E80](0x25202C66332E2528, 0xEC0000002966332ELL);
}

void sub_1C946D18C()
{
  if (byte_1EDB7DF80 == 1)
  {
    sub_1C96A4FD4();
    sub_1C96A4FB4();
    v0 = sub_1C96A4FA4();

    v1 = sub_1C96A7004();
    v2 = sub_1C96A7004();
    [v0 setObject:v1 forKey:v2];

    byte_1EDB7DF80 = 0;
  }
}

uint64_t block_destroy_helper_2(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
}

uint64_t block_destroy_helper_20(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
}

uint64_t AppConfigurationStore.read()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = type metadata accessor for AppConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1C96A4FD4();
  sub_1C96A4FB4();
  sub_1C96A4FC4();

  sub_1C96A4704();
  v20 = *(v12 + 8);
  v34 = v12 + 8;
  v32 = v20;
  v20(v16, v10);
  v33 = v19;
  v21 = sub_1C96A47B4();
  v23 = v22;
  v24 = sub_1C96A4184();
  OUTLINED_FUNCTION_23(v24);
  sub_1C96A4174();
  OUTLINED_FUNCTION_3_31();
  sub_1C946DA2C(v25, 255, v26, &protocol conformance descriptor for AppConfiguration);
  sub_1C96A4154();

  v27 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v28 + 16))(v5, v9, v27);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v27);
  sub_1C9482E28(v5);
  sub_1C9482EF0(*&v9[*(v6 + 20)], 0);
  sub_1C9482F3C(v21, v23);
  v32(v33, v10);
  OUTLINED_FUNCTION_2_44();
  sub_1C948CDA4(v9, a1, v29);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t sub_1C946DA2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1C946DAA0()
{
  result = qword_1EDB7F220;
  if (!qword_1EDB7F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F220);
  }

  return result;
}

unint64_t sub_1C946DAF8()
{
  result = qword_1EDB7F230;
  if (!qword_1EDB7F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F230);
  }

  return result;
}

uint64_t sub_1C946DB4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A60, &qword_1C96BA160);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  result = sub_1C96A7F44();
  if (!v2)
  {
    v27 = 30;
    sub_1C96A7C24();
    v12 = v26[0];
    LOBYTE(v26[0]) = 29;
    sub_1C9475C94();
    v13 = sub_1C96A7C34();
    if (v13)
    {
      v14 = v13;
      sub_1C96A53C4();
      v15 = sub_1C96A4B54();
      sub_1C9476C24(v14, v15, v12, *(&v12 + 1), v26);

      if (*(&v26[0] + 1))
      {
        v16 = a2;
        v17 = v14;
        v19 = v12 >> 64;
        v18 = v12;
LABEL_15:
        sub_1C946E044(v17, v18, v19, v26, v16);
        return (*(v7 + 8))(v10, v5);
      }

      if (qword_1EDB7CFF0 != -1)
      {
        OUTLINED_FUNCTION_5_34();
        swift_once();
      }

      v25 = sub_1C96A6154();
      __swift_project_value_buffer(v25, qword_1EDB7CFF8);
      v21 = sub_1C96A6134();
      v22 = sub_1C96A76A4();
      if (!os_log_type_enabled(v21, v22))
      {
LABEL_14:

        memset(v26, 0, sizeof(v26));
        v16 = a2;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        goto LABEL_15;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Failed to find an appropriage language config from the list of available language configs. Loading the default language configuration.";
    }

    else
    {

      if (qword_1EDB7CFF0 != -1)
      {
        OUTLINED_FUNCTION_5_34();
        swift_once();
      }

      v20 = sub_1C96A6154();
      __swift_project_value_buffer(v20, qword_1EDB7CFF8);
      v21 = sub_1C96A6134();
      v22 = sub_1C96A76A4();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_14;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Failed to find a list of language configs. Loading the default language configuration.";
    }

    _os_log_impl(&dword_1C945E000, v21, v22, v24, v23, 2u);
    MEMORY[0x1CCA8E3D0](v23, -1, -1);
    goto LABEL_14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return swift_arrayDestroy();
}

unint64_t sub_1C946DFF0()
{
  result = qword_1EDB7CF18;
  if (!qword_1EDB7CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CF18);
  }

  return result;
}

uint64_t sub_1C946E044@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = result;
  v8 = *a4;
  v7 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  if (a3)
  {
    v11 = a3;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = sub_1C96A4B54();
    if (v13[2])
    {
      a2 = v13[4];
      v11 = v13[5];
      sub_1C96A53C4();

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2 = 0x53552D6E65;

      v11 = 0xE500000000000000;
      if (!v7)
      {
LABEL_8:
        v14 = sub_1C96A4B54();
        if (v14[2])
        {
          v8 = v14[4];
          v7 = v14[5];
          sub_1C96A53C4();
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x53552D6E65;
        }

        result = sub_1C947660C();
        v9 = result;
        v10 = v15;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v16 = v5;
  }

  *a5 = v16;
  a5[1] = a2;
  a5[2] = v11;
  a5[3] = v8;
  a5[4] = v7;
  a5[5] = v9;
  a5[6] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_84(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1C96A7924();
}

void *OUTLINED_FUNCTION_40_6(void *a1)
{

  return memcpy(a1, (v1 + 1184), 0x98uLL);
}

unint64_t OUTLINED_FUNCTION_40_8(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C94F02CC();
}

void OUTLINED_FUNCTION_40_11()
{
}

unint64_t sub_1C946E298(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C946E2DC()
{
  result = qword_1EDB7D900;
  if (!qword_1EDB7D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D900);
  }

  return result;
}

uint64_t AppStoreReviewConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D10, &qword_1C96AAE50);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946E5F4();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v24) = 0;
    sub_1C96A7C24();
    v26 = v28;
    LOBYTE(v22) = 1;
    sub_1C96A7C24();
    v11 = v25;
    LOBYTE(v20) = 2;
    sub_1C96A7C24();
    v19 = v22;
    HIDWORD(v18) = v23;
    v27 = 3;
    sub_1C96A7C24();
    v12 = v20;
    v13 = v21;
    if (v11)
    {
      v14 = 0.01;
    }

    else
    {
      v14 = sub_1C96A7534(0.0, 1.0);
    }

    (*(v7 + 8))(v10, v5);
    v15 = 15;
    if (!HIDWORD(v18))
    {
      v15 = v19;
    }

    v16 = 630720000.0;
    *a2 = v26 & 1;
    *(a2 + 8) = v14;
    if (!v13)
    {
      v16 = v12;
    }

    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C946E5A0()
{
  result = qword_1EDB7D918;
  if (!qword_1EDB7D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D918);
  }

  return result;
}

unint64_t sub_1C946E5F4()
{
  result = qword_1EDB7D920;
  if (!qword_1EDB7D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D920);
  }

  return result;
}

unint64_t sub_1C946E650(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C946E6F8()
{
  result = qword_1EDB7E400;
  if (!qword_1EDB7E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E400);
  }

  return result;
}

unint64_t sub_1C946E750()
{
  result = qword_1EDB7EAF0;
  if (!qword_1EDB7EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EAF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EndpointConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C946E870);
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

WeatherCore::ContentEnvironment_optional __swiftcall ContentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1C96A7BE4();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C946E8FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC3A5FC0, &qword_1C96B3F70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return sub_1C96A53C4();
}

void OUTLINED_FUNCTION_44_5(char a1@<W8>)
{
  v5 = (v4 + v3);
  *v5 = a1 & 1;
  v5[1] = v1;
  v5[2] = v2;
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_18_16()
{

  return sub_1C96A5504();
}

uint64_t OUTLINED_FUNCTION_18_17(uint64_t a1)
{

  return sub_1C96A6F94();
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return sub_1C96A7A74();
}

uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return sub_1C95D0D4C(v0, type metadata accessor for Location);
}

uint64_t OUTLINED_FUNCTION_18_27()
{

  return sub_1C96A70F4();
}

uint64_t OUTLINED_FUNCTION_18_30(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C04();
}

uint64_t OUTLINED_FUNCTION_18_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_33()
{
  *(v1 - 240) = v0;

  return swift_slowAlloc();
}

uint64_t getEnumTagSinglePayload for AppStoreReviewConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C946EF04()
{
  result = qword_1EDB7E328;
  if (!qword_1EDB7E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E328);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_30_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_20_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return type metadata accessor for Beaufort.Category.Range(0);
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return sub_1C96A7CB4();
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return sub_1C96A6F34();
}

uint64_t OUTLINED_FUNCTION_20_20()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_1C9476F90(v1, v0);
}

void OUTLINED_FUNCTION_20_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_25()
{

  return type metadata accessor for EndpointConfiguration(0);
}

int64x2_t OUTLINED_FUNCTION_20_29@<Q0>(uint64_t a1@<X8>)
{
  v6 = (v5 + v1);
  result = vdupq_n_s64(0x408C200000000000uLL);
  *v6 = result;
  v6[1].i64[0] = 0x40A5180000000000;
  v6[1].i64[1] = v4 + 2;
  v6[2].i64[0] = a1;
  v6[2].i64[1] = v2;
  v6[3].i64[0] = v3;
  v6[3].i64[1] = 50;
  return result;
}

double OUTLINED_FUNCTION_16_5()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7D74();
}

void OUTLINED_FUNCTION_21_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_16_11(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_16_14()
{

  return sub_1C96A4264();
}

uint64_t OUTLINED_FUNCTION_16_23@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return sub_1C95B2A9C((v1 - 144));
}

uint64_t OUTLINED_FUNCTION_16_24@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;
  *(v1 - 88) = 0;
  return v1 - 96;
}

void *OUTLINED_FUNCTION_16_25()
{
  v0[7] = v2;
  v0[8] = v4;
  v0[9] = v3;
  v0[10] = v5;
  v0[11] = v6;
  v0[12] = v7;
  v0[13] = v1;
  return v0 + 7;
}

uint64_t OUTLINED_FUNCTION_16_27(uint64_t a1)
{

  return sub_1C96A7B84();
}

void OUTLINED_FUNCTION_16_29(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_16_30()
{

  JUMPOUT(0x1CCA8CB00);
}

uint64_t OUTLINED_FUNCTION_16_33(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7DE4();
}

void OUTLINED_FUNCTION_16_35(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0xC0F5180000000000;
  a1[2].n128_u16[4] = 0;
}

uint64_t OUTLINED_FUNCTION_16_37()
{
  *(v1 + 16) = v0;

  return sub_1C94670AC((v3 - 144), v1 + 40 * v2 + 32);
}

void OUTLINED_FUNCTION_16_38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x26u);
}

uint64_t sub_1C946F618()
{
  v0 = sub_1C946A9D8();
  v1 = sub_1C9469D80();
  v2 = [v0 storeRequiresMigration_];

  if (v2)
  {
    v3 = sub_1C946A9D8();
    v4 = sub_1C9469CFC();
    v5 = sub_1C9469D80();
    MEMORY[0x1EEE9AC00](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128, &unk_1C96B6CD0);
    swift_allocObject();
    sub_1C96A5714();

    v6 = sub_1C96A55A4();
    v7 = sub_1C96A5644();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6620, &qword_1C96B77D8);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v7;
}

uint64_t sub_1C946F7BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C96A4A54();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

id sub_1C946F83C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(WCCloudMigrator) init];
  *a1 = result;
  return result;
}

uint64_t sub_1C946F878(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C946F8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C946F908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C946F950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C946F998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C94A0404(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_23_12(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

void OUTLINED_FUNCTION_23_17()
{

  JUMPOUT(0x1CCA8CB00);
}

_OWORD *OUTLINED_FUNCTION_23_19()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_1C946306C(v4, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_23_20()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_22()
{
}

uint64_t sub_1C946FCF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1C96A3D04();
  v1(v2);
}

uint64_t sub_1C946FD3C(uint64_t a1, void *a2)
{
  sub_1C9469B6C(a2, v7);
  swift_beginAccess();
  sub_1C946CFA8(v7, a1 + 24, &qword_1EC3A6548, &unk_1C96B6B78);
  swift_endAccess();
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(a1, &protocol witness table for IdentityService, v4, v5);
  return _s11WeatherCore15IdentityServiceC15accountSignedInyyF_0();
}

uint64_t *sub_1C946FE0C(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v23 = *a4;
  v8 = sub_1C96A65E4();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v19 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C96A7724();
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C96A5404();
  MEMORY[0x1EEE9AC00](v12);
  v25[3] = type metadata accessor for AppConfigurationRemoteSettingsProvider();
  v25[4] = &protocol witness table for AppConfigurationRemoteSettingsProvider;
  v25[0] = a3;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C9470218(&unk_1EDB7D088, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6390, &qword_1C96AA310);
  sub_1C9469C60(&qword_1EDB7CE88, &unk_1EC3A6390, &qword_1C96AA310);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A60, &qword_1C96AA318);
  swift_allocObject();
  a4[2] = sub_1C96A5314();
  *(a4 + 152) = 7;
  sub_1C9469B6C(a1, (a4 + 3));
  sub_1C9469B6C(a2, (a4 + 13));
  sub_1C9469B6C(v25, (a4 + 8));
  sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C9470218(&qword_1EDB7CDC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  sub_1C9469C60(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320);
  v13 = v18;
  sub_1C96A79E4();
  v14 = v19;
  sub_1C96A6594();
  v15 = sub_1C96A7714();
  (*(v21 + 8))(v14, v22);
  v16 = (*(v20 + 8))(v11, v13);
  a4[18] = v15;
  sub_1C9470568(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return a4;
}

uint64_t sub_1C9470218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C9470260(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C96A7BB4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t _s11WeatherCore15IdentityServiceC15accountSignedInyyF_0()
{
  result = swift_beginAccess();
  if (*(v0 + 48))
  {
    sub_1C9469B6C(v0 + 24, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v3 + 8);
    sub_1C96A3D04();
    v5(sub_1C94C7708, v4, v2, v3);

    return __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return result;
}

uint64_t sub_1C9470374()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C94703AC()
{
  v0 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A30, &unk_1C96B89B0);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A5104();
  sub_1C9470794(&qword_1EDB7D0A8, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A38, &qword_1C96AA2D0);
  sub_1C9469C60(&qword_1EDB7CEA0, &qword_1EC3A4A38, &qword_1C96AA2D0);
  sub_1C96A79E4();
  sub_1C96A5134();
  swift_allocObject();
  result = sub_1C96A5124();
  qword_1EDB7DF78 = result;
  return result;
}

uint64_t sub_1C9470568(uint64_t a1)
{
  if (qword_1EDB7DF70 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();
}

uint64_t UbiquitousKeyValueStoreProvider.perform(performBlock:)(uint64_t a1, uint64_t a2)
{
  sub_1C946B5D0(0, &qword_1EDB7CD48, 0x1E696AFB8);
  sub_1C96A5784();
  OUTLINED_FUNCTION_54();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1C96A3D04();
  sub_1C96A5644();
}

uint64_t sub_1C947073C()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C9470794(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C94707DC(uint64_t a1, uint64_t a2)
{
  result = sub_1C9470794(&qword_1EDB7DF68, a2, type metadata accessor for AppConfigurationService, &protocol conformance descriptor for AppConfigurationService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9470834@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = a1(0);
  swift_allocObject();
  result = a3();
  a5[3] = v8;
  a5[4] = a4;
  *a5 = result;
  return result;
}

uint64_t AppConfigurationStore.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_1C9470A40(v9, v6, &unk_1EC3A5430, &unk_1C96AAB30);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62D0, &qword_1C96B50B8);
  OUTLINED_FUNCTION_23(v11);
  v12 = sub_1C96A55B4();
  sub_1C9470AFC(v9, &unk_1EC3A5430, &unk_1C96AAB30);
  *(v1 + 16) = v12;
  v15 = 0;
  v16 = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62D8, &qword_1C96B50C0);
  OUTLINED_FUNCTION_23(v13);
  *(v1 + 24) = sub_1C96A55B4();
  sub_1C9470B54();
  return v1;
}

uint64_t sub_1C94709F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_51(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v4;
}

uint64_t sub_1C9470A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9470AA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return a2;
}

uint64_t sub_1C9470AFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C9470B54()
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7FCD0 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  if (v1 == 1)
  {
    sub_1C946DA2C(&qword_1EC3A6300, v0, type metadata accessor for AppConfigurationStore, &protocol conformance descriptor for AppConfigurationStore);
    sub_1C96A4FE4();
    sub_1C95A1538();
  }
}

uint64_t sub_1C9470C6C()
{
  v1 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v5, qword_1EDB80028);
  v7 = OUTLINED_FUNCTION_5_1();
  v8(v7);
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E88], v1);
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  result = OUTLINED_FUNCTION_4_19(28, 0x80000001C96CF0B0, &v10);
  qword_1EDB7FCD8 = result;
  return result;
}

uint64_t sub_1C9470E14()
{
  v0 = sub_1C96A4F34();
  __swift_allocate_value_buffer(v0, qword_1EDB80028);
  v1 = __swift_project_value_buffer(v0, qword_1EDB80028);
  *v1 = 0xD00000000000001ALL;
  v1[1] = 0x80000001C96D2580;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t OUTLINED_FUNCTION_5_9(float a1)
{
  *v3 = a1;
  *(v3 + 4) = 1752392040;
  *(v3 + 12) = 2081;

  return sub_1C9484164(v2, v1, (v4 - 144));
}

void *OUTLINED_FUNCTION_5_15(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C953C744(v4, a2, a3, v3, v5);
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return sub_1C96A7D74();
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1, uint64_t a2)
{

  return sub_1C96A4534();
}

uint64_t OUTLINED_FUNCTION_5_29(unint64_t *a1)
{

  return sub_1C94892C0(a1, &protocol conformance descriptor for Location);
}

uint64_t OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_5_37()
{

  return sub_1C95F97C0(v0, type metadata accessor for LocationDataModel);
}

uint64_t OUTLINED_FUNCTION_5_38()
{
}

uint64_t OUTLINED_FUNCTION_5_41(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C24();
}

uint64_t OUTLINED_FUNCTION_5_43()
{

  return sub_1C96A4C14();
}

uint64_t OUTLINED_FUNCTION_5_47()
{

  return sub_1C96A79E4();
}

uint64_t OUTLINED_FUNCTION_5_48(unint64_t *a1)
{

  return sub_1C9633BA0(a1, "-1}%");
}

uint64_t OUTLINED_FUNCTION_5_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C96A3E24();
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_52@<X0>(char a3@<W8>)
{
  *(v3 - 66) = a3;

  return sub_1C96A7CE4();
}

id OUTLINED_FUNCTION_5_55()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_5_57()
{
  *(v1 - 72) = v0;

  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_5_59(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1C96A7144();
}

double OUTLINED_FUNCTION_5_60()
{

  return sub_1C94FA584(0x7261646E6F636573, 0xED0000656D614E79, v0);
}

uint64_t type metadata accessor for AppConfigurationManager(uint64_t a1)
{
  result = qword_1EDB7DFB0;
  if (!qword_1EDB7DFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C947151C(uint64_t a1)
{
  result = type metadata accessor for AppConfiguration(319);
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

void *AppConfigurationManager.init(appConfigurationService:appConfigurationStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v375 = a3;
  v362 = a2;
  v358 = *v3;
  v364 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v342 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_24();
  v328 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_1();
  v333 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_1();
  v329 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_0();
  v331 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_24();
  v350 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_1();
  v334 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_1();
  v327 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_1();
  v332 = v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  v365 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1();
  v336 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_1();
  v330 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_1();
  v349 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_1();
  v326 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_1();
  v335 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_1();
  v338 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_51_0();
  v339 = v39;
  v40 = OUTLINED_FUNCTION_15_4();
  v369 = type metadata accessor for LocationsConfiguration(v40);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_24();
  v352 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_1();
  v343 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_1();
  v353 = v46;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_51_0();
  v340 = v48;
  OUTLINED_FUNCTION_15_4();
  v359 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v371 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_24();
  v368 = v51;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_51_0();
  v348 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0, &qword_1C96B51D0);
  v55 = OUTLINED_FUNCTION_7(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_24();
  v351 = v56;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_1();
  v345 = v58;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_18_1();
  v354 = v60;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_51_0();
  v370 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v64 = OUTLINED_FUNCTION_7(v63);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_24();
  v344 = v65;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_18_1();
  v355 = v67;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_18_1();
  v347 = v69;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_51_0();
  v357 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62E0, &unk_1C96B50C8);
  v73 = OUTLINED_FUNCTION_7(v72);
  MEMORY[0x1EEE9AC00](v73);
  v363 = &v326 - v74;
  v75 = OUTLINED_FUNCTION_15_4();
  v367 = type metadata accessor for AppConfiguration(v75);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_24();
  v366 = v77;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_18_1();
  v337 = v79;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_18_1();
  v372 = v81;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_18_1();
  v341 = v83;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_51_0();
  v346 = v85;
  OUTLINED_FUNCTION_15_4();
  v373 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v376 = v86;
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_14();
  v90 = v89 - v88;
  v91 = sub_1C96A7724();
  OUTLINED_FUNCTION_1();
  v377 = v92;
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_14();
  v96 = v95 - v94;
  v97 = sub_1C96A5114();
  v98 = OUTLINED_FUNCTION_7(v97);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_14();
  v99 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_lock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  v100 = sub_1C96A5124();
  v374 = v3;
  *(v3 + v99) = v100;
  v101 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_observers) = MEMORY[0x1E69E7CC0];
  v102 = v101;
  v103 = (v4 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationService);
  v104 = v362;
  *v103 = a1;
  v103[1] = v104;
  sub_1C9469B6C(v375, v4 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfigurationStore);
  v362 = sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  *__src = v102;
  v361 = sub_1C946F950(&qword_1EDB7CDC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v356 = a1;
  swift_unknownObjectRetain();
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  sub_1C9469C60(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320);
  sub_1C96A79E4();
  sub_1C96A6594();
  v105 = sub_1C96A7714();
  v106 = *(v376 + 8);
  v376 += 8;
  v106(v90, v373);
  v107 = *(v377 + 8);
  v377 += 8;
  v107(v96, v91);
  v108 = v374;
  *(v374 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_refreshQueue) = v105;
  *__src = MEMORY[0x1E69E7CC0];
  sub_1C96A79E4();
  sub_1C96A6594();
  v109 = sub_1C96A7714();
  v106(v90, v373);
  v110 = v96;
  v111 = v367;
  v107(v110, v91);
  *(v108 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_notifyQueue) = v109;
  v112 = v375[3];
  v113 = v375[4];
  __swift_project_boxed_opaque_existential_1(v375, v112);
  v114 = v363;
  (*(v113 + 24))(v112, v113);
  p_superclass = _TtC11WeatherCore19LocationMatchHelper.superclass;
  v116 = &xmmword_1C96B5000;
  if (__swift_getEnumTagSinglePayload(v114, 1, v111) == 1)
  {
    sub_1C9470AFC(v114, &qword_1EC3A62E0, &unk_1C96B50C8);
    if (qword_1EDB7CFF0 != -1)
    {
      OUTLINED_FUNCTION_0_58(&qword_1EDB7CFF0);
    }

    v117 = sub_1C96A6154();
    __swift_project_value_buffer(v117, qword_1EDB7CFF8);
    v118 = sub_1C96A6134();
    v119 = sub_1C96A76A4();
    v120 = OUTLINED_FUNCTION_21(v119);
    v121 = v364;
    v122 = v369;
    v123 = v349;
    if (v120)
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v124, v125, "AppConfiguration is not cached, falling back to the default configuration");
      OUTLINED_FUNCTION_26();
    }

    v126 = v357;
    OUTLINED_FUNCTION_3();
    v127 = v359;
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v359);
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v122);
    v134 = v126;
    v135 = v347;
    sub_1C9470A40(v134, v347, &unk_1EC3A5430, &unk_1C96AAB30);
    v136 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v136, v137, v127);
    v138 = v354;
    if (v139)
    {
      v156 = v348;
      sub_1C96A4954();
      v140 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_23_1(v140, v141, v127);
      v142 = v135;
      v157 = v372;
      if (!v139)
      {
        sub_1C9470AFC(v142, &unk_1EC3A5430, &unk_1C96AAB30);
      }
    }

    else
    {
      v156 = v348;
      (*(v371 + 32))(v348, v135, v127);
      v157 = v372;
    }

    (*(v371 + 32))(v157, v156, v127);
    *(v157 + v111[5]) = 0x40F5180000000000;
    *(v157 + v111[6]) = 3;
    *(v157 + v111[7]) = 0x411A5E0000000000;
    *(v157 + v111[8]) = 0x40BF400000000000;
    *(v157 + v111[9]) = 0x40BF400000000000;
    *(v157 + v111[10]) = 0x40F5180000000000;
    OUTLINED_FUNCTION_25_23(v157 + v111[11]);
    if (qword_1EDB7BF10 != -1)
    {
      v158 = OUTLINED_FUNCTION_4_5(&qword_1EDB7BF10);
    }

    OUTLINED_FUNCTION_27_17(v158, v386);
    *(v157 + v111[12]) = qword_1EDB7BF18;
    *(v157 + v111[13]) = 257;
    v159 = (v157 + v111[14]);
    *v159 = &unk_1F48FACF0;
    v159[1] = 0x3FF0000000000000;
    v159[2] = 0;
    v159[3] = 0;
    v160 = qword_1EDB7D890;
    sub_1C96A53C4();
    if (v160 != -1)
    {
      OUTLINED_FUNCTION_10_42(&qword_1EDB7D890);
    }

    *(v157 + v111[15]) = qword_1EDB7D898;
    sub_1C9470A40(v370, v138, &qword_1EC3A62F0, &qword_1C96B51D0);
    v161 = OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_23_1(v161, v162, v122);
    if (v139)
    {
      v163 = v339;
      OUTLINED_FUNCTION_3();
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v121);
      v167 = v338;
      OUTLINED_FUNCTION_3();
      __swift_storeEnumTagSinglePayload(v168, v169, v170, v121);
      v171 = v353;
      *v353 = xmmword_1C96B4F40;
      v171[1] = xmmword_1C96B4F50;
      v172 = v163;
      v173 = v335;
      sub_1C9470A40(v172, v335, &qword_1EC3A4A70, &qword_1C96B05D0);
      OUTLINED_FUNCTION_14_16(v173);
      if (v139)
      {
        v174 = sub_1C96A53C4();
        v175 = v326;
        OUTLINED_FUNCTION_33_12(v174, 0x80000001C96D2510);
        result = OUTLINED_FUNCTION_14_16(v175);
        if (v139)
        {
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        OUTLINED_FUNCTION_28_20();
        v182 = v331;
        OUTLINED_FUNCTION_40_10();
        v138();
        v177 = v335;
        OUTLINED_FUNCTION_14_16(v335);
        v183 = v330;
        if (!v139)
        {
          sub_1C9470AFC(v177, &qword_1EC3A4A70, &qword_1C96B05D0);
        }

        v167 = v338;
      }

      else
      {
        OUTLINED_FUNCTION_28_20();
        v182 = v331;
        (v138)(v331);
        sub_1C96A53C4();
        v183 = v330;
      }

      (v138)(v353 + *(v122 + 32), v182, v121);
      sub_1C9470A40(v167, v123, &qword_1EC3A4A70, &qword_1C96B05D0);
      v184 = OUTLINED_FUNCTION_14_16(v123);
      if (v139)
      {
        OUTLINED_FUNCTION_33_12(v184, 0x80000001C96D2510);
        result = OUTLINED_FUNCTION_14_16(v183);
        if (v139)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_36_9(v338);
        OUTLINED_FUNCTION_36_9(v339);
        (v138)(v329, v183, v121);
        OUTLINED_FUNCTION_14_16(v123);
        if (!v139)
        {
          sub_1C9470AFC(v123, &qword_1EC3A4A70, &qword_1C96B05D0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_36_9(v167);
        OUTLINED_FUNCTION_36_9(v339);
        (v138)(v329, v123, v121);
      }

      v185 = v353;
      OUTLINED_FUNCTION_40_10();
      v138();
      *(v185 + *(v122 + 40)) = 1;
      OUTLINED_FUNCTION_0_104();
      v181 = v340;
      sub_1C9482980(v185, v340, v186);
      v187 = v354;
      v188 = OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_23_1(v188, v189, v122);
      v111 = v367;
      v116 = &xmmword_1C96B5000;
      v157 = v372;
      if (!v139)
      {
        sub_1C9470AFC(v187, &qword_1EC3A62F0, &qword_1C96B51D0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_104();
      v178 = v138;
      v179 = v340;
      sub_1C9482980(v178, v340, v180);
      v181 = v179;
      sub_1C96A53C4();
    }

    OUTLINED_FUNCTION_0_104();
    v192 = sub_1C9482980(v181, v157 + v190, v191);
    if (qword_1EDB7EF18 != -1)
    {
      v192 = OUTLINED_FUNCTION_9_41(&qword_1EDB7EF18);
    }

    OUTLINED_FUNCTION_27_17(v192, v385);
    OUTLINED_FUNCTION_17_35(v157 + v111[17]);
    OUTLINED_FUNCTION_16_35(v193, xmmword_1C96B4F60);
    *(v194 + 48) = xmmword_1C96B4F70;
    *(v194 + 64) = xmmword_1C96B4F80;
    OUTLINED_FUNCTION_12_37(v194, xmmword_1C96B4F90, xmmword_1C96B4F80, xmmword_1C96B4FA0);
    *(v195 + 144) = xmmword_1C96B4FB0;
    *(v157 + v111[18]) = MEMORY[0x1E69E7CC0];
    v196 = 1;
    v381[0] = 1;
    OUTLINED_FUNCTION_45_9(v157 + v111[19]);
    *(v197 + 24) = xmmword_1C96AA490;
    *(v197 + 40) = 1;
    *(v197 + 48) = v198;
    *(v197 + 56) = &unk_1F48FD060;
    v199 = v157 + v111[20];
    *v199 = 1;
    *(v199 + 2) = 1;
    sub_1C96A4EE4();
    sub_1C96A53C4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_8_46(&qword_1EDB7FD00);
    }

    sub_1C96A4EB4();

    OUTLINED_FUNCTION_34_12();
    v200 = OUTLINED_FUNCTION_20_29(0x80000001C96CC960);
    v201[4] = xmmword_1C96B4FC0;
    v201[5] = xmmword_1C96B4FD0;
    v201[6] = xmmword_1C96AC0B0;
    v202 = v157 + v111[23];
    *v202 = v200;
    *(v202 + 16) = xmmword_1C96B4FE0;
    *(v202 + 32) = xmmword_1C96B4FF0;
    *(v202 + 48) = xmmword_1C96B5000;
    *(v202 + 64) = xmmword_1C96B5010;
    *(v202 + 80) = xmmword_1C96B5020;
    OUTLINED_FUNCTION_41_13(xmmword_1C96B5030, xmmword_1C96B5040);
    v203 = v157 + v111[22];
    v204 = vdupq_n_s64(0x3FC999999999999AuLL);
    *v203 = v204;
    *(v203 + 16) = xmmword_1C96B5050;
    *(v203 + 32) = vdupq_n_s64(0x4143C68000000000uLL);
    *(v203 + 48) = 10;
    *(v203 + 56) = 1;
    v205 = (v157 + v111[24]);
    *v205 = v204;
    v205[1] = v204;
    v205[2].i64[0] = 0x3FC999999999999ALL;
    OUTLINED_FUNCTION_46_5(v206);
    *(v207 + 32) = 1;
    v208 = sub_1C947660C();
    v209 = (v157 + v111[26]);
    *v209 = v208;
    v209[1] = v210;
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_7_47(&qword_1EDB7D638);
    }

    *(v157 + v111[27]) = qword_1EDB7D640;
    v211 = (v157 + v111[29]);
    *v211 = xmmword_1C96B5060;
    v211[1] = xmmword_1C96B5070;
    v212 = (v157 + v111[30]);
    *v212 = 0;
    v212[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_30_15((v157 + v111[31]), xmmword_1C96B5080, xmmword_1C96B5090);
    *(v213 + 42) = v382;
    *(v213 + 46) = v383;
    *(v213 + 48) = v116[10];
    LOBYTE(v378) = 1;
    OUTLINED_FUNCTION_31_10(1);
    memcpy((v157 + v111[32]), __src, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8, &qword_1C96B51D8);
    v214 = swift_allocObject();
    *(v214 + 16) = xmmword_1C96AA1C0;
    sub_1C96A53C4();
    v215 = sub_1C96A4B54();
    if (v215[2])
    {
      v196 = v215[4];
      v216 = v215[5];
      sub_1C96A53C4();
    }

    else
    {
      v216 = 0xE500000000000000;
      OUTLINED_FUNCTION_38_8();
    }

    v217 = sub_1C947660C();
    *(v214 + 32) = v196;
    *(v214 + 40) = v216;
    *(v214 + 48) = v217;
    *(v214 + 56) = v218;
    *(v372 + v111[33]) = v214;
    v219 = sub_1C96A4B54();
    if (v219[2])
    {
      v196 = v219[4];
      v220 = v219[5];
      sub_1C96A53C4();
    }

    else
    {
      v220 = 0xE500000000000000;
      OUTLINED_FUNCTION_38_8();
    }

    v149 = v366;

    v221 = v372;
    v222 = (v372 + v111[34]);
    *v222 = v196;
    v222[1] = v220;
    v223 = MEMORY[0x1E69E7CC0];
    *(v221 + v111[35]) = MEMORY[0x1E69E7CC0];
    sub_1C9470AFC(v370, &qword_1EC3A62F0, &qword_1C96B51D0);
    sub_1C9470AFC(v357, &unk_1EC3A5430, &unk_1C96AAB30);
    *(v221 + v111[36]) = v223;
    v224 = v341;
    sub_1C9482980(v221, v341, type metadata accessor for AppConfiguration);
    v152 = v374;
    sub_1C9482980(v224, v374 + OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig, type metadata accessor for AppConfiguration);
    v155 = v368;
    p_superclass = _TtC11WeatherCore19LocationMatchHelper.superclass;
  }

  else
  {
    OUTLINED_FUNCTION_2_71();
    v143 = v346;
    sub_1C9482980(v114, v346, v144);
    if (qword_1EDB7CFF0 != -1)
    {
      OUTLINED_FUNCTION_0_58(&qword_1EDB7CFF0);
    }

    v145 = sub_1C96A6154();
    __swift_project_value_buffer(v145, qword_1EDB7CFF8);
    v146 = sub_1C96A6134();
    v147 = sub_1C96A76A4();
    v148 = OUTLINED_FUNCTION_21(v147);
    v149 = v366;
    v121 = v364;
    v122 = v369;
    if (v148)
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_1_57(&dword_1C945E000, v150, v151, "Successfully loaded AppConfiguration from cache");
      p_superclass = (_TtC11WeatherCore19LocationMatchHelper + 8);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_2_71();
    v152 = v374;
    sub_1C9482980(v143, v374 + v153, v154);
    v155 = v368;
  }

  if (qword_1EDB7FCB8 != -1)
  {
    OUTLINED_FUNCTION_29_14(&qword_1EDB7FCB8);
  }

  OUTLINED_FUNCTION_24_21();
  sub_1C946F950(v225, v226, &protocol conformance descriptor for AppConfigurationManager);
  sub_1C96A4E44();
  if (__src[0] != 1)
  {
    sub_1C9482FEC();
    swift_unknownObjectRelease();
LABEL_93:
    __swift_destroy_boxed_opaque_existential_1Tm(v375);
    return v152;
  }

  if (p_superclass[510] != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_1EDB7CFF0);
  }

  v227 = sub_1C96A6154();
  __swift_project_value_buffer(v227, qword_1EDB7CFF8);
  v228 = sub_1C96A6134();
  v229 = sub_1C96A76A4();
  v230 = OUTLINED_FUNCTION_21(v229);
  v231 = v345;
  if (v230)
  {
    *OUTLINED_FUNCTION_29() = 0;
    OUTLINED_FUNCTION_1_57(&dword_1C945E000, v232, v233, "Force loading the default configuration");
    v155 = v368;
    OUTLINED_FUNCTION_26();
  }

  v234 = v355;
  v235 = OUTLINED_FUNCTION_94();
  v236 = v359;
  __swift_storeEnumTagSinglePayload(v235, v237, 1, v359);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v122);
  v241 = v234;
  v242 = v236;
  v243 = v344;
  sub_1C9470A40(v241, v344, &unk_1EC3A5430, &unk_1C96AAB30);
  v244 = OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_23_1(v244, v245, v242);
  if (v139)
  {
    sub_1C96A4954();
    v246 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_23_1(v246, v247, v242);
    v248 = v243;
    v249 = v350;
    if (!v139)
    {
      sub_1C9470AFC(v248, &unk_1EC3A5430, &unk_1C96AAB30);
    }
  }

  else
  {
    (*(v371 + 32))(v155, v243, v242);
    v249 = v350;
  }

  (*(v371 + 32))(v149, v155, v242);
  *(v149 + v111[5]) = 0x40F5180000000000;
  *(v149 + v111[6]) = 3;
  *(v149 + v111[7]) = 0x411A5E0000000000;
  *(v149 + v111[8]) = 0x40BF400000000000;
  *(v149 + v111[9]) = 0x40BF400000000000;
  *(v149 + v111[10]) = 0x40F5180000000000;
  OUTLINED_FUNCTION_25_23(v149 + v111[11]);
  if (qword_1EDB7BF10 != -1)
  {
    v250 = OUTLINED_FUNCTION_4_5(&qword_1EDB7BF10);
  }

  OUTLINED_FUNCTION_27_17(v250, &v382);
  *(v149 + v111[12]) = qword_1EDB7BF18;
  *(v149 + v111[13]) = 257;
  v251 = (v149 + v111[14]);
  *v251 = &unk_1F48FACF0;
  v251[1] = 0x3FF0000000000000;
  v251[2] = 0;
  v251[3] = 0;
  v252 = qword_1EDB7D890;
  sub_1C96A53C4();
  if (v252 != -1)
  {
    OUTLINED_FUNCTION_10_42(&qword_1EDB7D890);
  }

  *(v149 + v111[15]) = qword_1EDB7D898;
  v253 = v351;
  sub_1C9470A40(v231, v351, &qword_1EC3A62F0, &qword_1C96B51D0);
  v254 = OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_23_1(v254, v255, v122);
  if (!v139)
  {
    OUTLINED_FUNCTION_0_104();
    v269 = v343;
    sub_1C9482980(v253, v343, v270);
    sub_1C96A53C4();
LABEL_78:
    OUTLINED_FUNCTION_0_104();
    v285 = sub_1C9482980(v269, v149 + v283, v284);
    if (qword_1EDB7EF18 != -1)
    {
      v285 = OUTLINED_FUNCTION_9_41(&qword_1EDB7EF18);
    }

    OUTLINED_FUNCTION_27_17(v285, v381);
    OUTLINED_FUNCTION_17_35(v149 + v111[17]);
    OUTLINED_FUNCTION_16_35(v286, xmmword_1C96B4F60);
    *(v287 + 48) = xmmword_1C96B4F70;
    *(v287 + 64) = xmmword_1C96B4F80;
    OUTLINED_FUNCTION_12_37(v287, xmmword_1C96B4F90, xmmword_1C96B4F80, xmmword_1C96B4FA0);
    *(v288 + 144) = xmmword_1C96B4FB0;
    *(v149 + v111[18]) = MEMORY[0x1E69E7CC0];
    v381[24] = 1;
    OUTLINED_FUNCTION_45_9(v149 + v111[19]);
    *(v289 + 24) = xmmword_1C96AA490;
    *(v289 + 40) = 1;
    *(v289 + 48) = v290;
    *(v289 + 56) = &unk_1F48FD088;
    v291 = v149 + v111[20];
    *v291 = 1;
    *(v291 + 2) = 1;
    v292 = v149;
    v293 = v111;
    sub_1C96A4EE4();
    sub_1C96A53C4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_8_46(&qword_1EDB7FD00);
    }

    sub_1C96A4EB4();

    v294 = 0x80000001C96CC990;
    v295 = 0xD000000000000068;
    if (!__src[0])
    {
      v295 = 0;
      v294 = 0;
    }

    v296 = v292 + v111[21];
    v297 = vdupq_n_s64(0x408C200000000000uLL);
    *v296 = v297;
    *(v296 + 16) = 0x40A5180000000000;
    *(v296 + 24) = 0xD000000000000022;
    *(v296 + 32) = 0x80000001C96CC960;
    *(v296 + 40) = v295;
    *(v296 + 48) = v294;
    *(v296 + 56) = 50;
    *(v296 + 64) = xmmword_1C96B4FC0;
    *(v296 + 80) = xmmword_1C96B4FD0;
    *(v296 + 96) = xmmword_1C96AC0B0;
    v298 = v292 + v111[23];
    *v298 = v297;
    *(v298 + 16) = xmmword_1C96B4FE0;
    *(v298 + 32) = xmmword_1C96B4FF0;
    *(v298 + 48) = xmmword_1C96B5000;
    *(v298 + 64) = xmmword_1C96B5010;
    *(v298 + 80) = xmmword_1C96B5020;
    *(v298 + 96) = xmmword_1C96B5030;
    *(v298 + 112) = xmmword_1C96B5040;
    *(v298 + 128) = 0x3FE999999999999ALL;
    *&v299 = OUTLINED_FUNCTION_47_6();
    *v300 = v299;
    *(v300 + 16) = xmmword_1C96B5050;
    *(v300 + 32) = vdupq_n_s64(0x4143C68000000000uLL);
    *(v300 + 48) = 10;
    *(v300 + 56) = 1;
    v301 = v292 + v111[24];
    *v301 = v299;
    *(v301 + 16) = v299;
    *(v301 + 32) = v302;
    v303 = v292 + v111[25];
    *v303 = v304;
    *(v303 + 8) = 0x80000001C96CC960;
    *(v303 + 16) = v305 + 21;
    *(v303 + 24) = 0x80000001C96D2630;
    *(v303 + 32) = 1;
    v306 = sub_1C947660C();
    v307 = (v292 + v111[26]);
    *v307 = v306;
    v307[1] = v308;
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_7_47(&qword_1EDB7D638);
    }

    *(v292 + v111[27]) = qword_1EDB7D640;
    v309 = (v292 + v111[29]);
    *v309 = xmmword_1C96B5060;
    v309[1] = xmmword_1C96B5070;
    v310 = (v292 + v111[30]);
    *v310 = 0;
    v310[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_30_15((v292 + v111[31]), xmmword_1C96B5080, xmmword_1C96B5090);
    *(v311 + 42) = v378;
    *(v311 + 46) = v379;
    *(v311 + 48) = xmmword_1C96B50A0;
    v380 = 1;
    OUTLINED_FUNCTION_31_10(1);
    memcpy((v292 + v111[32]), __src, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8, &qword_1C96B51D8);
    v312 = swift_allocObject();
    *(v312 + 16) = xmmword_1C96AA1C0;
    sub_1C96A53C4();
    v313 = sub_1C96A4B54();
    v314 = v313;
    if (v313[2])
    {
      v316 = v313[4];
      v315 = v313[5];
      sub_1C96A53C4();
    }

    else
    {
      v315 = 0xE500000000000000;
      v316 = 0x53552D6E65;
    }

    v317 = sub_1C947660C();
    *(v312 + 32) = v316;
    *(v312 + 40) = v315;
    *(v312 + 48) = v317;
    *(v312 + 56) = v318;
    *(v292 + v293[33]) = v312;
    v319 = sub_1C96A4B54();
    if (v319[2])
    {
      v314 = v319[4];
      v320 = v319[5];
      sub_1C96A53C4();
    }

    else
    {
      v320 = 0xE500000000000000;
      OUTLINED_FUNCTION_38_8();
    }

    swift_unknownObjectRelease();

    v321 = (v292 + v293[34]);
    *v321 = v314;
    v321[1] = v320;
    v322 = MEMORY[0x1E69E7CC0];
    *(v292 + v293[35]) = MEMORY[0x1E69E7CC0];
    sub_1C9470AFC(v231, &qword_1EC3A62F0, &qword_1C96B51D0);
    sub_1C9470AFC(v355, &unk_1EC3A5430, &unk_1C96AAB30);
    *(v292 + v293[36]) = v322;
    OUTLINED_FUNCTION_2_71();
    v323 = v337;
    sub_1C9482980(v292, v337, v324);
    v325 = OBJC_IVAR____TtC11WeatherCore23AppConfigurationManager_appConfig;
    v152 = v374;
    swift_beginAccess();
    sub_1C965B08C(v323, v152 + v325);
    swift_endAccess();
    goto LABEL_93;
  }

  v256 = v336;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v121);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v260, v261, v262, v121);
  v263 = v352;
  *v352 = xmmword_1C96B4F40;
  v263[1] = xmmword_1C96B4F50;
  v264 = v332;
  sub_1C9470A40(v256, v332, &qword_1EC3A4A70, &qword_1C96B05D0);
  if (__swift_getEnumTagSinglePayload(v264, 1, v121) == 1)
  {
    v265 = sub_1C96A53C4();
    v266 = v327;
    OUTLINED_FUNCTION_33_12(v265, 0x80000001C96D2510);
    result = OUTLINED_FUNCTION_14_16(v266);
    if (!v139)
    {
      OUTLINED_FUNCTION_28_20();
      OUTLINED_FUNCTION_40_10();
      v256();
      OUTLINED_FUNCTION_14_16(v264);
      v267 = v334;
      v249 = v350;
      if (!v139)
      {
        sub_1C9470AFC(v264, &qword_1EC3A4A70, &qword_1C96B05D0);
      }

      v268 = v333;
      goto LABEL_71;
    }

    goto LABEL_95;
  }

  OUTLINED_FUNCTION_28_20();
  v271 = v264;
  v268 = v333;
  (v256)(v333, v271, v121);
  sub_1C96A53C4();
  v267 = v334;
LABEL_71:
  (v256)(v352 + *(v122 + 32), v268, v121);
  v272 = v365;
  sub_1C9470A40(v365, v267, &qword_1EC3A4A70, &qword_1C96B05D0);
  OUTLINED_FUNCTION_14_16(v267);
  if (!v139)
  {
    OUTLINED_FUNCTION_36_9(v272);
    OUTLINED_FUNCTION_36_9(v336);
    v275 = OUTLINED_FUNCTION_39_10();
    (v256)(v275);
LABEL_76:
    v276 = v369;
    v277 = v352;
    OUTLINED_FUNCTION_40_10();
    v256();
    *(v277 + *(v276 + 40)) = 1;
    OUTLINED_FUNCTION_0_104();
    v278 = v277;
    v269 = v343;
    sub_1C9482980(v278, v343, v279);
    v280 = v351;
    v281 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v281, v282, v276);
    v149 = v366;
    if (!v139)
    {
      sub_1C9470AFC(v280, &qword_1EC3A62F0, &qword_1C96B51D0);
    }

    goto LABEL_78;
  }

  sub_1C96A4754();
  result = OUTLINED_FUNCTION_14_16(v249);
  if (!v139)
  {
    OUTLINED_FUNCTION_36_9(v272);
    OUTLINED_FUNCTION_36_9(v336);
    v273 = OUTLINED_FUNCTION_39_10();
    (v256)(v273);
    v274 = v334;
    OUTLINED_FUNCTION_14_16(v334);
    if (!v139)
    {
      sub_1C9470AFC(v274, &qword_1EC3A4A70, &qword_1C96B05D0);
    }

    goto LABEL_76;
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A6344();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_1C949A950(v0, type metadata accessor for Location);
}

id OUTLINED_FUNCTION_25_11()
{
  v2 = *(v0 + 2648);

  return v2;
}

void OUTLINED_FUNCTION_25_18(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = v5;
  a1[1] = v4;
  v8 = (v7 + *(v6 + 32));
  *v8 = a3;
  v8[1] = a4;
}

uint64_t OUTLINED_FUNCTION_25_19()
{
}

id OUTLINED_FUNCTION_25_20(float a1)
{
  *v2 = a1;
  *(v3 - 136) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_25_21@<X0>(uint64_t a1@<X8>)
{

  return sub_1C949A614(v2, v1 - a1);
}

void OUTLINED_FUNCTION_25_22()
{

  sub_1C949C668();
}

void OUTLINED_FUNCTION_25_23(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0x3F847AE147AE147BLL;
  *(a1 + 16) = 15;
  *(a1 + 24) = 0x41C2CC0300000000;
}

uint64_t OUTLINED_FUNCTION_25_24(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C74();
}

uint64_t OUTLINED_FUNCTION_27_5(__n128 a1, __n128 a2)
{
  **(v2 + 16) = *(v2 + 40);

  return sub_1C96A7844();
}

uint64_t OUTLINED_FUNCTION_27_14()
{
}

void *OUTLINED_FUNCTION_27_15(void *a1)
{

  return memcpy(a1, (v1 - 160), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_27_17(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1, unint64_t a2)
{

  return sub_1C94D48EC(a1, a2, v2, v3);
}

uint64_t AppConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v380 = a2;
  v379 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v371 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24();
  v372 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_51_0();
  v373 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_24();
  v369 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_1();
  v374 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_1();
  v368 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_1();
  v370 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_1();
  v381 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51_0();
  v377 = v20;
  v21 = OUTLINED_FUNCTION_15_4();
  v382 = type metadata accessor for LocationsConfiguration(v21);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24();
  v383 = v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_0();
  v378 = v25;
  OUTLINED_FUNCTION_15_4();
  v388 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v376 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14();
  v375 = v29 - v28;
  v30 = OUTLINED_FUNCTION_15_4();
  v384 = type metadata accessor for AppConfiguration(v30);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14();
  v387 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0, &qword_1C96B51D0);
  v35 = OUTLINED_FUNCTION_7(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_24();
  v385 = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_51_0();
  v386 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v40 = OUTLINED_FUNCTION_7(v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v250 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = v250 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A60, &qword_1C96BA160);
  OUTLINED_FUNCTION_1();
  v389 = v47;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v250 - v49;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  v51 = v564;
  sub_1C96A7F44();
  if (v51)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v365 = v42;
  v52 = v388;
  v367 = v50;
  v366 = v45;
  v564 = v46;
  sub_1C946DB4C(a1, &v505);
  v53 = v505;
  v54 = v511;
  v55 = v513;
  v56 = v514;
  v57 = v515;
  v58 = sub_1C947C4C4(a1);
  v364 = 0;
  v321 = v56;
  v307 = v55;
  v362 = v58;
  v308 = v54;
  v309 = v53;
  v363 = v60;
  v310 = a1;
  LOBYTE(v505) = 0;
  OUTLINED_FUNCTION_26_9();
  sub_1C946E298(v61);
  sub_1C96A7C24();
  LOBYTE(v505) = 1;
  OUTLINED_FUNCTION_8_32();
  v338 = v555;
  v337 = v556;
  LOBYTE(v505) = 2;
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v336 = v553;
  v335 = v554;
  LOBYTE(v505) = 3;
  OUTLINED_FUNCTION_8_32();
  v334 = v551;
  v333 = v552;
  LOBYTE(v505) = 4;
  OUTLINED_FUNCTION_8_32();
  v332 = v549;
  v331 = v550;
  LOBYTE(v505) = 5;
  OUTLINED_FUNCTION_8_32();
  v327 = v547;
  v326 = v548;
  LOBYTE(v505) = 6;
  OUTLINED_FUNCTION_8_32();
  v324 = v545;
  v323 = v546;
  LOBYTE(v505) = 7;
  sub_1C946E2DC();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v62 = v541;
  v63 = v542;
  v262 = v543;
  v263 = v544;
  type metadata accessor for EndpointConfiguration(0);
  LOBYTE(v505) = 8;
  sub_1C946E298(&unk_1EDB7E3F0);
  OUTLINED_FUNCTION_62_3();
  v322 = sub_1C96A7C34();
  LOBYTE(v505) = 9;
  sub_1C946EF04();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v325 = v540;
  LOBYTE(v505) = 10;
  sub_1C947DAE8();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v328 = v536;
  v329 = v537;
  v267 = v539;
  v268 = v538;
  LOBYTE(v505) = 11;
  sub_1C947E0C4();
  OUTLINED_FUNCTION_13_30();
  sub_1C96A7C24();
  v330 = v535;
  LOBYTE(v505) = 12;
  OUTLINED_FUNCTION_18_23();
  sub_1C946E298(v64);
  v65 = v382;
  sub_1C96A7C24();
  LOBYTE(v403) = 13;
  sub_1C947F2F8();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v276 = v505;
  v352 = v506;
  v348 = v507;
  v347 = v508;
  v561 = v509;
  v562 = v510;
  v349 = v511;
  v350 = v512;
  v346 = v513;
  v272 = BYTE1(v514);
  v273 = v514;
  v559 = *(&v514 + 2);
  v560 = HIWORD(v514);
  v66 = v515;
  v67 = v516;
  v339 = v517;
  v68 = v518;
  v69 = v519;
  v70 = v520;
  v71 = v521;
  v72 = v522;
  v345 = v523;
  v344 = v524;
  v353 = v525;
  v311 = v526;
  v343 = v527;
  v342 = v528;
  v341 = v529;
  v340 = v530;
  v558 = v532;
  v557 = v531;
  v351 = v533;
  v271 = v534;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A68, &qword_1C96BA168);
  LOBYTE(v403) = 14;
  sub_1C9478FAC(&unk_1EDB7CEB8);
  OUTLINED_FUNCTION_62_3();
  sub_1C96A7C24();
  v275 = v504;
  LOBYTE(v403) = 15;
  sub_1C94790E0();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v265 = v494;
  v274 = v495;
  v264 = v496;
  v282 = v497;
  v281 = v498;
  v283 = v500;
  v277 = v501;
  v279 = v502;
  v280 = v499;
  v278 = v503;
  LOBYTE(v403) = 16;
  sub_1C94793D0();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v269 = v492;
  v270 = v493;
  LOBYTE(v403) = 17;
  sub_1C9481108();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v284 = v481;
  v285 = v480;
  v291 = v484;
  v250[4] = v485;
  v250[2] = v483;
  v250[3] = v486;
  v250[1] = v487;
  v289 = v488;
  v290 = v489;
  v286 = v482;
  v287 = v490;
  v288 = v491;
  LOBYTE(v403) = 18;
  sub_1C9479FEC();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v354 = v470;
  v355 = v471;
  v356 = v472;
  v357 = v473;
  v358 = v474;
  v359 = v475;
  v360 = v476;
  v361 = v477;
  v293 = v478;
  v292 = v479;
  LOBYTE(v403) = 19;
  sub_1C947A854();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v254 = v465;
  v255 = v464;
  v251 = v467;
  v252 = v466;
  v253 = v468;
  v294 = v469;
  LOBYTE(v403) = 28;
  sub_1C947AF60();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v314 = v458;
  v313 = v459;
  v312 = v460;
  v299 = v462;
  v300 = v461;
  v295 = v463;
  LOBYTE(v403) = 20;
  sub_1C948FB54();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v303 = v453;
  v304 = v454;
  v302 = v455;
  v266 = v456;
  v301 = v457;
  LOBYTE(v403) = 22;
  sub_1C9481978();
  v306 = v57;
  sub_1C96A53C4();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v305 = v452;
  LOBYTE(v403) = 23;
  sub_1C9481B7C();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  LOBYTE(v403) = 24;
  sub_1C947BD1C();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v315 = v447;
  v316 = v448;
  v317 = v449;
  v318 = v450;
  v298 = v451;
  LOBYTE(v403) = 25;
  sub_1C9481C9C();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v296 = v445;
  v297 = v446;
  LOBYTE(v403) = 26;
  sub_1C948BCF4();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  v259 = v439;
  v260 = v440;
  v320 = v442;
  v256 = v441;
  v257 = v443;
  v261 = v444;
  LOBYTE(v403) = 27;
  sub_1C9482228();
  OUTLINED_FUNCTION_3_38();
  sub_1C96A7C24();
  memcpy(__dst, v436, sizeof(__dst));
  v319 = v437;
  v258 = v438;
  v73 = v52;
  v74 = v365;
  sub_1C9470AA0(v366, v365, &unk_1EC3A5430, &unk_1C96AAB30);
  v75 = OUTLINED_FUNCTION_94();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, v76, v52);
  if (EnumTagSinglePayload == 1)
  {
    sub_1C96A53C4();
    sub_1C96A53C4();
    v78 = v375;
    sub_1C96A4954();
    v79 = OUTLINED_FUNCTION_94();
    v81 = __swift_getEnumTagSinglePayload(v79, v80, v73);
    v82 = v384;
    v83 = v379;
    v84 = v376;
    if (v81 != 1)
    {
      sub_1C9470AFC(v74, &unk_1EC3A5430, &unk_1C96AAB30);
    }
  }

  else
  {
    v84 = v376;
    v78 = v375;
    (*(v376 + 32))(v375, v74, v73);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v82 = v384;
    v83 = v379;
  }

  v85 = v387;
  (*(v84 + 32))(v387, v78, v73);
  v86 = v338;
  if (v337)
  {
    v86 = 86400.0;
  }

  *(v85 + v82[5]) = v86;
  v87 = 3;
  if (!v335)
  {
    v87 = v336;
  }

  *(v85 + v82[6]) = v87;
  v88 = 0x411A5E0000000000;
  if (!v333)
  {
    v88 = v334;
  }

  *(v85 + v82[7]) = v88;
  v89 = 0x40BF400000000000;
  v90 = v332;
  if (v331)
  {
    v90 = 8000.0;
  }

  *(v85 + v82[8]) = v90;
  if (!v326)
  {
    v89 = v327;
  }

  *(v85 + v82[9]) = v89;
  v388 = 0x40F5180000000000;
  v91 = v324;
  if (v323)
  {
    v91 = 86400.0;
  }

  *(v85 + v82[10]) = v91;
  if (v62 == 2)
  {
    LOBYTE(v62) = 0;
    v92 = 0x41C2CC0300000000;
    v93 = 15;
    v63 = 0x3F847AE147AE147BLL;
    v94 = v385;
    v95 = v330;
    v96 = v328;
  }

  else
  {
    v94 = v385;
    v95 = v330;
    v96 = v328;
    v92 = v263;
    v93 = v262;
  }

  v97 = v322;
  v98 = v387 + v82[11];
  *v98 = v62 & 1;
  *(v98 + 8) = v63;
  *(v98 + 16) = v93;
  *(v98 + 24) = v92;
  if (v97)
  {
    v99 = v381;
    v100 = v329;
  }

  else
  {
    v99 = v381;
    v100 = v329;
    if (qword_1EDB7BF10 != -1)
    {
      OUTLINED_FUNCTION_23_18();
      swift_once();
    }

    OUTLINED_FUNCTION_31_5();
    swift_beginAccess();
    v97 = sub_1C96A53C4();
    v94 = v385;
  }

  v101 = v387;
  *(v387 + v82[12]) = v97;
  OUTLINED_FUNCTION_57_2((v325 == 2) | v325);
  if (v96)
  {
    v103 = v267;
    v102 = v268;
  }

  else
  {
    v102 = 0;
    v103 = 0;
    v100 = 1.0;
    v96 = &unk_1F48FACF0;
  }

  v104 = (v101 + v82[14]);
  *v104 = v96;
  v104[1] = v100;
  *(v104 + 2) = v102;
  *(v104 + 3) = v103;
  if (v95)
  {
    v105 = v339;
  }

  else
  {
    v105 = v339;
    if (qword_1EDB7D890 != -1)
    {
      OUTLINED_FUNCTION_0_62();
      swift_once();
    }

    v95 = qword_1EDB7D898;
    sub_1C96A53C4();
  }

  *(v101 + v82[15]) = v95;
  sub_1C9470AA0(v386, v94, &qword_1EC3A62F0, &qword_1C96B51D0);
  v106 = OUTLINED_FUNCTION_94();
  if (__swift_getEnumTagSinglePayload(v106, v107, v65) == 1)
  {
    v108 = v377;
    v109 = OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v109, v110, 1, v83);
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v83);
    v111 = v383;
    *v383 = xmmword_1C96B4F40;
    v111[1] = xmmword_1C96B4F50;
    v112 = v108;
    v113 = v370;
    sub_1C9470AA0(v112, v370, &qword_1EC3A4A70, &qword_1C96B05D0);
    v114 = OUTLINED_FUNCTION_94();
    if (__swift_getEnumTagSinglePayload(v114, v115, v83) == 1)
    {
      v116 = v368;
      OUTLINED_FUNCTION_52();
      sub_1C96A4754();
      result = OUTLINED_FUNCTION_14_16(v116);
      if (v117)
      {
        __break(1u);
        goto LABEL_116;
      }

      v118 = *(v371 + 32);
      v118(v373, v116, v83);
      v119 = OUTLINED_FUNCTION_94();
      if (__swift_getEnumTagSinglePayload(v119, v120, v83) != 1)
      {
        sub_1C9470AFC(v113, &qword_1EC3A4A70, &qword_1C96B05D0);
      }

      v121 = v373;
    }

    else
    {
      v118 = *(v371 + 32);
      v124 = v113;
      v121 = v373;
      v118(v373, v124, v83);
    }

    v125 = v374;
    v118(v383 + v65[8], v121, v83);
    sub_1C9470AA0(v99, v125, &qword_1EC3A4A70, &qword_1C96B05D0);
    OUTLINED_FUNCTION_14_16(v125);
    if (!v117)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1C9470AFC(v128, v129, v130);
      OUTLINED_FUNCTION_41_7();
      v65 = v382;
      sub_1C9470AFC(v131, v132, v133);
      v134 = v372;
      v118(v372, v125, v83);
LABEL_49:
      v135 = v383;
      v118(v383 + v65[9], v134, v83);
      *(v135 + v65[10]) = 1;
      OUTLINED_FUNCTION_0_74();
      v136 = v135;
      v122 = v378;
      sub_1C9482928(v136, v378);
      v137 = v385;
      v138 = OUTLINED_FUNCTION_94();
      v140 = __swift_getEnumTagSinglePayload(v138, v139, v65);
      v82 = v384;
      v101 = v387;
      v123 = v311;
      if (v140 != 1)
      {
        sub_1C9470AFC(v137, &qword_1EC3A62F0, &qword_1C96B51D0);
      }

      goto LABEL_51;
    }

    v126 = v369;
    OUTLINED_FUNCTION_52();
    sub_1C96A4754();
    result = OUTLINED_FUNCTION_14_16(v126);
    if (!v117)
    {
      sub_1C9470AFC(v381, &qword_1EC3A4A70, &qword_1C96B05D0);
      sub_1C9470AFC(v377, &qword_1EC3A4A70, &qword_1C96B05D0);
      v134 = v372;
      v118(v372, v126, v83);
      v127 = v374;
      OUTLINED_FUNCTION_14_16(v374);
      if (!v117)
      {
        sub_1C9470AFC(v127, &qword_1EC3A4A70, &qword_1C96B05D0);
      }

      goto LABEL_49;
    }

LABEL_116:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_0_74();
  v122 = v378;
  sub_1C9482928(v94, v378);
  v123 = v311;
LABEL_51:
  OUTLINED_FUNCTION_0_74();
  sub_1C9482928(v122, v101 + v141);
  v142 = v276;
  v403 = v276;
  v404 = v352;
  v405 = v348;
  v406 = v347;
  v407 = v561;
  v408 = v562;
  v409 = v349;
  v410 = v350;
  v411 = v346;
  v144 = v272;
  v143 = v273;
  v412 = v273;
  v413 = v272;
  v414 = v559;
  v415 = v560;
  v416 = v66;
  v417 = v67;
  v418 = v105;
  v419 = v68;
  v420 = v69;
  v421 = v70;
  v422 = v71;
  v423 = v72;
  v424 = v345;
  v425 = v344;
  v426 = v353;
  v427 = v123;
  v428 = v343;
  v429 = v342;
  v430 = v341;
  v431 = v340;
  v433 = v558;
  v432 = v557;
  v434 = v351;
  v145 = v271;
  v435 = v271;
  if (sub_1C94829E0(&v403) == 1)
  {
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    OUTLINED_FUNCTION_31_5();
    swift_beginAccess();
    v142 = off_1EDB7EF20;
    sub_1C96A53C4();
    v143 = 0;
    v144 = 0;
    v123 = 0;
    v72 = 9.5;
    OUTLINED_FUNCTION_63_3();
    v66 = 11.0;
    v147 = 2;
    v145 = 100;
    v148 = 20;
    v71 = 0x4022333333333333;
    v67 = 0x4021CCCCCCCCCCCDLL;
    v149 = 0xC0BC200000000000;
    v150 = 0xC0F5180000000000;
    v151 = 2;
    v152 = 2;
    v153 = 0xC0F5180000000000;
    v154 = 9.0;
    v155 = 7.5;
    v156 = 2;
    v157 = 2;
    v158 = 2;
    v159 = 2;
  }

  else
  {
    v401 = v561;
    v402 = v562;
    v399 = v559;
    v400 = v560;
    v397 = v557;
    v398 = v558;
    v146 = v353;
    v147 = v352;
    v148 = v351;
    v149 = v350;
    v150 = v349;
    v151 = v348;
    v152 = v347;
    v153 = v346;
    v154 = v345;
    v155 = v344;
    v156 = v343;
    v157 = v342;
    v158 = v341;
    v159 = v340;
  }

  v160 = v101 + v82[17];
  *v160 = v142;
  *(v160 + 8) = v147;
  *(v160 + 9) = v151;
  *(v160 + 10) = v152;
  *(v160 + 11) = v401;
  *(v160 + 15) = v402;
  *(v160 + 16) = v150;
  *(v160 + 24) = v149;
  *(v160 + 32) = v153;
  *(v160 + 40) = v143;
  *(v160 + 41) = v144;
  *(v160 + 42) = v399;
  *(v160 + 46) = v400;
  *(v160 + 48) = v66;
  *(v160 + 56) = v67;
  *(v160 + 64) = v105;
  *(v160 + 72) = v68;
  *(v160 + 80) = v69;
  *(v160 + 88) = v70;
  *(v160 + 96) = v71;
  *(v160 + 104) = v72;
  *(v160 + 112) = v154;
  *(v160 + 120) = v155;
  *(v160 + 128) = v146;
  *(v160 + 136) = v123;
  *(v160 + 137) = v156;
  *(v160 + 138) = v157;
  *(v160 + 139) = v158;
  *(v160 + 140) = v159;
  *(v160 + 143) = v398;
  *(v160 + 141) = v397;
  v161 = MEMORY[0x1E69E7CC0];
  *(v160 + 144) = v148;
  *(v160 + 152) = v145;
  v162 = v275;
  if (!v275)
  {
    v162 = v161;
  }

  *(v101 + v82[18]) = v162;
  v163 = v283;
  v164 = v282;
  v166 = v280;
  v165 = v281;
  v167 = v278;
  v168 = v279;
  v169 = v277;
  v170 = v274;
  if (v274)
  {
    v161 = v274;
    v171 = v318;
    v172 = v317;
    v173 = v316;
    v174 = v315;
    v175 = v314;
    v176 = v313;
    v177 = v312;
    v170 = v265;
    v178 = v264;
  }

  else
  {
    v178 = 0;
    v164 = 0;
    v163 = 0;
    v165 = 1;
    v166 = 1;
    v169 = 1;
    v168 = v161;
    v167 = &unk_1F48FC078;
    v171 = v318;
    v172 = v317;
    v173 = v316;
    v174 = v315;
    v175 = v314;
    v176 = v313;
    v177 = v312;
  }

  v179 = v169 & 1;
  v396 = v179;
  v180 = v101 + v82[19];
  *v180 = v170 & 1;
  *(v180 + 8) = v161;
  *(v180 + 16) = v178 & 1;
  *(v180 + 17) = v164 & 1;
  *(v180 + 18) = v165 & 1;
  *(v180 + 24) = v166;
  *(v180 + 32) = v163;
  *(v180 + 40) = v179;
  *(v180 + 48) = v168;
  *(v180 + 56) = v167;
  OUTLINED_FUNCTION_59_2();
  if (v117)
  {
    v182 = 1;
  }

  else
  {
    v182 = 0;
  }

  OUTLINED_FUNCTION_44_5(v182 | v181);
  v190 = "https://support.apple.com/HT211777";
  if (v291 == 1)
  {
    sub_1C96A4EE4();
    v145 = sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_24_15();
      swift_once();
    }

    sub_1C96A4EB4();

    v183 = xmmword_1C96B4FD0;
    v184 = xmmword_1C96B4FC0;
    v185 = 80000.0;
    v186 = 10000.0;
    v187 = 2700.0;
    v188 = 900.0;
    v189 = 900.0;
  }

  OUTLINED_FUNCTION_33_6(v82[21], v183, v184, v185, v186, v187, v188, v189);
  v393[0] = v354;
  v393[1] = v355;
  v393[2] = v356;
  v393[3] = v357;
  v393[4] = v358;
  v393[5] = v359;
  v393[6] = v360;
  v393[7] = v361;
  v394 = v293;
  v395 = v292;
  sub_1C948CB7C(v393);
  OUTLINED_FUNCTION_32_4();
  v193 = vbslq_s8(v192, xmmword_1C96B4FE0, v355);
  *v194 = vbslq_s8(v192, v191, v354);
  v194[1] = v193;
  v195 = vbslq_s8(v192, xmmword_1C96B5000, v357);
  v194[2] = vbslq_s8(v192, xmmword_1C96B4FF0, v356);
  v194[3] = v195;
  v196 = vbslq_s8(v192, xmmword_1C96B5020, v359);
  v194[4] = vbslq_s8(v192, xmmword_1C96B5010, v358);
  v194[5] = v196;
  v197 = vbslq_s8(v192, xmmword_1C96B5030, v360);
  v198 = vbslq_s8(v192, xmmword_1C96B5040, v361);
  v194[6] = v197;
  v194[7] = v198;
  v194[8].i64[0] = v199;
  OUTLINED_FUNCTION_59_2();
  if (v117)
  {
    *&v204 = OUTLINED_FUNCTION_66_3();
    v205 = *(v202 + 80);
    v201 = 1;
    v206 = 10;
    v207 = 0x4143C68000000000;
    v208 = 0x4143C68000000000;
  }

  else
  {
    v203 = v200 >> 8;
    v205 = v254;
    v204 = v255;
    v206 = v253;
    v208 = v251;
    v207 = v252;
  }

  v209 = v101 + v82[22];
  *v209 = v204;
  *(v209 + 16) = v205;
  *(v209 + 32) = v207;
  *(v209 + 40) = v208;
  *(v209 + 48) = v206;
  *(v209 + 56) = v201;
  *(v209 + 57) = v203;
  v210 = 0.2;
  if (v295)
  {
    v211 = 0.2;
  }

  else
  {
    v211 = v175;
  }

  if (v295)
  {
    v212 = 0.2;
  }

  else
  {
    v212 = v176;
  }

  if (v295)
  {
    v213 = 0.2;
  }

  else
  {
    v213 = v177;
  }

  v214 = v300;
  if (v295)
  {
    v214 = 0.2;
  }

  else
  {
    v210 = v299;
  }

  OUTLINED_FUNCTION_60_3(v82[24], v210, v211, v212, v213, v214);
  if (v215)
  {
    OUTLINED_FUNCTION_65_3();
    v222 = v266;
  }

  else
  {
    OUTLINED_FUNCTION_65_3();
  }

  v223 = v101 + v82[25];
  *v223 = v219;
  *(v223 + 8) = v218;
  *(v223 + 16) = v220;
  *(v223 + 24) = v222;
  *(v223 + 32) = v221 & 1;
  v224 = (v101 + v82[26]);
  v225 = v306;
  *v224 = v217;
  v224[1] = v225;
  if (!v216)
  {
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_1_45();
      swift_once();
    }

    v216 = sub_1C96A53C4();
  }

  *(v101 + v82[27]) = v216;
  v226 = 600.0;
  if (!v298)
  {
    v226 = v174;
  }

  v227 = 3.0;
  if (!v298)
  {
    v227 = v173;
  }

  v228 = 64800.0;
  if (!v298)
  {
    v228 = v172;
  }

  v229 = 5000.0;
  if (!v298)
  {
    v229 = v171;
  }

  v230 = (v101 + v82[29]);
  *v230 = v226;
  v230[1] = v227;
  v230[2] = v228;
  v230[3] = v229;
  v231 = v296;
  if (!v297)
  {
    v231 = 0;
  }

  v232 = 0xE000000000000000;
  if (v297)
  {
    v232 = v297;
  }

  v233 = (v101 + v82[30]);
  *v233 = v231;
  v233[1] = v232;
  if (v145 == 2)
  {
    v234 = 0;
    LOBYTE(v235) = 0;
    v236 = xmmword_1C96B5090;
    v237 = xmmword_1C96B5080;
    v238 = 0x4092C00000000000;
    v239 = 0x404E000000000000;
    v240 = v388;
  }

  else
  {
    v235 = v145 >> 8;
    v234 = v145;
    v238 = v261;
    v237 = v259;
    v236 = v260;
    v239 = v256;
    v240 = v257;
  }

  v241 = v101 + v82[31];
  *v241 = v237;
  *(v241 + 16) = v236;
  *(v241 + 32) = v239;
  *(v241 + 40) = v234;
  *(v241 + 41) = v235;
  *(v241 + 46) = HIWORD(v145);
  *(v241 + 42) = v145 >> 16;
  *(v241 + 48) = v240;
  *(v241 + 56) = v238;
  if (("https://support.apple.com/HT211777" & 0xFF) == 2)
  {
    v391 = 1;
    v565.value = 0.0;
    memset(&v390, 0, 80);
    v390.is_nil = 1;
    v565.is_nil = 0;
    WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(&v392, &v390, 2, v565);
  }

  else
  {
    memcpy(&v392, __dst, 0x50uLL);
    *&v392.useBackgroundReverseGeocodingPriority = "https://support.apple.com/HT211777";
    v392.timelineReloadDebouncingInterval = v258;
  }

  memcpy((v101 + v82[32]), &v392, 0x60uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8, &qword_1C96B51D8);
  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_1C96AA1C0;
  v243 = sub_1C96A4B54();
  if (v243[2])
  {
    v144 = v243[4];
    v190 = v243[5];
    sub_1C96A53C4();
  }

  else
  {
    OUTLINED_FUNCTION_64_3();
  }

  v244 = sub_1C947660C();
  *(v242 + 32) = v144;
  *(v242 + 40) = v190;
  *(v242 + 48) = v244;
  *(v242 + 56) = v245;
  *(v101 + v82[33]) = v242;
  v246 = sub_1C96A4B54();
  if (v246[2])
  {
    v144 = v246[4];
    v190 = v246[5];
    sub_1C96A53C4();
  }

  else
  {
    OUTLINED_FUNCTION_64_3();
  }

  v247 = v363;

  v248 = v362;

  v249 = (v101 + v82[34]);
  *v249 = v144;
  v249[1] = v190;
  *(v101 + v82[35]) = v248;
  sub_1C9470AFC(v386, &qword_1EC3A62F0, &qword_1C96B51D0);
  sub_1C9470AFC(v366, &unk_1EC3A5430, &unk_1C96AAB30);
  (*(v389 + 8))(v367, 0xD000000000000020);
  *(v101 + v82[36]) = v247;
  sub_1C9482928(v101, v380);
  return __swift_destroy_boxed_opaque_existential_1Tm(v310);
}

unint64_t sub_1C9475588()
{
  result = qword_1EDB7F228;
  if (!qword_1EDB7F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F228);
  }

  return result;
}

uint64_t sub_1C94755F0(char a1)
{
  result = 0x726665527473616CLL;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_53_1();
      result = v3 + 10;
      break;
    case 2:
      OUTLINED_FUNCTION_53_1();
      result = v7 + 6;
      break;
    case 3:
      OUTLINED_FUNCTION_53_1();
      result = v8 + 17;
      break;
    case 4:
      OUTLINED_FUNCTION_53_1();
      result = v5 + 23;
      break;
    case 5:
      OUTLINED_FUNCTION_53_1();
      result = v9 + 14;
      break;
    case 6:
      OUTLINED_FUNCTION_53_1();
      result = v10 + 18;
      break;
    case 7:
      result = 0x65726F7453707061;
      break;
    case 8:
      result = 0x746E696F70646E65;
      break;
    case 9:
      result = 0x7365727574616566;
      break;
    case 10:
      result = 0x65646F636F6567;
      break;
    case 11:
      result = 0x6369726F74736968;
      break;
    case 12:
      OUTLINED_FUNCTION_53_1();
      result = v6 | 4;
      break;
    case 13:
      result = 1936744813;
      break;
    case 14:
      OUTLINED_FUNCTION_53_1();
      result = v4 | 8;
      break;
    case 15:
      result = 0x6B726F7774656ELL;
      break;
    case 16:
      result = 1937204590;
      break;
    case 17:
      result = 0x6163696669746F6ELL;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x79636176697270;
      break;
    case 20:
    case 30:
      OUTLINED_FUNCTION_53_1();
      result = v11 | 1;
      break;
    case 21:
      result = 0x655774726F706572;
      break;
    case 22:
      OUTLINED_FUNCTION_53_1();
      result = v12 - 2;
      break;
    case 23:
      result = 0x7374696E75;
      break;
    case 24:
      result = 0x4472656874616577;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
      result = 0x4D72656874616577;
      break;
    case 27:
      result = 0x746567646977;
      break;
    case 28:
      result = 0x7250746567646977;
      break;
    case 29:
      result = 0x65676175676E616CLL;
      break;
    case 31:
      result = 0x6E656D7461657274;
      break;
    case 32:
      result = 0x53746E656D676573;
      break;
    default:
      return result;
  }

  return result;
}

void OUTLINED_FUNCTION_52_1()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return type metadata accessor for Location(0);
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return sub_1C96A6154();
}

_BYTE *storeEnumTagSinglePayload for AppConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
        JUMPOUT(0x1C9475BE0);
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C9475C94()
{
  result = qword_1EDB7E300;
  if (!qword_1EDB7E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E300);
  }

  return result;
}

uint64_t sub_1C9475CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LanguageConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A73F8, &qword_1C96BE290);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9475FB4();
  sub_1C96A7F44();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    sub_1C96A7C24();
    v11 = v18;
    v12 = v19;
    LOBYTE(v20) = 1;
    sub_1C94761D8();
    sub_1C96A7C24();
    v17[0] = v17[1];
    v23.value.onlineFeedbackURL._countAndFlagsBits = v17;
    v13.value._countAndFlagsBits = v11;
    v13.value._object = v12;
    v24 = LanguageConfiguration.init(language:reportWeather:)(v13, v23);
    (*(v7 + 8))(v10, v5, v24.reportWeather.onlineFeedbackURL._countAndFlagsBits, v24.reportWeather.onlineFeedbackURL._object);
    v14 = v21;
    v15 = v22;
    *a2 = v20;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C9475F08()
{
  result = qword_1EDB7E310;
  if (!qword_1EDB7E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E310);
  }

  return result;
}

unint64_t sub_1C9475F60()
{
  result = qword_1EDB7E318;
  if (!qword_1EDB7E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E318);
  }

  return result;
}

unint64_t sub_1C9475FB4()
{
  result = qword_1EDB7E320;
  if (!qword_1EDB7E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E320);
  }

  return result;
}

uint64_t sub_1C9476010(char a1)
{
  if (a1)
  {
    return 0x655774726F706572;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

_BYTE *storeEnumTagSinglePayload for LanguageConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C9476128);
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

uint64_t getEnumTagSinglePayload for NamedNetworkConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C94761D8()
{
  result = qword_1EDB7FC58;
  if (!qword_1EDB7FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC58);
  }

  return result;
}

uint64_t ReportWeatherConfiguration.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55C8, &qword_1C96AE9C0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9476480();
  sub_1C96A7F44();
  if (!v2)
  {
    sub_1C96A7C24();
    v11 = v16[1];
    v17 = v16[0];
    v12 = sub_1C947660C();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    if (v11)
    {

      v12 = v17;
      v14 = v11;
    }

    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C94763D4()
{
  result = qword_1EDB7FC68;
  if (!qword_1EDB7FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC68);
  }

  return result;
}

unint64_t sub_1C947642C()
{
  result = qword_1EDB7FC70;
  if (!qword_1EDB7FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC70);
  }

  return result;
}

unint64_t sub_1C9476480()
{
  result = qword_1EDB7FC78;
  if (!qword_1EDB7FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1C9476594);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s11WeatherMenuVwet(unsigned int *a1, int a2)
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

unint64_t sub_1C947660C()
{
  v0 = sub_1C96A4BE4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A4C14();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4BC4();
  sub_1C96A4BF4();
  (*(v8 + 8))(v11, v6);
  LOBYTE(v11) = Locale.Language.isJapanese.getter();
  (*(v2 + 8))(v5, v0);
  if (v11)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t Locale.Language.isJapanese.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6140, &qword_1C96ADAE8);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_41();
  v4 = sub_1C96A4AE4();
  OUTLINED_FUNCTION_1_53(v4);
  if (v7)
  {
    sub_1C94BE204(v0, &qword_1EC3A6140, &qword_1C96ADAE8);
  }

  else
  {
    sub_1C96A4AC4();
    OUTLINED_FUNCTION_0_82();
    v5 = OUTLINED_FUNCTION_12_7();
    v6(v5);
    v7 = v1 == 24938 && v0 == 0xE200000000000000;
    if (v7)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_10_32(v8, v9, 24938);
      OUTLINED_FUNCTION_11_30();
    }
  }

  return OUTLINED_FUNCTION_8_36();
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1)
{

  return sub_1C96A7B84();
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);

  return sub_1C948C8F0();
}

void *OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a14;

  return __swift_project_boxed_opaque_existential_1(&a11, v15);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return swift_getEnumCaseMultiPayload();
}

void *OUTLINED_FUNCTION_33()
{

  return memcpy((v0 + 1184), (v1 - 256), 0x98uLL);
}

void OUTLINED_FUNCTION_29_8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_29_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t result, char a2)
{
  *(v2 - 120) = result;
  *(v2 - 112) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_29_12()
{
  v2 = *(v0 - 240);
  *(v0 - 456) = *(v0 - 248);
  *(v0 - 432) = v2;

  return sub_1C95087DC(v0 - 248, v0 - 320);
}

uint64_t OUTLINED_FUNCTION_29_14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C9476AEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

WeatherCore::LanguageConfiguration __swiftcall LanguageConfiguration.init(language:reportWeather:)(Swift::String_optional language, WeatherCore::ReportWeatherConfiguration_optional reportWeather)
{
  object = language.value._object;
  countAndFlagsBits = language.value._countAndFlagsBits;
  v5 = v2;
  v6 = *reportWeather.value.onlineFeedbackURL._countAndFlagsBits;
  v7 = *(reportWeather.value.onlineFeedbackURL._countAndFlagsBits + 8);
  v8 = sub_1C96A4B54();
  if (v8[2])
  {
    v10 = v8[4];
    v9 = v8[5];
    sub_1C96A53C4();
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x53552D6E65;
  }

  if (!object)
  {
    countAndFlagsBits = v10;
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = object;
  if (!v7)
  {
LABEL_6:
    v11 = sub_1C947660C();
    v6 = v11;
    v7 = v12;
  }

LABEL_7:
  *v5 = countAndFlagsBits;
  v5[1] = v9;
  v5[2] = v6;
  v5[3] = v7;
  result.reportWeather.onlineFeedbackURL._object = v14;
  result.reportWeather.onlineFeedbackURL._countAndFlagsBits = v13;
  result.language._object = v12;
  result.language._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1C9476BD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *sub_1C9476C24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v43 = a5;
  v5 = a1[2];
  v41 = a1;
  v6 = (a1 + 7);
  v7 = MEMORY[0x1E69E7CC8];
  v40 = v5;
  if (v5)
  {
    while (1)
    {
      v46 = v5;
      v48 = v6;
      v50 = *(v6 - 8);
      v8 = sub_1C96A70B4();
      v10 = v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_1C9476F90(v8, v10);
      if (__OFADD__(v7[2], (v12 & 1) == 0))
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AA0, &qword_1C96BA470);
      if (sub_1C96A7B84())
      {
        v15 = sub_1C9476F90(v8, v10);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_28;
        }

        v13 = v15;
      }

      if (v14)
      {

        OUTLINED_FUNCTION_68_1((v7[7] + 32 * v13), v39, v40, v41, v42, v43, v44, v45, v46, v48, v50);
      }

      else
      {
        v7[(v13 >> 6) + 8] |= 1 << v13;
        v17 = (v7[6] + 16 * v13);
        *v17 = v8;
        v17[1] = v10;
        OUTLINED_FUNCTION_68_1((v7[7] + 32 * v13), v39, v40, v41, v42, v43, v44, v45, v46, v48, v50);

        v18 = v7[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_27;
        }

        v7[2] = v20;
      }

      v6 = v49 + 32;
      v5 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1C96A7E44();
    __break(1u);
  }

  else
  {
LABEL_11:
    v21 = *(v42 + 16);
    v22 = v42 + 40;
    if (!v21)
    {
LABEL_15:

      v28 = v45;
      v29 = v40;
      if (!v40)
      {
        return sub_1C94FB268(v41, v43);
      }

      for (i = v41 + 7; ; i += 4)
      {
        if (v28)
        {
          v32 = *(i - 1);
          v31 = *i;
          v34 = *(i - 3);
          v33 = *(i - 2);
          sub_1C946DFF0();
          sub_1C96A53C4();
          sub_1C96A53C4();
          result = sub_1C96A7994();
          if (!result)
          {
            *v43 = v34;
            v43[1] = v33;
            v43[2] = v32;
            v43[3] = v31;
            return result;
          }

          v28 = v45;
        }

        if (!--v29)
        {
          return sub_1C94FB268(v41, v43);
        }
      }
    }

    while (1)
    {
      v23 = sub_1C96A70B4();
      v25 = v24;
      if (v7[2])
      {
        v26 = v23;
        sub_1C96A53C4();
        sub_1C9476F90(v26, v25);
        LOBYTE(v26) = v27;

        if (v26)
        {
          break;
        }
      }

      v22 += 16;
      if (!--v21)
      {
        goto LABEL_15;
      }
    }

    v36 = sub_1C96A70B4();
    v38 = v37;

    sub_1C94FA7EC(v36, v38, v7, v43);
  }

  return result;
}

unint64_t sub_1C9476F90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_23_6();
  sub_1C96A7144();
  v4 = sub_1C96A7F24();

  return sub_1C9476FFC(a1, a2, v4);
}

unint64_t sub_1C9476FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C96A7DE4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C94770D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C96A4764();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t MapsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64D8, &qword_1C96B6290);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9477884();
  sub_1C96A7F44();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v61 = v7;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A64E0, &qword_1C96B6298);
  LOBYTE(v72[0]) = 0;
  sub_1C94779B8(&qword_1EDB7CEF0, &qword_1EDB7EF00, &protocol conformance descriptor for MapsConfiguration.EndpointConfiguration, MEMORY[0x1E69E6330]);
  sub_1C96A7C24();
  v57 = v88;
  OUTLINED_FUNCTION_11_24(1);
  OUTLINED_FUNCTION_5_30(v12, v72);
  v60 = v87;
  OUTLINED_FUNCTION_11_24(2);
  OUTLINED_FUNCTION_5_30(v13, v72);
  v59 = v86;
  OUTLINED_FUNCTION_11_24(3);
  OUTLINED_FUNCTION_10_24();
  v14 = v84;
  v58 = v85;
  OUTLINED_FUNCTION_11_24(4);
  OUTLINED_FUNCTION_10_24();
  v15 = v82;
  v56 = v83;
  OUTLINED_FUNCTION_11_24(5);
  OUTLINED_FUNCTION_10_24();
  v16 = v80;
  v54 = v81;
  OUTLINED_FUNCTION_11_24(6);
  OUTLINED_FUNCTION_5_30(v17, v72);
  v52 = v79;
  OUTLINED_FUNCTION_11_24(7);
  sub_1C94788F4();
  sub_1C96A7C24();
  v50 = v78;
  OUTLINED_FUNCTION_12_25(8);
  sub_1C947FA08();
  sub_1C96A7C24();
  v44 = v72[1];
  v41 = v72[0];
  v45 = v72[3];
  v43 = v72[2];
  v19 = v73;
  v18 = v74;
  v42 = v75;
  v46 = v76;
  v48 = v77;
  OUTLINED_FUNCTION_12_25(9);
  OUTLINED_FUNCTION_5_30(v20, v63);
  v55 = v71;
  OUTLINED_FUNCTION_12_25(10);
  OUTLINED_FUNCTION_5_30(v21, v63);
  v53 = v70;
  OUTLINED_FUNCTION_12_25(11);
  OUTLINED_FUNCTION_5_30(v22, v63);
  v51 = v69;
  OUTLINED_FUNCTION_12_25(12);
  OUTLINED_FUNCTION_5_30(v23, v63);
  v49 = v68;
  OUTLINED_FUNCTION_12_25(13);
  OUTLINED_FUNCTION_19_16();
  v47 = v66;
  v24 = v67;
  OUTLINED_FUNCTION_12_25(14);
  OUTLINED_FUNCTION_19_16();
  v25 = v64;
  v26 = v65;
  v27 = sub_1C947FE2C(v57);

  if (!v27)
  {
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    OUTLINED_FUNCTION_108();
    swift_beginAccess();
    v27 = off_1EDB7EF20;
    sub_1C96A53C4();
  }

  (*(v61 + 8))(v10, v5);
  v28 = -86400.0;
  if (v58)
  {
    v29 = -86400.0;
  }

  else
  {
    v29 = v14;
  }

  v30 = -7200.0;
  if (!v56)
  {
    v30 = v15;
  }

  if (!v54)
  {
    v28 = v16;
  }

  v31 = v52 & 1;
  v32 = v50;
  if (v50 == 4)
  {
    v32 = 0;
  }

  if (v48)
  {
    v33 = 0;
    v34 = xmmword_1C96B4FA0;
    v35 = xmmword_1C96B4F90;
    v36 = xmmword_1C96B4F80;
    v37 = xmmword_1C96B4F70;
    v38 = 0x401C000000000000;
    v18 = 7.5;
    v19 = 9.0;
  }

  else
  {
    v33 = v46;
    v34 = v45;
    v36 = v44;
    v35 = v43;
    v38 = v42;
    v37 = v41;
  }

  *a2 = v27;
  v39 = 20;
  if (!v24)
  {
    v39 = v47;
  }

  *(a2 + 8) = v60;
  v40 = 100;
  *(a2 + 9) = v59;
  if (!v26)
  {
    v40 = v25;
  }

  *(a2 + 10) = 2;
  *(a2 + 16) = v29;
  *(a2 + 24) = v30;
  *(a2 + 32) = v28;
  *(a2 + 40) = v31;
  *(a2 + 41) = v32;
  *(a2 + 48) = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v35;
  *(a2 + 96) = v34;
  *(a2 + 112) = v19;
  *(a2 + 120) = v18;
  *(a2 + 128) = v38;
  *(a2 + 136) = v33;
  *(a2 + 137) = v55;
  *(a2 + 138) = v53;
  *(a2 + 139) = v51;
  *(a2 + 140) = v49;
  *(a2 + 144) = v39;
  *(a2 + 152) = v40;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C94777DC()
{
  result = qword_1EDB7EE50;
  if (!qword_1EDB7EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE50);
  }

  return result;
}

unint64_t sub_1C9477830()
{
  result = qword_1EDB7EE58;
  if (!qword_1EDB7EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE58);
  }

  return result;
}

unint64_t sub_1C9477884()
{
  result = qword_1EDB7EE60[0];
  if (!qword_1EDB7EE60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7EE60);
  }

  return result;
}

uint64_t type metadata accessor for MapsConfiguration.EndpointConfiguration(uint64_t a1)
{
  result = qword_1EDB7EEF0;
  if (!qword_1EDB7EEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9477924(uint64_t a1)
{
  result = sub_1C96A4764();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C94779B8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A64E0, &qword_1C96B6298);
    sub_1C947F368(a2, type metadata accessor for MapsConfiguration.EndpointConfiguration, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C9477A60(char a1)
{
  result = 0x746E696F70646E65;
  switch(a1)
  {
    case 1:
      result = 0x3250545448657375;
      break;
    case 2:
      OUTLINED_FUNCTION_29_7();
      result = v8 + 6;
      break;
    case 3:
      OUTLINED_FUNCTION_29_7();
      result = v9 + 11;
      break;
    case 4:
      OUTLINED_FUNCTION_29_7();
      result = v5 | 8;
      break;
    case 5:
      result = 0x72617453646E6977;
      break;
    case 6:
      result = 0x6C62617369447761;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6576654C6D6F6F7ALL;
      break;
    case 9:
      OUTLINED_FUNCTION_29_7();
      result = v7 | 2;
      break;
    case 10:
      OUTLINED_FUNCTION_29_7();
      result = v10 + 15;
      break;
    case 11:
      OUTLINED_FUNCTION_29_7();
      result = v4 + 7;
      break;
    case 12:
      OUTLINED_FUNCTION_29_7();
      result = v6 - 4;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      OUTLINED_FUNCTION_29_7();
      result = v3 - 3;
      break;
    default:
      return result;
  }

  return result;
}