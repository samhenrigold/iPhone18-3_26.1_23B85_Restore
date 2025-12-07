uint64_t sub_216B4F8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferrerInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DeepLinkSource.init(rawValue:)@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21700F5E4();

  *a2 = v3 != 0;
  return result;
}

uint64_t ProcessDeepLinkAction.init(actionMetrics:url:referrerInfo:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = *a4;
  sub_21700D284();
  OUTLINED_FUNCTION_9();
  (*(v14 + 32))(a5, a1);
  v15 = type metadata accessor for ProcessDeepLinkAction(0);
  v16 = v15[5];
  sub_217005EF4();
  OUTLINED_FUNCTION_9();
  (*(v17 + 32))(a5 + v16, a2);
  v18 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_2_112();
  if (v19)
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
    OUTLINED_FUNCTION_2_112();
    if (!v19)
    {
      sub_216697664(a3, &qword_27CAB6FD0, &qword_21701D5F0);
    }
  }

  else
  {
    sub_216B4F8FC(a3, v12);
    OUTLINED_FUNCTION_5_82();
  }

  result = sub_21693FB5C(v12, a5 + v15[6]);
  *(a5 + v15[7]) = v13;
  return result;
}

uint64_t ProcessDeepLinkAction.actionMetrics.getter()
{
  OUTLINED_FUNCTION_8_1();
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t ProcessDeepLinkAction.url.getter()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = *(type metadata accessor for ProcessDeepLinkAction(v2) + 20);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t ProcessDeepLinkAction.referrerInfo.getter()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = v1 + *(type metadata accessor for ProcessDeepLinkAction(v2) + 24);

  return sub_2168CC268(v3, v0);
}

uint64_t ProcessDeepLinkAction.source.getter()
{
  v2 = OUTLINED_FUNCTION_8_1();
  result = type metadata accessor for ProcessDeepLinkAction(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

unint64_t sub_216B4FD88()
{
  result = qword_27CAC37B0;
  if (!qword_27CAC37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC37B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeepLinkSource(_BYTE *result, int a2, int a3)
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

unint64_t sub_216B4FEB0()
{
  result = qword_27CAC37B8;
  if (!qword_27CAC37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC37B8);
  }

  return result;
}

uint64_t sub_216B4FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v6[8] = v7;
  OUTLINED_FUNCTION_2(v7);
  v6[9] = v8;
  v6[10] = OUTLINED_FUNCTION_80();
  v9 = sub_21700DA84();
  v6[11] = v9;
  OUTLINED_FUNCTION_2(v9);
  v6[12] = v10;
  v6[13] = OUTLINED_FUNCTION_80();
  v11 = sub_21700D2A4();
  v6[14] = v11;
  OUTLINED_FUNCTION_2(v11);
  v6[15] = v12;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360, &unk_217041900);
  v6[18] = OUTLINED_FUNCTION_80();
  v13 = sub_2170075A4();
  v6[19] = v13;
  OUTLINED_FUNCTION_2(v13);
  v6[20] = v14;
  v6[21] = OUTLINED_FUNCTION_80();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v6[22] = v15;
  OUTLINED_FUNCTION_2(v15);
  v6[23] = v16;
  v6[24] = OUTLINED_FUNCTION_80();

  return MEMORY[0x2822009F8](sub_216B50148, 0, 0);
}

uint64_t sub_216B50148()
{
  v1 = v0[4];
  if (!v1)
  {
    sub_217007524();
    type metadata accessor for ObjectGraph(0);
    v2 = swift_dynamicCastClass();
    if (!v2)
    {

      OUTLINED_FUNCTION_1_139();

      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_7_3();

      __asm { BRAA            X1, X16 }
    }

    v1 = v2;
  }

  v0[25] = v1;
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[3];
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();
  sub_216B50AF4(v5, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    sub_216B50B64(v0[18]);
    sub_21700E094();
    (*(v7 + 16))(v9, v6, v8);
    (*(v11 + 104))(v9, *MEMORY[0x277D21E10], v10);
    v12 = swift_task_alloc();
    v0[29] = v12;
    *v12 = v0;
    v12[1] = sub_216B5078C;
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x28217F468](v13, v14, v15, v16, v17);
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[26] = sub_21700D594();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    sub_216B50BCC();
    v19 = swift_task_alloc();
    v0[27] = v19;
    *v19 = v0;
    v19[1] = sub_216B50460;
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x282180360](v20);
  }
}

uint64_t sub_216B50460()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[28] = v0;

  if (v0)
  {
    v6 = sub_216B50680;
  }

  else
  {
    (*(v2[15] + 8))(v2[17], v2[14]);
    v6 = sub_216B505A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_216B505A8()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];

  v4 = OUTLINED_FUNCTION_115();
  v5(v4);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_1_139();

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216B50680()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_115();
  v5(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_216B5078C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[30] = v0;

  v6 = OUTLINED_FUNCTION_115();
  v7(v6);
  if (v0)
  {
    v8 = sub_216B509E8;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v8 = sub_216B50910;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_216B50910()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];

  v4 = OUTLINED_FUNCTION_115();
  v5(v4);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_1_139();

  OUTLINED_FUNCTION_23();

  return v6();
}

uint64_t sub_216B509E8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_115();
  v5(v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_216B50AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360, &unk_217041900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B50B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360, &unk_217041900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216B50BCC()
{
  result = qword_280E2A120;
  if (!qword_280E2A120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6FF0, &unk_217015640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A120);
  }

  return result;
}

BOOL sub_216B50C30(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xEu)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_217048880[a1];
  }

  if (a2 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217048880[a2];
  }

  return v2 == v3;
}

BOOL sub_216B50C7C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xEu)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_217048880[a1];
  }

  if (a2 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217048880[a2];
  }

  return v2 < v3;
}

void sub_216B50CD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_216B50F60(a1, &v21 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    sub_216B50FD0(a1);
LABEL_3:
    v14 = *MEMORY[0x277D269A0];
    sub_2170063E4();
    OUTLINED_FUNCTION_9();
    (*(v15 + 104))(a2, v14);
    sub_216B50FD0(v13);
    return;
  }

  sub_216B50F60(v13, v10);
  sub_21700C414();
  sub_216B51038();
  v16 = OUTLINED_FUNCTION_1_140();
  v17 = *(v5 + 8);
  v17(v7, v4);
  if (v16)
  {
    sub_216B50FD0(a1);
    v17(v10, v4);
  }

  else
  {
    sub_21700C3F4();
    v18 = OUTLINED_FUNCTION_1_140();
    sub_216B50FD0(a1);
    v17(v7, v4);
    v17(v10, v4);
    if ((v18 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_216B50FD0(v13);
  v19 = *MEMORY[0x277D269A8];
  sub_2170063E4();
  OUTLINED_FUNCTION_9();
  (*(v20 + 104))(a2, v19);
}

uint64_t sub_216B50F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B50FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216B51038()
{
  result = qword_27CAC37C0;
  if (!qword_27CAC37C0)
  {
    sub_21700C444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC37C0);
  }

  return result;
}

uint64_t sub_216B510A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B51138, v5, v4);
}

uint64_t sub_216B51138()
{
  v1 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30, &unk_217013D70);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 104))(v2, v3);
  v4 = *MEMORY[0x277D21CA8];
  v5 = sub_21700D2A4();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_216B51260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216B510A0(a1, v6, a3);
}

unint64_t sub_216B51300(uint64_t a1)
{
  result = sub_2166E18AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B51328(uint64_t a1)
{
  result = sub_216B51350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B51350()
{
  result = qword_27CAC37C8[0];
  if (!qword_27CAC37C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CAC37C8);
  }

  return result;
}

unint64_t sub_216B513A8()
{
  result = qword_280E3D7E0[0];
  if (!qword_280E3D7E0[0])
  {
    type metadata accessor for PausePlaybackAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3D7E0);
  }

  return result;
}

void sub_216B51454()
{
  OUTLINED_FUNCTION_49();
  v107 = v0;
  v108 = v1;
  v3 = v2;
  v5 = v4;
  v104 = v6;
  OUTLINED_FUNCTION_16();
  v96 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v10);
  sub_217009124();
  OUTLINED_FUNCTION_1();
  v100 = v12;
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v99 = v13;
  v98 = type metadata accessor for ToolbarProperties(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v97 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980, &qword_217017C60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990, &qword_217017C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
  sub_2167CBD04();
  OUTLINED_FUNCTION_21_41();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v90 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v25);
  v113 = v5;
  v114 = v20;
  v92 = v20;
  v109 = v3;
  v115 = v3;
  v116 = OpaqueTypeConformance2;
  v88[6] = OpaqueTypeConformance2;
  v26 = OUTLINED_FUNCTION_49_23(&v113);
  v27 = sub_2167B2E14();
  v28 = MEMORY[0x277D837D0];
  v113 = OpaqueTypeMetadata2;
  v114 = MEMORY[0x277D837D0];
  v115 = v26;
  v116 = v27;
  v29 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v88[11] = v30;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v32);
  v91 = OpaqueTypeMetadata2;
  v113 = OpaqueTypeMetadata2;
  v114 = v28;
  v88[3] = v26;
  v115 = v26;
  v116 = v27;
  v33 = OUTLINED_FUNCTION_49_23(&v113);
  v113 = v29;
  v114 = v28;
  v115 = v33;
  v116 = v27;
  v34 = MEMORY[0x277CDEA10];
  v35 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v88[9] = v36;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v38);
  v113 = v29;
  v114 = v28;
  v88[2] = v33;
  v115 = v33;
  v116 = v27;
  v105 = OUTLINED_FUNCTION_49_23(&v113);
  v106 = v35;
  v113 = v35;
  v114 = v105;
  v39 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v89 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  OUTLINED_FUNCTION_36(v45);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  v48 = v88 - v47;
  v49 = type metadata accessor for ToolbarConfiguration(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_45_23();
  v102 = v39;
  v51 = v5;
  v52 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v103 = v53;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  v110 = v55;
  sub_2168282D4(v104, v48, &qword_27CAB7930, &qword_21701A250);
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_216697664(v48, &qword_27CAB7930, &qword_21701A250);
    OUTLINED_FUNCTION_48_20();
    v56 = v109;
    sub_2166C24DC(v107, v51, v109);
    v57 = v94;
    sub_2166C24DC(v49, v51, v56);
    OUTLINED_FUNCTION_9_70();
    sub_2166C2CB0();
    v58 = *(v96 + 8);
    v58(v57, v51);
    v58(v49, v51);
  }

  else
  {
    v59 = sub_216B54C58(v48, v34, type metadata accessor for ToolbarConfiguration);
    MEMORY[0x28223BE20](v59);
    v88[-2] = v34;
    OUTLINED_FUNCTION_48_20();
    v88[0] = v51;
    sub_21700AAD4();
    v60 = v93;
    sub_216B53248();
    v62 = *v60;
    v61 = v60[1];
    sub_21700DF14();
    sub_216B1872C(v60, type metadata accessor for ToolbarProperties);
    if (v61)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    if (v61)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    v113 = v63;
    v114 = v64;
    v65 = MEMORY[0x277D837D0];
    v107 = v52;
    OUTLINED_FUNCTION_87_10();
    v66 = v91;
    sub_21700A5D4();

    OUTLINED_FUNCTION_67();
    v67(v49, v66);
    v68 = v95;
    sub_216B53248();
    v70 = *(v68 + 16);
    v69 = *(v68 + 24);
    sub_21700DF14();
    sub_216B1872C(v68, type metadata accessor for ToolbarProperties);
    if (v69)
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    if (v69)
    {
      v72 = v69;
    }

    else
    {
      v72 = 0xE000000000000000;
    }

    v113 = v71;
    v114 = v72;
    OUTLINED_FUNCTION_48_20();
    sub_21700A6D4();

    OUTLINED_FUNCTION_67();
    v73 = v52;
    v52 = v107;
    v74(v73, v29);
    v75 = v97;
    sub_216B53248();
    v76 = v99;
    v78 = v100;
    v77 = v101;
    (*(v100 + 16))(v99, v75 + *(v98 + 24), v101);
    sub_216B1872C(v75, type metadata accessor for ToolbarProperties);
    OUTLINED_FUNCTION_58_13();
    v79 = v106;
    sub_21700A904();
    (*(v78 + 8))(v76, v77);
    OUTLINED_FUNCTION_67();
    v80(v49, v79);
    v81 = OUTLINED_FUNCTION_9_70();
    OUTLINED_FUNCTION_48_20();
    v104 = v34;
    v82 = v102;
    sub_2166C24DC(v65, v102, v81);
    v83 = *(v89 + 8);
    v83(v65, v82);
    v84 = v88[7];
    sub_2166C24DC(v49, v82, v81);
    v56 = v109;
    sub_2166C2718();
    v83(v84, v82);
    v83(v49, v82);
    OUTLINED_FUNCTION_39_23();
    sub_216B1872C(v104, v85);
  }

  v111 = OUTLINED_FUNCTION_9_70();
  v112 = v56;
  WitnessTable = swift_getWitnessTable();
  v87 = v110;
  sub_2166C24DC(v110, v52, WitnessTable);
  (*(v103 + 8))(v87, v52);
  OUTLINED_FUNCTION_26();
}

void *sub_216B51EAC()
{
  sub_216B51FB4();

  return sub_217009104();
}

uint64_t sub_216B51EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  sub_2168282D4(a1, &v6 - v4, &qword_27CAB7930, &qword_21701A250);
  sub_216B51FB4();
  sub_217009114();
  return sub_216697664(a1, &qword_27CAB7930, &qword_21701A250);
}

unint64_t sub_216B51FB4()
{
  result = qword_280E2E958[0];
  if (!qword_280E2E958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2E958);
  }

  return result;
}

uint64_t sub_216B52028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_216B5207C()
{
  OUTLINED_FUNCTION_49();
  v198 = v2;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3878, &qword_217048C58);
  OUTLINED_FUNCTION_1();
  v189 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v5);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3880, &qword_217048C60);
  OUTLINED_FUNCTION_1();
  v178 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v8);
  v9 = sub_217009684();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v11);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79C8, &qword_217017CA0);
  OUTLINED_FUNCTION_1();
  v177 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v14);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79B8, &unk_217017C90);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v16);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3888, &qword_217048C68);
  OUTLINED_FUNCTION_1();
  v176 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79C0, &unk_21706D200);
  OUTLINED_FUNCTION_1();
  v174 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  v23 = OUTLINED_FUNCTION_8_0(v22);
  v168 = type metadata accessor for ReplayPageToolbarProvider(v23);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v25);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3890, &qword_217048C70);
  OUTLINED_FUNCTION_1();
  v172 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  v29 = OUTLINED_FUNCTION_8_0(v28);
  v30 = type metadata accessor for GenericMusicItemToolbarContentProvider(v29);
  v31 = OUTLINED_FUNCTION_36(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v32);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79B0, &qword_217017C88);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3898, &qword_217048C78);
  OUTLINED_FUNCTION_1();
  v169 = v35;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105();
  v38 = OUTLINED_FUNCTION_8_0(v37);
  v39 = type metadata accessor for SocialProfilePageToolbarContentProvider(v38);
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v41);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79A8, &qword_217017C80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v43);
  *&v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38A0, &qword_217048C80);
  OUTLINED_FUNCTION_1();
  v187 = v44;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  v47 = v167 - v46;
  v48 = type metadata accessor for CuratorPageToolbarContentProvider(0);
  v49 = OUTLINED_FUNCTION_36(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7();
  v52 = v51 - v50;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79A0, &qword_217017C78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  v55 = v167 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38A8, qword_217048C88);
  OUTLINED_FUNCTION_1();
  v186 = v57;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  v60 = v167 - v59;
  v61 = type metadata accessor for ArtistPageToolbarContentProvider(0);
  v62 = OUTLINED_FUNCTION_36(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7();
  v63 = OUTLINED_FUNCTION_45_23();
  type metadata accessor for ToolbarConfiguration(v63);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_77();
  v67 = v65 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = v167 - v69;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7998, &qword_217017C70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_105();
  v193 = v72;
  OUTLINED_FUNCTION_8_73();
  sub_216B54CB4(v1, v70, v73);
  v199 = v70;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_41_22();
    sub_216B54C58(v199, v52, v91);
    v92 = type metadata accessor for CuratorToolbarContent(0);
    OUTLINED_FUNCTION_26_39();
    v95 = sub_216B54D10(v93, v94, &unk_21703B738);
    MEMORY[0x21CE9A570](v52, v92, v95);
    v96 = type metadata accessor for ArtistPageToolbarContent(255);
    OUTLINED_FUNCTION_29_34();
    v99 = sub_216B54D10(v97, v98, &unk_21706C580);
    v200 = v96;
    v201 = v99;
    v82 = MEMORY[0x277CDE130];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v200 = v92;
    v201 = v95;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = v192;
    MEMORY[0x21CE9A590](v47, v56, v192, OpaqueTypeConformance2, v101);
    sub_2167CBDD4();
    v103 = sub_2167CBF1C();
    OUTLINED_FUNCTION_53_18(v103, v196);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_46_23();
    MEMORY[0x21CE9A580](v55);
    sub_216697664(v55, &qword_27CAB79A0, &qword_217017C78);
    OUTLINED_FUNCTION_67();
    v104(v47, v102);
    OUTLINED_FUNCTION_40_20();
    v89 = v52;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_8_73();
    sub_216B54CB4(v1, v67, v106);
    v107 = swift_getEnumCaseMultiPayload();
    if (v107 == 4)
    {
      OUTLINED_FUNCTION_24_31();
      v140 = v173;
      sub_216B54C58(v67, v173, v141);
      sub_2168282D4(v140 + 40, &v200, &qword_27CAB6DB0, &qword_217016C00);
      sub_2168282D4(v140, v202, &qword_27CAB6DB0, &qword_217016C00);
      v142 = *(v168 + 44);
      v143 = *(v140 + *(v168 + 40));
      v202[5] = *(v140 + 80);
      v202[6] = v143;
      v192 = *(v140 + v142);
      v203 = v192;
      v117 = sub_2167CC288();

      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_58_13();
      MEMORY[0x21CE9A570]();
      sub_216B54D58(&v200);
      v200 = &type metadata for ReplayToolbarContent;
      v201 = v117;
      OUTLINED_FUNCTION_20_39();
      v144 = swift_getOpaqueTypeConformance2();
      v145 = v175;
      v146 = v182;
      MEMORY[0x21CE9A570](v67, v182, v144);
      v200 = v146;
      v201 = v144;
      v147 = OUTLINED_FUNCTION_49_23(&v200);
      v148 = OUTLINED_FUNCTION_43_1(&qword_280E2B3A0, &qword_27CAB79C8, &qword_217017CA0);
      v149 = OUTLINED_FUNCTION_53_18(v148, v184);
      OUTLINED_FUNCTION_49_23(v149);
      OUTLINED_FUNCTION_94_0();
      v150 = v183;
      MEMORY[0x21CE9A580](v145, v183, v185, v147);
      sub_2167CBFA8();
      sub_2167CC138();
      OUTLINED_FUNCTION_87_10();
      OUTLINED_FUNCTION_10_64();
      MEMORY[0x21CE9A590]();
      sub_216697664(v117, &qword_27CAB79B8, &unk_217017C90);
      OUTLINED_FUNCTION_67();
      v151(v145, v150);
      OUTLINED_FUNCTION_67();
      v152(v67, v146);
      OUTLINED_FUNCTION_34_26();
      v139 = v140;
    }

    else
    {
      v60 = v188;
      if (v107 != 3)
      {
        v108 = v199;
        v105 = v195;
        if (v107 == 2)
        {
          OUTLINED_FUNCTION_36_30();
          v109 = v67;
          v67 = v167[0];
          sub_216B54C58(v109, v167[0], v110);
          v111 = type metadata accessor for SocialProfileToolbarContent(0);
          OUTLINED_FUNCTION_33_28();
          v114 = sub_216B54D10(v112, v113, &unk_2170589CC);
          v115 = v167[1];
          MEMORY[0x21CE9A570](v67, v111, v114);
          v200 = v111;
          v201 = v114;
          OUTLINED_FUNCTION_20_39();
          v116 = swift_getOpaqueTypeConformance2();
          v117 = type metadata accessor for GenericMusicItemToolbarContent(255);
          OUTLINED_FUNCTION_32_23();
          v120 = sub_216B54D10(v118, v119, &unk_217050430);
          v200 = v117;
          v201 = v120;
          OUTLINED_FUNCTION_49_23(&v200);
          OUTLINED_FUNCTION_94_0();
          v121 = v179;
          MEMORY[0x21CE9A580](v115, v179, v180, v116);
          sub_2167CBFA8();
          sub_2167CC138();
          OUTLINED_FUNCTION_10_64();
          MEMORY[0x21CE9A580]();
          sub_216697664(v117, &qword_27CAB79B0, &qword_217017C88);
          OUTLINED_FUNCTION_67();
          v122(v115, v121);
          v123 = type metadata accessor for SocialProfilePageToolbarContentProvider;
        }

        else
        {
          sub_217009664();
          v153 = v181;
          sub_2170081F4();
          v154 = OUTLINED_FUNCTION_43_1(&qword_280E2B3A0, &qword_27CAB79C8, &qword_217017CA0);
          OUTLINED_FUNCTION_48_20();
          v155 = v184;
          MEMORY[0x21CE9A570](v153, v184, v154);
          v156 = sub_2167CC288();
          v200 = &type metadata for ReplayToolbarContent;
          v201 = v156;
          v157 = swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_53_18(v157, v182);
          v117 = swift_getOpaqueTypeConformance2();
          v200 = v155;
          v201 = v154;
          swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_87_10();
          v158 = v185;
          MEMORY[0x21CE9A590](v108, v183, v185, v117);
          sub_2167CBFA8();
          sub_2167CC138();
          OUTLINED_FUNCTION_10_64();
          MEMORY[0x21CE9A590]();
          sub_216697664(v60, &qword_27CAB79B8, &unk_217017C90);
          OUTLINED_FUNCTION_67();
          v159 = v108;
          v108 = v199;
          v160(v159, v158);
          OUTLINED_FUNCTION_67();
          v161(v181, v155);
          v123 = type metadata accessor for ToolbarConfiguration;
        }

        sub_216B1872C(v67, v123);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_30_36();
      v124 = v170;
      sub_216B54C58(v67, v170, v125);
      v126 = type metadata accessor for GenericMusicItemToolbarContent(0);
      OUTLINED_FUNCTION_32_23();
      v129 = sub_216B54D10(v127, v128, &unk_217050430);
      v130 = v171;
      MEMORY[0x21CE9A570](v124, v126, v129);
      v131 = type metadata accessor for SocialProfileToolbarContent(255);
      OUTLINED_FUNCTION_33_28();
      v134 = sub_216B54D10(v132, v133, &unk_2170589CC);
      v200 = v131;
      v201 = v134;
      v117 = MEMORY[0x277CDE130];
      v135 = swift_getOpaqueTypeConformance2();
      v200 = v126;
      v201 = v129;
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_94_0();
      v136 = v180;
      MEMORY[0x21CE9A590](v130, v179, v180, v135);
      sub_2167CBFA8();
      sub_2167CC138();
      OUTLINED_FUNCTION_10_64();
      MEMORY[0x21CE9A580]();
      sub_216697664(v117, &qword_27CAB79B0, &qword_217017C88);
      OUTLINED_FUNCTION_67();
      v137(v130, v136);
      OUTLINED_FUNCTION_25_36();
      v139 = v124;
    }

    sub_216B1872C(v139, v138);
    v108 = v199;
    v105 = v195;
LABEL_15:
    v162 = sub_2167CBF1C();
    OUTLINED_FUNCTION_94_0();
    v82 = v196;
    MEMORY[0x21CE9A570](v60, v196, v162);
    sub_2167CBDD4();
    v200 = v82;
    v201 = v162;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_46_23();
    v163 = v197;
    MEMORY[0x21CE9A590](v117);
    OUTLINED_FUNCTION_67();
    v164(v117, v163);
    sub_216697664(v60, &qword_27CAB79A8, &qword_217017C80);
    OUTLINED_FUNCTION_39_23();
    sub_216B1872C(v108, v165);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_31_39();
  sub_216B54C58(v199, v0, v75);
  v76 = type metadata accessor for ArtistPageToolbarContent(0);
  OUTLINED_FUNCTION_29_34();
  v79 = sub_216B54D10(v77, v78, &unk_21706C580);
  v80 = OUTLINED_FUNCTION_8();
  MEMORY[0x21CE9A570](v80);
  v200 = v76;
  v201 = v79;
  OUTLINED_FUNCTION_21_41();
  v81 = swift_getOpaqueTypeConformance2();
  v82 = type metadata accessor for CuratorToolbarContent(255);
  OUTLINED_FUNCTION_26_39();
  v85 = sub_216B54D10(v83, v84, &unk_21703B738);
  v200 = v82;
  v201 = v85;
  v86 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CE9A580](v60, v56, v192, v81, v86);
  sub_2167CBDD4();
  v87 = sub_2167CBF1C();
  OUTLINED_FUNCTION_53_18(v87, v196);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_46_23();
  MEMORY[0x21CE9A580](v55);
  sub_216697664(v55, &qword_27CAB79A0, &qword_217017C78);
  OUTLINED_FUNCTION_67();
  v88(v60, v56);
  v89 = OUTLINED_FUNCTION_18_43();
LABEL_5:
  sub_216B1872C(v89, v90);
  v105 = v195;
LABEL_16:
  v166 = sub_2167CBD04();
  MEMORY[0x21CE9A570](v82, v105, v166);
  sub_216697664(v82, &qword_27CAB7998, &qword_217017C70);
  OUTLINED_FUNCTION_26();
}

void sub_216B53248()
{
  OUTLINED_FUNCTION_49();
  v50 = v1;
  v51 = v2;
  v49 = type metadata accessor for ReplayPageToolbarProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = (v5 - v4);
  type metadata accessor for GenericMusicItemToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  type metadata accessor for SocialProfilePageToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  type metadata accessor for CuratorPageToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  type metadata accessor for ArtistPageToolbarContentProvider(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v20 = OUTLINED_FUNCTION_45_23();
  type metadata accessor for ToolbarConfiguration(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_8_73();
  sub_216B54CB4(v50, v24, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_41_22();
      sub_216B54C58(v24, v18, v46);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v18 + v47, v51, v48);
      OUTLINED_FUNCTION_40_20();
      v29 = v18;
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_36_30();
      sub_216B54C58(v24, v14, v40);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v14 + v41, v51, v42);
      v30 = type metadata accessor for SocialProfilePageToolbarContentProvider;
      v29 = v14;
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_30_36();
      sub_216B54C58(v24, v10, v43);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v10 + v44, v51, v45);
      OUTLINED_FUNCTION_25_36();
      v29 = v10;
      goto LABEL_7;
    case 4u:
      OUTLINED_FUNCTION_24_31();
      sub_216B54C58(v24, v6, v31);
      v33 = *(v6 + 11);
      v32 = *(v6 + 12);
      v35 = *(v6 + 13);
      v34 = *(v6 + 14);
      v36 = *(v49 + 36);
      v37 = *(type metadata accessor for ToolbarProperties(0) + 24);
      sub_217009124();
      OUTLINED_FUNCTION_34();
      (*(v38 + 16))(&v51[v37], &v6[v36]);
      sub_21700DF14();
      sub_21700DF14();
      OUTLINED_FUNCTION_34_26();
      sub_216B1872C(v6, v39);
      *v51 = v33;
      *(v51 + 1) = v32;
      *(v51 + 2) = v35;
      *(v51 + 3) = v34;
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_31_39();
      sub_216B54C58(v24, v0, v26);
      OUTLINED_FUNCTION_2_113();
      sub_216B54CB4(v0 + v27, v51, v28);
      v29 = OUTLINED_FUNCTION_18_43();
LABEL_7:
      sub_216B1872C(v29, v30);
LABEL_8:
      OUTLINED_FUNCTION_26();
      return;
  }
}

void sub_216B5357C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v42 = v2;
  sub_217009574();
  OUTLINED_FUNCTION_1();
  v40 = v3;
  v41 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v37 = v5;
  v6 = sub_2170091D4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3860, &qword_217048BE0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = (&v37 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3868, &qword_217048BE8);
  OUTLINED_FUNCTION_1();
  v38 = v18;
  v39 = v17;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  sub_2167B7D58(v1, v16);
  v22 = v13[11];
  v23 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v16 + v22, 1, 1, v23);
  v24 = v13[12];
  *(v16 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v25 = v16 + v13[13];
  *v25 = swift_getKeyPath();
  v25[40] = 0;
  v16[7] = 0;
  v16[8] = 0;
  v16[5] = sub_216B5390C;
  v16[6] = 0;
  sub_2170091C4();
  OUTLINED_FUNCTION_28_1();
  v28 = sub_2166D9530(v26, &qword_27CAC3860, &qword_217048BE0, v27);
  OUTLINED_FUNCTION_3_110();
  v31 = sub_216B54D10(v29, v30, MEMORY[0x277CDDE38]);
  sub_21700A364();
  (*(v8 + 8))(v12, v6);
  sub_216697664(v16, &qword_27CAC3860, &qword_217048BE0);
  v32 = v37;
  sub_217008C84();
  v43 = v13;
  v44 = v6;
  v45 = v28;
  v46 = v31;
  OUTLINED_FUNCTION_2_9();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_141();
  sub_216B54D10(v33, v34, MEMORY[0x277CDDFA8]);
  v36 = v39;
  v35 = v40;
  sub_21700A3E4();
  (*(v41 + 8))(v32, v35);
  (*(v38 + 8))(v21, v36);
  OUTLINED_FUNCTION_26();
}

double sub_216B5390C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  sub_21700B3B4();
  sub_2170083C4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

void sub_216B539A4()
{
  OUTLINED_FUNCTION_49();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE8, &qword_2170180D8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v1);
  v2 = sub_2170091D4();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v4);
  v5 = sub_2170087F4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850, &unk_217048BD0);
  sub_216B54B6C();
  sub_217009F14();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v9);
  OUTLINED_FUNCTION_38_28();
  v11 = v10;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_37_34();
  v62 = v11;
  v15 = WitnessTable;
  v63 = sub_216B54D10(v13, v14, MEMORY[0x277CDD9D8]);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v18);
  v66 = v11;
  v67 = v5;
  v68 = v15;
  v69 = v63;
  v19 = OUTLINED_FUNCTION_49_23(&v66);
  OUTLINED_FUNCTION_3_110();
  v22 = sub_216B54D10(v20, v21, MEMORY[0x277CDDE38]);
  v66 = OpaqueTypeMetadata2;
  v67 = v2;
  v60 = v2;
  v68 = v19;
  v69 = v22;
  v23 = v19;
  v24 = v22;
  v25 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v27);
  v28 = sub_217009574();
  v66 = OpaqueTypeMetadata2;
  v67 = v2;
  v68 = v23;
  v69 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_141();
  v32 = sub_216B54D10(v30, v31, MEMORY[0x277CDDFA8]);
  v66 = v25;
  v67 = v28;
  v68 = OpaqueTypeConformance2;
  v69 = v32;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76C0, &unk_217017530);
  v33 = sub_2170089F4();
  v66 = MEMORY[0x277CE1350];
  v67 = MEMORY[0x277CE1340];
  OUTLINED_FUNCTION_27_1();
  v57 = swift_getOpaqueTypeConformance2();
  v66 = v25;
  v67 = v28;
  v68 = OpaqueTypeConformance2;
  v69 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_17_48();
  v38 = sub_2166D9530(v35, v36, &unk_217017530, v37);
  v72 = v34;
  v73 = v38;
  OUTLINED_FUNCTION_0_9();
  v39 = swift_getWitnessTable();
  v66 = v25;
  v67 = v65;
  v68 = v33;
  v69 = OpaqueTypeConformance2;
  v70 = v57;
  v71 = v39;
  v58 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v59 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v46);
  OUTLINED_FUNCTION_94_0();
  sub_217009F04();
  OUTLINED_FUNCTION_58_13();
  sub_2170087E4();
  sub_21700ABD4();
  OUTLINED_FUNCTION_67();
  v47(&qword_27CAB76C0, v5);
  OUTLINED_FUNCTION_67();
  v48(&unk_217017530, v62);
  OUTLINED_FUNCTION_58_13();
  sub_2170091C4();
  OUTLINED_FUNCTION_87_10();
  sub_21700A364();
  OUTLINED_FUNCTION_67();
  v49(&qword_27CAB76C0, v60);
  OUTLINED_FUNCTION_67();
  v50(v61, OpaqueTypeMetadata2);
  sub_21700B314();
  sub_2170092A4();
  v51 = swift_checkMetadataState();
  sub_21700AB44();
  OUTLINED_FUNCTION_67();
  v52(v64, v65);
  OUTLINED_FUNCTION_67();
  v53(v62, v25);
  v66 = v25;
  v67 = v65;
  v68 = v51;
  v69 = OpaqueTypeConformance2;
  v70 = v57;
  v71 = v39;
  v54 = swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v44, v58, v54);
  v55 = *(v59 + 8);
  v55(v44, v58);
  sub_2166C24DC(v56, v58, v54);
  v55(v56, v58);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B5429C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13(v10);
  sub_2166C24DC(v8, a3, a4);
  v14 = *(v6 + 8);
  v14(v8, a3);
  sub_2166C24DC(v12, a3, a4);
  return (v14)(v12, a3);
}

double sub_216B543D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21700ADB4();
  sub_21700B3B4();
  sub_2170083C4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_216B54460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v45 = a4;
  v6 = sub_217009574();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850, &unk_217048BD0);
  v10 = sub_216B54B6C();
  v48 = v9;
  v49 = a2;
  v50 = v10;
  v51 = a3;
  v11 = sub_217009F14();
  v12 = sub_2170087F4();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_216B54D10(&qword_27CAC0C30, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v48 = v11;
  v49 = v12;
  v50 = WitnessTable;
  v51 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_2170091D4();
  v48 = v11;
  v49 = v12;
  v50 = WitnessTable;
  v51 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_216B54D10(&qword_27CABC420, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
  v48 = OpaqueTypeMetadata2;
  v49 = v16;
  v50 = OpaqueTypeConformance2;
  v51 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v48 = OpaqueTypeMetadata2;
  v49 = v16;
  v50 = OpaqueTypeConformance2;
  v51 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_216B54D10(&qword_280E2A900, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v48 = v19;
  v49 = v6;
  v22 = v6;
  v50 = v20;
  v51 = v21;
  v40 = MEMORY[0x277CDE6B0];
  v39 = swift_getOpaqueTypeMetadata2();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v24 = &v38 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76C0, &unk_217017530);
  v25 = sub_2170089F4();
  v41 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v38 - v29;
  v31 = swift_checkMetadataState();
  sub_217008C84();
  sub_21700A3E4();
  (*(v43 + 8))(v8, v22);
  v48 = v31;
  v49 = v22;
  v50 = v20;
  v51 = v21;
  v32 = swift_getOpaqueTypeConformance2();
  sub_216B54C04();
  v33 = v39;
  sub_21700AB74();
  (*(v42 + 8))(v24, v33);
  v34 = sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
  v46 = v32;
  v47 = v34;
  v35 = swift_getWitnessTable();
  sub_2166C24DC(v27, v25, v35);
  v36 = *(v41 + 8);
  v36(v27, v25);
  sub_2166C24DC(v30, v25, v35);
  return (v36)(v30, v25);
}

uint64_t sub_216B549B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7990, &qword_217017C68);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = v10 - v4;
  sub_216B5207C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
  v7 = sub_2167CBD04();
  v10[0] = v6;
  v10[1] = v7;
  OUTLINED_FUNCTION_2_2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CE9A570](v5, v0, OpaqueTypeConformance2);
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_216B54AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolbarConfiguration(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

unint64_t sub_216B54B6C()
{
  result = qword_27CAC3858;
  if (!qword_27CAC3858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3850, &unk_217048BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3858);
  }

  return result;
}

unint64_t sub_216B54C04()
{
  result = qword_280E2A570;
  if (!qword_280E2A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A570);
  }

  return result;
}

uint64_t sub_216B54C58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B54CB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B54D10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AlbumDetailRecommendedShelvesIntent(uint64_t a1)
{
  result = qword_27CAC38B0;
  if (!qword_27CAC38B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B54E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for AlbumDetailRecommendedShelvesIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216B551F8(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for AlbumDetailRecommendedShelvesIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216B553CC(uint64_t a1)
{
  result = sub_2166CE66C(&qword_27CAC38C0, type metadata accessor for AlbumDetailRecommendedShelvesIntent, &unk_217048CE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B5546C(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE66C(&qword_27CAC38C0, type metadata accessor for AlbumDetailRecommendedShelvesIntent, &unk_217048CE0);
  result = sub_2166CE66C(&qword_27CAC38C8, type metadata accessor for AlbumDetailRecommendedShelvesIntent, &unk_217048CC4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216B5551C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v10 = *a2;
  v11 = *(a3 - 8);
  (*(v11 + 16))(a4, a1);
  v12 = *(v10 + 88);
  v18[0] = *(v10 + 80);
  v18[1] = a3;
  v18[2] = v12;
  v18[3] = a5;
  v13 = (a4 + *(type metadata accessor for PageLoadingView(0, v18) + 52));
  v14 = sub_2168E168C(a2);
  v16 = v15;
  result = (*(v11 + 8))(a1, a3);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_216B55664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  OUTLINED_FUNCTION_1();
  v70 = v4;
  v71 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  v69 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v8 + 16);
  v9 = *(v8 + 32);
  v59 = v9;
  type metadata accessor for CatalogPagePresenter.State(255, v64, v9, v10);
  v11 = sub_21700F164();
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for LoadingStyleConfiguration.State(0);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v61 = v18 - v17;
  v19 = *(a1 + 40);
  v20 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v62 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC38D0, &qword_217048EE0);
  v65 = sub_2170089F4();
  v67 = *(v65 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v60 = &v58 - v27;
  v28 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v68 = v29;
  MEMORY[0x28223BE20](v30);
  v63 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v66 = &v58 - v34;
  v35 = *(v19 + 24);
  v58 = v2;
  v35(v20, v19, v33);
  sub_216B55654();
  sub_216A40254();

  v36 = v61;
  v37 = v14;
  v38 = v64;
  sub_216B55BC4(v37, v64, v9, v61);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_216B55E90(v36, AssociatedTypeWitness, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_0_166();
  sub_216B57338(v36, v40);
  (*(v62 + 8))(v25, AssociatedTypeWitness);
  v42 = v69;
  v41 = v70;
  (*(v70 + 16))(v69, v58, a1);
  v43 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *&v45 = v38;
  *(&v45 + 1) = v20;
  *&v46 = v59;
  *(&v46 + 1) = v19;
  *(v44 + 16) = v45;
  *(v44 + 32) = v46;
  (*(v41 + 32))(v44 + v43, v42, a1);
  OUTLINED_FUNCTION_7_5();
  v49 = sub_2166D9530(v47, &qword_27CAC38D0, &qword_217048EE0, v48);
  v75 = AssociatedConformanceWitness;
  v76 = v49;
  v50 = v65;
  WitnessTable = swift_getWitnessTable();
  v52 = v63;
  v53 = v60;
  sub_21700AAF4();

  (*(v67 + 8))(v53, v50);
  v73 = WitnessTable;
  v74 = MEMORY[0x277CE0790];
  v54 = swift_getWitnessTable();
  v55 = v66;
  sub_2166C24DC(v52, v28, v54);
  v56 = *(v68 + 8);
  v56(v52, v28);
  sub_2166C24DC(v55, v28, v54);
  return (v56)(v55, v28);
}

uint64_t sub_216B55BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v14 = type metadata accessor for CatalogPagePresenter.State(255, a2, a3, v13);
  v15 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_29();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v35 - v20;
  (*(v17 + 16))(&v35 - v20, a1, v15, v19);
  if (__swift_getEnumTagSinglePayload(v21, 1, v14) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v12, v21, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v26 = v36;
      sub_216B56B7C(AssociatedTypeWitness, AssociatedConformanceWitness, v36);
      v31 = OUTLINED_FUNCTION_8_74();
      v32(v31);
      (*(v9 + 8))(v12, AssociatedTypeWitness);
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v23 = OUTLINED_FUNCTION_8_74();
      v24(v23);
      (*(*(v14 - 8) + 8))(v21, v14);
      v25 = type metadata accessor for Artwork(0);
      v26 = v36;
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v25);
LABEL_7:
      v29 = 0;
      goto LABEL_8;
    }
  }

  v27 = OUTLINED_FUNCTION_8_74();
  v28(v27);
  v29 = 1;
  v26 = v36;
LABEL_8:
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  return __swift_storeEnumTagSinglePayload(v26, v29, 1, v33);
}

uint64_t sub_216B55E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21700A3D4();
}

uint64_t sub_216B55F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CatalogPagePresenter.State(255, a2, a4, a4);
  v10 = sub_21700F164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  type metadata accessor for PageLoadingView(0, v22);
  sub_216B55654();
  sub_216A40254();

  if (__swift_getEnumTagSinglePayload(v13, 1, v9) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = (*(*(v9 - 8) + 8))(v13, v9);
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_27CAB5888 != -1)
    {
      swift_once();
    }

    v16 = qword_27CAB6A48;
    v17 = sub_216B55654();
    v18 = *(*v17 + 152);
    swift_beginAccess();
    v20 = type metadata accessor for AnyProtoRequestConvertibleIntent(0, a2, *(a4 + 24), v19);
    v21 = *(v20 - 8);
    (*(v21 + 16))(v22, v17 + v18, v20);

    sub_2168E294C(v16, v22, a2, a4);
    return (*(v21 + 8))(v22, v20);
  }

  return result;
}

uint64_t sub_216B56194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216B561E8(uint64_t *a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for CatalogPagePresenter(255, a1[2], a1[4], v3);
    swift_getWitnessTable();
    result = sub_2170086B4();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216B562A8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_216B563E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
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
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t type metadata accessor for LoadingStyleConfiguration.State(uint64_t a1)
{
  result = qword_280E35638;
  if (!qword_280E35638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B56694()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = type metadata accessor for PageLoadingView(0, v9);
  OUTLINED_FUNCTION_36(v5);
  v7 = v0 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_216B55F04(v7, v1, v2, v3, v4);
}

uint64_t sub_216B56734(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for Artwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v42 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v43 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598, qword_217037510);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for LoadingStyleConfiguration.State(0);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38D8, &unk_217048FD0);
  OUTLINED_FUNCTION_36(v20);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v25 = *(v24 + 56);
  sub_216B57068(a1, &v41 - v22, type metadata accessor for LoadingStyleConfiguration.State);
  sub_216B57068(a2, &v23[v25], type metadata accessor for LoadingStyleConfiguration.State);
  OUTLINED_FUNCTION_10_65(v23);
  if (v29)
  {
    OUTLINED_FUNCTION_10_65(&v23[v25]);
    if (v29)
    {
      OUTLINED_FUNCTION_0_166();
      v27 = v23;
LABEL_13:
      sub_216B57338(v27, v26);
      return 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_142();
    sub_216B57068(v23, v19, v28);
    OUTLINED_FUNCTION_10_65(&v23[v25]);
    if (v29)
    {
      v30 = &qword_27CAB6D60;
      v31 = &qword_217014E40;
      v32 = v19;
LABEL_18:
      sub_216697664(v32, v30, v31);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_1_142();
    sub_216B57068(&v23[v25], v16, v33);
    v34 = *(v9 + 48);
    sub_216A72F5C(v19, v12);
    sub_216A72F5C(v16, &v12[v34]);
    v35 = v44;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v44);
    if (EnumTagSinglePayload == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v12[v34], 1, v35) == 1)
      {
        sub_216697664(v12, &qword_27CAB6D60, &qword_217014E40);
LABEL_12:
        sub_216B57338(&v23[v25], type metadata accessor for LoadingStyleConfiguration.State);
        v27 = OUTLINED_FUNCTION_8();
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v38 = v43;
    sub_2168282D4(v12, v43, &qword_27CAB6D60, &qword_217014E40);
    if (__swift_getEnumTagSinglePayload(&v12[v34], 1, v35) == 1)
    {
      sub_216B57338(v38, type metadata accessor for Artwork);
LABEL_16:
      v30 = &qword_27CABE598;
      v31 = qword_217037510;
LABEL_17:
      v32 = v12;
      goto LABEL_18;
    }

    v39 = v42;
    sub_216A912E8(&v12[v34], v42);
    if ((sub_21700C4A4() & 1) == 0)
    {
      sub_216B57338(v39, type metadata accessor for Artwork);
      sub_216B57338(v38, type metadata accessor for Artwork);
      v30 = &qword_27CAB6D60;
      v31 = &qword_217014E40;
      goto LABEL_17;
    }

    v40 = sub_21688ADC8(v38 + *(v35 + 20), v39 + *(v35 + 20));
    sub_216B57338(v39, type metadata accessor for Artwork);
    sub_216B57338(v38, type metadata accessor for Artwork);
    sub_216697664(v12, &qword_27CAB6D60, &qword_217014E40);
    if (v40)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  sub_216697664(v23, &qword_27CAC38D8, &unk_217048FD0);
  return 0;
}

uint64_t sub_216B56B7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlaylistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0, qword_2170400E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB00, &unk_217048F10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v19 = (*(a2 + 56))(a1, a2, v16);
  sub_216CE0B38(v19, v11);

  v20 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
  {
    sub_216697664(v11, &qword_27CABBAE0, qword_2170400E0);
    v21 = type metadata accessor for MappedSection.Content(0);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v21);
LABEL_6:
    v23 = type metadata accessor for Artwork(0);
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v23);
    return sub_216697664(v18, &qword_27CABBB00, &unk_217048F10);
  }

  sub_216B57068(&v11[*(v20 + 28)], v18, type metadata accessor for MappedSection.Content);
  sub_216B57338(v11, type metadata accessor for MappedSection);
  v22 = type metadata accessor for MappedSection.Content(0);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v22);
  sub_2168282D4(v18, v14, &qword_27CABBB00, &unk_217048F10);
  if (swift_getEnumCaseMultiPayload() != 23)
  {
    sub_216B57338(v14, type metadata accessor for MappedSection.Content);
    goto LABEL_6;
  }

  sub_216DE9FD8();

  sub_2168282D4(&v8[*(v6 + 48)], a3, &qword_27CAB6D60, &qword_217014E40);
  sub_216B57338(v8, type metadata accessor for PlaylistDetailHeaderLockup);
  return sub_216697664(v18, &qword_27CABBB00, &unk_217048F10);
}

void *sub_216B56E94()
{
  sub_216B57014();

  return sub_217009104();
}

uint64_t sub_216B56EDC(uint64_t a1)
{
  v2 = type metadata accessor for LoadingStyleConfiguration.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B57068(a1, v4, type metadata accessor for LoadingStyleConfiguration.State);
  return sub_216B56F78(v4);
}

uint64_t sub_216B56F78(uint64_t a1)
{
  v2 = type metadata accessor for LoadingStyleConfiguration.State(0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_1_142();
  sub_216B57068(a1, v6, v7);
  sub_216B57014();
  sub_217009114();
  OUTLINED_FUNCTION_0_166();
  return sub_216B57338(a1, v8);
}

unint64_t sub_216B57014()
{
  result = qword_280E3D878;
  if (!qword_280E3D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D878);
  }

  return result;
}

uint64_t sub_216B57068(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B5710C(uint64_t a1)
{
  sub_21668A38C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_216B57164()
{
  v0 = type metadata accessor for LoadingStyleConfiguration.State(0);
  __swift_allocate_value_buffer(v0, qword_280E3D888);
  v1 = __swift_project_value_buffer(v0, qword_280E3D888);
  v2 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
}

uint64_t sub_216B571FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E3D880 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LoadingStyleConfiguration.State(0);
  v3 = __swift_project_value_buffer(v2, qword_280E3D888);
  return sub_216B57068(v3, a1, type metadata accessor for LoadingStyleConfiguration.State);
}

uint64_t sub_216B5727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_216B572E0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_216B572E0()
{
  result = qword_280E35668[0];
  if (!qword_280E35668[0])
  {
    type metadata accessor for LoadingStyleConfiguration.State(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35668);
  }

  return result;
}

uint64_t sub_216B57338(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B573B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v96 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v101 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v88 = v14 - v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v87 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v86 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v85 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v84 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v83 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  v30 = sub_21700D7A4();
  OUTLINED_FUNCTION_8_59();
  sub_21700CE04();
  v91 = v7;
  v31 = *(v7 + 16);
  v97 = v5;
  v32 = v5;
  v33 = v101;
  v92 = v31;
  v93 = v7 + 16;
  v31(v10, v98, v32);
  v94 = v10;
  sub_21700D734();
  sub_21700CE04();
  sub_21700CDB4();
  OUTLINED_FUNCTION_21_42();
  v34 = *(v33 + 8);
  v35 = v11;
  v101 = v33 + 8;
  v95 = v34;
  v34(v3, v11);
  if (v30)
  {
    v36 = type metadata accessor for PlaylistTrackLockup(0);
    v99 = v3;
    v100 = v30;
    sub_21700F364();
    sub_21700CE04();
    v37 = v98;
    sub_21700D2E4();
    v89 = v35;
    v38 = a1;
    v95(v29, v35);
    v90 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v39 = v94;
    v40 = v92;
    v92(v94, v37, v97);
    v82 = sub_2166D5774(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_8_75();
    sub_21700D734();
    v41 = type metadata accessor for Artwork(0);
    sub_21700CE04();
    v40(v39, v37, v97);
    sub_2166D5774(&qword_280E2BF60, type metadata accessor for Artwork);
    v42 = v96;
    OUTLINED_FUNCTION_8_75();
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_21_42();
    v95(v29, v89);
    v43 = (v42 + v36[7]);
    *v43 = v29;
    v43[1] = v41;
    OUTLINED_FUNCTION_16_50();
    v80 = v38;
    sub_21700CE04();
    v44 = v97;
    v45 = v98;
    v46 = v92;
    v92(v39, v98, v97);
    sub_216AC6598();
    *(v42 + v36[8]) = v47;
    OUTLINED_FUNCTION_16_50();
    sub_21700CE04();
    v46(v94, v45, v44);
    OUTLINED_FUNCTION_8_75();
    sub_216AC6598();
    *(v42 + v36[9]) = v48;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    v49 = v80;
    sub_21700CE04();
    v50 = sub_21700CD94();
    LOBYTE(v46) = v51;
    v52 = v89;
    v53 = v95;
    v95(v29, v89);
    v54 = v42 + v36[10];
    *v54 = v50;
    *(v54 + 8) = v46 & 1;
    sub_21700CE04();
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v55 = OUTLINED_FUNCTION_8_75();
    v56 = v53;
    (v53)(v55);
    v57 = v83;
    sub_21700CE04();
    sub_21700CD44();
    v56(v57, v52);
    OUTLINED_FUNCTION_11_63(v36[11]);
    OUTLINED_FUNCTION_11_0();
    v58 = v84;
    sub_21700CE04();
    sub_21700CD44();
    v56(v58, v52);
    OUTLINED_FUNCTION_11_63(v36[12]);
    v59 = v85;
    sub_21700CE04();
    sub_21700CD44();
    v60 = v59;
    v61 = v56;
    v56(v60, v52);
    OUTLINED_FUNCTION_11_63(v36[13]);
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_21_42();
    v62 = OUTLINED_FUNCTION_8_75();
    (v56)(v62);
    v63 = (v42 + v36[14]);
    *v63 = v29;
    v63[1] = v56;
    sub_21700CE04();
    sub_21700CD44();
    v64 = OUTLINED_FUNCTION_12_56();
    (v56)(v64);
    OUTLINED_FUNCTION_11_63(v36[15]);
    sub_21700CE04();
    sub_21700CD44();
    v65 = OUTLINED_FUNCTION_12_56();
    (v56)(v65);
    OUTLINED_FUNCTION_11_63(v36[16]);
    sub_21700CE04();
    sub_21700CD44();
    v66 = OUTLINED_FUNCTION_12_56();
    (v56)(v66);
    v67 = v36;
    OUTLINED_FUNCTION_11_63(v36[18]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v68 = v98;
    v92(v94, v98, v97);
    OUTLINED_FUNCTION_13_50();
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v69 = OUTLINED_FUNCTION_8_75();
    v61(v69);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v81 = v67;
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v70 = OUTLINED_FUNCTION_8_75();
    v61(v70);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    OUTLINED_FUNCTION_13_50();
    sub_21700D2E4();
    v71 = OUTLINED_FUNCTION_8_75();
    v61(v71);
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_21_42();
    (*(v91 + 8))(v68, v97);
    (v61)(v49, v52);
    v72 = OUTLINED_FUNCTION_8_75();
    result = (v61)(v72);
    v74 = (v42 + v81[23]);
    *v74 = v29;
    v74[1] = v67;
  }

  else
  {
    v75 = sub_21700E2E4();
    sub_2166D5774(&qword_280E2A0F8, MEMORY[0x277D22548]);
    OUTLINED_FUNCTION_42_0();
    swift_allocError();
    v77 = v76;
    v78 = type metadata accessor for PlaylistTrackLockup(0);
    *v77 = 25705;
    v77[1] = 0xE200000000000000;
    v77[2] = v78;
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D22530], v75);
    swift_willThrow();
    (*(v91 + 8))(v98, v97);
    v95(a1, v11);
    return sub_216697664(v96, &qword_27CAB6D58, &unk_217014E30);
  }

  return result;
}

void sub_216B57F5C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v107 = a1;
  v6 = type metadata accessor for Artwork(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v105 = v8 - v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v106 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  v108 = &v97 - v14;
  v15 = type metadata accessor for ContentDescriptor(0);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v97 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v28 = OUTLINED_FUNCTION_36(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v97 - v33;
  if (sub_216F4FAB8())
  {
    v104 = a2;
    v98 = v19;
    v99 = v3;
    v100 = v31;
    v35 = sub_216F4F904();
    v37 = v36;
    v38 = type metadata accessor for PlaylistTrackLockup(0);
    v39 = v38[5];
    v109 = v35;
    v110 = v37;
    v103 = v39;
    sub_21700F364();
    OUTLINED_FUNCTION_3_111(v38[6]);
    v102 = v40;
    v41 = sub_216F50804();
    v42 = 0;
    v43 = 0;
    if (v41)
    {
      v42 = sub_216F50730();
    }

    v44 = (a3 + v38[7]);
    *v44 = v42;
    v44[1] = v43;
    v101 = v43;
    sub_216F51460();
    v46 = v45;
    v47 = sub_2167A74D4();
    v48 = v111;
    v50 = sub_216F76E04(v46, v49, &type metadata for Link, v47);
    if (v48)
    {
      OUTLINED_FUNCTION_0_167();

      sub_216788110(a3 + v103);
      sub_216697664(v102, &qword_27CAB6DB0, &qword_217016C00);
    }

    else
    {
      *(a3 + v38[8]) = v50;
      sub_216F51524();
      v111 = 0;
      v55 = sub_216F76E04(v53, v54, &type metadata for Link, v47);
      v56 = v104;
      *(a3 + v38[9]) = v55;
      v57 = a3 + v38[10];
      *v57 = 0;
      v58 = 1;
      *(v57 + 8) = 1;
      v59 = sub_216F50B00();
      OUTLINED_FUNCTION_15_51(v59, v38[11]);
      *(a3 + v38[12]) = 0;
      v60 = sub_216F5176C();
      OUTLINED_FUNCTION_15_51(v60, v38[13]);
      v61 = (a3 + v38[14]);
      *v61 = 0;
      v61[1] = 0;
      v62 = sub_216F51810();
      OUTLINED_FUNCTION_15_51(v62, v38[15]);
      v63 = sub_216F51958();
      OUTLINED_FUNCTION_15_51(v63, v38[16]);
      if (sub_216F51E60())
      {
        sub_216F519FC(v26);
        OUTLINED_FUNCTION_5_83();
        sub_21691A084(v26, v23, v64);
        sub_21689C518(v23, v65, v66, v67, v68, v69, v70, v71, v97, v98, SWORD1(v98), SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
        OUTLINED_FUNCTION_1_143();
        sub_216B586D8(v26, v72);
        v58 = 0;
      }

      v73 = type metadata accessor for ContentDescriptor(0);
      v74 = 1;
      __swift_storeEnumTagSinglePayload(v34, v58, 1, v73);
      sub_21678818C(v34, a3 + v38[17], &qword_27CAB6A00, &unk_217016B60);
      v75 = sub_216F518B4();
      OUTLINED_FUNCTION_15_51(v75, v38[18]);
      OUTLINED_FUNCTION_3_111(v38[22]);
      v76 = (a3 + v38[23]);
      *v76 = v107;
      v76[1] = v56;
      v77 = sub_21700D7A4();
      __swift_storeEnumTagSinglePayload(a3, 1, 1, v77);
      OUTLINED_FUNCTION_3_111(v38[21]);
      if (sub_216F506D0())
      {
        v78 = v106;
        sub_216F50350(v106);
        v79 = v105;
        sub_21691A084(v78, v105, type metadata accessor for Artwork);
        v80 = v108;
        sub_216C7DA84(v79, v108);
        OUTLINED_FUNCTION_6_77();
        v74 = 0;
      }

      else
      {
        v80 = v108;
      }

      v81 = type metadata accessor for Artwork(0);
      v82 = 1;
      __swift_storeEnumTagSinglePayload(v80, v74, 1, v81);
      sub_21678818C(v80, a3 + v38[24], &qword_27CAB6D60, &qword_217014E40);
      if (sub_216F50AA0())
      {
        v83 = v99;
        sub_216F5081C(v99);
        OUTLINED_FUNCTION_5_83();
        v84 = v98;
        sub_21691A084(v83, v98, v85);
        sub_21689C518(v84, v86, v87, v88, v89, v90, v91, v92, v97, v98, SWORD1(v98), SWORD2(v98), SBYTE6(v98), SHIBYTE(v98), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
        OUTLINED_FUNCTION_1_143();
        sub_216B586D8(v83, v93);
        v82 = 0;
      }

      OUTLINED_FUNCTION_0_167();
      v94 = v100;
      __swift_storeEnumTagSinglePayload(v100, v82, 1, v73);
      sub_21678818C(v94, a3 + v38[25], &qword_27CAB6A00, &unk_217016B60);
      *&v95 = OUTLINED_FUNCTION_3_111(v38[19]);
      v96 = a3 + v38[20];
      *(v96 + 32) = 0;
      *v96 = v95;
      *(v96 + 16) = v95;
    }
  }

  else
  {

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38E8, &unk_217049120);
    sub_2167880BC();
    swift_allocError();
    *v52 = xmmword_217014E10;
    *(v52 + 16) = v51;
    swift_willThrow();
    OUTLINED_FUNCTION_0_167();
  }
}

uint64_t sub_216B586D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7MusicUI11BadgingViewV5BadgeO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MusicUIPPT.Test.Variation(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicUIPPT.Test.Variation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216B5880C(uint64_t result, unsigned int a2)
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

uint64_t sub_216B58834(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_216B58874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216B588C4(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38F0, &qword_217049390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC38F8, &qword_217049398);
  sub_2166D9530(&qword_27CAC3900, &qword_27CAC38F0, &qword_217049390, MEMORY[0x277D83980]);
  sub_216B596BC();
  sub_216B599D4();
  return sub_21700B164();
}

uint64_t sub_216B589E4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v57 = a4;
  v53 = sub_217008AD4();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3920, &qword_2170493A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3958, &qword_2170493C0);
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v12 = &v47 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3960, &qword_2170493C8);
  MEMORY[0x28223BE20](v55);
  v56 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3968, &qword_2170493D0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3918, &qword_2170493A0);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v52 = v18;
    if (v23 == 1)
    {
      v50 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3970, &qword_217049438);
      sub_216B59A98();
      sub_21700AF14();
      sub_21700B3B4();
      sub_2170083C4();
      v24 = &v10[*(v8 + 36)];
      v25 = *&__src[16];
      *v24 = *__src;
      *(v24 + 1) = v25;
      *(v24 + 2) = *&__src[32];
      sub_217008AC4();
      v26 = sub_216B59838();
      v27 = sub_216B598F0();
      v28 = v12;
      v48 = v12;
      v29 = v53;
      sub_21700A364();
      (*(v51 + 8))(v7, v29);
      sub_216697664(v10, &qword_27CAC3920, &qword_2170493A8);
      v30 = v49;
      v31 = v28;
      v32 = v54;
      (*(v49 + 16))(v16, v31, v54);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3850, &unk_217048BD0);
      sub_216B54B6C();
      *&v63 = v8;
      *(&v63 + 1) = v29;
      *&v64 = v26;
      *(&v64 + 1) = v27;
      swift_getOpaqueTypeConformance2();
      v33 = v50;
      sub_217009554();
      sub_21673D688(v33, v56);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948, &qword_2170493B8);
      sub_216B59748();
      sub_216B59948();
      sub_217009554();
      sub_21673D6F0(v33);
      return (*(v30 + 8))(v48, v32);
    }

    else if (v21 | v22)
    {
      LOBYTE(v58) = 1;
      v63 = xmmword_217049200;
      *&v64 = 0;
      *(&v64 + 1) = MEMORY[0x277D84F90];
      v67 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0, &unk_217039CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
      sub_21686BF40();
      sub_2167C4D74();
      sub_217009554();
      memcpy(v56, __src, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948, &qword_2170493B8);
      sub_216B59748();
      sub_216B59948();
      return sub_217009554();
    }

    else
    {
      v39 = v20;
      v40 = sub_21700AE14();
      sub_21700B3B4();
      sub_2170083C4();
      v41 = *__src;
      v42 = __src[8];
      v43 = *&__src[16];
      v44 = __src[24];
      *v16 = v40;
      *(v16 + 1) = v41;
      v16[16] = v42;
      *(v16 + 3) = v43;
      v16[32] = v44;
      *(v16 + 40) = *&__src[32];
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3850, &unk_217048BD0);
      sub_216B54B6C();
      v45 = sub_216B59838();
      v46 = sub_216B598F0();
      *&v63 = v8;
      *(&v63 + 1) = v53;
      *&v64 = v45;
      *(&v64 + 1) = v46;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      sub_21673D688(v39, v56);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948, &qword_2170493B8);
      sub_216B59748();
      sub_216B59948();
      sub_217009554();

      return sub_21673D6F0(v39);
    }
  }

  else
  {
    sub_21700DF14();
    v35 = sub_217009E54();
    KeyPath = swift_getKeyPath();
    v37 = sub_216B59498(a3 & 1);
    v38 = swift_getKeyPath();
    *&v58 = v21;
    *(&v58 + 1) = v22;
    *&v59 = 0;
    *(&v59 + 1) = MEMORY[0x277D84F90];
    *&v60 = KeyPath;
    *(&v60 + 1) = v35;
    *&v61 = v38;
    *(&v61 + 1) = v37;
    v63 = v58;
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v62 = 0;
    v67 = 0;
    sub_216B59A28(&v58, __src);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0, &unk_217039CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
    sub_21686BF40();
    sub_2167C4D74();
    sub_217009554();
    memcpy(v56, __src, 0x41uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3948, &qword_2170493B8);
    sub_216B59748();
    sub_216B59948();
    sub_217009554();
    return sub_216697664(&v58, &qword_27CABA1C0, &unk_217039CA0);
  }
}

uint64_t sub_216B59354@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = sub_217009D44();
  KeyPath = swift_getKeyPath();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3970, &qword_217049438) + 36);
  sub_21700B2D4();
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3990, &qword_217049448) + 56)] = 256;
  sub_21700B3B4();
  sub_2170083C4();
  v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3998, &qword_217049450) + 36)];
  *v6 = v12;
  *(v6 + 1) = v13;
  *(v6 + 2) = v14;
  v7 = sub_21700B3B4();
  v9 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3988, &qword_217049440);
  v11 = &v5[*(result + 36)];
  *v11 = v7;
  v11[1] = v9;
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  return result;
}

uint64_t sub_216B59498(uint64_t a1)
{
  v1 = a1;
  if (sub_21700B304())
  {

    return sub_21699C834(v1 & 1);
  }

  else if (v1)
  {
    if (sub_21700B304())
    {

      return sub_21700AD14();
    }

    else
    {

      return sub_21700ACC4();
    }
  }

  else
  {

    return sub_21700AD34();
  }
}

uint64_t sub_216B59534(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 1954047348;
  }

  if (a3 == 1)
  {
    return 0xD000000000000010;
  }

  if (a1 | a2)
  {
    return 0x77656976657270;
  }

  return 0x62694C6F54646461;
}

uint64_t sub_216B595B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_21700F7D4();
      }

      return 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      v8 = a6 == 2 && a4 == 1;
      if (v8 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  return a6 == 1;
}

uint64_t sub_216B59658@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B59534(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216B596BC()
{
  result = qword_27CAC3908;
  if (!qword_27CAC3908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC38F8, &qword_217049398);
    sub_216B59748();
    sub_216B59948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3908);
  }

  return result;
}

unint64_t sub_216B59748()
{
  result = qword_27CAC3910;
  if (!qword_27CAC3910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3918, &qword_2170493A0);
    sub_216B54B6C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3920, &qword_2170493A8);
    sub_217008AD4();
    sub_216B59838();
    sub_216B598F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3910);
  }

  return result;
}

unint64_t sub_216B59838()
{
  result = qword_27CAC3928;
  if (!qword_27CAC3928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3920, &qword_2170493A8);
    sub_2166D9530(&qword_27CAC3930, &qword_27CAC3938, &qword_2170493B0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3928);
  }

  return result;
}

unint64_t sub_216B598F0()
{
  result = qword_280E2AD60;
  if (!qword_280E2AD60)
  {
    sub_217008AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD60);
  }

  return result;
}

unint64_t sub_216B59948()
{
  result = qword_27CAC3940;
  if (!qword_27CAC3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3948, &qword_2170493B8);
    sub_21686BF40();
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3940);
  }

  return result;
}

unint64_t sub_216B599D4()
{
  result = qword_27CAC3950;
  if (!qword_27CAC3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3950);
  }

  return result;
}

uint64_t sub_216B59A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0, &unk_217039CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B59A98()
{
  result = qword_27CAC3978;
  if (!qword_27CAC3978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3970, &qword_217049438);
    sub_2167E947C();
    sub_2166D9530(&qword_27CAC3980, &qword_27CAC3988, &qword_217049440, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3978);
  }

  return result;
}

unint64_t sub_216B59B50()
{
  result = qword_27CAC39A0;
  if (!qword_27CAC39A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC39A8, &unk_217049458);
    sub_216B596BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC39A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioBadge(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216B59CA0(char a1)
{
  switch(a1)
  {
    case 1:
      v45 = OUTLINED_FUNCTION_1_144();
      sub_216B5A1C0(v45, v46, v47);
      sub_21700A184();
      OUTLINED_FUNCTION_7_77();
      v12 = 89;
      goto LABEL_9;
    case 2:
      v30 = OUTLINED_FUNCTION_3_112();
      sub_216B5A1C0(v30, v31, v32);
      sub_21700A184();
      OUTLINED_FUNCTION_6_78();
      sub_216983738(37);
      sub_2167B2E14();
      v33 = sub_21700A174();
      OUTLINED_FUNCTION_0_168(v33, v34, v35, v36);
      OUTLINED_FUNCTION_4_91();
      sub_21678817C(v3, v2, v7 & 1);

      v37 = 146;
      goto LABEL_6;
    case 3:
      v38 = OUTLINED_FUNCTION_3_112();
      sub_216B5A1C0(v38, v39, v40);
      sub_21700A184();
      OUTLINED_FUNCTION_6_78();
      sub_216983738(36);
      sub_2167B2E14();
      v41 = sub_21700A174();
      OUTLINED_FUNCTION_0_168(v41, v42, v43, v44);
      OUTLINED_FUNCTION_4_91();
      sub_21678817C(v3, v2, v7 & 1);

      v37 = 138;
LABEL_6:
      sub_216983738(v37);
      OUTLINED_FUNCTION_5_84();
      sub_21700A054();
      OUTLINED_FUNCTION_2_114();
      sub_21678817C(v7, v8, v5 & 1);
      goto LABEL_7;
    case 4:
      v13 = OUTLINED_FUNCTION_1_144();
      sub_216B5A1C0(v13, v14, v15);
      v16 = sub_21700A184();
      v18 = v17;
      v20 = v19;
      v21 = sub_216983738(26);
      MEMORY[0x21CE9F490](v21);

      sub_2167B2E14();
      v22 = sub_21700A174();
      v24 = v23;
      v1 = v25;
      sub_21700A064();
      v27 = v26;
      v29 = v28;
      sub_21678817C(v22, v24, v1 & 1);

      sub_21678817C(v16, v18, v20 & 1);

      sub_216983738(26);
      OUTLINED_FUNCTION_5_84();
      sub_21700A054();
      OUTLINED_FUNCTION_2_114();
      sub_21678817C(v20, v27, v29 & 1);
LABEL_7:

      break;
    default:
      v9 = OUTLINED_FUNCTION_1_144();
      sub_216B5A1C0(v9, v10, v11);
      sub_21700A184();
      OUTLINED_FUNCTION_7_77();
      v12 = 88;
LABEL_9:
      sub_216983738(v12);
      sub_2167B2E14();
      sub_21700A054();
      OUTLINED_FUNCTION_2_114();
      sub_21678817C(v4, v5, v6 & 1);

      break;
  }

  return v1;
}

uint64_t sub_216B59FF4(char a1)
{
  result = 0x6D744179626C6F64;
  switch(a1)
  {
    case 1:
      result = 0x64754179626C6F64;
      break;
    case 2:
      result = 0x7373656C73736F6CLL;
      break;
    case 3:
      result = 0x736F4C7365526968;
      break;
    case 4:
      result = 0x4D6C617469676964;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_216B5A0B4(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216B5A124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216B5A0B4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216B5A158()
{
  result = qword_27CAC39B0;
  if (!qword_27CAC39B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC39B0);
  }

  return result;
}

uint64_t sub_216B5A1C0(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_21700ADC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_280E29B20;
  sub_21700DF14();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280E739D0;
  sub_21700AE14();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_21700AE04();

  (*(v4 + 8))(v6, v3);
  return v9;
}

_BYTE *_s5ShapeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216B5A418(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_216B5A464(char a1)
{
  if (!a1)
  {
    return 0x657261757173;
  }

  if (a1 == 1)
  {
    return 0x656C63726963;
  }

  return 0x6B63697262;
}

unint64_t sub_216B5A4D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216B5A418(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_216B5A504@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216B5A464(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216B5A534()
{
  result = qword_27CAC39B8;
  if (!qword_27CAC39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC39B8);
  }

  return result;
}

BOOL sub_216B5A588(ValueMetadata *a1, char a2)
{
  v5 = sub_217007CA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a1 > 1;
  }

  sub_217007C94();
  v10 = sub_217007C84();
  v11 = sub_21700ED84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v22 = a1;
    v15 = sub_21700F784();
    v17 = sub_2166A85FC(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v22 = &type metadata for ArtworkShape;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DC0, &qword_2170151E8);
    v18 = sub_21700E594();
    v20 = sub_2166A85FC(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_216679000, v10, v11, "Unrecognized value '%s' for type '%s'", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v14, -1, -1);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

BOOL sub_216B5A7F8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216B5A588(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_216B5A830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_216679000, v7, v8, "💬 ┃┃ Observing account changes", v9, 2u);
    OUTLINED_FUNCTION_6();
  }

  v10 = v3[4];
  if (v10 && (v11 = OUTLINED_FUNCTION_12_57(), v12 = [v10 stringForKey_], v11, v12))
  {
    v13 = sub_21700E514();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_216B5ED28();
  v17 = sub_2166A6590();
  if (!v17)
  {
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v18 = v17;
  v19 = a1;
  v20 = [v17 stringValue];

  v21 = sub_21700E514();
  v16 = v22;

  if (!v15)
  {
    v15 = v16;
    a1 = v19;
    if (v16)
    {
LABEL_25:
      v25 = sub_217007C84();
      v26 = sub_21700EDA4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_216679000, v25, v26, "💬 🔄 DSID changed, resetting UserDefaults and iCloud values", v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v16 = v3;
      sub_216B5C9FC();
      sub_216B5CEEC();
LABEL_28:
      if (v10)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (!v16)
  {
    a1 = v19;
LABEL_24:

    v15 = 0;
    goto LABEL_25;
  }

  v23 = v13 == v21 && v15 == v16;
  a1 = v19;
  if (!v23)
  {
    v24 = sub_21700F7D4();

    v15 = v16;
    if (v24)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (v10)
  {
LABEL_29:
    if (v15)
    {
      v16 = sub_21700E4D4();

LABEL_32:
      v28 = OUTLINED_FUNCTION_12_57();
      [v10 setObject:v16 forKey:v28];
      swift_unknownObjectRelease();

      goto LABEL_35;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

LABEL_34:

LABEL_35:
  if (!v3[5])
  {
    v29 = *MEMORY[0x277D7F8C8];
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 defaultIdentityStore];
    OUTLINED_FUNCTION_143();
    v33 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_181();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = a1;
    v34[4] = a2;
    v35 = type metadata accessor for NotificationObserver();
    v36 = OUTLINED_FUNCTION_13_51(v35);

    OUTLINED_FUNCTION_10_66();
    v16 = v36;
    v3[5] = sub_2166B9AD0(v37, v38, v39, v40, v41, v34);
  }

  if (!v3[6])
  {
    v42 = *MEMORY[0x277CBBF00];
    OUTLINED_FUNCTION_143();
    v43 = swift_allocObject();
    OUTLINED_FUNCTION_11_4(v43);
    OUTLINED_FUNCTION_181();
    v44 = swift_allocObject();
    v44[2] = v16;
    v44[3] = a1;
    v44[4] = a2;
    v45 = type metadata accessor for NotificationObserver();
    OUTLINED_FUNCTION_13_51(v45);

    v46 = v42;

    OUTLINED_FUNCTION_10_66();
    v3[6] = sub_2166B9AD0(v47, v48, v49, v50, v51, v44);
  }
}

uint64_t sub_216B5ACE8()
{
  if (qword_280E29C78 != -1)
  {
    swift_once();
  }

  v1 = qword_280E29C80;
  OUTLINED_FUNCTION_143();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v2);
  v3 = type metadata accessor for NotificationObserver();
  OUTLINED_FUNCTION_13_51(v3);
  v4 = v1;
  OUTLINED_FUNCTION_10_66();
  *(v0 + 56) = sub_2166B9AD0(v5, v6, v7, v8, v9, v0);
}

uint64_t sub_216B5ADB4()
{
  v1 = v0;
  v2 = *MEMORY[0x277CCA7C0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultStore];
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = type metadata accessor for NotificationObserver();
  OUTLINED_FUNCTION_13_51(v7);
  OUTLINED_FUNCTION_10_66();
  *(v1 + 64) = sub_2166B9AD0(v8, v9, v10, v11, v12, v6);
}

void sub_216B5AE94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC39C0, &qword_217049718);
  OUTLINED_FUNCTION_1();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
  OUTLINED_FUNCTION_1();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v36 = &v35 - v10;
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_21700D4D4();
  sub_21700E094();
  v11 = v42[0];
  v12 = sub_216CAF05C();
  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = sub_21700E9A4();
    v15 = sub_21700E4D4();
    [v13 setValue:v14 forKey:v15];
  }

  v16 = v11[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];
  v17 = sub_2166C1BB8(v11[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state]);
  v19 = v18;
  if (v13)
  {
    v20 = sub_21700E9A4();
    v21 = sub_21700E4D4();
    OUTLINED_FUNCTION_7_78(v21);

    v22 = sub_21700E4D4();
    v23 = sub_21700E4D4();
    OUTLINED_FUNCTION_7_78(v23);
  }

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E73D20);
  sub_21700DF14();
  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42[0] = v28;
    *v27 = 67240706;
    *(v27 + 4) = v12 & 1;
    *(v27 + 8) = 1026;
    *(v27 + 10) = v16;
    *(v27 + 14) = 2082;
    v29 = sub_2166A85FC(v17, v19, v42);

    *(v27 + 16) = v29;
    _os_log_impl(&dword_216679000, v25, v26, "💬 ┃┃ isSocialOnboardingAllowed? %{BOOL,public}d, isUserOnboarded? %{BOOL,public}d, socialProfileFetchState: %{public}s", v27, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_143();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v30);
  OUTLINED_FUNCTION_181();
  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  *(v31 + 24) = v12 & 1;
  *(v31 + 32) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68, &unk_217043AC0);
  sub_2166EF228(&qword_280E2A2F0, &qword_27CABCD68, &unk_217043AC0);
  v32 = v11;
  sub_21700D1D4();
  v33 = v36;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  (*(v37 + 8))(v33, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC39C8, &unk_21705D780);
  sub_2166EF228(&unk_280E2A300, qword_27CAC39C8, &unk_21705D780);

  sub_21700D1D4();
  v34 = v39;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  (*(v40 + 8))(v34, v41);
  sub_216B5D910();
  LOBYTE(v42[0]) = 8;
  sub_216B5DF6C(v42);
  LOBYTE(v42[0]) = 7;
  sub_216B5DF6C(v42);
}

uint64_t sub_216B5B440(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_216B5BC90();
  v5 = v2 + *a1;
  *v5 = v4;
  *(v5 + 8) = 0;

  return a2();
}

void sub_216B5B498(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState);
  *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState) = *a1;
  v3 = v2;
  sub_216B5BDC0(&v3);
}

void sub_216B5B4D4()
{
  v5 = 7;
  v1 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastLibraryPinAddedDate);
  v2 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastLibraryPinAddedDate + 8);
  v4 = 2;
  v3 = 0;
  sub_216B5B528(&v5, v1, v2, &v4, &v3);
}

void sub_216B5B528(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  if ((a3 & 1) == 0)
  {
    LODWORD(v14) = *a1;
    v40 = *a5;
    v15 = *(v6 + 32);
    if (v15)
    {
      LOBYTE(v44) = v14;
      DefaultsKeys.Engagement.rawValue.getter();
      v16 = sub_21700E4D4();

      v17 = [v15 integerForKey_];
    }

    else
    {
      v17 = 0;
    }

    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_280E73D20);
    v19 = sub_217007C84();
    v20 = sub_21700EDA4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = v17;
      _os_log_impl(&dword_216679000, v19, v20, "💬 %{public}ld previousFeatureEngagementInMilliSeconds", v21, 0xCu);
      MEMORY[0x21CEA1440](v21, -1, -1);
    }

    v22 = sub_217007C84();
    v23 = sub_21700EDA4();
    v24 = v17 < 1;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136446722;
      v43 = v14;
      DefaultsKeys.Engagement.rawValue.getter();
      v29 = sub_2166A85FC(v27, v28, &v44);
      v39 = v14;
      v38 = v13;
      v30 = v29;

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      v43 = v24;
      v31 = sub_21700E594();
      v14 = sub_2166A85FC(v31, v32, &v44);

      *(v25 + 14) = v14;
      v13 = v38;
      LOBYTE(v14) = v39;
      *(v25 + 22) = 2050;
      *(v25 + 24) = a2;
      _os_log_impl(&dword_216679000, v22, v23, "💬 %{public}s changing from %{public}s -> %{public}ld", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v26, -1, -1);
      MEMORY[0x21CEA1440](v25, -1, -1);
    }

    LOBYTE(v44) = v14;
    sub_216B5E6DC(&v44, a2);
    v43 = v24;
    v42 = 0;
    v41 = v40;
    UnifiedMessages.FeatureEngagedEvent.init(oldState:newState:featureName:)(&v43, &v42, &v41, &v44);
    v33 = v44;
    v34 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v34);
    sub_21700EA34();

    v35 = sub_21700EA24();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v6;
    v36[5] = v33;
    sub_21677BDF8();
  }
}

void sub_216B5B8E0()
{
  v4 = 8;
  v1 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastNLSQueryDate);
  v2 = *(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastNLSQueryDate + 8);
  v3 = 1;
  sub_216B5B92C(&v4, v1, v2, &v3);
}

void sub_216B5B92C(unsigned __int8 *a1, unint64_t a2, char a3, unsigned __int8 *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  if ((a3 & 1) == 0)
  {
    LODWORD(v13) = *a1;
    LODWORD(v14) = *a4;
    v15 = *(v5 + 32);
    if (v15)
    {
      LOBYTE(v43) = v13;
      DefaultsKeys.Engagement.rawValue.getter();
      v16 = sub_21700E4D4();

      v15 = [v15 integerForKey_];

      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_280E73D20);
    v19 = sub_217007C84();
    v20 = sub_21700EDA4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = v14;
      v14 = v21;
      v22 = swift_slowAlloc();
      v42 = v13;
      v13 = v22;
      v45 = v22;
      *v14 = 136446722;
      LOBYTE(v43) = v42;
      DefaultsKeys.Engagement.rawValue.getter();
      v25 = sub_2166A85FC(v23, v24, &v45);
      v40 = a2;
      v26 = v15;
      v27 = v17;
      v28 = v25;

      *(v14 + 4) = v28;
      *(v14 + 12) = 2082;
      v43 = v26;
      v44 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0, &qword_217017FD8);
      v29 = sub_21700E594();
      v31 = sub_2166A85FC(v29, v30, &v45);

      *(v14 + 14) = v31;
      v17 = v27;
      v15 = v26;
      a2 = v40;
      *(v14 + 22) = 2050;
      *(v14 + 24) = a2;
      _os_log_impl(&dword_216679000, v19, v20, "💬 %{public}s changing from %{public}s -> %{public}ld", v14, 0x20u);
      swift_arrayDestroy();
      v32 = v13;
      LOBYTE(v13) = v42;
      MEMORY[0x21CEA1440](v32, -1, -1);
      v33 = v14;
      LOBYTE(v14) = v41;
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    LOBYTE(v43) = v13;
    sub_216B5E6DC(&v43, a2);
    LOBYTE(v45) = v14;
    UnifiedMessages.QueryEvent.init(name:oldState:newState:)(&v45, v15, v17, a2, &v43);
    v34 = v43;
    v35 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v35);
    sub_21700EA34();

    v36 = sub_21700EA24();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v5;
    v37[5] = v34;
    sub_21677BDF8();
  }
}

uint64_t sub_216B5BC90()
{
  v0 = sub_2170061E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170061D4();
  sub_217006174();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = round(v5 / 3600.0) * 3600000.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_216B5BDC0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState;
  if (sub_21688C414())
  {
    return;
  }

  switch(*(v2 + v8))
  {
    case 1:
    case 2:
    case 3:
      v9 = 0xD00000000000001ELL;
      v10 = 0x800000021707FCA0;
      v11 = sub_21700F7D4();

      if (v11)
      {
        goto LABEL_6;
      }

      v16 = *(v2 + v8);
      v17 = 0x800000021707FCA0;
      v43 = 0xD00000000000001ELL;
      switch(v16)
      {
        case 1:
          v17 = 0xE700000000000000;
          v43 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v43 = 0x6572676F72506E69;
          v17 = 0xEA00000000007373;
          break;
        case 3:
          v43 = 0x6574656C706D6F63;
          v17 = 0xE900000000000064;
          break;
        default:
          break;
      }

      v42 = sub_21686CEE8();
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v18 = sub_217007CA4();
      __swift_project_value_buffer(v18, qword_280E73D20);
      sub_21700DF14();
      v19 = sub_217007C84();
      v20 = sub_21700EDA4();

      if (os_log_type_enabled(v19, v20))
      {
        v41 = v6;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v46 = v22;
        *v21 = 136446466;
        v23 = v22;
        switch(v7)
        {
          case 1:
            v10 = 0xE700000000000000;
            v9 = 0x6E776F6E6B6E75;
            break;
          case 2:
            v9 = 0x6572676F72506E69;
            v10 = 0xEA00000000007373;
            break;
          case 3:
            v9 = 0x6574656C706D6F63;
            v10 = 0xE900000000000064;
            break;
          default:
            break;
        }

        v25 = sub_2166A85FC(v9, v10, &v46);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v24 = v43;
        *(v21 + 14) = sub_2166A85FC(v43, v17, &v46);
        _os_log_impl(&dword_216679000, v19, v20, "💬 ┃┃ mliState changing from %{public}s -> %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEA1440](v23, -1, -1);
        MEMORY[0x21CEA1440](v21, -1, -1);

        v6 = v41;
      }

      else
      {

        v24 = v43;
      }

      v26 = *(v2 + 32);
      if (v26)
      {
        v27 = sub_21700E4D4();
        v28 = sub_21700E4D4();
        [v26 setObject:v27 forKey:v28];
      }

      if (v42)
      {
        v29 = objc_opt_self();
        v30 = [v29 defaultStore];
        v31 = sub_21700E4D4();
        sub_216B5EBF4(v24, v17, v31, v30);

        v32 = [v29 defaultStore];
        [v32 synchronize];
      }

      else
      {
      }

      v33 = *(v2 + v8);
      if (v7 == 2)
      {
        if (v33 != 3)
        {
          return;
        }

LABEL_39:
        v45 = v7;
        v44 = v33;
        UnifiedMessages.MLIEvent.init(oldState:newState:)(&v45, &v44, &v46);
        v35 = v46;
        v36 = sub_21700EA74();
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v36);
        sub_21700EA34();

        v37 = sub_21700EA24();
        v38 = swift_allocObject();
        v39 = MEMORY[0x277D85700];
        v38[2] = v37;
        v38[3] = v39;
        v38[4] = v2;
        v38[5] = v35;
        sub_21677BDF8();

        return;
      }

      if (v7 == 1 && v33 == 2)
      {
        goto LABEL_39;
      }

      return;
    default:

LABEL_6:
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v12 = sub_217007CA4();
      __swift_project_value_buffer(v12, qword_280E73D20);
      v43 = sub_217007C84();
      v13 = sub_21700ED64();
      if (os_log_type_enabled(v43, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_216679000, v43, v13, "💬 ❌ GDPR acceptance required before retrieving mliState.", v14, 2u);
        MEMORY[0x21CEA1440](v14, -1, -1);
      }

      v15 = v43;

      return;
  }
}

uint64_t sub_216B5C428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_21700EA34();
  v5[5] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B5EEB8, v7, v6);
}

uint64_t sub_216B5C4C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  *(v2 + 32) = sub_2166AA548(0xD00000000000001CLL, 0x8000000217089580);
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  v6 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_onUserOnboardedStatusHasChangedSubscription;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  v8 = v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastLibraryPinAddedDate;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_lastNLSQueryDate;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState) = 0;
  *(v3 + 16) = a2;
  type metadata accessor for CloudAccountStatusController();
  sub_21700D4D4();

  sub_21700E094();

  *(v3 + 72) = v11;
  swift_weakAssign();

  *(v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_mliState) = 0;
  return v3;
}

uint64_t UnifiedMessages.DataStore.deinit()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90, &qword_217028E98);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_onUserOnboardedStatusHasChangedSubscription;
  sub_21692A9F0(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages9DataStore_onUserOnboardedStatusHasChangedSubscription, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_21669987C(v4, &unk_27CABFB90, &qword_217028E98);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    type metadata accessor for UserSocialProfileCoordinator(0);
    sub_21700D4D4();

    sub_21700E094();

    v12 = v14[1];

    sub_21700CC24();

    (*(v7 + 8))(v10, v5);
  }

  swift_weakDestroy();

  sub_21669987C(v1 + v11, &unk_27CABFB90, &qword_217028E98);
  return v1;
}

uint64_t UnifiedMessages.DataStore.__deallocating_deinit()
{
  UnifiedMessages.DataStore.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for UnifiedMessages.DataStore(uint64_t a1)
{
  result = qword_280E416E0;
  if (!qword_280E416E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B5C914(uint64_t a1)
{
  sub_21692A98C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216B5C9FC()
{
  v1 = *(v0 + 32);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  v3 = 0;
  v4 = &unk_28290DDC0;
  v16 = v1;
  do
  {
    v5 = v4[v3 + 32];
    __swift_project_value_buffer(v2, qword_280E73D20);
    v6 = sub_217007C84();
    v7 = sub_21700ED64();
    if (!os_log_type_enabled(v6, v7))
    {

      if (!v1)
      {
        goto LABEL_22;
      }

LABEL_20:
      switch(v5)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
          v15 = sub_21700E4D4();

          [v1 removeObjectForKey_];

          break;
        default:
          JUMPOUT(0);
      }

      goto LABEL_22;
    }

    v8 = v2;
    v9 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089560, &v17);
    *(v10 + 12) = 2080;
    v12 = 0xE800000000000000;
    v13 = 0x6574617453696C6DLL;
    switch(v5)
    {
      case 1:
        v13 = 0xD00000000000001FLL;
        v12 = 0x800000021707F4E0;
        break;
      case 2:
        v13 = 0xD000000000000019;
        v12 = 0x800000021707F500;
        break;
      case 3:
        v13 = 0xD000000000000022;
        v12 = 0x800000021707F520;
        break;
      case 4:
        v13 = 0xD000000000000015;
        v12 = 0x800000021707F550;
        break;
      case 5:
        v13 = 0xD000000000000011;
        v12 = 0x800000021707F570;
        break;
      case 6:
        v13 = 0xD000000000000019;
        v12 = 0x800000021707F590;
        break;
      case 7:
        v13 = 0xD000000000000017;
        v12 = 0x800000021707F5B0;
        break;
      case 8:
        v13 = 0xD000000000000010;
        v12 = 0x800000021707F5D0;
        break;
      case 9:
        break;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x800000021707F5F0;
        break;
      case 11:
        v13 = 0xD000000000000017;
        v12 = 0x800000021707F610;
        break;
      default:
        v13 = 0xD000000000000020;
        v12 = 0x800000021707F4B0;
        break;
    }

    v14 = sub_2166A85FC(v13, v12, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_216679000, v6, v7, "💬 🔄 %s Active user changed, resetting %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v11, -1, -1);
    MEMORY[0x21CEA1440](v10, -1, -1);

    v4 = v9;
    v2 = v8;
    v1 = v16;
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_22:
    ++v3;
  }

  while (v3 != 12);
}

void sub_216B5CEEC()
{
  if (!sub_21686CEE8())
  {
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v0 = sub_217007CA4();
    __swift_project_value_buffer(v0, qword_280E73D20);
    v1 = sub_217007C84();
    v2 = sub_21700ED64();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_2166A85FC(0x53564B7465736572, 0xEA00000000002928, &v12);
      _os_log_impl(&dword_216679000, v1, v2, "💬 🔄 %s iCloud account signed out, resetting KVS", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x21CEA1440](v4, -1, -1);
      MEMORY[0x21CEA1440](v3, -1, -1);
    }

    v5 = objc_opt_self();
    v6 = [v5 defaultStore];
    v7 = sub_21700E4D4();
    [v6 removeObjectForKey_];

    v8 = [v5 defaultStore];
    v9 = sub_21700E4D4();
    [v8 removeObjectForKey_];

    v10 = [v5 defaultStore];
    v11 = sub_21700E4D4();
    [v10 removeObjectForKey_];
  }
}

uint64_t sub_216B5D164(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, const char *a5, void (*a6)(void))
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v9 = sub_217007CA4();
  __swift_project_value_buffer(v9, qword_280E73D20);
  v10 = sub_217007C84();
  v11 = sub_21700EDA4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_216679000, v10, v11, a5, v12, 2u);
    OUTLINED_FUNCTION_6();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    a6();
  }

  return a3(Strong);
}

uint64_t sub_216B5D28C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = 3;
    sub_216B5B498(&v3);
  }

  return result;
}

uint64_t sub_216B5D2F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_217005964())
    {
      if (qword_280E416F8 != -1)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v3 = sub_217007CA4();
        __swift_project_value_buffer(v3, qword_280E73D20);
        v4 = sub_217007C84();
        v5 = sub_21700EDA4();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v13[0] = v7;
          *v6 = 136315138;
          *(v6 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089540, v13);
          _os_log_impl(&dword_216679000, v4, v5, "💬 %s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v7);
          MEMORY[0x21CEA1440](v7, -1, -1);
          MEMORY[0x21CEA1440](v6, -1, -1);
        }

        v12 = sub_21700E514();
        sub_21700F364();
        sub_216934FBC();

        sub_216788110(v13);
        if (!v15)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        if ((swift_dynamicCast() & 1) == 0)
        {
        }

        v8 = 0;
        v9 = *(v12 + 16);
        for (i = (v12 + 40); ; i += 2)
        {
          if (v9 == v8)
          {
          }

          if (v8 >= *(v12 + 16))
          {
            break;
          }

          ++v8;
          v11 = *i;
          v13[0] = *(i - 1);
          v13[1] = v11;
          sub_21700DF14();
          sub_216B5D590(v13);
        }

        __break(1u);
LABEL_17:
        swift_once();
      }

      return sub_21669987C(v14, &unk_27CABF7A0, &unk_217014D20);
    }

    else
    {
    }
  }

  return result;
}

void sub_216B5D590(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_280E73D20);
  sub_21700DF14();
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089540, &v16);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2166A85FC(v2, v1, &v16);
    _os_log_impl(&dword_216679000, v4, v5, "💬 %s Key '%s' has changed", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v7, -1, -1);
    MEMORY[0x21CEA1440](v6, -1, -1);
  }

  v8 = v2 == 0x6574617453696C6DLL && v1 == 0xE800000000000000;
  if (v8 || (sub_21700F7D4() & 1) != 0)
  {
    sub_216B5D910();
    return;
  }

  v9 = v2 == 0xD000000000000017 && 0x800000021707F5B0 == v1;
  if (v9 || (sub_21700F7D4() & 1) != 0)
  {
    v10 = 7;
LABEL_17:
    LOBYTE(v16) = v10;
    sub_216B5DF6C(&v16);
    return;
  }

  v11 = v2 == 0xD000000000000010 && 0x800000021707F5D0 == v1;
  if (v11 || (sub_21700F7D4() & 1) != 0)
  {
    v10 = 8;
    goto LABEL_17;
  }

  sub_21700DF14();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217089540, &v16);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2166A85FC(v2, v1, &v16);
    _os_log_impl(&dword_216679000, v12, v13, "💬 %s Unknown key %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }
}

void sub_216B5D910()
{
  v1 = v0;
  if (sub_21686CEE8() && (v2 = [objc_opt_self() defaultStore], v3 = sub_21700E4D4(), v4 = objc_msgSend(v2, sel_stringForKey_, v3), v2, v3, v4))
  {
    v5 = sub_21700E514();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v1 + 32);
  if (v8 && (v9 = sub_21700E4D4(), v10 = [v8 stringForKey_], v9, v10))
  {
    v11 = sub_21700E514();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v14 = sub_217007CA4();
  __swift_project_value_buffer(v14, qword_280E73D20);
  sub_21700DF14();
  sub_21700DF14();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();

  v43 = v11;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v17 = 136446466;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
    v18 = sub_21700E594();
    v20 = sub_2166A85FC(v18, v19, &v46);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v44 = v5;
    v45 = v7;
    sub_21700DF14();
    v21 = sub_21700E594();
    v23 = sub_2166A85FC(v21, v22, &v46);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_216679000, v15, v16, "💬 ┃┃ mliState UserDefaults: %{public}s, NSUbiquitousKeyValueStore: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v42, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  if (v13)
  {
    v24 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v24 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      sub_21700DF14();

      v25 = sub_21700F5E4();

      if (v25 <= 3)
      {
        LOBYTE(v44) = v25;
        sub_216B5B498(&v44);
LABEL_26:

        return;
      }

      sub_21700DF14();
      v28 = sub_217007C84();
      v29 = sub_21700ED84();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45 = v13;
        v46 = v31;
        *v30 = 136446210;
        v44 = v43;
        sub_21700DF14();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
        v32 = sub_21700E594();
        v34 = sub_2166A85FC(v32, v33, &v46);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_216679000, v28, v29, "💬 UserDefaults mliState=%{public}s is not a valid mliState value", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x21CEA1440](v31, -1, -1);
        MEMORY[0x21CEA1440](v30, -1, -1);
      }

      goto LABEL_36;
    }
  }

  if (v7)
  {
    v26 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v26 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      swift_bridgeObjectRetain_n();
      v27 = sub_21700F5E4();

      if (v27 <= 3)
      {

        LOBYTE(v44) = v27;
        sub_216B5B498(&v44);
        goto LABEL_26;
      }

      sub_21700DF14();
      v28 = sub_217007C84();
      v38 = sub_21700ED84();

      if (!os_log_type_enabled(v28, v38))
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_37;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136446210;
      v41 = sub_2166A85FC(v5, v7, &v44);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_216679000, v28, v38, "💬 NSUbiquitousKeyValueStore mliState=%{public}s is not a valid mliState value", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x21CEA1440](v40, -1, -1);
      MEMORY[0x21CEA1440](v39, -1, -1);
LABEL_36:

LABEL_37:

      return;
    }
  }

  v35 = sub_217007C84();
  v36 = sub_21700EDA4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_216679000, v35, v36, "💬 Setting mliState=unknown", v37, 2u);
    MEMORY[0x21CEA1440](v37, -1, -1);
  }

  LOBYTE(v44) = 1;
  sub_216B5B498(&v44);
}

void sub_216B5DF6C(char *a1)
{
  v2 = *a1;
  v3 = 0.0;
  v4 = 0.0;
  if (sub_21686CEE8())
  {
    v5 = [objc_opt_self() defaultStore];
    LOBYTE(v28) = v2;
    DefaultsKeys.Engagement.rawValue.getter();
    v6 = sub_21700E4D4();

    [v5 doubleForKey_];
    v4 = v7;
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    LOBYTE(v28) = v2;
    DefaultsKeys.Engagement.rawValue.getter();
    v9 = sub_21700E4D4();

    [v8 doubleForKey_];
    v3 = v10;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73D20);
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315650;
    DefaultsKeys.Engagement.rawValue.getter();
    v18 = sub_2166A85FC(v16, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2050;
    *(v14 + 14) = v3;
    *(v14 + 22) = 2050;
    *(v14 + 24) = v4;
    _os_log_impl(&dword_216679000, v12, v13, "💬 ┃┃ %s UserDefaults: %{public}f, NSUbiquitousKeyValueStore: %{public}f", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  if (v4 > v3)
  {
    v3 = v4;
  }

  if (v3 > 0.0)
  {
    if (v8)
    {
      v19 = sub_21700EB54();
      LOBYTE(v28) = v2;
      DefaultsKeys.Engagement.rawValue.getter();
      v20 = sub_21700E4D4();

      [v8 setValue:v19 forKey:v20];
    }

    oslog = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315394;
      DefaultsKeys.Engagement.rawValue.getter();
      v26 = sub_2166A85FC(v24, v25, &v28);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2050;
      *(v22 + 14) = v3;
      _os_log_impl(&dword_216679000, oslog, v21, "💬 ┃ Setting %s %{public}f", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x21CEA1440](v23, -1, -1);
      MEMORY[0x21CEA1440](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_216B5E314(unsigned __int8 *a1, uint64_t a2, char a3, void *a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 32);
    v9 = v8;

    if (v8)
    {
      v10 = sub_21700E9A4();
      v11 = sub_21700E4D4();
      [v9 setValue:v10 forKey:v11];
    }
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E73D20);
  v13 = a4;
  v14 = sub_217007C84();
  v15 = sub_21700EDA4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 67240706;
    *(v16 + 4) = a3 & 1;
    *(v16 + 8) = 1026;
    *(v16 + 10) = v6;
    *(v16 + 14) = 2082;
    v18 = sub_2166C1BB8(*(v13 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state));
    v20 = sub_2166A85FC(v18, v19, &v21);

    *(v16 + 16) = v20;
    _os_log_impl(&dword_216679000, v14, v15, "💬 onUserOnboardedStatusHasChanged: isSocialOnboardingAllowed? %{BOOL,public}d, isUserOnboarded? %{BOOL,public}d, socialProfileFetchState: %{public}s", v16, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }
}

void sub_216B5E530(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = sub_21700E4D4();
    v6 = sub_21700E4D4();
    [v4 setValue:v5 forKey:v6];
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_280E73D20);
  sub_21700DF14();
  oslog = sub_217007C84();
  v8 = sub_21700EDA4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2166A85FC(v2, v3, &v12);
    _os_log_impl(&dword_216679000, oslog, v8, "💬 onUserProfileCoordinatorFetchStateChange: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }
}

void sub_216B5E6DC(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = sub_21700EBE4();
    DefaultsKeys.Engagement.rawValue.getter();
    v7 = sub_21700E4D4();

    [v5 setValue:v6 forKey:v7];
  }

  if (sub_21686CEE8())
  {
    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_280E73D20);
    v9 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_2166A85FC(0xD000000000000026, 0x8000000217089510, &v21);
      *(v11 + 12) = 2082;
      DefaultsKeys.Engagement.rawValue.getter();
      v15 = sub_2166A85FC(v13, v14, &v21);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2050;
      *(v11 + 24) = a2;
      _os_log_impl(&dword_216679000, v9, v10, "💬 %s storing %{public}s in NSUbiquitousKeyValueStore: %{public}ld", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v12, -1, -1);
      MEMORY[0x21CEA1440](v11, -1, -1);
    }

    v16 = objc_opt_self();
    v17 = [v16 defaultStore];
    v18 = sub_21700EBE4();
    v22 = v4;
    DefaultsKeys.Engagement.rawValue.getter();
    v19 = sub_21700E4D4();

    [v17 setObject:v18 forKey:v19];

    v20 = [v16 defaultStore];
    [v20 synchronize];
  }
}

uint64_t sub_216B5E9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_21700EA34();
  v5[5] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B5EA44, v7, v6);
}

uint64_t sub_216B5EA44()
{

  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
    v4 = sub_21700DF14();
    sub_2169FD23C(v4);

    v5 = sub_21700E344();

    v6 = [v3 enqueueData_];
  }

  **(v0 + 16) = v2 == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_216B5EB5C()
{
  OUTLINED_FUNCTION_4_92();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_145(v1);

  return sub_216B5C428(v3, v4, v5, v6, v7);
}

void sub_216B5EBF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21700E4D4();

  [a4 setString:v6 forKey:a3];
}

uint64_t sub_216B5EC68()
{
  OUTLINED_FUNCTION_4_92();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_145(v1);

  return sub_216B5C428(v3, v4, v5, v6, v7);
}

unint64_t sub_216B5ED28()
{
  result = qword_280E29BF0;
  if (!qword_280E29BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29BF0);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216B5EE20()
{
  OUTLINED_FUNCTION_4_92();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_145(v1);

  return sub_216B5E9A8(v3, v4, v5, v6, v7);
}

uint64_t sub_216B5EEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v14 = type metadata accessor for AppDestinationPageView(0, a4, a5, v13);
  (*(*(a4 - 8) + 32))(a6 + v14[9], a2, a4);
  sub_216B46938(a3, a6 + v14[10]);
  v15 = (a6 + v14[11]);
  type metadata accessor for MusicStackAuthority(0);
  sub_216B5EFF0();
  result = sub_217008CF4();
  *v15 = result;
  v15[1] = v17;
  return result;
}

unint64_t sub_216B5EFF0()
{
  result = qword_280E46D08;
  if (!qword_280E46D08)
  {
    type metadata accessor for MusicStackAuthority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E46D08);
  }

  return result;
}

void sub_216B5F048(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MusicAppDestinationContext(319);
      if (v3 <= 0x3F)
      {
        sub_2166B49AC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_216B5F118(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  v18 = *(*(v10 - 8) + 64);
  if (v12)
  {
    v19 = 7;
  }

  else
  {
    v19 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v10;
  v21 = *(v5 + 64) + v15;
  v22 = v17 | 7;
  v23 = v17 + 40;
  result = a1;
  if (v14 >= a2)
  {
LABEL_36:
    if (v6 == v14)
    {
      v32 = v6;
      v33 = AssociatedTypeWitness;
    }

    else
    {
      result = (a1 + v21) & ~v15;
      if (v8 != v14)
      {
        if (v13 > 0x7FFFFFFE)
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v23 + ((result + v16 + v22) & ~v22)) & ~v17, v12, v20);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v34 = *(((result + v16 + v22) & ~v22) + 0x18);
          if (v34 >= 0xFFFFFFFF)
          {
            LODWORD(v34) = -1;
          }

          if ((v34 + 1) >= 2)
          {
            return v34;
          }

          else
          {
            return 0;
          }
        }
      }

      v32 = v8;
      v33 = v4;
    }

    return __swift_getEnumTagSinglePayload(result, v32, v33);
  }

  v25 = ((v19 + v18 + (v23 & ~v17) + ((v22 + v16 + (v21 & ~v15)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v14 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  switch(v28)
  {
    case 1:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 2:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 3:
      __break(1u);
      return result;
    case 4:
      v29 = *(a1 + v25);
      if (!v29)
      {
        goto LABEL_36;
      }

LABEL_33:
      v30 = v29 - 1;
      if ((v25 & 0xFFFFFFF8) != 0)
      {
        v30 = 0;
        v31 = *a1;
      }

      else
      {
        v31 = 0;
      }

      result = v14 + (v31 | v30) + 1;
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

void sub_216B5F43C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v42 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v42 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(v5 + 64) + v17;
  v19 = *(v7 + 64);
  v20 = *(v12 + 80);
  v21 = v20 | 7;
  v22 = v20 + 40;
  v23 = (v20 + 40) & ~v20;
  if (v13)
  {
    v24 = *(*(v10 - 8) + 64);
  }

  else
  {
    v24 = *(*(v10 - 8) + 64) + 1;
  }

  v25 = v23 + v24;
  v26 = ((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = a3 - v16 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v29 = a2 - v16;
    }

    else
    {
      v29 = 1;
    }

    if (((v23 + v24 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v30 = ~v16 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v26) = v29;
        break;
      case 2:
        *(a1 + v26) = v29;
        break;
      case 3:
        goto LABEL_79;
      case 4:
        *(a1 + v26) = v29;
        break;
      default:
        return;
    }

    return;
  }

  v31 = ~v17;
  v32 = ~v21;
  v33 = ~v20;
  v34 = a1;
  switch(v11)
  {
    case 1:
      *(a1 + v26) = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 2:
      *(a1 + v26) = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 3:
LABEL_79:
      __break(1u);
      return;
    case 4:
      *(a1 + v26) = 0;
      goto LABEL_41;
    default:
LABEL_41:
      if (!a2)
      {
        return;
      }

LABEL_42:
      if (v6 == v16)
      {
        v35 = a2;
        v13 = v6;
        v10 = AssociatedTypeWitness;
LABEL_46:

        __swift_storeEnumTagSinglePayload(v34, v35, v13, v10);
        return;
      }

      v34 = ((a1 + v18) & v31);
      if (v8 == v16)
      {
        v35 = a2;
        v13 = v8;
        v10 = v42;
        goto LABEL_46;
      }

      v36 = ((v34 + v19 + v21) & v32);
      if (v15 >= a2)
      {
        if (v14 <= 0x7FFFFFFE)
        {
          if (a2 > 0x7FFFFFFE)
          {
            *(((v34 + v19 + v21) & v32) + 0x20) = 0;
            *v36 = 0u;
            *(((v34 + v19 + v21) & v32) + 0x10) = 0u;
            *v36 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(((v34 + v19 + v21) & v32) + 0x18) = a2;
          }

          return;
        }

        v36 = ((v36 + v22) & v33);
        if (v14 >= a2)
        {
          v35 = a2 + 1;
          v34 = v36;
          goto LABEL_46;
        }

        if (v24 <= 3)
        {
          v40 = ~(-1 << (8 * v24));
        }

        else
        {
          v40 = -1;
        }

        if (v24)
        {
          v38 = v40 & (~v14 + a2);
          if (v24 <= 3)
          {
            v41 = v24;
          }

          else
          {
            v41 = 4;
          }

          bzero(v36, v24);
          switch(v41)
          {
            case 2:
LABEL_73:
              *v36 = v38;
              break;
            case 3:
LABEL_76:
              *v36 = v38;
              *(v36 + 2) = BYTE2(v38);
              break;
            case 4:
LABEL_77:
              *v36 = v38;
              break;
            default:
LABEL_60:
              *v36 = v38;
              break;
          }
        }
      }

      else
      {
        if (v25 <= 3)
        {
          v37 = ~(-1 << (8 * v25));
        }

        else
        {
          v37 = -1;
        }

        if (v25)
        {
          v38 = v37 & (~v15 + a2);
          if (v25 <= 3)
          {
            v39 = v23 + v24;
          }

          else
          {
            v39 = 4;
          }

          bzero(((v34 + v19 + v21) & v32), v25);
          switch(v39)
          {
            case 2:
              goto LABEL_73;
            case 3:
              goto LABEL_76;
            case 4:
              goto LABEL_77;
            default:
              goto LABEL_60;
          }
        }
      }

      return;
  }
}

uint64_t sub_216B5F8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v64 = v10;
  MEMORY[0x28223BE20](v11);
  v62 = &v56 - v12;
  MEMORY[0x28223BE20](v13);
  v63 = &v56 - v14;
  v15 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v15 - 8);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_90();
  OUTLINED_FUNCTION_1();
  v57 = v18;
  v58 = v17;
  MEMORY[0x28223BE20](v17);
  v66 = &v56 - v19;
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AppDestinationViewControllerRepresentable(0, v6, v5, v23);
  OUTLINED_FUNCTION_1();
  v61 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v59 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v56 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v56 - v32;
  v70 = v7;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v68 = v35;
  v69 = v34;
  v36 = MEMORY[0x28223BE20](v34);
  v67 = &v56 - v37;
  v38 = *(a1 + 36);
  if ((*(v5 + 152))(v6, v5, v36))
  {
    (*(v56 + 16))(v22, v3 + v38, v6);
    (*(v57 + 16))(v66, v3, v58);
    v39 = v60;
    sub_216B479C0(v3 + *(a1 + 40), v60);
    v40 = *(v3 + *(a1 + 44));
    if (v40)
    {
      sub_216B5FF58(v22, v66, v39, v40, v6, v5, v30);
      OUTLINED_FUNCTION_0_169();
      WitnessTable = swift_getWitnessTable();
      sub_2166C24DC(v30, v24, WitnessTable);
      v42 = *(v61 + 8);

      v42(v30, v24);
      v43 = v59;
      sub_2166C24DC(v33, v24, WitnessTable);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v45 = v67;
      sub_2166C2718();
      v42(v43, v24);
      v42(v33, v24);
LABEL_6:
      v72 = swift_getWitnessTable();
      v73 = AssociatedConformanceWitness;
      OUTLINED_FUNCTION_6_1();
      v53 = v69;
      v54 = swift_getWitnessTable();
      sub_2166C24DC(v45, v53, v54);
      return (*(v68 + 8))(v45, v53);
    }
  }

  else
  {
    v46 = *(v3 + *(a1 + 44));
    if (v46)
    {
      v47 = *(v5 + 104);

      v48 = v62;
      v47(v3, v46, v6, v5);

      v49 = v70;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v50 = v63;
      sub_2166C24DC(v48, v49, AssociatedConformanceWitness);
      v51 = *(v65 + 8);
      v51(v48, v49);
      v52 = v64;
      sub_2166C24DC(v50, v49, AssociatedConformanceWitness);
      OUTLINED_FUNCTION_0_169();
      swift_getWitnessTable();
      v45 = v67;
      sub_2166C2CB0();
      v51(v52, v49);
      v51(v50, v49);
      goto LABEL_6;
    }
  }

  type metadata accessor for MusicStackAuthority(0);
  sub_216B5EFF0();
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216B5FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for AppDestinationViewControllerRepresentable(0, a5, a6, v13);
  v15 = v14[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v15, a2, AssociatedTypeWitness);
  result = sub_216B46938(a3, a7 + v14[10]);
  *(a7 + v14[11]) = a4;
  return result;
}

uint64_t sub_216B60078(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = type metadata accessor for MusicAppDestinationContext(319);
      if (v4 <= 0x3F)
      {
        AssociatedTypeWitness = type metadata accessor for MusicStackAuthority(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

unint64_t sub_216B60158(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v11 + 80);
  if (v12)
  {
    v18 = *(*(v10 - 8) + 64);
  }

  else
  {
    v18 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v10;
  v20 = *(v5 + 64) + v15;
  v21 = v17 | 7;
  v22 = v18 + ((v17 + 40) & ~v17) + 7;
  result = a1;
  if (v14 >= a2)
  {
LABEL_36:
    if (v6 == v14)
    {
      v31 = v6;
      v32 = v4;
    }

    else
    {
      result = (a1 + v20) & ~v15;
      if (v8 != v14)
      {
        v33 = (result + v16 + v21) & ~v21;
        if (v13 == v14)
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v17 + 40 + v33) & ~v17, v12, v19);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v35 = *((v22 + v33) & 0xFFFFFFFFFFFFFFF8);
          if (v35 >= 0xFFFFFFFF)
          {
            LODWORD(v35) = -1;
          }

          return (v35 + 1);
        }
      }

      v31 = v8;
      v32 = AssociatedTypeWitness;
    }

    return __swift_getEnumTagSinglePayload(result, v31, v32);
  }

  v24 = ((v22 + ((v21 + v16 + (v20 & ~v15)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v24 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v14 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 2:
      v28 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(a1 + v24);
      if (!v28)
      {
        goto LABEL_36;
      }

LABEL_33:
      v29 = v28 - 1;
      if ((v24 & 0xFFFFFFF8) != 0)
      {
        v29 = 0;
        v30 = *a1;
      }

      else
      {
        v30 = 0;
      }

      result = v14 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

void sub_216B60474(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v44 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_217005EF4();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(v7 + 80);
  v18 = *(v5 + 64) + v17;
  v19 = *(v7 + 64);
  v20 = *(v12 + 80);
  v21 = v20 | 7;
  v22 = v20 + 40;
  v23 = (v20 + 40) & ~v20;
  v24 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v24;
  }

  v25 = v23 + v24;
  v26 = v23 + v24 + 7;
  v27 = ((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 < a3)
  {
    if (((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a3 - v16 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v30 = a2 - v16;
    }

    else
    {
      v30 = 1;
    }

    if (((v26 + (((v20 | 7) + v19 + (v18 & ~v17)) & ~(v20 | 7))) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v31 = ~v16 + a2;
      bzero(a1, v27);
      *a1 = v31;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v27) = v30;
        break;
      case 2:
        *(a1 + v27) = v30;
        break;
      case 3:
        goto LABEL_73;
      case 4:
        *(a1 + v27) = v30;
        break;
      default:
        return;
    }

    return;
  }

  v32 = ~v17;
  v33 = ~v21;
  v34 = ~v20;
  v35 = a1;
  switch(v11)
  {
    case 1:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 2:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 3:
LABEL_73:
      __break(1u);
      return;
    case 4:
      *(a1 + v27) = 0;
      goto LABEL_43;
    default:
LABEL_43:
      if (!a2)
      {
        return;
      }

LABEL_44:
      if (v6 == v16)
      {
        v36 = a2;
        v13 = v6;
        v10 = v44;
LABEL_48:

        __swift_storeEnumTagSinglePayload(v35, v36, v13, v10);
        return;
      }

      v35 = ((a1 + v18) & v32);
      if (v8 == v16)
      {
        v36 = a2;
        v13 = v8;
        v10 = AssociatedTypeWitness;
        goto LABEL_48;
      }

      v37 = (v35 + v19 + v21) & v33;
      if (v14 != v16)
      {
        v41 = ((v26 + v37) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v42 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v42 = a2 - 1;
        }

        *v41 = v42;
        return;
      }

      if (v15 >= a2)
      {
        v35 = ((v22 + v37) & v34);
        v36 = a2 + 1;
        goto LABEL_48;
      }

      if (v25 <= 3)
      {
        v38 = ~(-1 << (8 * v25));
      }

      else
      {
        v38 = -1;
      }

      if (v25)
      {
        v39 = v38 & (~v15 + a2);
        if (v25 <= 3)
        {
          v40 = v25;
        }

        else
        {
          v40 = 4;
        }

        bzero(((v35 + v19 + v21) & v33), v25);
        switch(v40)
        {
          case 2:
            *v37 = v39;
            break;
          case 3:
            *v37 = v39;
            *(v37 + 2) = BYTE2(v39);
            break;
          case 4:
            *v37 = v39;
            break;
          default:
            *v37 = v39;
            break;
        }
      }

      return;
  }
}

uint64_t sub_216B608BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_216B60938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_216B609B4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_217009AF4();
  __break(1u);
}

uint64_t *sub_216B60A3C(uint64_t **a1)
{
  v2 = *a1;
  v3 = sub_216B61A50();
  v4 = sub_21700DF14();
  v6 = sub_216F76E04(v4, v5, &type metadata for ReplayPageResponse.FacetItem, v3);
  if (v1)
  {
    OUTLINED_FUNCTION_4_93();
  }

  else
  {
    if (v6)
    {
      v2 = v6;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v7 = sub_21700DF14();
    sub_216F76E04(v7, v8, &type metadata for ReplayPageResponse.FacetItem, v3);
    type metadata accessor for ReplayYearPeriodList(0);
    sub_21700DF14();
    OUTLINED_FUNCTION_4_93();
  }

  return v2;
}

uint64_t sub_216B60B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v36 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v39 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v34 = v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v35 = &v32 - v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v40 = a1;
  sub_21700CE04();
  v19 = *(v6 + 16);
  v38 = v4;
  v19(v11, a2, v4);
  sub_216B61D0C();
  v20 = v37;
  v21 = sub_21700E924();
  if (v20)
  {
    (*(v6 + 8))(a2, v38);
    return (*(v13 + 8))(v40, v39);
  }

  else
  {
    v32 = v21;
    v33 = v13;
    v37 = v6;
    v23 = a2;
    v24 = v40;
    sub_21700CE04();
    v25 = v38;
    v19(v36, v23, v38);
    sub_21700E924();
    sub_21700DF14();
    v26 = v34;
    v27 = v25;
    sub_21700CE04();
    v28 = v24;
    sub_21700CDB4();
    (*(v37 + 8))(v23, v27);
    v29 = *(v33 + 8);
    v30 = v28;
    v31 = v39;
    v29(v30, v39);
    v29(v26, v31);

    return v32;
  }
}

uint64_t sub_216B60EB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a3;
  v70 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3A68, &qword_217049928);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v65 = (v63 - v5);
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v66 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = v63 - v12;
  MEMORY[0x28223BE20](v14);
  v67 = v63 - v15;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v16);
  v18 = v63 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v63 - v20;
  v73 = a1;
  sub_21700CE04();
  v22 = sub_21700CDB4();
  v24 = v23;
  v25 = v21;
  v26 = v6;
  v71 = *(v8 + 8);
  v71(v25, v6);
  if (!v24)
  {
    v45 = sub_21700E2E4();
    OUTLINED_FUNCTION_1_146();
    v48 = sub_216B61CC4(v46, v47, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v48);
    v50 = v49;
    *v49 = 25705;
    v49[1] = 0xE200000000000000;
LABEL_7:
    v49[2] = &type metadata for ReplayPageResponse.FacetItem;
    (*(*(v45 - 8) + 104))(v50, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v54 + 8))(v70);
    return (v71)(v73, v6);
  }

  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v71(v18, v6);
  v64 = v29;
  if (!v29)
  {

    v45 = sub_21700E2E4();
    OUTLINED_FUNCTION_1_146();
    v53 = sub_216B61CC4(v51, v52, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v53);
    v50 = v49;
    *v49 = 0x656C746974;
    v49[1] = 0xE500000000000000;
    goto LABEL_7;
  }

  v30 = v69;
  v69[12] = v22;
  v30[13] = v24;
  v31 = v64;
  *v30 = v27;
  v30[1] = v31;
  v32 = v67;
  sub_21700CE04();
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v35 = v34;
  v63[1] = v8 + 8;
  v71(v13, v26);
  if (v35)
  {
    v36 = v68;
    v37 = v65;
    (*(v8 + 32))(v65 + *(v68 + 36), v32, v26);
    *v37 = v33;
    v37[1] = v35;
    v72[3] = v36;
    v72[4] = sub_216B61AFC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
    sub_216B61B60(v37, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_8_76();
    v39 = v66;
    v40 = v73;
    sub_21700CE04();
    v41 = v70;
    sub_21700D2E4();
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v42 + 8))(v41);
    v43 = v71;
    v71(v40, v26);
    return v43(v39, v26);
  }

  else
  {
    v55 = sub_21700E2E4();
    OUTLINED_FUNCTION_1_146();
    v58 = sub_216B61CC4(v56, v57, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v58);
    *v59 = 0x646E696B24;
    v60 = v68;
    v59[1] = 0xE500000000000000;
    v59[2] = v60;
    (*(*(v55 - 8) + 104))(v59, *MEMORY[0x277D22530], v55);
    swift_willThrow();
    v61 = v71;
    v71(v32, v26);
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v62 + 8))(v70);
    v61(v73, v26);
  }
}

uint64_t sub_216B614D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216B60B20(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

double sub_216B61508@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3A68, &qword_217049928);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for AnyAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFF98, &unk_217049930);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  v18 = type metadata accessor for ReplayPeriodItem(0);
  v19 = v18;
  v20 = (a1 + v18[5]);
  v21 = v20[1];
  if (!v21)
  {
    sub_2167880BC();
    swift_allocError();
    v30 = xmmword_217014E10;
LABEL_7:
    *v29 = v30;
    *(v29 + 16) = v19;
    swift_willThrow();
    OUTLINED_FUNCTION_0_170();
    v28 = a1;
    goto LABEL_8;
  }

  v44 = v4;
  v22 = (a1 + v18[6]);
  v23 = v22[1];
  if (!v23)
  {
    sub_2167880BC();
    swift_allocError();
    v30 = xmmword_21701C090;
    goto LABEL_7;
  }

  v41 = *v20;
  v42 = *v22;
  v43 = a2;
  v24 = v18[7];
  v45 = a1;
  sub_216681B04(a1 + v24, v17, &qword_27CABFF98, &unk_217049930);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v11);
  sub_216697664(v17, &qword_27CABFF98, &unk_217049930);
  if (EnumTagSinglePayload == 1)
  {
    sub_2167880BC();
    swift_allocError();
    *v26 = xmmword_217036890;
    *(v26 + 16) = v19;
    swift_willThrow();
    OUTLINED_FUNCTION_0_170();
    v28 = v45;
LABEL_8:
    sub_216B61AA4(v28, v27);
    return result;
  }

  v32 = v43;
  v33 = v42;
  v43[12] = v41;
  v32[13] = v21;
  *v32 = v33;
  v32[1] = v23;
  sub_21700DF14();
  sub_21700DF14();
  v34 = v45;
  sub_216F79E98(v14);
  sub_216B3B364((v32 + 7));
  sub_216B61AA4(v14, type metadata accessor for AnyAction);
  *v10 = 0x65746E496B636F4DLL;
  *(v10 + 1) = 0xEA0000000000746ELL;
  v35 = v48;
  v36 = v49[6];
  sub_21700CD04();
  if (v36)
  {
    sub_216B61AA4(v34, type metadata accessor for ReplayPeriodItem);

    sub_216697664((v32 + 7), &qword_27CAB6DB0, &qword_217016C00);
  }

  else
  {
    v37 = v46;
    (*(v47 + 32))(&v10[*(v46 + 36)], v35, v44);
    v49[3] = v37;
    v49[4] = sub_216B61AFC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    sub_216B61B60(v10, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_0_170();
    sub_216B61AA4(v34, v39);
    *&result = OUTLINED_FUNCTION_8_76().n128_u64[0];
  }

  return result;
}

unint64_t sub_216B619D4(uint64_t a1)
{
  result = sub_216B619FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B619FC()
{
  result = qword_27CAC3A58;
  if (!qword_27CAC3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A58);
  }

  return result;
}

unint64_t sub_216B61A50()
{
  result = qword_27CAC3A60;
  if (!qword_27CAC3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A60);
  }

  return result;
}

uint64_t sub_216B61AA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216B61AFC()
{
  result = qword_27CAC3A70;
  if (!qword_27CAC3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3A68, &qword_217049928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A70);
  }

  return result;
}

uint64_t sub_216B61B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3A68, &qword_217049928);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B61BF4()
{
  result = qword_27CAC3A78;
  if (!qword_27CAC3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A78);
  }

  return result;
}

unint64_t sub_216B61C48(uint64_t a1)
{
  result = sub_216B61C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B61C70()
{
  result = qword_27CAC3A80;
  if (!qword_27CAC3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A80);
  }

  return result;
}

uint64_t sub_216B61CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216B61D0C()
{
  result = qword_27CAC3A88;
  if (!qword_27CAC3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3A88);
  }

  return result;
}

uint64_t sub_216B61DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216B61E4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_217007DF4();
}

uint64_t sub_216B61F64(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_217007DF4();
}

char *sub_216B61FCC(const void *a1, uint64_t a2, double a3)
{
  v67 = a2;
  sub_217005844();
  OUTLINED_FUNCTION_1();
  v64 = v6;
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v63 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v68 = &v60 - v11;
  v70 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v62 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v61 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v69 = &v60 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0B8, &unk_217049C20);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_1();
  v24 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  memcpy(__dst, a1, 0x88uLL);
  LOBYTE(v72[0]) = 0;
  sub_217007DA4();
  v26 = *(v24 + 32);
  v27 = OUTLINED_FUNCTION_33_29();
  v26(v27);
  OUTLINED_FUNCTION_8_77();
  v28 = OUTLINED_FUNCTION_33_29();
  v26(v28);
  OUTLINED_FUNCTION_8_77();
  v29 = OUTLINED_FUNCTION_33_29();
  v26(v29);
  v30 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel__hostName;
  v72[0] = 0;
  v72[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  sub_217007DA4();
  (*(v19 + 32))(&v3[v30], v22, v66);
  v31 = v67;
  OUTLINED_FUNCTION_8_77();
  v32 = OUTLINED_FUNCTION_20_40();
  v26(v32);
  OUTLINED_FUNCTION_8_77();
  v33 = OUTLINED_FUNCTION_20_40();
  v26(v33);
  OUTLINED_FUNCTION_8_77();
  v34 = OUTLINED_FUNCTION_20_40();
  v26(v34);
  OUTLINED_FUNCTION_8_77();
  v35 = OUTLINED_FUNCTION_20_40();
  v26(v35);
  v36 = v70;
  v37 = &v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 2) = 0u;
  *(v37 + 3) = 0u;
  *(v37 + 4) = 0u;
  v38 = &v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss];
  *v38 = 0;
  *(v38 + 1) = 0;
  *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType] = MEMORY[0x277D84F98];
  v39 = &v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  *v39 = 0;
  *(v39 + 1) = 0;
  *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCredential] = 0;
  v40 = &v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_protectionSpaceHost];
  *v40 = 0;
  *(v40 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession] = 0;
  *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation] = 0;
  v41 = &v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString];
  *v41 = 0;
  *(v41 + 1) = 0;
  memcpy(&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params], __dst, 0x88uLL);
  *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_objectGraph] = v31;
  v42 = objc_allocWithZone(MEMORY[0x277CE3850]);
  sub_2167E705C(__dst, v72);

  v43 = [v42 init];
  *&v3[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView] = v43;
  v44 = type metadata accessor for LibraryImportWebViewModel(0);
  v71.receiver = v3;
  v71.super_class = v44;
  v45 = v68;
  v46 = objc_msgSendSuper2(&v71, sel_init);
  sub_217005ED4();
  sub_216B6767C(__dst);
  v47 = v36;
  if (__swift_getEnumTagSinglePayload(v45, 1, v36) == 1)
  {

    sub_216697664(v45, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v48 = v62;
    v49 = v69;
    (*(v62 + 32))(v69, v45, v47);
    (*(v48 + 16))(v61, v49, v47);
    v50 = v63;
    sub_2170057E4();
    v51 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView;
    v52 = [*&v46[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView] configuration];
    v53 = [v52 userContentController];

    v54 = [objc_opt_self() pageWorld];
    v55 = sub_21700E4D4();
    [v53 addScriptMessageHandlerWithReply:v46 contentWorld:v54 name:v55];

    [*&v46[v51] setNavigationDelegate_];
    v56 = *&v46[v51];
    v57 = sub_2170057B4();
    v58 = [v56 loadRequest_];

    (*(v64 + 8))(v50, v65);
    (*(v48 + 8))(v69, v70);
  }

  return v46;
}

void sub_216B62684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_77();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  if (sub_216B61EEC())
  {
    sub_216B61F00(0);
    v9 = *(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView);
    v10 = [v9 URL];
    if (v10)
    {
      v11 = v10;
      sub_217005E64();

      v12 = sub_217005EF4();
      v13 = 0;
    }

    else
    {
      v12 = sub_217005EF4();
      v13 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v13, 1, v12);
    sub_2166CF4DC(v5, v8);
    sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      sub_216697664(v8, &qword_27CABA820, &unk_217018CE0);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = sub_217005E74();
      v16 = v17;
      (*(*(v12 - 8) + 8))(v8, v12);
    }

    sub_216B61E4C(v15, v16);
    sub_216B61D74([v9 canGoBack]);
  }

  else
  {
    v14 = [*(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView) goBack];
  }
}

uint64_t sub_216B62898()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView);
  sub_216B61D74([v1 canGoBack]);
  v2 = [v1 canGoForward];

  return sub_216B61D9C(v2);
}

uint64_t sub_216B628F4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3A90);
  __swift_project_value_buffer(v0, qword_27CAC3A90);
  return sub_217007C94();
}

id sub_216B629B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryImportWebViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LibraryImportWebViewModel(uint64_t a1)
{
  result = qword_280E357E8;
  if (!qword_280E357E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B62C8C(uint64_t a1)
{
  sub_2166BF8FC();
  if (v1 <= 0x3F)
  {
    sub_2169C5020(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_216B62DC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibraryImportWebViewModel(0);
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_216B62E04()
{
  OUTLINED_FUNCTION_33();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v4);
  v1[14] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v1[15] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[16] = v6;
  v1[17] = *(v7 + 64);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = type metadata accessor for OpenExternalURLAction(0);
  v1[20] = v8;
  OUTLINED_FUNCTION_2(v8);
  v1[21] = v9;
  v1[22] = *(v10 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v11);
  v1[25] = OUTLINED_FUNCTION_80();
  v12 = sub_217005844();
  v1[26] = v12;
  OUTLINED_FUNCTION_2(v12);
  v1[27] = v13;
  v1[28] = OUTLINED_FUNCTION_80();
  v14 = sub_217005EF4();
  v1[29] = v14;
  OUTLINED_FUNCTION_2(v14);
  v1[30] = v15;
  v1[31] = OUTLINED_FUNCTION_80();
  v1[32] = sub_21700EA34();
  v1[33] = sub_21700EA24();
  v17 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B6306C, v17, v16);
}

uint64_t sub_216B6306C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 96);

  v7 = [v6 request];
  sub_2170057D4();

  sub_2170057F4();
  (*(v4 + 8))(v2, v3);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_216697664(*(v0 + 200), &qword_27CABA820, &unk_217018CE0);
LABEL_26:
    v48 = 0;
    goto LABEL_27;
  }

  v8 = *(v0 + 96);
  (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 200), *(v0 + 232));
  if ([v8 navigationType] == -1)
  {
    v9 = [*(v0 + 96) targetFrame];
    if (v9)
    {
    }

    else
    {
      v51 = *(v0 + 104);
      v52 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
      swift_beginAccess();
      v53 = *(v51 + v52);
      sub_21700DF14();
      v54 = sub_216935620(3, v53);

      if (v54)
      {
        v55 = OUTLINED_FUNCTION_8();
        sub_21667E91C(v55, v56);
        v57 = OUTLINED_FUNCTION_20_13();
        v58(v57);
        goto LABEL_34;
      }
    }
  }

  v10 = sub_217005EC4();
  if (!v11)
  {
    goto LABEL_12;
  }

  if (v10 == 0x7370747468 && v11 == 0xE500000000000000)
  {
LABEL_18:

    goto LABEL_19;
  }

  v13 = sub_21700F7D4();

  if ((v13 & 1) == 0)
  {
LABEL_12:
    if (sub_217005DE4() != 0x6C623A74756F6261 || v14 != 0xEB000000006B6E61)
    {
      v16 = sub_21700F7D4();

      if ((v16 & 1) == 0)
      {
        v18 = *(v0 + 240);
        v17 = *(v0 + 248);
        v19 = *(v0 + 232);
        v20 = *(v0 + 88);
        sub_216B61F00(1);
        [v20 stopLoading];
        (*(v18 + 8))(v17, v19);
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_19:
  v21 = sub_217005E74();
  if (!v22)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    goto LABEL_26;
  }

  v23 = v21;
  v24 = v22;
  v25 = (*(v0 + 104) + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params);
  v26 = v25[5];
  *(v0 + 40) = v21;
  *(v0 + 48) = v22;
  v27 = swift_task_alloc();
  *(v27 + 16) = v0 + 40;
  v28 = sub_216CA1DA8(sub_216AF7E78, v27, v26);

  if (v28)
  {
    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v31 = *(v0 + 232);
    v32 = *(v0 + 104);

    [*(v32 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession) cancel];
    sub_216B63778(v29);
LABEL_22:
    (*(v30 + 8))(v29, v31);
    goto LABEL_26;
  }

  v33 = v25[6];
  *(v0 + 56) = v23;
  *(v0 + 64) = v24;
  v34 = swift_task_alloc();
  *(v34 + 16) = v0 + 56;
  LOBYTE(v33) = sub_216CA1DA8(sub_216B69928, v34, v33);

  if (v33)
  {
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v68 = v35;
    v69 = v36;
    v38 = *(v0 + 192);
    v63 = *(v0 + 184);
    v66 = *(v0 + 176);
    v67 = v37;
    v65 = *(v0 + 168);
    v39 = *(v0 + 160);
    v71 = *(v0 + 152);
    v62 = *(v0 + 144);
    v64 = *(v0 + 136);
    v40 = *(v0 + 128);
    v70 = *(v0 + 120);
    v41 = *(v0 + 104);

    (*(v36 + 16))(v38, v35, v37);
    sub_21700D234();
    *(v38 + *(v39 + 20)) = 0;
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v42 = sub_21700EA74();
    OUTLINED_FUNCTION_9_4(v42);
    (*(v40 + 16))(v62, v71, v70);
    sub_216B69594(v38, v63, type metadata accessor for OpenExternalURLAction);
    v61 = v41;
    v43 = sub_21700EA24();
    v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v45 = (v64 + *(v65 + 80) + v44) & ~*(v65 + 80);
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D85700];
    *(v46 + 16) = v43;
    *(v46 + 24) = v47;
    (*(v40 + 32))(v46 + v44, v62, v70);
    sub_216B695F0(v63, v46 + v45, type metadata accessor for OpenExternalURLAction);
    *(v46 + ((v66 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v61;
    OUTLINED_FUNCTION_9_46();
    sub_21677C03C();

    (*(v40 + 8))(v71, v70);
    sub_216B697A8(v38, type metadata accessor for OpenExternalURLAction);
    (*(v69 + 8))(v68, v67);
    goto LABEL_26;
  }

  v59 = v25[4];
  *(v0 + 72) = v23;
  *(v0 + 80) = v24;
  v60 = swift_task_alloc();
  *(v60 + 16) = v0 + 72;
  LOBYTE(v59) = sub_216CA1DA8(sub_216B69928, v60, v59);

  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v31 = *(v0 + 232);
  if ((v59 & 1) == 0)
  {
    sub_216B61F00(1);
    goto LABEL_22;
  }

  (*(v30 + 8))(*(v0 + 248), *(v0 + 232));
LABEL_34:
  v48 = 1;
LABEL_27:

  v49 = *(v0 + 8);

  return v49(v48);
}

void sub_216B63778(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_217005EF4();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = objc_opt_self();
  v11 = sub_21700E4D4();
  v12 = [v10 callbackWithCustomScheme_];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  v15 = objc_allocWithZone(MEMORY[0x277CBA9D8]);
  v16 = sub_216B68954(v8, v12, sub_216B69800, v14);
  [v16 setPrefersEphemeralWebBrowserSession_];
  [v16 setPresentationContextProvider_];
  if ([v16 canStart])
  {
    [v16 start];
  }

  v17 = *(v2 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession);
  *(v2 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession) = v16;
}

uint64_t sub_216B6396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  sub_21700EA34();
  v6[14] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v6[15] = v9;
  v6[16] = v8;

  return MEMORY[0x2822009F8](sub_216B63A70, v9, v8);
}

uint64_t sub_216B63A70()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v0[5] = type metadata accessor for OpenExternalURLAction(0);
  v0[6] = sub_216B69868(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction, &unk_2170319D8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_216B69594(v4, boxed_opaque_existential_1, type metadata accessor for OpenExternalURLAction);
  (*(v2 + 104))(v1, *MEMORY[0x277D21E18], v3);
  v6 = swift_task_alloc();
  v0[17] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  *v6 = v0;
  v6[1] = sub_216B63BCC;
  OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x28217F468](v7, v8, v9, v10, v11);
}

uint64_t sub_216B63BCC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_20_13();
    v8(v7);
  }

  else
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216B63D0C()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 56);
  v2 = sub_21700D2A4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216B63D90()
{
  OUTLINED_FUNCTION_33();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = sub_21700D2A4();
  OUTLINED_FUNCTION_9_4(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216B63EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_21700EA34();
  v4[6] = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B63F40, v6, v5);
}

uint64_t sub_216B63F40()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_216B64008;

  return sub_216B62E04();
}

uint64_t sub_216B64008()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v2 = v1[7];
  v3 = v1[5];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_28();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_8();
  v9(v8);
  _Block_release(v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_216B64168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_217049CE8;
  v9[5] = v8;
  sub_216ED06BC(0, 0, v6, &unk_217049CF8, v9);
}

uint64_t sub_216B64278(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_41_23();
  OUTLINED_FUNCTION_9_4(v5);
  sub_21700EA34();
  v6 = v1;
  v7 = a1;
  v8 = sub_21700EA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v7;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216B6435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  sub_21700EA34();
  v5[7] = sub_21700EA24();
  v7 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B64444, v7, v6);
}

uint64_t sub_216B64444()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[3];

  v2 = 1;
  sub_216B61ED8(1);
  sub_216B61DC4([v1 hasOnlySecureContent]);
  v3 = [v1 URL];
  if (v3)
  {
    v4 = v3;
    sub_217005E64();

    v2 = 0;
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(v6, v2, 1, v7);
  sub_2166CF4DC(v6, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  v9 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v0[6], &qword_27CABA820, &unk_217018CE0);
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v10 = sub_217005E74();
    OUTLINED_FUNCTION_40_21();
    (*(v11 + 8))(v9, v7);
  }

  v12 = v0[3];
  sub_216B61E4C(v10, v6);
  v13 = [v12 URL];
  if (v13)
  {
    v14 = v13;
    sub_217005E64();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v0[4];
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v7);
  sub_216B64634(v16);
  sub_216697664(v16, &qword_27CABA820, &unk_217018CE0);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_216B64634(uint64_t a1)
{
  v2 = sub_217005AB4();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_217005EF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168282D4(a1, v12, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_2170059E4();
    if (!__swift_getEnumTagSinglePayload(v6, 1, v2))
    {
      sub_217005A64();
    }

    if (__swift_getEnumTagSinglePayload(v6, 1, v2))
    {
      (*(v14 + 8))(v16, v13);
    }

    else
    {
      v21 = v29;
      v20 = v30;
      (*(v30 + 16))(v29, v6, v2);
      sub_2170059F4();
      (*(v20 + 8))(v21, v2);
      if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
      {
        v22 = sub_217005DE4();
        v23 = v26;
        v27 = *(v14 + 8);
        v27(v16, v13);
        v27(v9, v13);
        goto LABEL_10;
      }

      (*(v14 + 8))(v16, v13);
      sub_216697664(v9, &qword_27CABA820, &unk_217018CE0);
    }

    v22 = 0;
    v23 = 0;
LABEL_10:
    v24 = (v31 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString);
    *v24 = v22;
    v24[1] = v23;

    v17 = &qword_27CAB6BD0;
    v18 = &unk_2170142B0;
    v19 = v6;
    return sub_216697664(v19, v17, v18);
  }

  v17 = &qword_27CABA820;
  v18 = &unk_217018CE0;
  v19 = v12;
  return sub_216697664(v19, v17, v18);
}

uint64_t sub_216B64A80(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_21700EA34();
  v9 = a2;
  v10 = v2;
  v11 = a1;
  v12 = sub_21700EA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a2;
  sub_21677BBA0();
}

void sub_216B64BD4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, id))
{
  v10 = a3;
  v11 = a4;
  v13 = a5;
  v12 = a1;
  a6(v10, a4, v13);
}

uint64_t sub_216B64C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21700EA34();
  v6[5] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B64D08, v8, v7);
}

uint64_t sub_216B64D08()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[3];

  v2 = 1;
  sub_216B61F00(1);
  sub_216B61ED8(0);
  if (([v1 canGoBack] & 1) == 0)
  {
    v3 = *(v0[2] + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation);
    if (v3)
    {
      v4 = v0[4];
      if (v4)
      {
        sub_216685F4C(0, &qword_27CAC3C10, 0x277CE3808);
        v5 = v3;
        v6 = v4;
        v7 = sub_21700F104();

        v2 = v7 ^ 1;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  sub_216B61D74(v2 & 1);
  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216B64E10(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_21700EA34();
  v10 = a2;
  v11 = v2;
  v12 = a1;
  v13 = sub_21700EA24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = a2;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216B64F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  sub_21700EA34();
  v6[7] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B65000, v8, v7);
}

uint64_t sub_216B65000()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[3];

  sub_216B61DC4([v1 hasOnlySecureContent]);
  sub_216B61ED8(0);
  v2 = [v1 URL];
  if (v2)
  {
    v3 = v2;
    sub_217005E64();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(v6, v4, 1, v7);
  sub_2166CF4DC(v6, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  v9 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v0[6], &qword_27CABA820, &unk_217018CE0);
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v10 = sub_217005E74();
    OUTLINED_FUNCTION_40_21();
    (*(v11 + 8))(v9, v7);
  }

  v12 = v0[4];
  v13 = v0[2];
  sub_216B61E4C(v10, v6);
  v14 = *(v13 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation);
  *(v13 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastNavigation) = v12;
  v15 = v12;

  sub_216B62898();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_216B65220()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_41_23();
  OUTLINED_FUNCTION_9_4(v3);
  sub_21700EA34();
  v4 = v0;
  v5 = sub_21700EA24();
  OUTLINED_FUNCTION_181();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216B652EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B65384, v6, v5);
}

uint64_t sub_216B65384()
{
  OUTLINED_FUNCTION_33();

  sub_216B62898();
  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216B65450(void *a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = [a2 response];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    if ([v15 statusCode] - 400 < 0xFFFFFFFFFFFFFED4)
    {
      v16 = [a1 URL];
      if (v16)
      {
        v17 = v16;
        sub_217005E64();

        v18 = sub_217005EF4();
        v19 = 0;
      }

      else
      {
        v18 = sub_217005EF4();
        v19 = 1;
      }

      __swift_storeEnumTagSinglePayload(v9, v19, 1, v18);
      sub_2166CF4DC(v9, v13);
      sub_217005EF4();
      if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
      {
        sub_216697664(v13, &qword_27CABA820, &unk_217018CE0);
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v20 = sub_217005E74();
        v21 = v22;
        (*(*(v18 - 8) + 8))(v13, v18);
      }

      sub_216B61E4C(v20, v21);
      sub_216B61F00(1);
      a4[2](a4, 0);

      _Block_release(a4);
      return;
    }

    a4[2](a4, 1);
  }

  else
  {

    a4[2](a4, 1);
  }

  _Block_release(a4);
}

void sub_216B656F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_217005EF4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  if (!a2)
  {
    sub_2168282D4(a1, v13, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {

      v29 = &qword_27CABA820;
      v30 = &unk_217018CE0;
      v31 = v13;
LABEL_9:
      sub_216697664(v31, v29, v30);
      return;
    }

    (*(v15 + 32))(v17, v13, v14);
    v32 = sub_217005E84();
    if (v33)
    {
      if (v32 == *&v19[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 120] && v33 == *&v19[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 128])
      {
      }

      else
      {
        v35 = sub_21700F7D4();

        if ((v35 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (sub_217005EA4() == 0x61632D687475612FLL && v36 == 0xEE006B6361626C6CLL)
      {
      }

      else
      {
        v38 = sub_21700F7D4();

        if ((v38 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_2170059E4();
      sub_2168282D4(v10, v7, &qword_27CAB6BD0, &unk_2170142B0);
      v39 = sub_217005AB4();
      if (__swift_getEnumTagSinglePayload(v7, 1, v39) == 1)
      {

        sub_216697664(v10, &qword_27CAB6BD0, &unk_2170142B0);
        (*(v15 + 8))(v17, v14);
        v31 = v7;
        v29 = &qword_27CAB6BD0;
        v30 = &unk_2170142B0;
        goto LABEL_9;
      }

      v40 = MEMORY[0x21CE96870]();
      v42 = v41;
      (*(*(v39 - 8) + 8))(v7, v39);
      if (!v42)
      {

        sub_216697664(v10, &qword_27CAB6BD0, &unk_2170142B0);
        (*(v15 + 8))(v17, v14);
        return;
      }

      v45 = 63;
      v46 = 0xE100000000000000;
      MEMORY[0x21CE9F490](v40, v42);

      sub_216B65CB8(v45, v46);

      sub_216697664(v10, &qword_27CAB6BD0, &unk_2170142B0);
    }

LABEL_30:
    (*(v15 + 8))(v17, v14);
    v43 = *&v19[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession];
    *&v19[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_activeAuthSession] = 0;

    return;
  }

  v20 = a2;
  if (qword_27CAB5DD8 != -1)
  {
    swift_once();
  }

  v21 = sub_217007CA4();
  __swift_project_value_buffer(v21, qword_27CAC3A90);
  v22 = a2;
  v23 = sub_217007C84();
  v24 = sub_21700ED84();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    v27 = a2;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_216679000, v23, v24, "ASWebAuthenticationSession failed with error: %{public}@", v25, 0xCu);
    sub_216697664(v26, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v26, -1, -1);
    MEMORY[0x21CEA1440](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_216B65CB8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_21700B5A4();
  OUTLINED_FUNCTION_1();
  v34 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  sub_21700B5E4();
  OUTLINED_FUNCTION_1();
  v32 = v10;
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700B604();
  v31 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  v22 = sub_21700EE84();
  sub_21700B5F4();
  sub_21700B634();
  v30 = *(v15 + 8);
  v30(v18, v14);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_181();
  v24 = swift_allocObject();
  v25 = v29;
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = a2;
  aBlock[4] = sub_216B6985C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_138;
  v26 = _Block_copy(aBlock);

  sub_21700DF14();
  sub_21700B5C4();
  v35 = MEMORY[0x277D84F90];
  sub_216B69868(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
  sub_2167D59D0();
  sub_21700F214();
  MEMORY[0x21CE9FC70](v21, v13, v8, v26);
  _Block_release(v26);

  (*(v34 + 8))(v8, v3);
  (*(v32 + 8))(v13, v33);
  v30(v21, v31);
}

id sub_216B66070()
{
  result = [*(v0 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView) window];
  if (!result)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D75DA0]);

    return [v2 initWithFrame_];
  }

  return result;
}

void sub_216B66140(uint64_t a1, void *a2, char *a3, void (**a4)(void, void, void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  _Block_copy(a4);
  v11 = [a2 body];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  if (swift_dynamicCast())
  {
    v12 = v46;
    sub_216934F28();
    if (v50)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_17:

        goto LABEL_14;
      }

      v14 = v46;
      v13 = v47;
      sub_21700DF14();
      v15 = sub_2169753C8(v14);
      if (v15 != 5)
      {
        v24 = v15;

        switch(v25)
        {
          case 1:
            v41 = sub_21700EA74();
            __swift_storeEnumTagSinglePayload(v9, 1, 1, v41);
            sub_21700EA34();
            v42 = a3;

            v43 = sub_21700EA24();
            v44 = swift_allocObject();
            v45 = MEMORY[0x277D85700];
            v44[2] = v43;
            v44[3] = v45;
            v44[4] = v12;
            v44[5] = v42;
            v44[6] = sub_216B6784C;
            v44[7] = v10;
            sub_21677BBA0();

            goto LABEL_13;
          case 2:
          case 3:

            v26 = swift_allocObject();
            *(v26 + 16) = sub_216B6784C;
            *(v26 + 24) = v10;
            v27 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_21693AA20(sub_216B67854, v26, v24, isUniquelyReferenced_nonNull_native, v29, v30, v31, v32, *&a3[v27], v47);
            *&a3[v27] = v46;
            swift_endAccess();
            goto LABEL_13;
          case 4:
            v34 = swift_allocObject();
            *(v34 + 16) = sub_216B6784C;
            *(v34 + 24) = v10;
            v35 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
            swift_beginAccess();

            v36 = swift_isUniquelyReferenced_nonNull_native();
            sub_21693AA20(sub_216B69944, v34, 4, v36, v37, v38, v39, v40, *&a3[v35], v47);
            *&a3[v35] = v46;
            swift_endAccess();
            sub_216B67290(v12);
            goto LABEL_17;
          default:
            sub_216B66720(v12);
            goto LABEL_17;
        }
      }

      v16 = sub_21700E384();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820, &qword_217033DD0);
      v49[0] = v16;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_21700F3B4();

      v46 = v14;
      v47 = v13;
      MEMORY[0x21CE9F490](0xD00000000000001FLL, 0x80000002170897A0);
      sub_2168282D4(v49, &v46, &unk_27CABF7A0, &unk_217014D20);
      v17 = v48;
      if (v48)
      {
        v18 = __swift_project_boxed_opaque_existential_1(&v46, v48);
        v19 = *(v17 - 8);
        v20 = MEMORY[0x28223BE20](v18);
        v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v22, v20);
        v23 = sub_21700F7B4();
        (*(v19 + 8))(v22, v17);
        __swift_destroy_boxed_opaque_existential_1Tm(&v46);
      }

      else
      {
        v23 = 0;
      }

      v33 = sub_21700E4D4();
      (a4)[2](a4, v23, v33);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_216697664(v49, &unk_27CABF7A0, &unk_217014D20);
  }

LABEL_13:

LABEL_14:
  _Block_release(a4);
}

void sub_216B66720(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v3 = OUTLINED_FUNCTION_34_27();
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = sub_2166A6DF8(*(v2 + 56) + 32 * v3, &v47);
  if ((OUTLINED_FUNCTION_43_26(v5, v6, v7, MEMORY[0x277D83B88], v8, v9, v10, v11, v41, v44, v47) & 1) == 0)
  {
    return;
  }

  v12 = v42;
  sub_216934F28();
  if (!v49)
  {
    sub_216697664(&v47, &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_43_26(v13, v14, v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v42, v45, v47) & 1) == 0)
  {
LABEL_8:
    v21 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_9;
  }

  v21 = v43;
  v20 = v46;
LABEL_9:
  switch(sub_2169754D4(v12))
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:

      type metadata accessor for LibraryImportStatusProvider();
      type metadata accessor for ObjectGraph(0);
      sub_21700E094();
      v47 = xmmword_217016ED0;
      v48 = 0;
      v49 = 0;
      sub_21692B3EC(&v47);

      break;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      if (qword_27CAB5DD8 != -1)
      {
        OUTLINED_FUNCTION_18_44(&qword_27CAB5DD8);
      }

      v22 = sub_217007CA4();
      __swift_project_value_buffer(v22, qword_27CAC3A90);
      sub_21700DF14();
      v23 = sub_217007C84();
      v24 = sub_21700ED84();

      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_20;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v47 = v26;
      *v25 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD8, &unk_217049C40);
      v27 = sub_21700E594();
      v29 = sub_2166A85FC(v27, v28, &v47);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      v30 = sub_2166A85FC(v21, v20, &v47);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_216679000, v23, v24, "Dismiss web view invoked due to error: %{public}s, sessionID: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v26, -1, -1);
      v31 = v25;
      goto LABEL_14;
    case 0xBu:
      if (qword_27CAB5DD8 != -1)
      {
        OUTLINED_FUNCTION_18_44(&qword_27CAB5DD8);
      }

      v32 = sub_217007CA4();
      __swift_project_value_buffer(v32, qword_27CAC3A90);
      sub_21700DF14();
      v23 = sub_217007C84();
      v33 = sub_21700ED84();

      if (os_log_type_enabled(v23, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v47 = v35;
        *v34 = 134349314;
        *(v34 + 4) = v12;
        *(v34 + 12) = 2082;
        v36 = sub_2166A85FC(v21, v20, &v47);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_216679000, v23, v33, "Dismiss web view invoked with unknown reason: %{public}ld, sessionID: %{public}s", v34, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x21CEA1440](v35, -1, -1);
        v31 = v34;
LABEL_14:
        MEMORY[0x21CEA1440](v31, -1, -1);
      }

      else
      {
LABEL_20:
      }

      break;
    default:
      sub_216B67884(v21, v20);

      break;
  }

  v37 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss);
  if (v37)
  {

    v37(v38);
    v39 = OUTLINED_FUNCTION_8();
    sub_21667E91C(v39, v40);
  }
}

uint64_t sub_216B66B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[52] = a6;
  v7[53] = a7;
  v7[50] = a4;
  v7[51] = a5;
  sub_21700EA34();
  v7[54] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v7[55] = v9;
  v7[56] = v8;

  return MEMORY[0x2822009F8](sub_216B66BF0, v9, v8);
}

uint64_t sub_216B66BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  sub_216934F28();
  if (!v10[24])
  {

    v19 = (v10 + 21);
LABEL_11:
    sub_216697664(v19, &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v10[57] = v10[45];
  sub_216934F28();
  if (!v10[28])
  {

    v19 = (v10 + 25);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v10[58] = v10[47];
    type metadata accessor for JSIntentDispatcher();
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v10[59] = v10[48];
    v11 = swift_task_alloc();
    v10[60] = v11;
    *v11 = v10;
    v11[1] = sub_216B66E18;
    OUTLINED_FUNCTION_91_0();

    return sub_216AA041C(v12, v13, v14, v15, v16);
  }

LABEL_12:
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_216B66E18()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  v3[61] = v5;
  v3[62] = v6;
  v3[63] = v0;

  if (v0)
  {
    v7 = v3[55];
    v8 = v3[56];
    v9 = sub_216B6715C;
  }

  else
  {

    v7 = v3[55];
    v8 = v3[56];
    v9 = sub_216B66F30;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216B66F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE8, &qword_217049C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0x65736E6F70736572;
  *(inited + 40) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC3BF0, &unk_21703E340);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_217013D90;
  *(v12 + 32) = 0x6574617473;
  *(v12 + 40) = 0xE500000000000000;
  sub_216934F28();
  if (!v10[36])
  {
    sub_216697664((v10 + 33), &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
  }

  v14 = v10[61];
  v13 = v10[62];
  v15 = v10[52];
  *(v12 + 64) = 0xD000000000000011;
  *(v12 + 72) = 0x80000002170897C0;
  *(v12 + 80) = v14;
  *(v12 + 88) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  *(inited + 48) = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1580, &qword_21703E350);
  v16 = sub_21700E384();
  v10[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3C00, &qword_217049C78);
  v10[37] = v16;
  v15(v10 + 37, 0, 0);

  sub_216697664((v10 + 37), &unk_27CABF7A0, &unk_217014D20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_216B6715C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[63];
  v2 = v0[52];

  v3 = sub_21700E384();
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820, &qword_217033DD0);
  v0[29] = v3;
  swift_getErrorValue();
  v4 = sub_21700F884();
  v2(v0 + 29, v4, v5);

  sub_216697664((v0 + 29), &unk_27CABF7A0, &unk_217014D20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216B67290(uint64_t result)
{
  if (*(result + 16))
  {
    result = OUTLINED_FUNCTION_34_27();
    if (v3)
    {
      sub_2166A6DF8(*(v2 + 56) + 32 * result, __dst);
      result = swift_dynamicCast();
      if (result)
      {
        result = sub_216975508(v37);
        if (result != 7)
        {
          v4 = result;
          v5 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
          swift_beginAccess();
          v6 = *(v1 + v5);
          sub_21700DF14();
          v7 = sub_216935620(4, v6);
          v9 = v8;

          if (v7)
          {
            v10 = swift_allocObject();
            *(v10 + 16) = v7;
            *(v10 + 24) = v9;
            v11 = v10;
            if (((1 << v4) & 0x5B) != 0)
            {
              v34 = sub_216983738(153);
              v13 = v12;
              v14 = 155;
            }

            else
            {
              if (v4 != 2)
              {
                v27 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 56);
                v26 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 64);
                v29 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 72);
                v28 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 80);
                v31 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 104);
                v30 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 112);
                v32 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 96);
                v35 = *(v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_params + 88);
                v33 = (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel);
                memcpy(__dst, (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel), sizeof(__dst));
                *v33 = v27;
                v33[1] = v26;
                v33[2] = v29;
                v33[3] = v28;
                v33[4] = sub_216B6908C;
                v33[5] = v11;
                v33[6] = v31;
                v33[7] = v30;
                v33[8] = v35;
                v33[9] = v32;

                sub_21700DF14();
                sub_21700DF14();
                sub_21700DF14();
                sub_21700DF14();
                goto LABEL_9;
              }

              v34 = sub_216983738(153);
              v13 = v25;
              v14 = 152;
            }

            v15 = sub_216983738(v14);
            v17 = v16;

            v18 = sub_216983738(43);
            v20 = v19;
            v21 = sub_216983738(343);
            v23 = v22;
            v24 = (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel);
            memcpy(__dst, (v1 + OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel), sizeof(__dst));
            *v24 = v34;
            v24[1] = v13;
            v24[2] = v15;
            v24[3] = v17;
            v24[4] = sub_216B6908C;
            v24[5] = v11;
            v24[6] = v18;
            v24[7] = v20;
            v24[8] = v21;
            v24[9] = v23;
LABEL_9:
            sub_216697664(__dst, &qword_27CAC3C08, &qword_217049C80);
            sub_216B61F28(1);
          }
        }
      }
    }
  }

  return result;
}

void sub_216B67530(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
}

uint64_t sub_216B675D8(uint64_t a1, int a2)
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

uint64_t sub_216B67618(uint64_t result, int a2, int a3)
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