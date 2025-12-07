uint64_t sub_216E56BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700C4B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217007474();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VerticalArtworkListItem(0);
  (*(v8 + 16))(v10, a1 + *(v15 + 28), v7);
  v16 = a1 + *(type metadata accessor for VerticalArtworkListItemView(0) + 20);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_21700ED94();
    v41 = a2;
    v18 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v17, 0);
    v39 = v12;
    v40 = v11;
    v19 = *(v42 + 8);
    v19(v6, v4);

    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    a2 = v41;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v17, 0);
    v19(v6, v4);
    v12 = v39;
    v11 = v40;
  }

  sub_216E57044();
  sub_217007484();
  sub_216E57044();
  sub_217007404();
  (*(v12 + 8))(v14, v11);
  v21 = sub_21700B3B4();
  v23 = v22;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE10, &qword_217067E48) + 36);
  *v24 = sub_2170093B4();
  *(v24 + 8) = 0x4030000000000000;
  *(v24 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE18, &qword_217067E50);
  sub_216E5737C(a1, (v24 + *(v25 + 44)));
  v26 = sub_217009C74();
  sub_217007F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE20, &qword_217067E58) + 36);
  *v35 = v26;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE28, &qword_217067E60);
  v37 = (v24 + *(result + 36));
  *v37 = v21;
  v37[1] = v23;
  return result;
}

double sub_216E57044()
{
  v0 = sub_2170090F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  type metadata accessor for VerticalArtworkListItemView(0);
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167A4788();
  }

  else
  {
    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v0);
  }

  v12 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    goto LABEL_7;
  }

  sub_2166A6EA4();
  v13 = *(v12 - 8);
  v14 = 1.0;
  if ((*(v13 + 88))(v7, v12) != *MEMORY[0x277CE0558])
  {
    (*(v13 + 8))(v7, v12);
LABEL_7:
    v14 = 2.28571429;
  }

  sub_216697664(v10, &qword_27CAB8600, &qword_217020AD0);
  return v14;
}

uint64_t sub_216E5737C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_217009254();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE30, &qword_217067E68);
  MEMORY[0x28223BE20](v5);
  v7 = v80 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE38, &qword_217067E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = v80 - v12;
  v13 = type metadata accessor for VerticalArtworkListItem(0);
  v14 = (a1 + *(v13 + 24));
  v15 = *v14;
  v16 = v14[1];
  sub_21700DF14();
  sub_216E579E8(v15, v16);
  v18 = v17;
  v20 = v19;
  v90 = v22;
  v91 = v21;
  if (*(a1 + *(v13 + 36) + 8))
  {
    v87 = a2;
    sub_21700ADB4();
    v23 = sub_21700A184();
    v83 = v24;
    v84 = v20;
    v81 = v25;
    v80[1] = v26;
    sub_217009244();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    sub_217009274();
    v27 = sub_21700A154();
    v29 = v28;
    v88 = v5;
    v31 = v30;
    v86 = v10;
    v32 = v83;
    v33 = sub_21700A064();
    v35 = v34;
    v85 = v18;
    v37 = v36;
    v82 = v38;
    sub_21678817C(v27, v29, v31 & 1);

    sub_21678817C(v23, v32, v81 & 1);

    v92[0] = sub_21700ACF4();
    v39 = sub_21700A044();
    v41 = v40;
    LOBYTE(v32) = v42;
    sub_21678817C(v33, v35, v37 & 1);

    sub_217009E54();
    v43 = sub_21700A094();
    v45 = v44;
    LOBYTE(v33) = v46;

    sub_21678817C(v39, v41, v32 & 1);

    sub_217009DE4();
    v83 = sub_217009FA4();
    v82 = v47;
    LOBYTE(v32) = v48;
    v50 = v49;
    sub_21678817C(v43, v45, v33 & 1);

    LOBYTE(v43) = sub_217009C74();
    sub_217007F24();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    LOBYTE(v29) = v32 & 1;
    v94 = v32 & 1;
    v93 = 0;
    LOBYTE(v32) = sub_217009CE4();
    sub_217007F24();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    LOBYTE(v92[0]) = 0;
    sub_21700ACC4();
    v67 = sub_21700AD04();

    v68 = &v7[*(v88 + 36)];
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE48, &qword_217067E80);
    v70 = *(v69 + 52);
    v71 = *MEMORY[0x277CE0118];
    v72 = sub_217009294();
    v73 = v68 + v70;
    a2 = v87;
    (*(*(v72 - 8) + 104))(v73, v71, v72);
    *v68 = v67;
    *(v68 + *(v69 + 56)) = 256;
    v5 = v88;
    v74 = v82;
    *v7 = v83;
    *(v7 + 1) = v74;
    v7[16] = v29;
    *(v7 + 3) = v50;
    v10 = v86;
    v7[32] = v43;
    v18 = v85;
    *(v7 + 5) = v52;
    *(v7 + 6) = v54;
    *(v7 + 7) = v56;
    *(v7 + 8) = v58;
    v7[72] = 0;
    v7[80] = v32;
    v20 = v84;
    *(v7 + 11) = v60;
    *(v7 + 12) = v62;
    *(v7 + 13) = v64;
    *(v7 + 14) = v66;
    v7[120] = 0;
    v75 = v89;
    sub_2167A4788();
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v75 = v89;
  }

  __swift_storeEnumTagSinglePayload(v75, v76, 1, v5);
  sub_2166A6EA4();
  *a2 = v18;
  a2[1] = v20;
  v78 = v90;
  v77 = v91;
  a2[2] = v91;
  a2[3] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE40, &qword_217067E78);
  sub_2166A6EA4();
  sub_2167770D0(v18, v20, v77, v78);
  sub_216697664(v75, &qword_27CACAE38, &qword_217067E70);
  sub_216697664(v10, &qword_27CACAE38, &qword_217067E70);
  return sub_2167C4DF0(v18, v20, v77, v78);
}

void sub_216E579E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21680A15C();
    v3 = v2;

    sub_217009264();
    v4 = sub_21700A154();
    v6 = v5;
    v8 = v7;
    v41 = *(v3 + 16);
    sub_216777114(v4, v5, v7 & 1);
    sub_21700DF14();
    v9 = 0;
    v42 = v3;
    v10 = (v3 + 48);
    v39 = v6;
    v40 = v4;
    v11 = v6;
    v38 = v8;
    for (i = v8; ; i = v37)
    {
      if (v41 == v9)
      {

        sub_21678817C(v40, v39, v38 & 1);

        return;
      }

      if (v9 >= *(v42 + 16))
      {
        break;
      }

      v45 = i;
      v46 = v10;
      v47 = v9;
      v48 = v11;
      v49 = v4;
      v13 = *v10;
      sub_2167B2E14();
      swift_bridgeObjectRetain_n();
      v14 = sub_21700A174();
      v16 = v15;
      v18 = v17;
      sub_217009D34();
      v19 = sub_21700A094();
      v21 = v20;
      v23 = v22;

      sub_21678817C(v14, v16, v18 & 1);

      sub_21700ACF4();
      if ((v13 & 1) == 0)
      {
        sub_21700AD04();
      }

      v24 = sub_21700A044();
      v26 = v25;
      v28 = v27;
      sub_21678817C(v19, v21, v23 & 1);

      if (v13)
      {
        sub_217009D94();
      }

      else
      {
        sub_217009DE4();
      }

      v29 = sub_217009FA4();
      v31 = v30;
      v33 = v32;
      sub_21678817C(v24, v26, v28 & 1);

      v34 = sub_21700A064();
      v43 = v35;
      v44 = v34;
      v37 = v36;

      sub_21678817C(v29, v31, v33 & 1);

      sub_21678817C(v49, v48, v45 & 1);

      v10 = v46 + 24;
      v9 = v47 + 1;
      v11 = v43;
      v4 = v44;
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for VerticalArtworkListItemView(uint64_t a1)
{
  result = qword_280E32AA0;
  if (!qword_280E32AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E57D88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VerticalArtworkListItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216E56BF4(v4, a1);
}

uint64_t sub_216E57DF8()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216E57E50()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_216E57ED0(uint64_t a1)
{
  type metadata accessor for VerticalArtworkListItem(319);
  if (v1 <= 0x3F)
  {
    sub_2167B8000();
    if (v2 <= 0x3F)
    {
      sub_2167FCA6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_216E57F6C()
{
  result = qword_27CACAE50;
  if (!qword_27CACAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAE08, &qword_217067E40);
    sub_216E58024();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAE50);
  }

  return result;
}

unint64_t sub_216E58024()
{
  result = qword_27CACAE58;
  if (!qword_27CACAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAE00, &qword_217067E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACADF0, &qword_217067DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
    sub_2166D9530(&qword_27CACADF8, &qword_27CACADF0, &qword_217067DC8, &unk_21702C8E0);
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACAE58);
  }

  return result;
}

uint64_t sub_216E581C8(uint64_t a1)
{
  result = sub_216E58220(qword_280E32AB8, type metadata accessor for VerticalArtworkListItemView, &unk_217067D70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E58220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216E582CC()
{
  OUTLINED_FUNCTION_33();
  *(v1 + 128) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_217007C24();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_2(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = OUTLINED_FUNCTION_80();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  *(v1 + 56) = v6;
  OUTLINED_FUNCTION_36(v6);
  *(v1 + 64) = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  OUTLINED_FUNCTION_36(v7);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  *(v1 + 80) = sub_21700EA24();
  v9 = sub_21700E9B4();
  *(v1 + 88) = v9;
  *(v1 + 96) = v8;

  return MEMORY[0x2822009F8](sub_216E5840C, v9, v8);
}

uint64_t sub_216E5840C()
{
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 128);
  v3 = *(v0 + 16);
  v4 = __swift_project_value_buffer(*(v0 + 56), qword_280E73E38);
  sub_216E59EE4(v4, v1);
  v5 = OUTLINED_FUNCTION_14_77();
  v6(v5);
  v7 = sub_216E505E0(v2 & 1 | 4u);
  OUTLINED_FUNCTION_7_109(v7, v8, v9);
  sub_21669987C(v1, &qword_27CAB82F0, &unk_2170506C0);
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v3;
  OUTLINED_FUNCTION_38_0(MEMORY[0x277D2A610]);
  v15 = v11;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_216E58574;
  v13 = OUTLINED_FUNCTION_9_97();

  return v15(v13);
}

uint64_t sub_216E58574()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 96);
  v7 = *(v1 + 88);
  if (v0)
  {
    v8 = sub_216E58754;
  }

  else
  {
    v8 = sub_216E586B8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E586B8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);

  sub_216BD4F2C();
  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_216E58754()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 72);

  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E587F0()
{
  OUTLINED_FUNCTION_33();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 136) = v3;
  *(v1 + 16) = v4;
  v5 = sub_217007C24();
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_2(v5);
  *(v1 + 48) = v6;
  *(v1 + 56) = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  *(v1 + 64) = v7;
  OUTLINED_FUNCTION_36(v7);
  *(v1 + 72) = OUTLINED_FUNCTION_80();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  OUTLINED_FUNCTION_36(v8);
  *(v1 + 80) = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  *(v1 + 88) = sub_21700EA24();
  v10 = sub_21700E9B4();
  *(v1 + 96) = v10;
  *(v1 + 104) = v9;

  return MEMORY[0x2822009F8](sub_216E58934, v10, v9);
}

uint64_t sub_216E58934()
{
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 136);
  v15 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = __swift_project_value_buffer(*(v0 + 64), qword_280E73E38);
  sub_216E59EE4(v4, v1);
  v5 = OUTLINED_FUNCTION_14_77();
  v6(v5);
  v7 = sub_216E505E0(v2 & 1 | 4u);
  OUTLINED_FUNCTION_7_109(v7, v8, v9);
  sub_21669987C(v1, &qword_27CAB82F0, &unk_2170506C0);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v15;
  OUTLINED_FUNCTION_38_0(MEMORY[0x277D2A610]);
  v16 = v11;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_216E58AA8;
  v13 = OUTLINED_FUNCTION_9_97();

  return v16(v13);
}

uint64_t sub_216E58AA8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216E58C88;
  }

  else
  {
    v8 = sub_216E58BEC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E58BEC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 80);

  sub_216BD4F2C();
  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_216E58C88()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 80);

  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E58D24()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_217007C24();
  v1[4] = v3;
  OUTLINED_FUNCTION_2(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  OUTLINED_FUNCTION_36(v5);
  v1[7] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v1[8] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v1[9] = v7;
  v1[10] = v6;

  return MEMORY[0x2822009F8](sub_216E58E30, v7, v6);
}

uint64_t sub_216E58E30()
{
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  __swift_project_value_buffer(v4, qword_280E73E38);
  v5 = OUTLINED_FUNCTION_17_69();
  v6(v5);
  sub_216BD7948(v1, "Apply.UpdateMappingIdentifiers", 30, 2, v2);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *(v7 + 16) = v3;
  OUTLINED_FUNCTION_38_0(MEMORY[0x277D2A610]);
  v12 = v8;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_216E58F80;
  v10 = OUTLINED_FUNCTION_9_97();

  return v12(v10);
}

uint64_t sub_216E58F80()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 80);
  v7 = *(v1 + 72);
  if (v0)
  {
    v8 = sub_216E5914C;
  }

  else
  {
    v8 = sub_216E590C4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E590C4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);

  sub_216BD4F2C();
  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_216E5914C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);

  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E591D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE60, &qword_217067F88);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE68, &qword_217067F90);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_217006974();
  sub_2166D9530(&qword_280E484E8, &qword_27CACAE60, &qword_217067F88, MEMORY[0x277CBCEC8]);
  sub_217007E64();
  (*(v2 + 8))(v5, v0);
  sub_2166D9530(&qword_280E48580, &qword_27CACAE68, &qword_217067F90, MEMORY[0x277CBCC18]);
  v12 = sub_217007E24();
  (*(v8 + 8))(v11, v6);
  return v12;
}

void *sub_216E593C8()
{
  v1 = v0;
  v2 = sub_217006A74();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  v1[4] = 0;
  sub_217006A64();
  v8 = sub_217006944();
  (*(v4 + 8))(v7, v2);
  v1[2] = v8;
  return v1;
}

uint64_t sub_216E594A8(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_21700EA34();
  v2[3] = sub_21700EA24();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_216E59568;

  return MEMORY[0x282189900](a2);
}

uint64_t sub_216E59568()
{
  OUTLINED_FUNCTION_31();
  *(*v1 + 40) = v0;

  v3 = sub_21700E9B4();
  if (v0)
  {
    v4 = sub_216B8CDB8;
  }

  else
  {
    v4 = sub_216B8CD60;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_216E596C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_217007C24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[8] = swift_task_alloc();
  sub_21700EA34();
  v3[9] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x2822009F8](sub_216E597F0, v6, v5);
}

uint64_t sub_216E597F0()
{
  OUTLINED_FUNCTION_31();
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  __swift_project_value_buffer(v3, qword_280E73E38);
  v4 = OUTLINED_FUNCTION_17_69();
  v5(v4);
  sub_216BD7948(v1, "Map.ExtractMusicItems", 21, 2, v2);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_216E59904;
  v8 = v0[3];
  v7 = v0[4];

  return MEMORY[0x2821898F8](v8, v7);
}

uint64_t sub_216E59904()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_216E59AB4;
  }

  else
  {
    v8 = sub_216E59A2C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216E59A2C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 64);

  sub_216BD4F2C();
  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_216E59AB4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 64);

  sub_21669987C(v1, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216E59B3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216E59BD4, v4, v3);
}

uint64_t sub_216E59BD4()
{
  OUTLINED_FUNCTION_33();

  sub_21700DF14();
  sub_217006A44();
  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_216E59C3C()
{
  sub_216AFB900();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216E59C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 16))(a3, a4);
  v7 = v6;
  if (v5)
  {
    *(a2 + 24) = v5;
    *(a2 + 32) = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_216E59D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 24))
  {
    v5 = *(a2 + 32);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 40);
    swift_unknownObjectRetain();
    v7(ObjectType, v5);
    v9 = v8;
    v10 = swift_getObjectType();
    v11 = *(v9 + 24);
    v12 = swift_unknownObjectRetain();
    v11(v12, a4, v10, v9);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  else
  {
    *(a2 + 24) = a1;
    *(a2 + 32) = a4;
    v15 = *(a4 + 8);
    swift_unknownObjectRetain();
    return v15(a3, a4);
  }
}

uint64_t sub_216E59E54()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_10_98(v3);

  return sub_216E59B3C(v4, v2);
}

uint64_t sub_216E59EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E59F54()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_10_98(v3);

  return sub_216E594A8(v4, v2);
}

uint64_t sub_216E59FE4()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_10_98(v4);

  return sub_216E596C0(v5, v3, v2);
}

uint64_t sub_216E5A09C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_21700AEA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_28_1();
  sub_2167D2D50(a3);
  sub_216E620C0();
  sub_21700A364();
}

uint64_t sub_216E5A188@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v58 = type metadata accessor for LandingUpsellRegularContentView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v52 = v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE70, &qword_217068070);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v56 = &v49 - v5;
  v55 = type metadata accessor for LandingUpsellCompactContentView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v51 = v7;
  v8 = sub_2170098A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v50 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  type metadata accessor for LandingUpsellView(0);
  v53 = v1;
  sub_216C0C900();
  v25 = v9;
  (*(v9 + 104))(v21, *MEMORY[0x277CE0558], v8);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v8);
  v26 = *(v12 + 56);
  sub_216683A80(v24, v14, &qword_27CAB8600, &qword_217020AD0);
  sub_216683A80(v21, &v14[v26], &qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_24_1(v14);
  if (v29)
  {
    v27 = OUTLINED_FUNCTION_8();
    sub_2167FDB84(v27, v28);
    sub_2167FDB84(v24, &qword_27CAB8600);
    OUTLINED_FUNCTION_24_1(&v14[v26]);
    if (v29)
    {
      sub_2167FDB84(v14, &qword_27CAB8600);
LABEL_12:
      OUTLINED_FUNCTION_3_168();
      v30 = v51;
      sub_216E5A964(v53, v51, v42);
      v43 = v55;
      v44 = v30 + *(v55 + 20);
      *v44 = swift_getKeyPath();
      *(v44 + 8) = 0;
      v45 = *(v43 + 24);
      *(v30 + v45) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
      swift_storeEnumTagMultiPayload();
      sub_216E5A964(v30, v56, type metadata accessor for LandingUpsellCompactContentView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_110();
      sub_216E5A9C0(v46);
      OUTLINED_FUNCTION_6_116();
      sub_216E5A9C0(v47);
      sub_217009554();
      v37 = type metadata accessor for LandingUpsellCompactContentView;
      return sub_216E5AA04(v30, v37);
    }

    goto LABEL_9;
  }

  sub_216683A80(v14, v18, &qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_24_1(&v14[v26]);
  if (v29)
  {
    sub_2167FDB84(v21, &qword_27CAB8600);
    sub_2167FDB84(v24, &qword_27CAB8600);
    (*(v25 + 8))(v18, v8);
LABEL_9:
    sub_2167FDB84(v14, &qword_27CAB8708);
    goto LABEL_10;
  }

  v38 = v25;
  v39 = v50;
  (*(v25 + 32))(v50, &v14[v26], v8);
  sub_216E5A9C0(&qword_280E2A858);
  v40 = sub_21700E494();
  v41 = *(v38 + 8);
  v41(v39, v8);
  sub_2167FDB84(v21, &qword_27CAB8600);
  sub_2167FDB84(v24, &qword_27CAB8600);
  v41(v18, v8);
  sub_2167FDB84(v14, &qword_27CAB8600);
  if (v40)
  {
    goto LABEL_12;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_168();
  v30 = v52;
  sub_216E5A964(v53, v52, v31);
  v32 = v58;
  v33 = v30 + *(v58 + 20);
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  v34 = *(v32 + 24);
  *(v30 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  sub_216E5A964(v30, v56, type metadata accessor for LandingUpsellRegularContentView);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_7_110();
  sub_216E5A9C0(v35);
  OUTLINED_FUNCTION_6_116();
  sub_216E5A9C0(v36);
  sub_217009554();
  v37 = type metadata accessor for LandingUpsellRegularContentView;
  return sub_216E5AA04(v30, v37);
}

uint64_t sub_216E5A874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216E62018(a1, a2, type metadata accessor for LandingUpsell);
  v3 = *(type metadata accessor for LandingUpsellView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216E5A964(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216E5A9C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_216E5AA04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for LandingUpsell(0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 254)
    {
      v10 = *(v4 + *(a3 + 20) + 8);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void __swift_store_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for LandingUpsell(0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 254)
    {
      *(v5 + *(a4 + 20) + 8) = -v4;
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0, &unk_21701C680);
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void sub_216E5AC48(uint64_t a1)
{
  type metadata accessor for LandingUpsell(319);
  if (v1 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
    if (v2 <= 0x3F)
    {
      sub_216820EBC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216E5AD1C(uint64_t a1)
{
  type metadata accessor for LandingUpsell(319);
  if (v1 <= 0x3F)
  {
    sub_2167FCA6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216E5ADA0()
{
  result = qword_280E2ABB8;
  if (!qword_280E2ABB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAE78, "T-\v");
    sub_216E5A9C0(&unk_280E30308);
    sub_216E5A9C0(&unk_280E30268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABB8);
  }

  return result;
}

unint64_t sub_216E5AED4(uint64_t a1)
{
  result = sub_216E5A9C0(&qword_280E400E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E5AF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s7MusicUI11CloseButtonVMa_0(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 20);
  v14 = 0x4008000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v9 = *(v4 + 24);
  v14 = 0x4022000000000000;
  sub_2170082B4();
  if (*(a1 + 24))
  {
    sub_2166A0F18(a1, v6);
    sub_216E5A964(v6, a2, _s7MusicUI11CloseButtonVMa_0);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    return sub_216E5AA04(v6, _s7MusicUI11CloseButtonVMa_0);
  }

  else
  {
    sub_2167FDB84(a1, &qword_27CAB6DB0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v12 = *(*(v11 - 8) + 8);
    v12(&v6[v8], v11);
    v12(&v6[v9], v11);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_216E5B118@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_2170096A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7MusicUI11CloseButtonVMa_0(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFD0, &unk_217068698);
  MEMORY[0x28223BE20](v9);
  v11 = (v19 - v10);
  sub_2167B7D58(v1, v19 - v10);
  v12 = v9[11];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  sub_216E5A964(v1, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s7MusicUI11CloseButtonVMa_0);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_216E62018(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, _s7MusicUI11CloseButtonVMa_0);
  v16 = v9[12];
  *(v11 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v17 = v11 + v9[13];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  v11[5] = sub_216E62660;
  v11[6] = v15;
  v11[7] = 0;
  v11[8] = 0;
  sub_217009694();
  sub_2167D2D50(&unk_280E44DE8);
  sub_216E5A9C0(&qword_280E2A8F8);
  sub_21700A364();
  (*(v3 + 8))(v5, v2);
  return sub_2167FDB84(v11, &qword_27CACAFD0);
}

void *sub_216E5B45C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0, &unk_21701AFF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &__src[-v3];
  v5 = sub_21700ADB4();
  v6 = sub_21700AD34();
  KeyPath = swift_getKeyPath();
  _s7MusicUI11CloseButtonVMa_0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_217009D94();
  v8 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  v9 = sub_217009DF4();
  sub_2167FDB84(v4, &qword_27CAB81D0);
  v10 = swift_getKeyPath();
  sub_2170082C4();
  v11 = sub_217009C84();
  sub_217007F24();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  __src[0] = 0;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFD8, &unk_217068708) + 36);
  sub_21700B2B4();
  v21 = sub_217009C84();
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20, &qword_2170180F0) + 36)) = v21;
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  *(a1 + 80) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFE0, &qword_217068718) + 36)) = 256;
  sub_21700B3B4();
  sub_217008BB4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFE8, &qword_217068720);
  return memcpy((a1 + *(v22 + 36)), __src, 0x70uLL);
}

uint64_t sub_216E5B708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DescriptionTextView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 20);
  *(v8 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  if (a2)
  {
    *v8 = a1;
    v8[1] = a2;
    sub_216E5A964(v8, a3, type metadata accessor for DescriptionTextView);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    return sub_216E5AA04(v8, type metadata accessor for DescriptionTextView);
  }

  else
  {
    sub_2167FDB84(v8 + v10, &qword_27CAB84D8);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

void *sub_216E5B850@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = v1[1];
  v17 = *v1;
  sub_21700DF14();
  v16 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_21700B3B4();
  sub_217008BB4();
  memcpy(&v18[7], __src, 0x70uLL);
  type metadata accessor for DescriptionTextView(0);
  sub_216C0C900();
  v11 = sub_216E5C2C8(MEMORY[0x277CE0A38]);
  sub_2167FDB84(v5, &qword_27CAB8600);
  v12 = swift_getKeyPath();
  v13 = MEMORY[0x277D84F90];
  *a1 = v17;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = v13;
  v14 = v16;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v14;
  *(a1 + 48) = v8;
  *(a1 + 56) = 1;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0x3FEB333333333333;
  *(a1 + 80) = v10;
  *(a1 + 88) = 1;
  result = memcpy((a1 + 89), v18, 0x77uLL);
  *(a1 + 208) = v12;
  *(a1 + 216) = v11;
  return result;
}

uint64_t sub_216E5BA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessoryButtonView(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 7) = swift_getKeyPath();
  v10[64] = 0;
  v11 = *(v8 + 28);
  *&v10[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  if (a2)
  {
    v12 = *(a3 + 16);
    v15[0] = *a3;
    v15[1] = v12;
    v16 = *(a3 + 32);
    if (*(&v12 + 1))
    {
      sub_2166A0F18(v15, v17);
      *v10 = a1;
      *(v10 + 1) = a2;
      sub_2166A0F18(v17, (v10 + 16));
      sub_216E5A964(v10, a4, type metadata accessor for AccessoryButtonView);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
      return sub_216E5AA04(v10, type metadata accessor for AccessoryButtonView);
    }

    v14 = v15;
  }

  else
  {
    v14 = a3;
  }

  sub_2167FDB84(v14, &qword_27CAB6DB0);

  sub_2167FDB84(&v10[v11], &qword_27CAB84D8);
  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
}

uint64_t sub_216E5BC3C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryButtonView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2167B7D58(v1 + 16, a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFF0, &qword_217068728);
  v9 = v8[11];
  v10 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  sub_216E5A964(v2, v7, type metadata accessor for AccessoryButtonView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_216E62018(v7, v12 + v11, type metadata accessor for AccessoryButtonView);
  v13 = v8[12];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v14 = a1 + v8[13];
  result = swift_getKeyPath();
  *v14 = result;
  v14[40] = 0;
  a1[5] = sub_216E6268C;
  a1[6] = v12;
  a1[7] = 0;
  a1[8] = 0;
  return result;
}

uint64_t sub_216E5BE00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_21700A144();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2170090F4();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_217009314();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFF8, &qword_217068730);
  MEMORY[0x28223BE20](v29);
  v12 = &v24 - v11;
  v14 = *a1;
  v13 = a1[1];
  sub_21700DF14();
  v15 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  type metadata accessor for AccessoryButtonView(0);
  sub_216C0C900();
  v17 = sub_216E5C2C8(MEMORY[0x277CE0A38]);
  sub_2167FDB84(v10, &qword_27CAB8600);
  v18 = swift_getKeyPath();
  *&v34 = v14;
  *(&v34 + 1) = v13;
  *&v35 = 0;
  *(&v35 + 1) = MEMORY[0x277D84F90];
  *&v36 = KeyPath;
  *(&v36 + 1) = v15;
  *&v37 = v18;
  *(&v37 + 1) = v17;
  sub_2170092F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
  sub_2167D95A8();
  sub_21700A504();
  (*(v5 + 8))(v7, v28);
  v38[0] = v34;
  v38[1] = v35;
  v38[2] = v36;
  v38[3] = v37;
  sub_2167FDB84(v38, &qword_27CAB7E88);
  v19 = a1[7];
  if (*(a1 + 64) != 1)
  {

    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    v21 = v25;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v19, 0);
    (*(v26 + 8))(v21, v27);
  }

  v22 = v30;
  sub_21700A134();
  sub_216E62A60(&unk_280E2AEF8);
  sub_21700ABF4();
  (*(v31 + 8))(v22, v33);
  return sub_2167FDB84(v12, &qword_27CACAFF8);
}

uint64_t sub_216E5C2C8(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_216683A80(v3, &v17 - v9, &qword_27CAB8600, &qword_217020AD0);
  v11 = sub_2170098A4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_5;
  }

  sub_216683A80(v10, v7, &qword_27CAB8600, &qword_217020AD0);
  v13 = *(v11 - 8);
  if ((*(v13 + 88))(v7, v11) != *MEMORY[0x277CE0560])
  {
    EnumTagSinglePayload = (*(v13 + 8))(v7, v11);
LABEL_5:
    v14 = a1(EnumTagSinglePayload);
    goto LABEL_6;
  }

  v14 = sub_217009D44();
LABEL_6:
  v15 = v14;
  sub_2167FDB84(v10, &qword_27CAB8600);
  return v15;
}

uint64_t sub_216E5C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PrimaryButtonView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 24);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  if (a2)
  {
    v13 = *(a3 + 16);
    v16[0] = *a3;
    v16[1] = v13;
    v17 = *(a3 + 32);
    if (*(&v13 + 1))
    {
      sub_2166A0F18(v16, v18);
      *v10 = a1;
      v10[1] = a2;
      sub_2166A0F18(v18, (v10 + 2));
      sub_216E5A964(v10, a4, type metadata accessor for PrimaryButtonView);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
      return sub_216E5AA04(v10, type metadata accessor for PrimaryButtonView);
    }

    v15 = v16;
  }

  else
  {
    v15 = a3;
  }

  sub_2167FDB84(v15, &qword_27CAB6DB0);
  sub_2167FDB84(v10 + v12, &qword_27CAB84D8);
  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
}

uint64_t sub_216E5C62C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v74 = sub_217009314();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v58 - v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v58 - v9;
  v60 = sub_2170096A4();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrimaryButtonView(0);
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53F0, &unk_217050CF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v58 - v16);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB000, &qword_217068738) - 8;
  MEMORY[0x28223BE20](v59);
  v19 = &v58 - v18;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB008, &qword_217068740);
  MEMORY[0x28223BE20](v64);
  v66 = &v58 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB010, &qword_217068748);
  MEMORY[0x28223BE20](v65);
  v68 = &v58 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB018, &unk_217068750);
  MEMORY[0x28223BE20](v69);
  v70 = &v58 - v22;
  sub_2167B7D58(v2 + 16, v17);
  v23 = v15[11];
  v24 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v17 + v23, 1, 1, v24);
  sub_216E5A964(v2, v14, type metadata accessor for PrimaryButtonView);
  v25 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v26 = swift_allocObject();
  sub_216E62018(v14, v26 + v25, type metadata accessor for PrimaryButtonView);
  v27 = v15[12];
  *(v17 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v28 = v17 + v15[13];
  *v28 = swift_getKeyPath();
  v28[40] = 0;
  v17[5] = sub_216E626B8;
  v17[6] = v26;
  v17[7] = 0;
  v17[8] = 0;
  sub_217009694();
  sub_2167D2D50(&qword_280E44DF0);
  sub_216E5A9C0(&qword_280E2A8F8);
  v29 = v60;
  sub_21700A364();
  (*(v61 + 8))(v11, v29);
  sub_2167FDB84(v17, &qword_27CAC53F0);
  v30 = v62;
  sub_216C0C900();
  v31 = sub_216E5D0A0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2167FDB84(v30, &qword_27CAB8600);
  v38 = sub_217009C84();
  v39 = &v19[*(v59 + 44)];
  *v39 = v38;
  *(v39 + 1) = v31;
  *(v39 + 2) = v33;
  *(v39 + 3) = v35;
  *(v39 + 4) = v37;
  v39[40] = 0;
  v40 = v63;
  sub_216C0C900();
  sub_216E5D258();
  sub_2167FDB84(v40, &qword_27CAB8600);
  v41 = v67;
  sub_216C0C900();
  sub_216E5D400();
  sub_2167FDB84(v41, &qword_27CAB8600);
  sub_21700B3B4();
  sub_217008BB4();
  v42 = v66;
  sub_2167C5834(v19, v66, &qword_27CACB000, &qword_217068738);
  memcpy((v42 + *(v64 + 36)), __src, 0x70uLL);
  v43 = sub_21700AC54();
  LOBYTE(v11) = sub_217009C84();
  v44 = v68;
  sub_2167C5834(v42, v68, &qword_27CACB008, &qword_217068740);
  v45 = v44 + *(v65 + 36);
  *v45 = v43;
  *(v45 + 8) = v11;
  v46 = v70;
  v47 = &v70[*(v69 + 36)];
  v48 = *(sub_217008B44() + 20);
  v49 = *MEMORY[0x277CE0118];
  v50 = sub_217009294();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  __asm { FMOV            V0.2D, #8.0 }

  *v47 = _Q0;
  *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_2167C5834(v44, v46, &qword_27CACB010, &qword_217068748);
  v56 = v71;
  sub_2170092F4();
  sub_216E62718();
  sub_21700A504();
  (*(v72 + 8))(v56, v74);
  return sub_2167FDB84(v46, &qword_27CACB018);
}

uint64_t sub_216E5CF5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v8 = *a1;
  v7 = a1[1];
  sub_21700DF14();
  v9 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  type metadata accessor for PrimaryButtonView(0);
  sub_216C0C900();
  sub_216E5C2C8(MEMORY[0x277CE0A48]);
  sub_2167FDB84(v6, &qword_27CAB8600);
  sub_217009DE4();
  v11 = sub_217009E34();

  result = swift_getKeyPath();
  *a2 = v8;
  a2[1] = v7;
  v13 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v13;
  a2[4] = KeyPath;
  a2[5] = v9;
  a2[6] = result;
  a2[7] = v11;
  return result;
}

double sub_216E5D0A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_216683A80(v1, &v12 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  v9 = 4.0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
    v10 = *(v8 - 8);
    v9 = 0.0;
    if ((*(v10 + 88))(v4, v8) != *MEMORY[0x277CE0560])
    {
      (*(v10 + 8))(v4, v8);
      v9 = 4.0;
    }
  }

  sub_2167FDB84(v7, &qword_27CAB8600);
  return v9;
}

double sub_216E5D258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_216683A80(v1, &v12 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  v9 = 219.0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
    v10 = *(v8 - 8);
    if ((*(v10 + 88))(v4, v8) == *MEMORY[0x277CE0560])
    {
      v9 = 166.0;
    }

    else
    {
      (*(v10 + 8))(v4, v8);
    }
  }

  sub_2167FDB84(v7, &qword_27CAB8600);
  return v9;
}

double sub_216E5D400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_216683A80(v1, &v12 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_5;
  }

  sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
  v9 = *(v8 - 8);
  if ((*(v9 + 88))(v4, v8) != *MEMORY[0x277CE0560])
  {
    (*(v9 + 8))(v4, v8);
LABEL_5:
    v10 = 34.0;
    goto LABEL_6;
  }

  v10 = 37.0;
LABEL_6:
  sub_2167FDB84(v7, &qword_27CAB8600);
  return v10;
}

void *sub_216E5D5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21700DF14();
  v5 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_21700B3B4();
  sub_217008BB4();
  memcpy(&v15[7], __src, 0x70uLL);
  sub_217009E14();
  sub_217009D94();
  v10 = sub_217009E34();

  v11 = swift_getKeyPath();
  v12 = MEMORY[0x277D84F90];
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v5;
  *(a3 + 48) = v7;
  *(a3 + 56) = 1;
  *(a3 + 64) = v8;
  *(a3 + 72) = 0x3FEB333333333333;
  *(a3 + 80) = v9;
  *(a3 + 88) = 1;
  result = memcpy((a3 + 89), v15, 0x77uLL);
  *(a3 + 208) = v11;
  *(a3 + 216) = v10;
  return result;
}

uint64_t sub_216E5D724@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_21700B364();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF38, &qword_217068398);
  return sub_216E5D770(v2, a2 + *(v5 + 44));
}

uint64_t sub_216E5D770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEC8, &qword_217068280);
  MEMORY[0x28223BE20](v109);
  v112 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v110 = &v91 - v5;
  v106 = sub_2170080D4();
  v95 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v91 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v91 - v10;
  v92 = sub_2170090F4();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LandingUpsellRegularContentView(0);
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF40, &qword_2170683A0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v91 - v19);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF48, &qword_2170683A8);
  MEMORY[0x28223BE20](v93);
  v22 = &v91 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF50, &qword_2170683B0);
  MEMORY[0x28223BE20](v98);
  v102 = &v91 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF58, &qword_2170683B8);
  MEMORY[0x28223BE20](v94);
  v103 = &v91 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF60, &qword_2170683C0);
  MEMORY[0x28223BE20](v101);
  v108 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v100 = &v91 - v27;
  MEMORY[0x28223BE20](v28);
  v107 = &v91 - v29;
  v99 = type metadata accessor for LandingUpsell(0);
  sub_216683A80(a1 + *(v99 + 44), v20, &qword_27CAB6DB0, &qword_217016C00);
  v30 = v18[13];
  v31 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v20 + v30, 1, 1, v31);
  sub_216E5A964(a1, v16, type metadata accessor for LandingUpsellRegularContentView);
  v32 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v33 = swift_allocObject();
  sub_216E62018(v16, v33 + v32, type metadata accessor for LandingUpsellRegularContentView);
  v34 = v18[14];
  *(v20 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v35 = v20 + v18[15];
  *v35 = swift_getKeyPath();
  v35[40] = 0;
  v36 = a1;
  v20[5] = sub_216E62174;
  v20[6] = v33;
  v20[7] = 0;
  v20[8] = 0;
  v96 = v22;
  sub_216E5A09C(&qword_27CACAF40, &qword_2170683A0, &unk_280E44DD0);
  sub_2167FDB84(v20, &qword_27CACAF40);
  v97 = v14;
  v37 = a1 + *(v14 + 20);
  v38 = *v37;
  if (*(v37 + 8) != 1)
  {

    sub_21700ED94();
    v39 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v38, 0);
    v40 = *(v91 + 8);
    v41 = v92;
    v40(v13, v92);

    sub_21700ED94();
    v42 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v38, 0);
    v40(v13, v41);
  }

  v43 = *MEMORY[0x277CE0560];
  v44 = sub_2170098A4();
  (*(*(v44 - 8) + 104))(v11, v43, v44);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v44);
  sub_216E5F2D0();
  sub_2167FDB84(v11, &qword_27CAB8600);
  sub_21700B3B4();
  v45 = sub_2170083C4();
  v46 = v96;
  v47 = &v96[*(v93 + 36)];
  v48 = v115;
  *v47 = v114;
  *(v47 + 1) = v48;
  *(v47 + 2) = v116;
  v49 = v104;
  sub_216C0C924(v45, v50, v51, v52, v53, v54, v55, v56, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v57 = v95;
  v59 = v105;
  v58 = v106;
  (*(v95 + 104))(v105, *MEMORY[0x277CDF3D0], v106);
  LOBYTE(v43) = sub_2170080C4();
  v60 = *(v57 + 8);
  v60(v59, v58);
  v60(v49, v58);
  v61 = objc_opt_self();
  v62 = &selRef_systemBackgroundColor;
  if ((v43 & 1) == 0)
  {
    v62 = &selRef_secondarySystemBackgroundColor;
  }

  v63 = [v61 *v62];
  v64 = sub_21700AC44();
  v65 = sub_217009C84();
  v66 = v102;
  sub_2167C5834(v46, v102, &qword_27CACAF48, &qword_2170683A8);
  v67 = v66 + *(v98 + 36);
  *v67 = v64;
  *(v67 + 8) = v65;
  v68 = v103;
  v69 = &v103[*(v94 + 36)];
  v70 = *(sub_217008B44() + 20);
  v71 = *MEMORY[0x277CE0118];
  v72 = sub_217009294();
  (*(*(v72 - 8) + 104))(&v69[v70], v71, v72);
  __asm { FMOV            V0.2D, #14.0 }

  *v69 = _Q0;
  *&v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_2167C5834(v66, v68, &qword_27CACAF50, &qword_2170683B0);
  if (qword_280E2C3F0 != -1)
  {
    swift_once();
  }

  v78 = qword_280E2C3F8;
  v79 = v68;
  v80 = v100;
  sub_2167C5834(v79, v100, &qword_27CACAF58, &qword_2170683B8);
  v81 = v80 + *(v101 + 36);
  *v81 = v78;
  *(v81 + 8) = xmmword_217026230;
  *(v81 + 24) = 0x4018000000000000;
  v82 = v107;
  sub_2167C5834(v80, v107, &qword_27CACAF60, &qword_2170683C0);
  sub_216683A80(v36 + *(v99 + 48), v113, &qword_27CAB6DB0, &qword_217016C00);

  v83 = v110;
  sub_216E5AF48(v113, v110);
  v84 = sub_217009C84();
  v85 = v108;
  v86 = v83 + *(v109 + 36);
  *v86 = v84;
  *(v86 + 8) = 0x401C000000000000;
  *(v86 + 16) = 0;
  *(v86 + 24) = 0;
  *(v86 + 32) = 0x401C000000000000;
  *(v86 + 40) = 0;
  sub_216683A80(v82, v85, &qword_27CACAF60, &qword_2170683C0);
  v87 = v112;
  sub_216683A80(v83, v112, &qword_27CACAEC8, &qword_217068280);
  v88 = v111;
  sub_216683A80(v85, v111, &qword_27CACAF60, &qword_2170683C0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF68, &qword_2170683C8);
  sub_216683A80(v87, v88 + *(v89 + 48), &qword_27CACAEC8, &qword_217068280);
  sub_2167FDB84(v83, &qword_27CACAEC8);
  sub_2167FDB84(v82, &qword_27CACAF60);
  sub_2167FDB84(v87, &qword_27CACAEC8);
  return sub_2167FDB84(v85, &qword_27CACAF60);
}

uint64_t sub_216E5E370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF70, &qword_2170683D0);
  return sub_216E5E3C4(a1, a2 + *(v4 + 44));
}

uint64_t sub_216E5E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF78, &qword_2170683D8);
  MEMORY[0x28223BE20](v93);
  v105 = (&v86 - v3);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF80, &qword_2170683E0);
  MEMORY[0x28223BE20](v99);
  v101 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v86 - v6;
  MEMORY[0x28223BE20](v7);
  v100 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v86 - v10;
  v103 = sub_2170090F4();
  v12 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v86 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v86 - v19;
  v92 = sub_217007474();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEF8, &qword_217068328);
  MEMORY[0x28223BE20](v88);
  v89 = &v86 - v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF88, &qword_2170683E8);
  MEMORY[0x28223BE20](v87);
  v97 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v86 = &v86 - v26;
  MEMORY[0x28223BE20](v27);
  v104 = &v86 - v28;
  v29 = type metadata accessor for LandingUpsell(0);
  sub_216683A80(a1 + *(v29 + 56), v17, &qword_27CAB6D60, &qword_217014E40);
  v30 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v30) == 1)
  {
    sub_2167FDB84(v17, &qword_27CAB6D60);
    v31 = sub_21700C4B4();
    v32 = v20;
    v33 = 1;
  }

  else
  {
    v34 = sub_21700C4B4();
    (*(*(v34 - 8) + 16))(v20, v17, v34);
    sub_216E5AA04(v17, type metadata accessor for Artwork);
    v32 = v20;
    v33 = 0;
    v31 = v34;
  }

  __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
  v35 = a1 + *(type metadata accessor for LandingUpsellRegularContentView(0) + 20);
  v36 = *v35;
  v109 = *(v35 + 8);
  v95 = a1;
  if (v109 != 1)
  {

    sub_21700ED94();
    v37 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v36, 0);
    (*(v12 + 8))(v14, v103);
  }

  v38 = *MEMORY[0x277CE0560];
  v39 = sub_2170098A4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 104);
  v108 = v38;
  v107 = v41;
  v106 = v40 + 104;
  v41(v11, v38, v39);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v39);
  sub_216E5F2D0();
  sub_2167FDB84(v11, &qword_27CAB8600);
  v90 = v22;
  sub_217007454();
  v96 = v12;
  v94 = v14;
  if (!v109)
  {

    sub_21700ED94();
    v42 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v36, 0);
    v43 = *(v12 + 8);
    v44 = v103;
    v43(v14, v103);

    sub_21700ED94();
    v45 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v36, 0);
    v43(v14, v44);
  }

  v46 = v108;
  v47 = v107;
  v107(v11, v108, v39);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v39);
  sub_216E5F2D0();
  sub_2167FDB84(v11, &qword_27CAB8600);
  sub_21700B3B4();
  sub_2170083C4();
  v48 = v89;
  (*(v91 + 32))(v89, v90, v92);
  v49 = &v48[*(v88 + 36)];
  v50 = v111;
  *v49 = v110;
  *(v49 + 1) = v50;
  *(v49 + 2) = v112;
  v51 = v48;
  v52 = v86;
  sub_2167C5834(v51, v86, &qword_27CACAEF8, &qword_217068328);
  *(v52 + *(v87 + 36)) = 0;
  sub_2167C5834(v52, v104, &qword_27CACAF88, &qword_2170683E8);
  v53 = sub_2170093B4();
  v47(v11, v46, v39);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v39);
  v54 = sub_216E5F474();
  sub_2167FDB84(v11, &qword_27CAB8600);
  v55 = v105;
  *v105 = v53;
  v55[1] = v54;
  *(v55 + 16) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF90, &qword_2170683F0);
  sub_216E5F614(v95, (v55 + *(v56 + 44)));
  v47(v11, v46, v39);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v39);
  v57 = sub_216E5FF54();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_2167FDB84(v11, &qword_27CAB8600);
  v64 = sub_217009C84();
  v65 = (v55 + *(v93 + 36));
  *v65 = v64;
  v65[1] = v57;
  *(v65 + 2) = v59;
  *(v65 + 3) = v61;
  *(v65 + 4) = v63;
  *(v65 + 40) = 0;
  if (v109)
  {
    v66 = *&v36;
    v67 = v94;
  }

  else
  {

    sub_21700ED94();
    v68 = sub_217009C34();
    sub_217007BC4();

    v67 = v94;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v36, 0);
    v69 = *(v96 + 8);
    v70 = v103;
    v69(v67, v103);

    sub_21700ED94();
    v71 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v36, 0);
    v69(v67, v70);
    v66 = *__src;
  }

  v107(v11, v108, v39);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v39);
  v72 = sub_216E5F2D0();
  sub_2167FDB84(v11, &qword_27CAB8600);
  if (v109)
  {
    v73 = *&v36;
  }

  else
  {

    sub_21700ED94();
    v74 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v36, 0);
    (*(v96 + 8))(v67, v103);
    v73 = *__src;
  }

  v75 = v66 * v72;
  v107(v11, v108, v39);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v39);
  v76 = sub_216E5F2D0();
  sub_2167FDB84(v11, &qword_27CAB8600);
  sub_21700B3B4();
  if (v75 > v73 * v76)
  {
    sub_21700ED94();
    v77 = sub_217009C34();
    sub_217007BC4();
  }

  sub_217008BB4();
  v78 = v98;
  sub_2167C5834(v105, v98, &qword_27CACAF78, &qword_2170683D8);
  memcpy((v78 + *(v99 + 36)), __src, 0x70uLL);
  v79 = v100;
  sub_2167C5834(v78, v100, &qword_27CACAF80, &qword_2170683E0);
  v80 = v104;
  v81 = v97;
  sub_216683A80(v104, v97, &qword_27CACAF88, &qword_2170683E8);
  v82 = v101;
  sub_216683A80(v79, v101, &qword_27CACAF80, &qword_2170683E0);
  v83 = v102;
  sub_216683A80(v81, v102, &qword_27CACAF88, &qword_2170683E8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF98, &qword_2170683F8);
  sub_216683A80(v82, v83 + *(v84 + 48), &qword_27CACAF80, &qword_2170683E0);
  sub_2167FDB84(v79, &qword_27CACAF80);
  sub_2167FDB84(v80, &qword_27CACAF88);
  sub_2167FDB84(v82, &qword_27CACAF80);
  return sub_2167FDB84(v81, &qword_27CACAF88);
}

double sub_216E5F2D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_216683A80(v1, &v12 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  v9 = 1.0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
    v10 = *(v8 - 8);
    if ((*(v10 + 88))(v4, v8) == *MEMORY[0x277CE0560])
    {
      v9 = 0.404466501;
    }

    else
    {
      (*(v10 + 8))(v4, v8);
    }
  }

  sub_2167FDB84(v7, &qword_27CAB8600);
  return v9;
}

double sub_216E5F474()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_216683A80(v1, &v12 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  v9 = 4.0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
    v10 = *(v8 - 8);
    v9 = 10.0;
    if ((*(v10 + 88))(v4, v8) != *MEMORY[0x277CE0560])
    {
      (*(v10 + 8))(v4, v8);
      v9 = 4.0;
    }
  }

  sub_2167FDB84(v7, &qword_27CAB8600);
  return v9;
}

uint64_t sub_216E5F614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF18, &qword_217068348);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v63 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF20, &qword_217068350) - 8;
  MEMORY[0x28223BE20](v67);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFA0, &qword_217068400);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v73 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for LandingUpsell(0);
  v20 = (a1 + v19[6]);
  v21 = *v20;
  v64 = v20[1];
  if (v64)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v66 = v22;
  KeyPath = swift_getKeyPath();
  v23 = (a1 + v19[7]);
  v25 = *v23;
  v24 = v23[1];
  sub_21700DF14();
  sub_21700DF14();
  sub_216E5B708(v25, v24, v18);
  v26 = swift_getKeyPath();
  v27 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFA8, &qword_217068438) + 36)];
  v72 = v18;
  *v27 = v26;
  *(v27 + 1) = 6;
  v27[16] = 0;
  LOBYTE(v24) = sub_217009CA4();
  v28 = *MEMORY[0x277CE0560];
  v29 = sub_2170098A4();
  v30 = *(*(v29 - 8) + 104);
  v30(v12, v28, v29);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v29);
  sub_216E5FC08();
  sub_2167FDB84(v12, &qword_27CAB8600);
  sub_217007F24();
  v31 = &v18[*(v14 + 44)];
  *v31 = v24;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = (a1 + v19[8]);
  v37 = *v36;
  v38 = v36[1];
  sub_216683A80(a1 + v19[11], v75, &qword_27CAB6DB0, &qword_217016C00);
  sub_21700DF14();
  v39 = v71;
  sub_216E5C46C(v37, v38, v75, v71);
  v30(v12, v28, v29);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v29);
  v40 = sub_216E5FDA8();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_2167FDB84(v12, &qword_27CAB8600);
  v47 = sub_217009C84();
  v48 = v39;
  v49 = v39 + *(v67 + 44);
  *v49 = v47;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  v50 = (a1 + v19[9]);
  v51 = *v50;
  v52 = v50[1];
  sub_216683A80(a1 + v19[10], v75, &qword_27CAB6DB0, &qword_217016C00);
  sub_21700DF14();
  v53 = v74;
  sub_216E5BA5C(v51, v52, v75, v74);
  v54 = v73;
  sub_216683A80(v72, v73, &qword_27CACAFA0, &qword_217068400);
  v55 = v68;
  sub_216683A80(v48, v68, &qword_27CACAF20, &qword_217068350);
  v56 = v53;
  v57 = v69;
  sub_216683A80(v56, v69, &qword_27CACAF18, &qword_217068348);
  v58 = v70;
  v59 = KeyPath;
  v60 = v64;
  *v70 = v66;
  v58[1] = v60;
  v58[2] = v59;
  v58[3] = 7;
  *(v58 + 32) = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAFB0, &qword_217068440);
  sub_216683A80(v54, v58 + v61[12], &qword_27CACAFA0, &qword_217068400);
  sub_216683A80(v55, v58 + v61[16], &qword_27CACAF20, &qword_217068350);
  sub_216683A80(v57, v58 + v61[20], &qword_27CACAF18, &qword_217068348);
  sub_21700DF14();

  sub_2167FDB84(v74, &qword_27CACAF18);
  sub_2167FDB84(v71, &qword_27CACAF20);
  sub_2167FDB84(v72, &qword_27CACAFA0);
  sub_2167FDB84(v57, &qword_27CACAF18);
  sub_2167FDB84(v55, &qword_27CACAF20);
  sub_2167FDB84(v73, &qword_27CACAFA0);
}

double sub_216E5FC08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_216683A80(v1, &v12 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  v9 = 6.0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
    v10 = *(v8 - 8);
    v9 = 14.0;
    if ((*(v10 + 88))(v4, v8) != *MEMORY[0x277CE0560])
    {
      (*(v10 + 8))(v4, v8);
      v9 = 6.0;
    }
  }

  sub_2167FDB84(v7, &qword_27CAB8600);
  return v9;
}

double sub_216E5FDA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216683A80(v1, &v11 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
    v9 = *(v8 - 8);
    if ((*(v9 + 88))(v4, v8) != *MEMORY[0x277CE0560])
    {
      (*(v9 + 8))(v4, v8);
    }
  }

  sub_2167FDB84(v7, &qword_27CAB8600);
  return 0.0;
}

double sub_216E5FF54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_216683A80(v1, &v11 - v6, &qword_27CAB8600, &qword_217020AD0);
  v8 = sub_2170098A4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_216683A80(v7, v4, &qword_27CAB8600, &qword_217020AD0);
    v9 = *(v8 - 8);
    if ((*(v9 + 88))(v4, v8) != *MEMORY[0x277CE0560])
    {
      (*(v9 + 8))(v4, v8);
    }
  }

  sub_2167FDB84(v7, &qword_27CAB8600);
  return 8.0;
}

double sub_216E60128@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_2170091A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE80, &qword_217068230);
  sub_216E6030C(v2, a1 + *(v8 + 44));
  v9 = v2 + *(type metadata accessor for LandingUpsellCompactContentView(0) + 20);
  v10 = *v9;
  if ((*(v9 + 8) & 1) == 0)
  {

    sub_21700ED94();
    v11 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v10, 0);
    (*(v5 + 8))(v7, v4);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE88, &qword_217068238) + 36));
  v13 = v15[1];
  *v12 = v15[0];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_216E6030C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170080D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v79 - v10;
  v12 = sub_2170090F4();
  v82 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v81 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE90, &qword_217068240);
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAE98, &qword_217068248);
  MEMORY[0x28223BE20](v85);
  v88 = &v79 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEA0, &qword_217068250);
  MEMORY[0x28223BE20](v84);
  v92 = &v79 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEA8, &qword_217068258);
  MEMORY[0x28223BE20](v87);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v86 = &v79 - v22;
  MEMORY[0x28223BE20](v23);
  v93 = &v79 - v24;
  *v16 = sub_21700B364();
  *(v16 + 1) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEB0, &qword_217068260);
  sub_216E60B34(a1, &v16[*(v26 + 44)]);
  v83 = type metadata accessor for LandingUpsellCompactContentView(0);
  v27 = *(v83 + 20);
  v91 = a1;
  v28 = a1 + v27;
  v29 = *v28;
  if ((*(v28 + 8) & 1) == 0)
  {

    sub_21700ED94();
    v80 = v12;
    v30 = v5;
    v31 = v4;
    v32 = v20;
    v33 = a2;
    v34 = sub_217009C34();
    sub_217007BC4();

    a2 = v33;
    v20 = v32;
    v4 = v31;
    v5 = v30;
    v35 = v81;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v29, 0);
    (*(v82 + 8))(v35, v80);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v36 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEB8, &unk_217068268) + 36)];
  v37 = v95;
  *v36 = v94;
  *(v36 + 1) = v37;
  *(v36 + 2) = v96;
  v38 = *MEMORY[0x277CE0558];
  v39 = sub_2170098A4();
  (*(*(v39 - 8) + 104))(v11, v38, v39);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v39);
  v40 = sub_216E5F2D0();
  v41 = sub_2167FDB84(v11, &qword_27CAB8600);
  v42 = &v16[*(v14 + 36)];
  *v42 = v40;
  *(v42 + 4) = 256;
  v43 = v89;
  sub_216C0C924(v41, v44, v45, v46, v47, v48, v49, v50, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v51 = v90;
  (*(v5 + 104))(v90, *MEMORY[0x277CDF3D0], v4);
  v52 = sub_2170080C4();
  v53 = *(v5 + 8);
  v53(v51, v4);
  v53(v43, v4);
  v54 = objc_opt_self();
  v55 = &selRef_systemBackgroundColor;
  if ((v52 & 1) == 0)
  {
    v55 = &selRef_secondarySystemBackgroundColor;
  }

  v56 = [v54 *v55];
  v57 = sub_21700AC44();
  v58 = sub_217009C84();
  v59 = v88;
  sub_2167C5834(v16, v88, &qword_27CACAE90, &qword_217068240);
  v60 = v59 + *(v85 + 36);
  *v60 = v57;
  *(v60 + 8) = v58;
  v61 = v92;
  v62 = &v92[*(v84 + 36)];
  v63 = *(sub_217008B44() + 20);
  v64 = *MEMORY[0x277CE0118];
  v65 = sub_217009294();
  (*(*(v65 - 8) + 104))(&v62[v63], v64, v65);
  __asm { FMOV            V0.2D, #14.0 }

  *v62 = _Q0;
  *&v62[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  sub_2167C5834(v59, v61, &qword_27CACAE98, &qword_217068248);
  if (qword_280E2C3F0 != -1)
  {
    swift_once();
  }

  v71 = qword_280E2C3F8;
  v72 = v61;
  v73 = v86;
  sub_2167C5834(v72, v86, &qword_27CACAEA0, &qword_217068250);
  v74 = v73 + *(v87 + 36);
  *v74 = v71;
  *(v74 + 8) = xmmword_217026230;
  *(v74 + 24) = 0x4018000000000000;
  v75 = v93;
  sub_2167C5834(v73, v93, &qword_27CACAEA8, &qword_217068258);
  sub_216683A80(v75, v20, &qword_27CACAEA8, &qword_217068258);
  *a2 = 0;
  *(a2 + 8) = 1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEC0, &qword_217068278);
  sub_216683A80(v20, a2 + *(v76 + 48), &qword_27CACAEA8, &qword_217068258);
  v77 = a2 + *(v76 + 64);
  *v77 = 0;
  *(v77 + 8) = 1;

  sub_2167FDB84(v75, &qword_27CACAEA8);
  return sub_2167FDB84(v20, &qword_27CACAEA8);
}

uint64_t sub_216E60B34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEC8, &qword_217068280) - 8;
  MEMORY[0x28223BE20](v43);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = type metadata accessor for LandingUpsellCompactContentView(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAED0, &qword_217068288);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v39 - v12);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAED8, &unk_217068290);
  v39 = *(v42 - 8);
  v14 = v39;
  MEMORY[0x28223BE20](v42);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for LandingUpsell(0);
  sub_216683A80(a1 + *(v19 + 44), v13, &qword_27CAB6DB0, &qword_217016C00);
  v20 = v11[13];
  v21 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v13 + v20, 1, 1, v21);
  v22 = a1;
  sub_216E5A964(a1, v9, type metadata accessor for LandingUpsellCompactContentView);
  v23 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v24 = swift_allocObject();
  sub_216E62018(v9, v24 + v23, type metadata accessor for LandingUpsellCompactContentView);
  v25 = v11[14];
  *(v13 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v26 = v13 + v11[15];
  *v26 = swift_getKeyPath();
  v26[40] = 0;
  v13[5] = sub_216E62074;
  v13[6] = v24;
  v13[7] = 0;
  v13[8] = 0;
  v27 = v18;
  sub_216E5A09C(&qword_27CACAED0, &qword_217068288, &unk_280E44DC8);
  sub_2167FDB84(v13, &qword_27CACAED0);
  sub_216683A80(v22 + *(v19 + 48), v46, &qword_27CAB6DB0, &qword_217016C00);
  v28 = v6;
  sub_216E5AF48(v46, v6);
  v29 = sub_217009C84();
  v30 = &v6[*(v43 + 44)];
  *v30 = v29;
  *(v30 + 1) = 0x401C000000000000;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = 0x401C000000000000;
  v30[40] = 0;
  v31 = *(v14 + 16);
  v32 = v41;
  v33 = v42;
  v31(v41, v27, v42);
  v34 = v44;
  sub_216683A80(v28, v44, &qword_27CACAEC8, &qword_217068280);
  v35 = v45;
  v31(v45, v32, v33);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEE0, &unk_217068308);
  sub_216683A80(v34, &v35[*(v36 + 48)], &qword_27CACAEC8, &qword_217068280);
  sub_2167FDB84(v28, &qword_27CACAEC8);
  v37 = *(v39 + 8);
  v37(v27, v33);
  sub_2167FDB84(v34, &qword_27CACAEC8);
  return (v37)(v32, v33);
}

uint64_t sub_216E61004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEE8, &qword_217068318);
  return sub_216E6105C(a1, a2 + *(v4 + 44));
}

uint64_t sub_216E6105C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v66 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEF0, &qword_217068320);
  MEMORY[0x28223BE20](v73);
  v75 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = (&v66 - v7);
  v8 = sub_2170090F4();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v66 - v15;
  v17 = sub_217007474();
  v78 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v77 = &v66 - v21;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAEF8, &qword_217068328);
  MEMORY[0x28223BE20](v66);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v26);
  v67 = &v66 - v27;
  v28 = type metadata accessor for LandingUpsell(0);
  sub_216683A80(a1 + *(v28 + 52), v13, &qword_27CAB6D60, &qword_217014E40);
  v29 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
  {
    sub_2167FDB84(v13, &qword_27CAB6D60);
    v30 = sub_21700C4B4();
    v31 = v16;
    v32 = 1;
  }

  else
  {
    v33 = sub_21700C4B4();
    (*(*(v33 - 8) + 16))(v16, v13, v33);
    sub_216E5AA04(v13, type metadata accessor for Artwork);
    v31 = v16;
    v32 = 0;
    v30 = v33;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  v34 = a1 + *(type metadata accessor for LandingUpsellCompactContentView(0) + 20);
  v35 = *v34;
  v36 = *(v34 + 8);
  if (v36 != 1)
  {

    sub_21700ED94();
    v37 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v35, 0);
    (*(v68 + 8))(v10, v69);
  }

  sub_217007454();
  sub_217007404();
  (*(v78 + 8))(v19, v17);
  v72 = a1;
  if (!v36)
  {

    sub_21700ED94();
    v38 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v35, 0);
    v39 = v69;
    v40 = *(v68 + 8);
    v40(v10, v69);

    sub_21700ED94();
    v41 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v35, 0);
    v40(v10, v39);
  }

  sub_21700B3B4();
  sub_2170083C4();
  (*(v78 + 32))(v25, v77, v17);
  v42 = &v25[*(v66 + 36)];
  v43 = v80;
  *v42 = v79;
  *(v42 + 1) = v43;
  *(v42 + 2) = v81;
  v44 = v67;
  sub_2167C5834(v25, v67, &qword_27CACAEF8, &qword_217068328);
  v45 = sub_2170093B4();
  v46 = *MEMORY[0x277CE0558];
  v47 = sub_2170098A4();
  v48 = *(*(v47 - 8) + 104);
  v49 = v70;
  v48(v70, v46, v47);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
  v50 = sub_216E5F474();
  sub_2167FDB84(v49, &qword_27CAB8600);
  v51 = v74;
  *v74 = v45;
  *(v51 + 8) = v50;
  *(v51 + 16) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF00, &qword_217068330);
  sub_216E619B0(v72, (v51 + *(v52 + 44)));
  v48(v49, v46, v47);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
  v53 = sub_216E5FF54();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_2167FDB84(v49, &qword_27CAB8600);
  LOBYTE(v49) = sub_217009C84();
  v60 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF08, &qword_217068338) + 36);
  *v60 = v49;
  *(v60 + 8) = v53;
  *(v60 + 16) = v55;
  *(v60 + 24) = v57;
  *(v60 + 32) = v59;
  *(v60 + 40) = 0;
  *(v51 + *(v73 + 36)) = 256;
  v61 = v71;
  sub_216683A80(v44, v71, &qword_27CACAEF8, &qword_217068328);
  v62 = v75;
  sub_216683A80(v51, v75, &qword_27CACAEF0, &qword_217068320);
  v63 = v76;
  sub_216683A80(v61, v76, &qword_27CACAEF8, &qword_217068328);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF10, &qword_217068340);
  sub_216683A80(v62, v63 + *(v64 + 48), &qword_27CACAEF0, &qword_217068320);
  sub_2167FDB84(v51, &qword_27CACAEF0);
  sub_2167FDB84(v44, &qword_27CACAEF8);
  sub_2167FDB84(v62, &qword_27CACAEF0);
  return sub_2167FDB84(v61, &qword_27CACAEF8);
}

uint64_t sub_216E619B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF18, &qword_217068348);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = &v62 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF20, &qword_217068350) - 8;
  MEMORY[0x28223BE20](v64);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF28, &qword_217068358);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v19 = type metadata accessor for LandingUpsell(0);
  v20 = v19[7];
  v21 = (a1 + v19[6]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
  }

  else
  {
    v23 = 0;
  }

  v62 = v22;
  v63 = v23;
  v24 = *(a1 + v20);
  v25 = *(a1 + v20 + 8);
  sub_21700DF14();
  sub_21700DF14();
  v69 = v18;
  sub_216E5B708(v24, v25, v18);
  v26 = sub_217009CA4();
  v27 = *MEMORY[0x277CE0558];
  v28 = sub_2170098A4();
  v29 = *(*(v28 - 8) + 104);
  v29(v12, v27, v28);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v28);
  sub_216E5FC08();
  sub_2167FDB84(v12, &qword_27CAB8600);
  sub_217007F24();
  v30 = &v18[*(v14 + 44)];
  *v30 = v26;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = (a1 + v19[8]);
  v37 = *v35;
  v36 = v35[1];
  sub_216683A80(a1 + v19[11], v72, &qword_27CAB6DB0, &qword_217016C00);
  sub_21700DF14();
  v38 = v68;
  sub_216E5C46C(v37, v36, v72, v68);
  v29(v12, v27, v28);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v28);
  v39 = sub_216E5FDA8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_2167FDB84(v12, &qword_27CAB8600);
  v46 = sub_217009C84();
  v47 = v38;
  v48 = v38 + *(v64 + 44);
  *v48 = v46;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  v49 = (a1 + v19[9]);
  v50 = *v49;
  v51 = v49[1];
  sub_216683A80(a1 + v19[10], v72, &qword_27CAB6DB0, &qword_217016C00);
  sub_21700DF14();
  v52 = v71;
  sub_216E5BA5C(v50, v51, v72, v71);
  v53 = v70;
  sub_216683A80(v69, v70, &qword_27CACAF28, &qword_217068358);
  v54 = v65;
  sub_216683A80(v47, v65, &qword_27CACAF20, &qword_217068350);
  v55 = v52;
  v56 = v66;
  sub_216683A80(v55, v66, &qword_27CACAF18, &qword_217068348);
  v57 = v67;
  v58 = v62;
  *v67 = v63;
  v57[1] = v58;
  v59 = v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACAF30, &qword_217068360);
  sub_216683A80(v53, v59 + v60[12], &qword_27CACAF28, &qword_217068358);
  sub_216683A80(v54, v59 + v60[16], &qword_27CACAF20, &qword_217068350);
  sub_216683A80(v56, v59 + v60[20], &qword_27CACAF18, &qword_217068348);
  sub_21700DF14();
  sub_2167FDB84(v71, &qword_27CACAF18);
  sub_2167FDB84(v68, &qword_27CACAF20);
  sub_2167FDB84(v69, &qword_27CACAF28);
  sub_2167FDB84(v56, &qword_27CACAF18);
  sub_2167FDB84(v54, &qword_27CACAF20);
  sub_2167FDB84(v70, &qword_27CACAF28);
}

uint64_t sub_216E61F44()
{
  v0 = sub_21700AC64();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0ED0], v1);
  result = sub_21700AD54();
  qword_280E2C3F8 = result;
  return result;
}

uint64_t sub_216E62018(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216E620C0()
{
  result = qword_280E38978;
  if (!qword_280E38978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E38978);
  }

  return result;
}

uint64_t sub_216E621A0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_8_44(*(v3 + 80));

  return a2(v4);
}

void sub_216E62244(uint64_t a1)
{
  sub_21668B174();
  if (v1 <= 0x3F)
  {
    sub_2167D1C30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216E622F0(uint64_t a1)
{
  sub_21668B174();
  if (v1 <= 0x3F)
  {
    sub_2168AEB44(319, &qword_280E2B438, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_2167FCA6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216E623D4(uint64_t a1)
{
  sub_21668B174();
  if (v1 <= 0x3F)
  {
    sub_2167FCA6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216E62490(uint64_t a1)
{
  sub_2167FCA6C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_216E6251C()
{
  result = qword_280E2B0B8;
  if (!qword_280E2B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACAE88, &qword_217068238);
    sub_2167D2D50(&unk_280E2A548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0B8);
  }

  return result;
}

uint64_t sub_216E626B8()
{
  v0 = type metadata accessor for PrimaryButtonView(0);
  OUTLINED_FUNCTION_36(v0);
  v2 = OUTLINED_FUNCTION_8_44(*(v1 + 80));

  return sub_216E5CF5C(v2, v3);
}

unint64_t sub_216E62718()
{
  result = qword_280E2AE38;
  if (!qword_280E2AE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB018, &unk_217068750);
    sub_216E627D0();
    sub_2167D2D50(&qword_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE38);
  }

  return result;
}

unint64_t sub_216E627D0()
{
  result = qword_280E2AEE0;
  if (!qword_280E2AEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB010, &qword_217068748);
    sub_216E628B4(&unk_280E2AFD0);
    sub_2167D2D50(&qword_280E2A840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEE0);
  }

  return result;
}

unint64_t sub_216E628B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = OUTLINED_FUNCTION_8_106();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216E62914()
{
  result = qword_280E2B188;
  if (!qword_280E2B188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB000, &qword_217068738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC53F0, &unk_217050CF0);
    sub_2170096A4();
    sub_2167D2D50(&qword_280E44DF0);
    sub_216E5A9C0(&qword_280E2A8F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B188);
  }

  return result;
}

unint64_t sub_216E62A60(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_216E5A9C0(&qword_280E2A6F0);
    result = OUTLINED_FUNCTION_8_106();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216E62AF0()
{
  result = qword_280E2AD88;
  if (!qword_280E2AD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB028, &qword_2170687F8);
    sub_216E628B4(&unk_280E2ADD0);
    sub_2167D2D50(&qword_280E2A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD88);
  }

  return result;
}

unint64_t sub_216E62BD4()
{
  result = qword_280E2AE40;
  if (!qword_280E2AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB038, &qword_217068808);
    sub_216E62C8C();
    sub_2167D2D50(&qword_280E2A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE40);
  }

  return result;
}

unint64_t sub_216E62C8C()
{
  result = qword_280E2AEF0;
  if (!qword_280E2AEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB040, &qword_217068810);
    sub_216E62D44();
    sub_2167D2D50(&qword_280E2A758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEF0);
  }

  return result;
}

unint64_t sub_216E62D44()
{
  result = qword_280E2AFF8;
  if (!qword_280E2AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB048, &qword_217068818);
    sub_2167D2750();
    sub_2167D2D50(&qword_280E2A700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFF8);
  }

  return result;
}

uint64_t sub_216E62E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v25 = a3;
  v6 = sub_217009EB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContainerDetailMetadataView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0x4034000000000000;
  if (qword_27CAB6180 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_27CACB058);
  v14 = *(v7 + 16);
  v14(v9, v13, v6);
  sub_2167CD8D8();
  sub_2170082A4();
  v15 = v10[5];
  v26 = 0x403A000000000000;
  if (qword_27CAB6198 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_27CACB080);
  v14(v9, v16, v6);
  sub_2170082A4();
  v17 = &v12[v10[6]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v25;
  if (a2 || *(v25 + 16))
  {
    v19 = &v12[v10[7]];
    *v19 = v24;
    v19[1] = a2;
    *&v12[v10[8]] = v18;
    sub_216E63C5C(v12, a4);
    __swift_storeEnumTagSinglePayload(a4, 0, 1, v10);
    return sub_216E63CC0(v12);
  }

  else
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    v22 = *(*(v21 - 8) + 8);
    v22(v12, v21);
    v22(&v12[v15], v21);

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v10);
  }
}

uint64_t type metadata accessor for ContainerDetailMetadataView(uint64_t a1)
{
  result = qword_27CACB0A0;
  if (!qword_27CACB0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216E63158@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContainerDetailMetadataView(0);
  v5 = *(v1 + *(v4 + 32));
  sub_21700DF14();
  sub_216983738(293);
  sub_217009264();
  result = sub_21700A154();
  v8 = result;
  v10 = v9;
  v11 = (v2 + *(v4 + 28));
  if (v11[1])
  {
    v12 = v7;
    v63 = 0;
    v64 = *v11;
    v62 = v11[1];
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = v7;
    v13 = *(v5 + 32);
    sub_216DD3CB4(0);
    v64 = sub_216B59CA0(v13);
    v62 = v14;
    v63 = v15;
  }

  v61 = a1;
  v16 = *(v5 + 16);
  v67 = v10;
  v66 = v12;
  if (v16)
  {
    v73 = (v5 + 32);
    sub_21700DF14();
    v17 = v63;
    sub_216777114(v64, v62, v63 & 1);
    sub_21700DF14();
    v18 = v64;
    v19 = v62;
    v65 = v8;
    do
    {
      v20 = *v73;
      v71 = v16;
      ++v73;
      v69 = v18;
      v21 = sub_21700A064();
      v23 = v22;
      v25 = v24;
      v26 = sub_216B59CA0(v20);
      v28 = v27;
      v30 = v29;
      v31 = sub_21700A064();
      v33 = v32;
      v68 = v34;
      v35 = v26;
      v36 = v31;
      sub_21678817C(v35, v28, v30 & 1);
      v37 = v33;

      v38 = v25 & 1;
      v8 = v65;
      sub_21678817C(v21, v23, v38);

      sub_21678817C(v69, v19, v17 & 1);

      v18 = v36;
      v19 = v33;
      v17 = v68;
      v39 = v68;
      v16 = v71 - 1;
    }

    while (v71 != 1);
  }

  else
  {
    sub_21700DF14();
    v39 = v63;
    v36 = v64;
    sub_216777114(v64, v62, v63 & 1);
    sub_21700DF14();
    v37 = v62;
  }

  sub_21700AD34();
  v70 = sub_21700A034();
  v41 = v40;
  v43 = v42;

  sub_21678817C(v36, v37, v39 & 1);

  sub_216E63568();
  v44 = sub_21700A094();
  v72 = v45;
  v74 = v44;
  v47 = v46;
  v49 = v48;

  sub_21678817C(v70, v41, v43 & 1);

  v50 = sub_216E63748();
  KeyPath = swift_getKeyPath();
  v52 = sub_217009C94();
  sub_216E638AC();
  sub_217007F24();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_21678817C(v8, v67, v66 & 1);

  sub_21678817C(v64, v62, v63 & 1);

  *v61 = v74;
  *(v61 + 8) = v72;
  *(v61 + 16) = v47 & 1;
  *(v61 + 24) = v49;
  *(v61 + 32) = KeyPath;
  *(v61 + 40) = v50;
  *(v61 + 48) = v52;
  *(v61 + 56) = v54;
  *(v61 + 64) = v56;
  *(v61 + 72) = v58;
  *(v61 + 80) = v60;
  *(v61 + 88) = 0;
  return result;
}

uint64_t sub_216E63568()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ContainerDetailMetadataView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_2168AEE00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  if (v7 < 2)
  {
    if (qword_27CAB6188 == -1)
    {
    }

    goto LABEL_9;
  }

  if (qword_27CAB61A0 != -1)
  {
LABEL_9:
    swift_once();
  }
}

BOOL sub_216E63748()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ContainerDetailMetadataView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_2168AEE00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  return v7 < 2;
}

double sub_216E638AC()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ContainerDetailMetadataView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_2168AEE00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = LOBYTE(v14);
  }

  if (v7 >= 2)
  {
    if (qword_27CAB6190 != -1)
    {
      swift_once();
    }

    [qword_27CACB078 lineHeight];
    v10 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  }

  else
  {
    if (qword_27CAB6178 != -1)
    {
      swift_once();
    }

    [qword_27CACB050 lineHeight];
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  }

  sub_2170082C4();
  return v14 - v10;
}

void sub_216E63B68(uint64_t a1, id *a2, uint64_t *a3)
{
  sub_2168AE7E0();
  v5 = *a2;
  v6 = sub_21700F074();

  *a3 = v6;
}

uint64_t sub_216E63BD4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_217009EB4();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_216E63C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailMetadataView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E63CC0(uint64_t a1)
{
  v2 = type metadata accessor for ContainerDetailMetadataView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_216E63D44(uint64_t a1)
{
  sub_2167D1C30(319);
  if (v1 <= 0x3F)
  {
    sub_216E63E64(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_216E63E64(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216E63E64(319, &qword_27CACB0B0, &type metadata for AudioBadge, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216E63E64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_216E63EFC(uint64_t a1, void *a2, id *a3, uint64_t *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  result = sub_217009EC4();
  *a4 = result;
  return result;
}

unint64_t sub_216E63F4C()
{
  result = qword_27CACB0B8;
  if (!qword_27CACB0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC40F0, qword_21704B3D0);
    sub_21686C2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB0B8);
  }

  return result;
}

unint64_t sub_216E63FD8()
{
  result = qword_280E2A730;
  if (!qword_280E2A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8688, qword_2170272F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A730);
  }

  return result;
}

uint64_t sub_216E6403C(uint64_t a1)
{
  v3 = type metadata accessor for MusicUIPPT.Test(0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v31 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v7 = v41;
    v10 = sub_216DD6114(a1);
    result = v7;
    v11 = 0;
    v12 = a1 + 64;
    v32 = a1 + 72;
    v33 = v5;
    v34 = a1 + 64;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v13 = v10 >> 6;
        if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_24;
        }

        v38 = v9;
        v39 = v11;
        v40 = v8;
        v14 = v35;
        v15 = result;
        sub_2166C6A54(*(a1 + 56) + *(v36 + 72) * v10, v35, type metadata accessor for MusicUIPPT.Test);
        v16 = _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
        v18 = v17;
        sub_216E694E4(v14, type metadata accessor for MusicUIPPT.Test);
        result = v15;
        v41 = v15;
        v19 = *(v15 + 16);
        if (v19 >= *(v15 + 24) >> 1)
        {
          sub_2166F4258();
          result = v41;
        }

        *(result + 16) = v19 + 1;
        v20 = result + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v18;
        v21 = 1 << *(a1 + 32);
        if (v10 >= v21)
        {
          goto LABEL_25;
        }

        v12 = v34;
        v22 = *(v34 + 8 * v13);
        if ((v22 & (1 << v10)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v40)
        {
          goto LABEL_27;
        }

        v23 = v22 & (-2 << (v10 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v13 << 6;
          v25 = v13 + 1;
          v26 = (v32 + 8 * v13);
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              v29 = result;
              sub_2166F42E8(v10, v40, v38 & 1);
              result = v29;
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_18;
            }
          }

          v30 = result;
          sub_2166F42E8(v10, v40, v38 & 1);
          result = v30;
        }

LABEL_18:
        v11 = v39 + 1;
        if (v39 + 1 == v33)
        {
          return result;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v21;
        if (v21 < 0)
        {
          break;
        }
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
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_216E64414(uint64_t a1)
{
  v6 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_24();
  v9 = sub_21667E974(&qword_27CACB0D8, type metadata accessor for SocialContactsCoordinator.Contact, &unk_217033D58);
  v10 = MEMORY[0x21CE9F9C0](v3, v6, v9);
  v14 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    OUTLINED_FUNCTION_43_31();
    do
    {
      sub_2166C6A54(v6, v1, type metadata accessor for SocialContactsCoordinator.Contact);
      sub_2168A15E0();
      sub_216E694E4(v2, type metadata accessor for SocialContactsCoordinator.Contact);
      v6 += v4;
      --v11;
    }

    while (v11);

    return v14;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

uint64_t sub_216E64584(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_216E680CC();
  result = MEMORY[0x21CE9F9C0](v2, &_s30SocialProfileRequestDescriptorVN, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 120)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    ++v5;
    sub_2168A5278(__dst, v9);
    sub_2168A196C(v8, __dst);
    memcpy(v9, v8, sizeof(v9));
    result = sub_2168A52D4(v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_216E6465C(uint64_t a1)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_24();
  v9 = sub_21667E974(&qword_27CAC7BA0, type metadata accessor for SocialFindFriendsController.Friend, &unk_21704601C);
  v10 = MEMORY[0x21CE9F9C0](v3, Friends, v9);
  v14 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    OUTLINED_FUNCTION_43_31();
    do
    {
      sub_2166C6A54(Friends, v1, type metadata accessor for SocialFindFriendsController.Friend);
      sub_2168A1B48();
      sub_216E694E4(v2, type metadata accessor for SocialFindFriendsController.Friend);
      Friends += v4;
      --v11;
    }

    while (v11);

    return v14;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

uint64_t static MusicUIPPT.allTestNames.getter()
{
  if (qword_280E46108 != -1)
  {
    OUTLINED_FUNCTION_31_50(&qword_280E46108);
  }

  swift_beginAccess();
  v0 = sub_21700DF14();
  v1 = sub_216E6403C(v0);

  return sub_216E64354(v1);
}

uint64_t static MusicUIPPT.destinationURLForTestName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicUIPPT.Test(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8, qword_21703E820);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  if (qword_280E46108 != -1)
  {
    OUTLINED_FUNCTION_31_50(&qword_280E46108);
  }

  swift_beginAccess();
  if (*(qword_280E73DC8 + 16) && (sub_2166AF66C(a1, a2), (v13 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_173();
    sub_2166C6A54(v14, v12, v15);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v16, 1, v6);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6))
  {
    sub_2166997CC(v12, &qword_27CAB70B8, qword_21703E820);
    swift_endAccess();
    v17 = sub_217005EF4();
    v18 = a3;
    v19 = 1;
  }

  else
  {
    sub_2166C6A54(v12, v9, type metadata accessor for MusicUIPPT.Test);
    sub_2166997CC(v12, &qword_27CAB70B8, qword_21703E820);
    swift_endAccess();
    v20 = *(v6 + 20);
    v21 = sub_217005EF4();
    (*(*(v21 - 8) + 16))(a3, &v9[v20], v21);
    sub_216E694E4(v9, type metadata accessor for MusicUIPPT.Test);
    v18 = a3;
    v19 = 0;
    v17 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
}

uint64_t sub_216E64AE0(char a1)
{
  if (a1)
  {
    return 0x70616373646E614CLL;
  }

  else
  {
    return 0x7469617274726F50;
  }
}

uint64_t sub_216E64B1C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x63537261656E694CLL;
  }

  if (a3 == 1)
  {
    return 0x6F72635374736146;
  }

  if (a1 | a2)
  {
    return 0xD000000000000013;
  }

  return 0x697473696C616552;
}

uint64_t sub_216E64BC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v36 = a3;
  v37 = a1;
  v33 = a2;
  v39 = *a4;
  v42 = sub_217008174();
  v7 = *(v42 - 8);
  v38 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9;
  v10 = type metadata accessor for MusicUIPPT.Test(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217008144();
  v32 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v35 = &v29 - v17;
  v19 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v13 + 16))(v15, v33, v12);
  sub_2166C6A54(v36, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MusicUIPPT.Test);
  (*(v7 + 16))(v9, v37, v42);
  sub_21700EA34();

  v20 = sub_21700EA24();
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = (v14 + *(v34 + 80) + v21) & ~*(v34 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v7 + 80) + v23 + 8) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v26 = v39;
  v27 = MEMORY[0x277D85700];
  *(v25 + 2) = v20;
  *(v25 + 3) = v27;
  *(v25 + 4) = v40;
  *(v25 + 5) = v26[10];
  *(v25 + 6) = v26[11];
  *(v25 + 7) = v41;
  *(v25 + 8) = v26[12];
  *(v25 + 9) = v26[13];
  (*(v13 + 32))(&v25[v21], v15, v32);
  sub_2166C6CFC(v30, &v25[v22]);
  *&v25[v23] = a4;
  (*(v7 + 32))(&v25[v24], v31, v42);
  sub_21677BBA0();
}

uint64_t sub_216E64FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v15;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v9 = sub_21700F524();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  v8[28] = swift_task_alloc();
  v8[29] = type metadata accessor for MusicUIPPT.Test(0);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v10 = sub_217008144();
  v8[32] = v10;
  v8[33] = *(v10 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = sub_21700EA34();
  v8[41] = sub_21700EA24();
  v12 = sub_21700E9B4();
  v8[42] = v12;
  v8[43] = v11;

  return MEMORY[0x2822009F8](sub_216E651E8, v12, v11);
}

uint64_t sub_216E65530()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;

  v5 = *(v2 + 224);
  if (v0)
  {

    sub_2166997CC(v5, &qword_27CAB6FD0, &qword_21701D5F0);
    v6 = *(v3 + 336);
    v7 = *(v3 + 344);
    v8 = sub_216E6705C;
  }

  else
  {
    sub_2166997CC(v5, &qword_27CAB6FD0, &qword_21701D5F0);
    v6 = *(v3 + 336);
    v7 = *(v3 + 344);
    v8 = sub_216E6568C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_216E65910()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  v4 = *(v1 + 344);
  v5 = *(v1 + 336);

  return MEMORY[0x2822009F8](sub_216E65A28, v5, v4);
}

uint64_t sub_216E65A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = *(v16 + 352);
  (*(v16 + 360))(*(v16 + 288), *(v16 + 144), *(v16 + 256));
  v19 = sub_217007C84();
  v20 = sub_21700EDA4();
  v21 = OUTLINED_FUNCTION_90_3(v20);
  v22 = *(v16 + 376);
  if (v21)
  {
    v23 = *(v16 + 360);
    HIDWORD(a11) = v18;
    v24 = *(v16 + 304);
    a10 = *(v16 + 264);
    swift_slowAlloc();
    a13 = OUTLINED_FUNCTION_64_1();
    v25 = OUTLINED_FUNCTION_4_142(4.8751e-34);
    v23(v25);
    _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
    v26 = OUTLINED_FUNCTION_8_107();
    v22(v26);
    v27 = OUTLINED_FUNCTION_696();
    v28 = (v22)(v27);
    OUTLINED_FUNCTION_38_38(v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_45_29();
    *(v17 + 4) = v24;
    OUTLINED_FUNCTION_9_98();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    OUTLINED_FUNCTION_11_86();
    OUTLINED_FUNCTION_56_1();
  }

  else
  {

    v41 = OUTLINED_FUNCTION_12_85();
    v22(v41);
  }

  sub_21700F854();
  OUTLINED_FUNCTION_38_0(&dword_21703A360);
  v53 = v42;
  v43 = swift_task_alloc();
  *(v16 + 400) = v43;
  *v43 = v16;
  v43[1] = sub_216E65BDC;
  OUTLINED_FUNCTION_13_2();

  return v49(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, v53, a13, a14, a15, a16);
}

uint64_t sub_216E65BDC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[25];
  if (v0)
  {

    v3[52] = *(v5 + 8);
    v6 = OUTLINED_FUNCTION_115();
    v7(v6);
    v8 = v3[42];
    v9 = v3[43];
    v10 = sub_216E66184;
  }

  else
  {
    v3[51] = *(v5 + 8);
    v11 = OUTLINED_FUNCTION_115();
    v12(v11);
    v8 = v3[42];
    v9 = v3[43];
    v10 = sub_216E65D68;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_216E65D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_37_17();
  a25 = v31;
  a26 = v32;
  a24 = v27;
  OUTLINED_FUNCTION_27_50(v27[51]);
  if (!v34)
  {
    v35 = v27[21];
    v36 = sub_216E67310();
    v27[58] = v36;
    v37 = sub_217008164();
    if ((v26 & 0x8000000000000000) == 0)
    {
      if (v26)
      {
        v38 = OUTLINED_FUNCTION_48_26();
        v39 = OUTLINED_FUNCTION_49_29(v38);
        v27[61] = v39;
        *(v39 + 16) = v28;
        *(v39 + 24) = v29;
        v40 = swift_task_alloc();
        v27[62] = v40;
        *v40 = v27;
        OUTLINED_FUNCTION_6_117(v40);
        OUTLINED_FUNCTION_7_111();
        OUTLINED_FUNCTION_18_67();
        OUTLINED_FUNCTION_35_1();

        return MEMORY[0x2822007B8](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      else
      {

        v62 = OUTLINED_FUNCTION_5_134();
        v63(v62);
        v64 = sub_217007C84();
        v65 = sub_21700EDA4();
        v66 = OUTLINED_FUNCTION_90_3(v65);
        v67 = v27[47];
        if (v66)
        {
          OUTLINED_FUNCTION_35_37();
          a12 = OUTLINED_FUNCTION_64_1();
          v68 = OUTLINED_FUNCTION_4_142(4.8751e-34);
          v30(v68);
          v69 = _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
          v71 = v70;
          v72 = OUTLINED_FUNCTION_13_81();
          v67(v72);
          v73 = OUTLINED_FUNCTION_696();
          v67(v73);
          sub_2166A85FC(v69, v71, &a12);
          OUTLINED_FUNCTION_45_29();
          *(v28 + 4) = v35;
          OUTLINED_FUNCTION_9_98();
          _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
          OUTLINED_FUNCTION_11_86();
          OUTLINED_FUNCTION_56_1();
        }

        else
        {
          OUTLINED_FUNCTION_50_23();
          v79 = OUTLINED_FUNCTION_12_85();
          v67(v79);
        }

        sub_21700F854();
        OUTLINED_FUNCTION_38_0(&dword_21703A360);
        v93 = v80;
        v81 = swift_task_alloc();
        v82 = OUTLINED_FUNCTION_44_29(v81);
        *v82 = v83;
        OUTLINED_FUNCTION_0_243(v82);
        OUTLINED_FUNCTION_35_1();

        return v89(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, v93, a12, a13, a14, a15, a16, a17, a18);
      }
    }

    __break(1u);
    return MEMORY[0x282180668](v37);
  }

  if (v33 | v26)
  {
    v49 = type metadata accessor for ContentOffsetScrollDisplayLinkTarget();
    swift_allocObject();
    v50 = sub_216E67E94();
    v27[63] = v50;
    v51 = sub_216E67310();
    swift_unknownObjectWeakAssign();

    sub_216685F4C(0, &qword_27CACB0E0, 0x277CD9E48);
    a15 = v49;
    a12 = v50;

    v52 = sub_216E67864(&a12, sel_frame_);
    OUTLINED_FUNCTION_47_33(v52);
    v53 = [objc_opt_self() mainRunLoop];
    v54 = OUTLINED_FUNCTION_55_20();
    [v54 v55];

    sub_217008164();
    [sel_frame_ (v29 + 3832)];
    v27[65] = *(v50 + 24);

    v56 = swift_task_alloc();
    v27[66] = v56;
    *v56 = v27;
    OUTLINED_FUNCTION_20_62(v56);
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x282180668](v37);
  }

  OUTLINED_FUNCTION_46_30();
  v27[56] = sub_216E67310();
  _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  v27[57] = sub_21700E4D4();

  v27[2] = v27;
  OUTLINED_FUNCTION_25_52();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB0E8, &qword_217068A00);
  OUTLINED_FUNCTION_22_58(v57);
  v27[11] = 1107296256;
  OUTLINED_FUNCTION_21_65();
  v58 = OUTLINED_FUNCTION_55_20();
  [v58 v59];
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x282200938](v60);
}

uint64_t sub_216E66184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_37_17();
  a25 = v31;
  a26 = v32;
  a24 = v27;
  OUTLINED_FUNCTION_27_50(v27[52]);
  if (!v34)
  {
    v35 = v27[21];
    v36 = sub_216E67310();
    v27[58] = v36;
    v37 = sub_217008164();
    if ((v26 & 0x8000000000000000) == 0)
    {
      if (v26)
      {
        v38 = OUTLINED_FUNCTION_48_26();
        v39 = OUTLINED_FUNCTION_49_29(v38);
        v27[61] = v39;
        *(v39 + 16) = v28;
        *(v39 + 24) = v29;
        v40 = swift_task_alloc();
        v27[62] = v40;
        *v40 = v27;
        OUTLINED_FUNCTION_6_117(v40);
        OUTLINED_FUNCTION_7_111();
        OUTLINED_FUNCTION_18_67();
        OUTLINED_FUNCTION_35_1();

        return MEMORY[0x2822007B8](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      else
      {

        v62 = OUTLINED_FUNCTION_5_134();
        v63(v62);
        v64 = sub_217007C84();
        v65 = sub_21700EDA4();
        v66 = OUTLINED_FUNCTION_90_3(v65);
        v67 = v27[47];
        if (v66)
        {
          OUTLINED_FUNCTION_35_37();
          a12 = OUTLINED_FUNCTION_64_1();
          v68 = OUTLINED_FUNCTION_4_142(4.8751e-34);
          v30(v68);
          v69 = _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
          v71 = v70;
          v72 = OUTLINED_FUNCTION_13_81();
          v67(v72);
          v73 = OUTLINED_FUNCTION_696();
          v67(v73);
          sub_2166A85FC(v69, v71, &a12);
          OUTLINED_FUNCTION_45_29();
          *(v28 + 4) = v35;
          OUTLINED_FUNCTION_9_98();
          _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
          OUTLINED_FUNCTION_11_86();
          OUTLINED_FUNCTION_56_1();
        }

        else
        {
          OUTLINED_FUNCTION_50_23();
          v79 = OUTLINED_FUNCTION_12_85();
          v67(v79);
        }

        sub_21700F854();
        OUTLINED_FUNCTION_38_0(&dword_21703A360);
        v93 = v80;
        v81 = swift_task_alloc();
        v82 = OUTLINED_FUNCTION_44_29(v81);
        *v82 = v83;
        OUTLINED_FUNCTION_0_243(v82);
        OUTLINED_FUNCTION_35_1();

        return v89(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, v93, a12, a13, a14, a15, a16, a17, a18);
      }
    }

    __break(1u);
    return MEMORY[0x282180668](v37);
  }

  if (v33 | v26)
  {
    v49 = type metadata accessor for ContentOffsetScrollDisplayLinkTarget();
    swift_allocObject();
    v50 = sub_216E67E94();
    v27[63] = v50;
    v51 = sub_216E67310();
    swift_unknownObjectWeakAssign();

    sub_216685F4C(0, &qword_27CACB0E0, 0x277CD9E48);
    a15 = v49;
    a12 = v50;

    v52 = sub_216E67864(&a12, sel_frame_);
    OUTLINED_FUNCTION_47_33(v52);
    v53 = [objc_opt_self() mainRunLoop];
    v54 = OUTLINED_FUNCTION_55_20();
    [v54 v55];

    sub_217008164();
    [sel_frame_ (v29 + 3832)];
    v27[65] = *(v50 + 24);

    v56 = swift_task_alloc();
    v27[66] = v56;
    *v56 = v27;
    OUTLINED_FUNCTION_20_62(v56);
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x282180668](v37);
  }

  OUTLINED_FUNCTION_46_30();
  v27[56] = sub_216E67310();
  _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  v27[57] = sub_21700E4D4();

  v27[2] = v27;
  OUTLINED_FUNCTION_25_52();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB0E8, &qword_217068A00);
  OUTLINED_FUNCTION_22_58(v57);
  v27[11] = 1107296256;
  OUTLINED_FUNCTION_21_65();
  v58 = OUTLINED_FUNCTION_55_20();
  [v58 v59];
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x282200938](v60);
}

uint64_t sub_216E665A0()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);

  return MEMORY[0x2822009F8](sub_216E666A8, v2, v1);
}

uint64_t sub_216E666A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v19 = *(v16 + 456);

  v20 = OUTLINED_FUNCTION_5_134();
  v21(v20);
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  v24 = OUTLINED_FUNCTION_90_3(v23);
  v25 = *(v16 + 376);
  if (v24)
  {
    OUTLINED_FUNCTION_16_67();
    a13 = OUTLINED_FUNCTION_64_1();
    v26 = OUTLINED_FUNCTION_4_142(4.8751e-34);
    v18(v26);
    _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
    v27 = OUTLINED_FUNCTION_8_107();
    v25(v27);
    v28 = OUTLINED_FUNCTION_696();
    v29 = (v25)(v28);
    OUTLINED_FUNCTION_38_38(v29, v30, v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_45_29();
    *(v17 + 4) = v19;
    OUTLINED_FUNCTION_9_98();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    OUTLINED_FUNCTION_11_86();
    OUTLINED_FUNCTION_56_1();
  }

  else
  {
    OUTLINED_FUNCTION_50_23();
    v42 = OUTLINED_FUNCTION_12_85();
    v25(v42);
  }

  sub_21700F854();
  OUTLINED_FUNCTION_38_0(&dword_21703A360);
  v56 = v43;
  v44 = swift_task_alloc();
  v45 = OUTLINED_FUNCTION_44_29(v44);
  *v45 = v46;
  OUTLINED_FUNCTION_0_243(v45);
  OUTLINED_FUNCTION_13_2();

  return v52(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, v56, a13, a14, a15, a16);
}

uint64_t sub_216E667EC()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  v4 = *(v1 + 344);
  v5 = *(v1 + 336);

  return MEMORY[0x2822009F8](sub_216E66944, v5, v4);
}

uint64_t sub_216E66944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v22 = *(v19 + 472) + 1;
  if (v22 == *(v19 + 440))
  {

    v23 = OUTLINED_FUNCTION_5_134();
    v24(v23);
    v25 = sub_217007C84();
    v26 = sub_21700EDA4();
    v27 = OUTLINED_FUNCTION_90_3(v26);
    v28 = *(v19 + 376);
    if (v27)
    {
      OUTLINED_FUNCTION_16_67();
      a13 = OUTLINED_FUNCTION_64_1();
      v29 = OUTLINED_FUNCTION_4_142(4.8751e-34);
      v21(v29);
      _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
      v30 = OUTLINED_FUNCTION_8_107();
      v28(v30);
      v31 = OUTLINED_FUNCTION_696();
      v32 = (v28)(v31);
      OUTLINED_FUNCTION_38_38(v32, v33, v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_45_29();
      *(v20 + 4) = v18;
      OUTLINED_FUNCTION_9_98();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      OUTLINED_FUNCTION_11_86();
      OUTLINED_FUNCTION_56_1();
    }

    else
    {
      OUTLINED_FUNCTION_50_23();
      v58 = OUTLINED_FUNCTION_12_85();
      v28(v58);
    }

    sub_21700F854();
    OUTLINED_FUNCTION_38_0(&dword_21703A360);
    v72 = v59;
    v60 = swift_task_alloc();
    v61 = OUTLINED_FUNCTION_44_29(v60);
    *v61 = v62;
    OUTLINED_FUNCTION_0_243(v61);
    OUTLINED_FUNCTION_13_2();

    return v68(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, v72, a13, a14, a15, a16);
  }

  else
  {
    *(v19 + 472) = v22;
    v45 = *(v19 + 464);
    v46 = *(v19 + 432);
    v47 = sub_21700EA24();
    v48 = OUTLINED_FUNCTION_49_29(v47);
    *(v19 + 488) = v48;
    *(v48 + 16) = v45;
    *(v48 + 24) = v46;
    v49 = swift_task_alloc();
    *(v19 + 496) = v49;
    *v49 = v19;
    OUTLINED_FUNCTION_6_117(v49);
    OUTLINED_FUNCTION_7_111();
    OUTLINED_FUNCTION_18_67();
    OUTLINED_FUNCTION_13_2();

    return MEMORY[0x2822007B8](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_216E66B38()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 336);
    v5 = *(v2 + 344);
    v6 = sub_216E69540;
  }

  else
  {

    v4 = *(v2 + 336);
    v5 = *(v2 + 344);
    v6 = sub_216E66C74;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216E66C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v19 = *(v16 + 504);

  v20 = OUTLINED_FUNCTION_5_134();
  v21(v20);
  v22 = sub_217007C84();
  v23 = sub_21700EDA4();
  v24 = OUTLINED_FUNCTION_90_3(v23);
  v25 = *(v16 + 376);
  if (v24)
  {
    OUTLINED_FUNCTION_16_67();
    a13 = OUTLINED_FUNCTION_64_1();
    v26 = OUTLINED_FUNCTION_4_142(4.8751e-34);
    v18(v26);
    _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
    v27 = OUTLINED_FUNCTION_8_107();
    v25(v27);
    v28 = OUTLINED_FUNCTION_696();
    v29 = (v25)(v28);
    OUTLINED_FUNCTION_38_38(v29, v30, v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_45_29();
    *(v17 + 4) = v19;
    OUTLINED_FUNCTION_9_98();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    OUTLINED_FUNCTION_11_86();
    OUTLINED_FUNCTION_56_1();
  }

  else
  {
    OUTLINED_FUNCTION_50_23();
    v42 = OUTLINED_FUNCTION_12_85();
    v25(v42);
  }

  sub_21700F854();
  OUTLINED_FUNCTION_38_0(&dword_21703A360);
  v56 = v43;
  v44 = swift_task_alloc();
  v45 = OUTLINED_FUNCTION_44_29(v44);
  *v45 = v46;
  OUTLINED_FUNCTION_0_243(v45);
  OUTLINED_FUNCTION_13_2();

  return v52(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, v56, a13, a14, a15, a16);
}

uint64_t sub_216E66DBC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *v4 = *v1;

  v5 = *(v2 + 424);
  if (v0)
  {

    v6 = OUTLINED_FUNCTION_115();
    v5(v6);
    v7 = *(v3 + 336);
    v8 = *(v3 + 344);
    v9 = sub_216E69538;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_115();
    v5(v10);
    v7 = *(v3 + 336);
    v8 = *(v3 + 344);
    v9 = sub_216E66F5C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216E66F5C()
{

  sub_217008124();

  v1 = *(v0 + 8);

  return v1();
}

void sub_216E6705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_37_17();
  a25 = v28;
  a26 = v29;
  a24 = v26;
  (*(v26 + 360))(*(v26 + 272), *(v26 + 144), *(v26 + 256));
  v30 = sub_217007C84();
  v31 = sub_21700ED84();
  v32 = OUTLINED_FUNCTION_90_3(v31);
  v33 = *(v26 + 376);
  if (v32)
  {
    v34 = *(v26 + 360);
    v35 = *(v26 + 304);
    swift_slowAlloc();
    a14 = OUTLINED_FUNCTION_64_1();
    v36 = OUTLINED_FUNCTION_4_142(4.8751e-34);
    v34(v36);
    v37 = _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
    v39 = v38;
    v40 = OUTLINED_FUNCTION_13_81();
    v33(v40);
    v41 = OUTLINED_FUNCTION_696();
    v33(v41);
    sub_2166A85FC(v37, v39, &a14);
    OUTLINED_FUNCTION_45_29();
    *(v27 + 4) = v35;
    OUTLINED_FUNCTION_9_98();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    OUTLINED_FUNCTION_11_86();
    OUTLINED_FUNCTION_56_1();
  }

  else
  {

    v47 = OUTLINED_FUNCTION_12_85();
    v33(v47);
  }

  a14 = 0;
  a15 = 0xE000000000000000;
  sub_21700F3B4();

  a14 = 0xD000000000000012;
  a15 = 0x800000021708F670;
  sub_217005EF4();
  OUTLINED_FUNCTION_26_47();
  sub_21667E974(v48, v49, MEMORY[0x277CC9290]);
  v50 = sub_21700F784();
  MEMORY[0x21CE9F490](v50);

  MEMORY[0x21CE9F490](0x54505020726F6620, 0xE900000000000020);
  v51 = _s7SwiftUI11PPTTestCaseV4NameV05MusicB0E11descriptionSSvg_0();
  MEMORY[0x21CE9F490](v51);

  sub_21700F584();
  OUTLINED_FUNCTION_35_1();
}

char *sub_216E672A4()
{
  result = sub_216E67AF4();
  if (result)
  {
    v1 = getenv("SWIFTUI_TRACE");
    if (v1)
    {
      result = atoi(v1);
      v2 = result;
      if ((result & 0x80000000) != 0)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x282141E68](0, v2);
  }

  return result;
}

uint64_t sub_216E67310()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_216685F4C(0, &qword_280E29B30, 0x277D75940);
  sub_2166CB5AC();
  v2 = sub_21700EB84();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21700F264();
    sub_21700EBC4();
    v2 = v32;
    v3 = v33;
    v4 = v34;
    v5 = v35;
    v6 = v36;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
    sub_21700DF14();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (!v6)
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_46;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    sub_216687978(v2);
    while (1)
    {

LABEL_48:
      sub_21700F584();
      __break(1u);
LABEL_49:
    }
  }

LABEL_12:
  v14 = (v12 - 1) & v12;
  v4 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  if (!v4)
  {
    goto LABEL_46;
  }

  while ([v4 activationState])
  {

    v5 = v13;
    v6 = v14;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (sub_21700F2E4())
    {
      swift_dynamicCast();
      v4 = v31;
      v13 = v5;
      v14 = v6;
      if (v31)
      {
        continue;
      }
    }

    goto LABEL_46;
  }

  sub_216687978(v2);

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_52;
  }

  v16 = [v15 windows];
  sub_216685F4C(0, &qword_27CACB0F0, 0x277D75DA0);
  v17 = sub_21700E824();

  v18 = sub_2166BF3C8(v17);
  v19 = 0;
  v2 = v17 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v18 == v19)
    {
      goto LABEL_49;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x21CEA0220](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_43;
    }

    if ([v20 isKeyWindow])
    {
      break;
    }

    ++v19;
  }

  v22 = [v21 rootViewController];

  if (!v22)
  {
LABEL_52:

    goto LABEL_48;
  }

  v23 = [v22 view];
  if (!v23)
  {
    goto LABEL_48;
  }

  v24 = v23;
  do
  {
    v2 = [v24 subviews];
    sub_216685F4C(0, &qword_27CAC9DF8, 0x277D75D18);
    v25 = sub_21700E824();

    if (v25 >> 62)
    {
      if (!sub_21700F2B4())
      {
LABEL_50:

        goto LABEL_48;
      }
    }

    else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x21CEA0220](0, v25);
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v26 = *(v25 + 32);
    }

    v27 = v26;

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    v24 = v27;
  }

  while (!v28);
  v29 = v28;

  return v29;
}

uint64_t sub_216E67830(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

id sub_216E67864(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_21700F7B4();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

void sub_216E678E4(uint64_t a1, void *a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998, &qword_21703A2D8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_216E69460;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_34_1;
  v13 = _Block_copy(aBlock);

  [a2 _simulateScrollWithTranslation_duration_willBeginDragging_didEndDragging_willBeginDecelerating_didEndDecelerating_];
  _Block_release(v13);
}

char *sub_216E67AF4()
{
  result = getenv("SWIFTUI_TRACE_PPT");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

uint64_t sub_216E67B24()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E73E08);
  __swift_project_value_buffer(v0, qword_280E73E08);
  return sub_217007C94();
}

void sub_216E67BBC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_21700E4D4();
  [v0 doubleForKey_];
  v3 = v2;

  if (v3 != 0.0 && qword_27CAB61A8 != -1)
  {
    swift_once();
  }
}

void sub_216E67C88(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong contentOffset];
    v4 = v3;
    [v11 contentSize];
    v6 = v5;
    [v11 bounds];
    if (v4 >= v6 - CGRectGetHeight(v13))
    {
      [a1 setPaused_];

      sub_21700E224();
    }

    else
    {
      [v11 contentOffset];
      v8 = v7;
      [v11 contentOffset];
      v10 = v9;
      if (qword_27CAB61A8 != -1)
      {
        swift_once();
      }

      [v11 setContentOffset:0 animated:{v8, v10 + *&qword_27CACB0C0}];
    }
  }

  else
  {

    [a1 setPaused_];
  }
}

uint64_t sub_216E67E54()
{
  MEMORY[0x21CEA1520](v0 + 16);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216E67E94()
{
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8, &unk_21705F010);
  *(v0 + 24) = sub_21700E244();
  return v0;
}

unint64_t sub_216E67EE8()
{
  OUTLINED_FUNCTION_17_70();
  sub_2170071B4();
  v0 = sub_21667E974(&qword_280E4A408, MEMORY[0x277D2ACB0], MEMORY[0x277D2ACB8]);
  v1 = OUTLINED_FUNCTION_37_43(v0);
  return OUTLINED_FUNCTION_36_40(v1, v1, MEMORY[0x277D2ACB0], &qword_27CACB0D0, v2, MEMORY[0x277D2ACC0]);
}

_BYTE *storeEnumTagSinglePayload for MusicUIPPT(_BYTE *result, int a2, int a3)
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

uint64_t sub_216E680A4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_216E680CC()
{
  result = qword_27CACB0C8;
  if (!qword_27CACB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB0C8);
  }

  return result;
}

unint64_t sub_216E68120(uint64_t a1)
{
  v2 = sub_21700F334();

  return sub_216E68614(a1, v2);
}

unint64_t sub_216E68164()
{
  OUTLINED_FUNCTION_29_50();
  sub_216AFB138(v3);
  sub_21700F944();
  v0 = OUTLINED_FUNCTION_51_14();

  return sub_216E686D8(v0, v1);
}

unint64_t sub_216E681BC()
{
  OUTLINED_FUNCTION_29_50();
  sub_21700E614();
  sub_21700F944();
  v0 = OUTLINED_FUNCTION_51_14();

  return sub_216E688A4(v0, v1);
}

unint64_t sub_216E68214()
{
  OUTLINED_FUNCTION_29_50();
  if (*(v0 + 32))
  {
    v1 = MEMORY[0x21CEA0720](1);
    OUTLINED_FUNCTION_41_32(v1, v2, v3, v4, v5, v6, v7, v8, v20, v21);
    sub_21700E614();
  }

  else
  {
    v9 = MEMORY[0x21CEA0720](0);
    OUTLINED_FUNCTION_41_32(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  }

  sub_21700E614();
  sub_21700F944();
  v17 = OUTLINED_FUNCTION_51_14();

  return sub_216E68980(v17, v18);
}

unint64_t sub_216E682B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_42_32();
  a3(v8, a1, a2);
  v6 = sub_21700F944();
  return sub_2166AF6DC(a1, a2, v6);
}

unint64_t sub_216E68334()
{
  OUTLINED_FUNCTION_29_50();
  MEMORY[0x21CEA0720](0);
  sub_21700F114();
  sub_21700F944();
  v0 = OUTLINED_FUNCTION_51_14();

  return sub_216E68AA0(v0, v1);
}

unint64_t sub_216E68398(uint64_t a1)
{
  sub_21700E514();
  v2 = sub_21700F8F4();
  OUTLINED_FUNCTION_41_32(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_21700E614();
  v10 = sub_21700F944();

  return sub_216E68B78(a1, v10);
}

unint64_t sub_216E68424(char a1)
{
  OUTLINED_FUNCTION_42_32();
  MEMORY[0x21CEA0720](a1 & 1);
  v2 = sub_21700F944();

  return sub_216E68C70(a1 & 1, v2);
}

unint64_t sub_216E68488()
{
  OUTLINED_FUNCTION_17_70();
  sub_2170098A4();
  v0 = sub_21667E974(&qword_27CABE9B0, MEMORY[0x277CE0570], MEMORY[0x277CE0580]);
  v1 = OUTLINED_FUNCTION_37_43(v0);
  return OUTLINED_FUNCTION_36_40(v1, v1, MEMORY[0x277CE0570], &qword_280E2A858, v2, MEMORY[0x277CE0590]);
}

unint64_t sub_216E68550(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_42_32();
  sub_216975414(v1);
  sub_21700E614();

  v2 = sub_21700F944();

  return sub_216E68CD4(v1, v2);
}

unint64_t sub_216E685D0(uint64_t a1)
{
  v2 = a1;
  v3 = sub_216E3D32C(*(v1 + 40), a1);

  return sub_216E68F14(v2, v3);
}

unint64_t sub_216E68614(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_216788294(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x21CEA0160](v8, a1);
    sub_216788110(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_216E686D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicEvent(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_2166C6A54(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MusicEvent);
      if (sub_216AF96B0(v8, a1))
      {
        v13 = &v8[*(v5 + 20)];
        v14 = *v13;
        v15 = v13[8];
        sub_216E694E4(v8, type metadata accessor for MusicEvent);
        v16 = a1 + *(v5 + 20);
        v17 = *(v16 + 8);
        if (v15)
        {
          if (*(v16 + 8))
          {
            return v10;
          }
        }

        else
        {
          if (v14 != *v16)
          {
            v17 = 1;
          }

          if ((v17 & 1) == 0)
          {
            return v10;
          }
        }
      }

      else
      {
        sub_216E694E4(v8, type metadata accessor for MusicEvent);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_216E688A4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_216970008(*(v2 + 48) + 112 * i, v9);
    if (v9[12] == *(a1 + 96) && v9[13] == *(a1 + 104))
    {
      sub_216970064(v9);
      return i;
    }

    v7 = sub_21700F7D4();
    sub_216970064(v9);
    if (v7)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_216E68980(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + 40 * v5);
      v10 = *v9;
      v11 = v9[1];
      if (v9[4])
      {
        if (a1[4])
        {
          v12 = v9[2];
          v13 = v9[3];
          v14 = a1[2];
          v15 = a1[3];
          v16 = v10 == *a1 && v11 == a1[1];
          if (v16 || (sub_21700F7D4() & 1) != 0)
          {
            if (v12 == v14 && v13 == v15)
            {
              return v5;
            }

LABEL_20:
            if (sub_21700F7D4())
            {
              return v5;
            }
          }
        }
      }

      else if ((a1[4] & 1) == 0)
      {
        if (v10 == *a1 && v11 == a1[1])
        {
          return v5;
        }

        goto LABEL_20;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_216E68AA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    sub_216685F4C(0, &qword_27CAC2310, 0x277D82BB8);
    v8 = v7;
    v9 = sub_21700F104();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_216E68B78(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_21700E514();
    v7 = v6;
    if (v5 == sub_21700E514() && v7 == v8)
    {

      return i;
    }

    v10 = sub_21700F7D4();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_216E68C70(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_216E68CD4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00776569566265;
      v8 = 0x577373696D736964;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000019;
          v7 = 0x800000021707FAF0;
          break;
        case 2:
          v8 = 0xD000000000000027;
          v7 = 0x800000021707FB10;
          break;
        case 3:
          v8 = 0xD000000000000017;
          v7 = 0x800000021707FB40;
          break;
        case 4:
          v8 = 0x72656C41776F6873;
          v7 = 0xE900000000000074;
          break;
        default:
          break;
      }

      v9 = 0x577373696D736964;
      v10 = 0xEE00776569566265;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000019;
          v10 = 0x800000021707FAF0;
          break;
        case 2:
          v9 = 0xD000000000000027;
          v10 = 0x800000021707FB10;
          break;
        case 3:
          v9 = 0xD000000000000017;
          v10 = 0x800000021707FB40;
          break;
        case 4:
          v9 = 0x72656C41776F6873;
          v10 = 0xE900000000000074;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_21700F7D4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_216E68F14(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000014;
      v6 = 0xD000000000000016;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "gradientListRowImage";
      }

      else
      {
        v6 = 0xD000000000000013;
        v7 = "splitPosterBottomImage";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000014;
      v9 = *(*(v2 + 48) + v4) ? v7 : "oLoad";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000016 : 0xD000000000000013;
        v10 = a1 == 1 ? "gradientListRowImage" : "splitPosterBottomImage";
      }

      else
      {
        v10 = "oLoad";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_21700F7D4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_216E69088(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = sub_217008144();
  OUTLINED_FUNCTION_2(v5);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for MusicUIPPT.Test(0);
  OUTLINED_FUNCTION_2(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = *(v1 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216E64BC0(a1, v1 + v7, v1 + v15, v16, v3, v4);
}

uint64_t sub_216E69190(uint64_t a1)
{
  v3 = v2;
  v23 = v1[4];
  v5 = sub_217008144();
  OUTLINED_FUNCTION_2(v5);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for MusicUIPPT.Test(0);
  OUTLINED_FUNCTION_2(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(sub_217008174() - 8);
  v16 = (v14 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v17 = v1[2];
  v18 = v1[3];
  v19 = *(v1 + v14);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_216E69368;

  return sub_216E64FC8(a1, v17, v18, v1 + v7, v1 + v12, v19, v1 + v16, v23);
}

uint64_t sub_216E69368()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_216E69460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0998, &qword_21703A2D8);

  return sub_216E67AB8();
}

uint64_t block_copy_helper_32_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_216E694E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for SectionHeaderView(uint64_t a1)
{
  result = qword_280E3F978;
  if (!qword_280E3F978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216E695C0(uint64_t a1)
{
  sub_2166D1BA8(319, qword_280E2C6D0, _s7SectionV6HeaderVMa, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216E6969C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216E6969C()
{
  if (!qword_280E2C640)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2C640);
    }
  }
}

void sub_216E696EC(uint64_t a1)
{
  type metadata accessor for MappedSection(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ObjectGraph(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for CatalogPagePresenter(255, *(a1 + 16), *(a1 + 24), v3);
      swift_getWitnessTable();
      sub_2170086B4();
      if (v5 <= 0x3F)
      {
        sub_2166D1BA8(319, &qword_280E2B490, type metadata accessor for PersistentPageSectionManager, MEMORY[0x277CDF468]);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216E6989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MappedSection(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for LandingUpsell(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB248, &qword_217068D58);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_216E8C994(v2, v11, type metadata accessor for LandingUpsell);
  sub_216E8C994(a1, v8, type metadata accessor for MappedSection);
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = *(v6 + 32);
  v17 = _s7SectionV6HeaderVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8 + v16, 1, v17);
  v19 = 0.0;
  if (EnumTagSinglePayload == 1)
  {
    v19 = 6.0;
  }

  *(v15 + 5) = &unk_28291DCE8;
  *(v15 + 6) = &off_28291DD90;
  *(v15 + 2) = v19;
  *(v15 + 3) = 0x402C000000000000;
  sub_216E8CB00(v11, &v15[*(v13 + 76)], type metadata accessor for LandingUpsell);
  v21 = *v8;
  v20 = v8[1];
  sub_21700DF14();
  sub_216E8C93C(v8, type metadata accessor for MappedSection);
  *(v15 + 7) = v21;
  *(v15 + 8) = v20;
  sub_216E8C994(v2, a2, type metadata accessor for LandingUpsellView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB240, &qword_217068D50);
  return sub_2167C5834(v15, a2 + *(v22 + 36), &qword_27CACB248, &qword_217068D58);
}

uint64_t sub_216E69B04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for CatalogSectionView(0, *(*a2 + 80), *(*a2 + 88), a4);
  v13 = a6 + v12[13];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = (a6 + v12[12]);
  *v14 = sub_2168E168C(a2);
  v14[1] = v15;
  result = sub_216E8CB00(a1, a6, type metadata accessor for MappedSection);
  *(a6 + v12[9]) = a5;
  *(a6 + v12[10]) = a3;
  *(a6 + v12[11]) = a4;
  return result;
}

uint64_t sub_216E69BF0@<X0>(uint64_t a1@<X8>)
{
  v80[3] = a1;
  v2 = OUTLINED_FUNCTION_36_41();
  v80[1] = type metadata accessor for SectionHeaderView(v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB140, &qword_217068C40);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for AlbumTrackListSection(v5, v6, v7, v8);
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB148, &qword_217068C48);
  v9 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for ArtistDetailHeaderLockupView(v9, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB1B0, &qword_217023310);
  OUTLINED_FUNCTION_30_50(qword_280E3D9E8);
  OUTLINED_FUNCTION_17_71();
  swift_getWitnessTable();
  v13 = OUTLINED_FUNCTION_40_2();
  type metadata accessor for SingleItemSectionViewModifier(v13, v14);
  OUTLINED_FUNCTION_4_143();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  OUTLINED_FUNCTION_5_135();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  type metadata accessor for ArtistLatestReleaseLockupView(255);
  sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  OUTLINED_FUNCTION_19_58();
  v80[21] = sub_216E8C8F4(v15, v16, &unk_217064990);
  v80[22] = v4;
  v17 = OUTLINED_FUNCTION_40_2();
  type metadata accessor for PaginatingGridView(v17, v18);
  v19 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(v19, v20, v21, v22);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB150, &qword_217068C50);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  v23 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for CuratorDetailHeaderLockupView(v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_36_41();
  type metadata accessor for CuratorDetailHeaderComponentModel(v27);
  OUTLINED_FUNCTION_29_51();
  sub_216E8C8F4(v28, v29, &unk_21703772C);
  OUTLINED_FUNCTION_14_78();
  swift_getWitnessTable();
  v30 = OUTLINED_FUNCTION_40_2();
  type metadata accessor for SingleItemSectionViewModifier(v30, v31);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB158, &qword_217068C58);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB160, &qword_217068C60);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB168, &unk_217068C68);
  v32 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for TitleHeaderView(v32, v33, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9728, &unk_217060FC0);
  sub_2166D9530(&qword_280E45808, &qword_27CAB9728, &unk_217060FC0, &unk_2170633A4);
  OUTLINED_FUNCTION_16_68();
  swift_getWitnessTable();
  v36 = OUTLINED_FUNCTION_40_2();
  type metadata accessor for SingleItemSectionViewModifier(v36, v37);
  OUTLINED_FUNCTION_4_143();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB170, &qword_217068C78);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB178, &qword_217068C80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB180, &qword_217068C88);
  v38 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for PlaylistTrackListSection(v38, v39, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB188, &qword_217068C90);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_4_143();
  sub_217009564();
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB190, &qword_217068C98);
  v42 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for SocialProfileDetailHeaderLockupView(v42, v43, v44, v45);
  v46 = OUTLINED_FUNCTION_36_41();
  type metadata accessor for SocialProfileDetailHeaderLockup(v46);
  OUTLINED_FUNCTION_28_44();
  sub_216E8C8F4(v47, v48, &unk_2170374D0);
  OUTLINED_FUNCTION_27_51();
  swift_getWitnessTable();
  v49 = OUTLINED_FUNCTION_40_2();
  type metadata accessor for SingleItemSectionViewModifier(v49, v50);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB198, &qword_217068CA0);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A0, &qword_217068CA8);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A8, &qword_217068CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B0, &unk_217068CB8);
  v51 = OUTLINED_FUNCTION_7_112();
  v55 = type metadata accessor for TVMovieDetailHeaderLockupView(v51, v52, v53, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7A8, &qword_21705EDD0);
  v57 = sub_2166D9530(&qword_280E457C0, &qword_27CABB7A8, &qword_21705EDD0, &unk_2170633A4);
  OUTLINED_FUNCTION_23_55();
  v80[16] = v56;
  v80[17] = v55;
  v80[18] = v57;
  v80[19] = &off_282938728;
  v80[20] = swift_getWitnessTable();
  v58 = OUTLINED_FUNCTION_40_2();
  type metadata accessor for SingleItemSectionViewModifier(v58, v59);
  OUTLINED_FUNCTION_4_143();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B8, &qword_217068CC8);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C0, &qword_217068CD0);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  OUTLINED_FUNCTION_9_99();
  sub_217009564();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  sub_21700AD94();
  sub_2170089F4();
  v60 = OUTLINED_FUNCTION_7_112();
  type metadata accessor for CatalogPagePresenter(v60, v61, v62, v63);
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  sub_217009B34();
  OUTLINED_FUNCTION_36_41();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C8, &qword_217068CD8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_0_2();
  v80[15] = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_74();
  v80[13] = swift_getWitnessTable();
  v80[14] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_63();
  v80[11] = WitnessTable;
  v80[12] = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_68();
  v80[9] = v65;
  v80[10] = sub_2166D9530(v66, &qword_27CACB1C8, &qword_217068CD8, v67);
  swift_getWitnessTable();
  v68 = sub_21700B084();
  OUTLINED_FUNCTION_1();
  v70 = v69;
  MEMORY[0x28223BE20](v71);
  v73 = v80 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v76 = v80 - v75;
  v80[6] = v3;
  v80[7] = v4;
  v80[8] = v80[2];
  sub_2170093B4();
  sub_21700B074();
  OUTLINED_FUNCTION_7_1();
  v77 = swift_getWitnessTable();
  sub_2166C24DC(v73, v68, v77);
  v78 = *(v70 + 8);
  v78(v73, v68);
  sub_2166C24DC(v76, v68, v77);
  return (v78)(v76, v68);
}

uint64_t sub_216E6A444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a1;
  v81 = a4;
  v82 = type metadata accessor for SectionHeaderView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB140, &qword_217068C40);
  type metadata accessor for AlbumTrackListSection(255, a2, a3, v6);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB148, &qword_217068C48);
  v8 = type metadata accessor for ArtistDetailHeaderLockupView(255, a2, a3, v7);
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB1B0, &qword_217023310);
  v97 = v8;
  v98 = sub_2166D9530(qword_280E3D9E8, &qword_27CABB1B0, &qword_217023310, &unk_217063310);
  v99 = &off_282938708;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for SingleItemSectionViewModifier(255, &v96);
  sub_2170089F4();
  sub_217009564();
  sub_217009564();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v10 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v11 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v12 = sub_216E8C8F4(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v96 = v9;
  v97 = v10;
  v98 = a2;
  v99 = v11;
  WitnessTable = &off_282938728;
  v101 = v12;
  v102 = a3;
  type metadata accessor for PaginatingGridView(255, &v96);
  type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(255, a2, a3, v13);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB150, &qword_217068C50);
  sub_217009564();
  sub_217009564();
  v15 = type metadata accessor for CuratorDetailHeaderLockupView(255, a2, a3, v14);
  v16 = type metadata accessor for CuratorDetailHeaderComponentModel(255);
  v17 = sub_216E8C8F4(&qword_280E2F350, type metadata accessor for CuratorDetailHeaderComponentModel, &unk_21703772C);
  v18 = swift_getWitnessTable();
  v96 = v16;
  v97 = v15;
  v98 = v17;
  v99 = &off_28293B540;
  WitnessTable = v18;
  type metadata accessor for SingleItemSectionViewModifier(255, &v96);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB158, &qword_217068C58);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB160, &qword_217068C60);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB168, &unk_217068C68);
  v20 = type metadata accessor for TitleHeaderView(255, a2, a3, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9728, &unk_217060FC0);
  v22 = sub_2166D9530(&qword_280E45808, &qword_27CAB9728, &unk_217060FC0, &unk_2170633A4);
  v23 = swift_getWitnessTable();
  v96 = v21;
  v97 = v20;
  v98 = v22;
  v99 = &off_282938728;
  WitnessTable = v23;
  type metadata accessor for SingleItemSectionViewModifier(255, &v96);
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB170, &qword_217068C78);
  sub_217009564();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB178, &qword_217068C80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB180, &qword_217068C88);
  type metadata accessor for PlaylistTrackListSection(255, a2, a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB188, &qword_217068C90);
  sub_217009564();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB190, &qword_217068C98);
  v69 = a2;
  v70 = a3;
  v26 = type metadata accessor for SocialProfileDetailHeaderLockupView(255, a2, a3, v25);
  v27 = type metadata accessor for SocialProfileDetailHeaderLockup(255);
  v28 = sub_216E8C8F4(qword_280E2FEC8, type metadata accessor for SocialProfileDetailHeaderLockup, &unk_2170374D0);
  v29 = swift_getWitnessTable();
  v96 = v27;
  v97 = v26;
  v98 = v28;
  v99 = &off_28293B480;
  WitnessTable = v29;
  type metadata accessor for SingleItemSectionViewModifier(255, &v96);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB198, &qword_217068CA0);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A0, &qword_217068CA8);
  sub_217009564();
  sub_217009564();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A8, &qword_217068CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B0, &unk_217068CB8);
  v31 = type metadata accessor for TVMovieDetailHeaderLockupView(255, a2, a3, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7A8, &qword_21705EDD0);
  v33 = sub_2166D9530(&qword_280E457C0, &qword_27CABB7A8, &qword_21705EDD0, &unk_2170633A4);
  v34 = swift_getWitnessTable();
  v96 = v32;
  v97 = v31;
  v98 = v33;
  v99 = &off_282938728;
  WitnessTable = v34;
  type metadata accessor for SingleItemSectionViewModifier(255, &v96);
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B8, &qword_217068CC8);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C0, &qword_217068CD0);
  sub_217009564();
  sub_217009564();
  sub_217009564();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  v35 = sub_21700AD94();
  v74 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v67 - v36;
  v38 = sub_2170089F4();
  v76 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v82 = &v67 - v39;
  v40 = v69;
  v41 = v70;
  v71 = type metadata accessor for CatalogPagePresenter(255, v69, v70, v42);
  sub_21700F164();
  v75 = sub_217009B34();
  v73 = sub_2170089F4();
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v67 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C8, &qword_217068CD8);
  v67 = sub_2170089F4();
  v79 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v72 = &v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v77 = &v67 - v46;
  v86 = v40;
  v87 = v41;
  v47 = v40;
  v48 = v80;
  v88 = v80;
  v49 = swift_getWitnessTable();
  sub_21700AD84();
  sub_21700B3C4();
  v95 = v49;
  v66 = swift_getWitnessTable();
  sub_21700A9D4();
  (*(v74 + 8))(v37, v35);
  v50 = v40;
  v51 = v41;
  type metadata accessor for CatalogSectionView(0, v50, v41, v52);
  v93 = v66;
  v94 = MEMORY[0x277CDFC60];
  v53 = swift_getWitnessTable();
  swift_getWitnessTable();
  v54 = v68;
  v55 = v82;
  sub_21700A654();
  (*(v76 + 8))(v55, v38);
  sub_21700B3A4();
  v83 = v47;
  v84 = v51;
  v85 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB1D0, &qword_217068CE0);
  v56 = swift_getWitnessTable();
  v91 = v53;
  v92 = v56;
  v57 = v73;
  v58 = swift_getWitnessTable();
  sub_216E8A950();
  v59 = v72;
  sub_21700A2D4();
  (*(v78 + 8))(v54, v57);
  v60 = sub_2166D9530(&qword_280E2ABF0, &qword_27CACB1C8, &qword_217068CD8, MEMORY[0x277CE0328]);
  v89 = v58;
  v90 = v60;
  v61 = v67;
  v62 = swift_getWitnessTable();
  v63 = v77;
  sub_2166C24DC(v59, v61, v62);
  v64 = *(v79 + 8);
  v64(v59, v61);
  sub_2166C24DC(v63, v61, v62);
  return (v64)(v63, v61);
}

uint64_t sub_216E6B24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v165 = a1;
  v176 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB140, &qword_217068C40);
  v175 = type metadata accessor for AlbumTrackListSection(255, a2, a3, v6);
  v166 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB148, &qword_217068C48);
  v8 = type metadata accessor for ArtistDetailHeaderLockupView(255, a2, a3, v7);
  v181 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB1B0, &qword_217023310);
  v182 = v8;
  v171 = v8;
  v183 = sub_2166D9530(qword_280E3D9E8, &qword_27CABB1B0, &qword_217023310, &unk_217063310);
  v184 = &off_282938708;
  WitnessTable = swift_getWitnessTable();
  v172 = type metadata accessor for SingleItemSectionViewModifier(255, &v181);
  v173 = sub_2170089F4();
  v174 = sub_217009564();
  v157 = sub_217009564();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7D0, &qword_2170479B0);
  v10 = type metadata accessor for ArtistLatestReleaseLockupView(255);
  v177 = &unk_2170633A4;
  v11 = sub_2166D9530(&qword_280E457D8, &qword_27CABB7D0, &qword_2170479B0, &unk_2170633A4);
  v12 = sub_216E8C8F4(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView, &unk_217064990);
  v181 = v9;
  v182 = v10;
  v183 = a2;
  v184 = v11;
  WitnessTable = &off_282938728;
  v186 = v12;
  v187 = a3;
  v167 = type metadata accessor for PaginatingGridView(255, &v181);
  v169 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockupView(255, a2, a3, v13);
  v168 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB150, &qword_217068C50);
  v170 = sub_217009564();
  v129 = sub_217009564();
  v15 = type metadata accessor for CuratorDetailHeaderLockupView(255, a2, a3, v14);
  v16 = type metadata accessor for CuratorDetailHeaderComponentModel(255);
  v17 = sub_216E8C8F4(&qword_280E2F350, type metadata accessor for CuratorDetailHeaderComponentModel, &unk_21703772C);
  v18 = swift_getWitnessTable();
  v181 = v16;
  v182 = v15;
  v161 = v15;
  v183 = v17;
  v184 = &off_28293B540;
  WitnessTable = v18;
  v164 = type metadata accessor for SingleItemSectionViewModifier(255, &v181);
  v162 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB158, &qword_217068C58);
  v163 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB160, &qword_217068C60);
  v133 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB168, &unk_217068C68);
  v149 = type metadata accessor for TitleHeaderView(255, a2, a3, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9728, &unk_217060FC0);
  v21 = sub_2166D9530(&qword_280E45808, &qword_27CAB9728, &unk_217060FC0, &unk_2170633A4);
  v22 = swift_getWitnessTable();
  v181 = v20;
  v182 = v149;
  v183 = v21;
  v184 = &off_282938728;
  WitnessTable = v22;
  v151 = type metadata accessor for SingleItemSectionViewModifier(255, &v181);
  v154 = sub_2170089F4();
  v152 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB170, &qword_217068C78);
  v156 = sub_217009564();
  v159 = sub_217009564();
  v127 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB178, &qword_217068C80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB180, &qword_217068C88);
  v23 = a3;
  v155 = type metadata accessor for PlaylistTrackListSection(255, a2, a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB188, &qword_217068C90);
  v158 = sub_217009564();
  v160 = sub_217009564();
  v132 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB190, &qword_217068C98);
  v126 = a3;
  v26 = type metadata accessor for SocialProfileDetailHeaderLockupView(255, a2, a3, v25);
  v27 = type metadata accessor for SocialProfileDetailHeaderLockup(255);
  v28 = sub_216E8C8F4(qword_280E2FEC8, type metadata accessor for SocialProfileDetailHeaderLockup, &unk_2170374D0);
  v29 = swift_getWitnessTable();
  v181 = v27;
  v182 = v26;
  v142 = v26;
  v183 = v28;
  v184 = &off_28293B480;
  WitnessTable = v29;
  v147 = type metadata accessor for SingleItemSectionViewModifier(255, &v181);
  v144 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB198, &qword_217068CA0);
  v146 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A0, &qword_217068CA8);
  v148 = sub_217009564();
  v150 = sub_217009564();
  v153 = sub_217009564();
  v130 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A8, &qword_217068CB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B0, &unk_217068CB8);
  v135 = type metadata accessor for TVMovieDetailHeaderLockupView(255, a2, v23, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7A8, &qword_21705EDD0);
  v32 = sub_2166D9530(&qword_280E457C0, &qword_27CABB7A8, &qword_21705EDD0, &unk_2170633A4);
  v33 = swift_getWitnessTable();
  v181 = v31;
  v182 = v135;
  v183 = v32;
  v184 = &off_282938728;
  WitnessTable = v33;
  v136 = type metadata accessor for SingleItemSectionViewModifier(255, &v181);
  v139 = sub_2170089F4();
  v137 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B8, &qword_217068CC8);
  v138 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C0, &qword_217068CD0);
  v141 = sub_217009564();
  v145 = sub_217009564();
  v143 = sub_217009564();
  v177 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v125 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v140 = &v124 - v36;
  v37 = type metadata accessor for MappedSection(0);
  v38 = (v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = (&v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for SectionHeaderView(0);
  MEMORY[0x28223BE20](v41);
  v134 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = (&v124 - v44);
  v46 = v165;
  sub_216E8C994(v165, v40, type metadata accessor for MappedSection);
  v48 = type metadata accessor for CatalogSectionView(0, a2, v126, v47);
  v49 = *(v46 + *(v48 + 40));
  v50 = sub_216A45CF8();
  v51 = v40[1];
  *v45 = *v40;
  v45[1] = v51;
  sub_216683A80(v40 + v38[8], v45 + v41[6], &qword_27CABDCC0, &qword_217031290);
  v52 = v38[15];
  v45[2] = *(v40 + v38[14]);
  LOBYTE(v38) = *(v40 + v52);
  sub_21700DF14();
  sub_216E8C93C(v40, type metadata accessor for MappedSection);
  v131 = v41;
  v53 = v41[7];
  v128 = v45;
  *(v45 + v53) = v38;
  *(v45 + v41[8]) = v49;
  *(v45 + v41[9]) = v50 & 1;
  v54 = v125;
  sub_216E6C308(v46, v48);
  v55 = sub_216E8AB58();
  v56 = swift_getWitnessTable();
  v180[60] = v55;
  v180[61] = v56;
  v57 = swift_getWitnessTable();
  v58 = sub_216E8AC10();
  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v180[58] = v59;
  v180[59] = v60;
  v61 = swift_getWitnessTable();
  v180[56] = v58;
  v180[57] = v61;
  v62 = swift_getWitnessTable();
  v180[54] = v57;
  v180[55] = v62;
  v63 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v180[52] = v64;
  v180[53] = v65;
  v66 = swift_getWitnessTable();
  v67 = sub_216E8ACF8();
  v180[50] = v66;
  v180[51] = v67;
  v68 = swift_getWitnessTable();
  v180[48] = v63;
  v180[49] = v68;
  v69 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v180[46] = v70;
  v180[47] = v71;
  v72 = swift_getWitnessTable();
  v73 = sub_216E8ADD8();
  v180[44] = v72;
  v180[45] = v73;
  v74 = swift_getWitnessTable();
  v75 = sub_216E8AEC0();
  v180[42] = v74;
  v180[43] = v75;
  v76 = swift_getWitnessTable();
  v77 = sub_216E8AFA8();
  v78 = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v180[40] = v78;
  v180[41] = v79;
  v80 = swift_getWitnessTable();
  v180[38] = v77;
  v180[39] = v80;
  v81 = swift_getWitnessTable();
  v82 = sub_216E8B090();
  v180[36] = v81;
  v180[37] = v82;
  v83 = swift_getWitnessTable();
  v180[34] = v76;
  v180[35] = v83;
  v84 = swift_getWitnessTable();
  v180[32] = v69;
  v180[33] = v84;
  v85 = swift_getWitnessTable();
  v86 = sub_216E8B170();
  v87 = sub_216E8B538();
  v88 = swift_getWitnessTable();
  v89 = sub_216E8B764();
  v180[30] = v88;
  v180[31] = v89;
  v90 = swift_getWitnessTable();
  v180[28] = v87;
  v180[29] = v90;
  v91 = swift_getWitnessTable();
  v180[26] = v86;
  v180[27] = v91;
  v92 = swift_getWitnessTable();
  v93 = sub_216E8B84C();
  v94 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v180[24] = v94;
  v180[25] = v95;
  v96 = swift_getWitnessTable();
  v97 = sub_216E8BB58();
  v180[22] = v96;
  v180[23] = v97;
  v98 = swift_getWitnessTable();
  v99 = sub_216E8BC40();
  v180[20] = v98;
  v180[21] = v99;
  v100 = swift_getWitnessTable();
  v180[18] = v93;
  v180[19] = v100;
  v101 = swift_getWitnessTable();
  v180[16] = v92;
  v180[17] = v101;
  v102 = swift_getWitnessTable();
  v180[14] = v85;
  v180[15] = v102;
  v103 = swift_getWitnessTable();
  v104 = sub_216E8BE9C();
  v105 = sub_216E8C480();
  v106 = swift_getWitnessTable();
  v107 = swift_getWitnessTable();
  v180[12] = v106;
  v180[13] = v107;
  v108 = swift_getWitnessTable();
  v180[10] = v105;
  v180[11] = v108;
  v109 = swift_getWitnessTable();
  v110 = sub_216E8C538();
  v180[8] = v109;
  v180[9] = v110;
  v111 = swift_getWitnessTable();
  v112 = sub_216E8C6D8();
  v180[6] = v111;
  v180[7] = v112;
  v113 = swift_getWitnessTable();
  v180[4] = v104;
  v180[5] = v113;
  v114 = swift_getWitnessTable();
  v180[2] = v103;
  v180[3] = v114;
  v115 = v143;
  v116 = swift_getWitnessTable();
  v117 = v140;
  sub_2166C24DC(v54, v115, v116);
  v118 = v177;
  v119 = v177[1];
  v120 = v54;
  v119(v54, v115);
  v121 = v128;
  v122 = v134;
  sub_216E8C994(v128, v134, type metadata accessor for SectionHeaderView);
  v181 = v122;
  (v118[2])(v120, v117, v115);
  v182 = v120;
  v180[0] = v131;
  v180[1] = v115;
  v178 = sub_216E8C8F4(qword_280E3F988, type metadata accessor for SectionHeaderView, &unk_217068AC8);
  v179 = v116;
  sub_216984F84(&v181, 2, v180);
  v119(v117, v115);
  sub_216E8C93C(v121, type metadata accessor for SectionHeaderView);
  v119(v120, v115);
  return sub_216E8C93C(v122, type metadata accessor for SectionHeaderView);
}

void sub_216E891A4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for CatalogSectionView(0, a1, a2, a3);
  sub_216E89244(&v13);
  v6 = v13;
  v7 = sub_217009CA4();
  v8 = sub_217009CA4();
  sub_216E89304(v5);
  sub_217007F24();
  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 56) = 0;
}

uint64_t sub_216E89244@<X0>(uint64_t *a1@<X8>)
{
  switch(*(v1 + *(type metadata accessor for MappedSection(0) + 44)))
  {
    case 1:
      if (qword_27CAB61B0 != -1)
      {
        swift_once();
      }

      break;
    case 2:
      v4 = [objc_opt_self() systemBackgroundColor];
      result = sub_21700AC44();
      break;
    default:
      result = sub_21700ACD4();
      break;
  }

  *a1 = result;
  return result;
}

BOOL sub_216E89304(_BOOL8 result)
{
  v2 = *(v1 + *(result + 44));
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (!v3)
  {
    return *(v1 + *(result + 40)) == v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_216E8932C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = type metadata accessor for ArtistLatestReleaseLockupView(0);
  sub_2167CD8D8();

  sub_2170082B4();
  v4 = a2 + v3[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v3[7];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  v7 = a2 + v3[9];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v3[10];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v3[11];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  return result;
}

uint64_t sub_216E894B0@<X0>(uint64_t a1@<X8>)
{
  v165 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB0F8, &qword_217068B18);
  OUTLINED_FUNCTION_1_77(v2, &__dst[8]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB100, &qword_217068B20);
  OUTLINED_FUNCTION_1_77(v5, &v171);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v7);
  v8 = type metadata accessor for ContainerPlayableItemsSectionHeaderView(0);
  v9 = OUTLINED_FUNCTION_1_77(v8, __dst);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v11 - v10);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB108, &unk_217068B28);
  OUTLINED_FUNCTION_1();
  v146 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v14);
  v152 = sub_21700D8E4();
  OUTLINED_FUNCTION_1();
  v151 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_70(&v137 - v21);
  v22 = type metadata accessor for DefaultSectionHeaderView(0);
  v23 = OUTLINED_FUNCTION_1_77(v22, &v168 + 8);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v25 - v24);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1628, &qword_21703EB40);
  OUTLINED_FUNCTION_1();
  v141 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB110, &unk_217068B38);
  OUTLINED_FUNCTION_1_77(v29, &__dst[64]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v32 = type metadata accessor for DefaultSectionHeader(0);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v34 - v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8, &unk_21702C540);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v37 = &v137 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB118, &qword_217068B48);
  OUTLINED_FUNCTION_1_77(v38, &__dst[72]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB120, &qword_217068B50);
  OUTLINED_FUNCTION_1_77(v41, &__dst[40]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB128, &qword_217068B58);
  OUTLINED_FUNCTION_1_77(v44, &__dst[80]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB130, &qword_217068B60);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v48);
  v50 = &v137 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB138, &unk_217068B68);
  OUTLINED_FUNCTION_1_77(v51, &v172);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v53);
  v54 = &qword_27CABDCC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  v57 = &v137 - v56;
  v58 = _s7SectionV6HeaderVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7();
  v62 = v61 - v60;
  v63 = type metadata accessor for SectionHeaderView(0);
  sub_216683A80(v1 + v63[6], v57, &qword_27CABDCC0, &qword_217031290);
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) != 1)
  {
    sub_216E8CB00(v57, v62, _s7SectionV6HeaderVMa);
    v65 = *(v1 + v63[7]);
    v66 = *(v47 + 48);
    sub_216683A80(v62 + *(v58 + 20), v50, &qword_27CABDCB8, &unk_21702C540);
    v50[v66] = v65;
    v57 = v50;
    if (v65 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_216E8A700();
      v54 = v161;
      sub_217009554();
      OUTLINED_FUNCTION_31_51(v54, v170);
      OUTLINED_FUNCTION_32_35();
      swift_storeEnumTagMultiPayload();
      sub_216E8A674();
      sub_216E8A7E4();
      v67 = v163;
      OUTLINED_FUNCTION_6_118();
      sub_217009554();
      OUTLINED_FUNCTION_191();
      sub_216697664(v68, v69, v70);
      OUTLINED_FUNCTION_0_244();
      sub_216E8C93C(v62, v71);
      v72 = &qword_27CABDCB8;
      v73 = &unk_21702C540;
    }

    else
    {
      v139 = v62;
      v74 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
      if (__swift_getEnumTagSinglePayload(v50, 1, v74) != 1)
      {
        sub_216683A80(v50, v37, &qword_27CABDCB8, &unk_21702C540);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 3)
        {
          v138 = v50;
          memcpy(__dst, v37, sizeof(__dst));
          sub_216E8A8D0(__dst, &v167);
          sub_21680E688(&v167, v154);
          v168 = 0u;
          v167 = 0u;
          v96 = *v1;
          v95 = v1[1];
          v166[3] = MEMORY[0x277D837D0];
          v166[0] = v96;
          v166[1] = v95;
          sub_21700DF14();
          v97 = v150;
          sub_21700D8B4();
          OUTLINED_FUNCTION_42_33(&v167);
          OUTLINED_FUNCTION_42_33(v166);
          v98 = v1[2];
          *(&v168 + 1) = MEMORY[0x277D83B88];
          *&v167 = v98;
          OUTLINED_FUNCTION_46_31();
          sub_21700D8C4();
          v99 = *(v151 + 8);
          v100 = v152;
          v99(v97, v152);
          OUTLINED_FUNCTION_42_33(&v167);
          if (v65 == 62)
          {
            v101 = 0;
            v167 = 0uLL;
            *&v168 = 0;
          }

          else
          {
            LOBYTE(v167) = v65;
            v101 = &_s7SectionV8ItemKindON;
          }

          v54 = v165;
          v57 = v164;
          v67 = v163;
          *(&v168 + 1) = v101;
          OUTLINED_FUNCTION_46_31();
          v114 = v144;
          v115 = v153;
          sub_21700D8C4();
          v99(v115, v100);
          sub_216697664(&v167, &unk_27CABF7A0, &unk_217014D20);
          OUTLINED_FUNCTION_26_48();
          v165 = sub_216E8C8F4(v116, v117, &unk_21701B508);
          v118 = v99;
          v119 = v155;
          v120 = v157;
          v121 = v154;
          sub_21700A204();
          v118(v114, v100);
          sub_216E8C93C(v121, type metadata accessor for ContainerPlayableItemsSectionHeaderView);
          v122 = v146;
          v123 = v158;
          (*(v146 + 16))(v159, v119, v158);
          swift_storeEnumTagMultiPayload();
          *&v167 = v120;
          *(&v167 + 1) = v165;
          OUTLINED_FUNCTION_2_5();
          swift_getOpaqueTypeConformance2();
          v124 = v160;
          sub_217009554();
          OUTLINED_FUNCTION_31_51(v124, v170);
          OUTLINED_FUNCTION_32_35();
          swift_storeEnumTagMultiPayload();
          sub_216E8A674();
          sub_216E8A7E4();
          OUTLINED_FUNCTION_6_118();
          sub_217009554();
          OUTLINED_FUNCTION_191();
          sub_216697664(v125, v126, v127);
          (*(v122 + 8))(v155, v123);
          sub_21680E880(__dst);
          OUTLINED_FUNCTION_0_244();
          sub_216E8C93C(v139, v128);
          sub_216697664(v138, &qword_27CABDCB8, &unk_21702C540);
          goto LABEL_17;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v138 = v50;
          v76 = v156;
          sub_216E8CB00(v37, v156, type metadata accessor for DefaultSectionHeader);
          if (*(v1 + v63[9]) == 1)
          {
            v77 = v142;
            sub_216E8C994(v76, v142, type metadata accessor for DefaultSectionHeader);
            v78 = v148;
            v79 = v148[5];
            *(v77 + v79) = swift_getKeyPath();
            v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
            OUTLINED_FUNCTION_95_9(v80);
            v81 = v77 + v78[6];
            *v81 = swift_getKeyPath();
            *(v81 + 8) = 0;
            *(v81 + 16) = 0;
            *(v81 + 24) = 0;
            *(v81 + 32) = 0;
            v82 = v78[7];
            *(v77 + v82) = swift_getKeyPath();
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
            OUTLINED_FUNCTION_95_9(v83);
            v84 = v78[8];
            *(v77 + v84) = swift_getKeyPath();
            v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0, &unk_21703C1D0);
            OUTLINED_FUNCTION_95_9(v85);
            *__dst = 0x402E000000000000;
            sub_2167CD8D8();
            sub_2170082B4();
            OUTLINED_FUNCTION_43_32();
            OUTLINED_FUNCTION_43_32();
            memset(__dst, 0, 32);
            v87 = *v1;
            v86 = v1[1];
            *(&v168 + 1) = MEMORY[0x277D837D0];
            *&v167 = v87;
            *(&v167 + 1) = v86;
            sub_21700DF14();
            v88 = v150;
            sub_21700D8B4();
            OUTLINED_FUNCTION_42_33(__dst);
            OUTLINED_FUNCTION_42_33(&v167);
            v89 = v1[2];
            *&__dst[24] = MEMORY[0x277D83B88];
            *__dst = v89;
            OUTLINED_FUNCTION_46_31();
            sub_21700D8C4();
            v90 = *(v151 + 8);
            v91 = v88;
            v92 = v152;
            v90(v91, v152);
            OUTLINED_FUNCTION_42_33(__dst);
            v93 = v149;
            if (v65 == 62)
            {
              v94 = 0;
              memset(__dst, 0, 24);
            }

            else
            {
              __dst[0] = v65;
              v94 = &_s7SectionV8ItemKindON;
            }

            v113 = v145;
            *&__dst[24] = v94;
            OUTLINED_FUNCTION_46_31();
            v129 = v143;
            v130 = v147;
            sub_21700D8C4();
            v90(v130, v92);
            sub_216697664(__dst, &unk_27CABF7A0, &unk_217014D20);
            sub_216E8C8F4(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView, &unk_217037970);
            v131 = v140;
            sub_21700A204();
            v90(v129, v92);
            sub_216E8C93C(v77, type metadata accessor for DefaultSectionHeaderView);
            (*(v141 + 32))(v93, v131, v113);
            v111 = 0;
            v112 = v139;
          }

          else
          {
            v111 = 1;
            v112 = v139;
            v93 = v149;
            v113 = v145;
          }

          __swift_storeEnumTagSinglePayload(v93, v111, 1, v113);
          OUTLINED_FUNCTION_31_51(v93, &__dst[48]);
          swift_storeEnumTagMultiPayload();
          sub_216E8A700();
          v132 = v161;
          sub_217009554();
          v54 = &qword_217068B58;
          sub_216683A80(v132, v162, &qword_27CACB128, &qword_217068B58);
          OUTLINED_FUNCTION_32_35();
          swift_storeEnumTagMultiPayload();
          v57 = sub_216E8A674();
          sub_216E8A7E4();
          v67 = v163;
          OUTLINED_FUNCTION_6_118();
          sub_217009554();
          sub_216697664(v132, &qword_27CACB128, &qword_217068B58);
          OUTLINED_FUNCTION_191();
          sub_216697664(v133, v134, v135);
          sub_216E8C93C(v156, type metadata accessor for DefaultSectionHeader);
          OUTLINED_FUNCTION_0_244();
          sub_216E8C93C(v112, v136);
          v72 = &qword_27CABDCB8;
          v73 = &unk_21702C540;
          v109 = v138;
          goto LABEL_16;
        }

        sub_216E8C93C(v37, _s7SectionV6HeaderV12HeaderLockupOMa);
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_26_48();
      v104 = sub_216E8C8F4(v102, v103, &unk_21701B508);
      *__dst = v157;
      *&__dst[8] = v104;
      OUTLINED_FUNCTION_2_5();
      swift_getOpaqueTypeConformance2();
      v54 = v160;
      sub_217009554();
      OUTLINED_FUNCTION_31_51(v54, v170);
      OUTLINED_FUNCTION_32_35();
      swift_storeEnumTagMultiPayload();
      sub_216E8A674();
      sub_216E8A7E4();
      v67 = v163;
      OUTLINED_FUNCTION_6_118();
      sub_217009554();
      OUTLINED_FUNCTION_191();
      sub_216697664(v105, v106, v107);
      OUTLINED_FUNCTION_0_244();
      sub_216E8C93C(v139, v108);
      v72 = &qword_27CACB130;
      v73 = &qword_217068B60;
    }

    v109 = v50;
LABEL_16:
    sub_216697664(v109, v72, v73);
    OUTLINED_FUNCTION_45_30();
LABEL_17:
    sub_21676269C(v67, v54);
    v64 = 0;
    return __swift_storeEnumTagSinglePayload(v54, v64, 1, v57);
  }

  sub_216697664(v57, &qword_27CABDCC0, &qword_217031290);
  OUTLINED_FUNCTION_45_30();
  return __swift_storeEnumTagSinglePayload(v54, v64, 1, v57);
}

unint64_t sub_216E8A674()
{
  result = qword_280E2AA00;
  if (!qword_280E2AA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB128, &qword_217068B58);
    sub_216E8A700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA00);
  }

  return result;
}

unint64_t sub_216E8A700()
{
  result = qword_280E2A6B8;
  if (!qword_280E2A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB110, &unk_217068B38);
    type metadata accessor for DefaultSectionHeaderView(255);
    sub_216E8C8F4(qword_280E36B80, type metadata accessor for DefaultSectionHeaderView, &unk_217037970);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A6B8);
  }

  return result;
}

unint64_t sub_216E8A7E4()
{
  result = qword_280E2AA28;
  if (!qword_280E2AA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB100, &qword_217068B20);
    type metadata accessor for ContainerPlayableItemsSectionHeaderView(255);
    sub_216E8C8F4(&qword_280E2D9F8, type metadata accessor for ContainerPlayableItemsSectionHeaderView, &unk_21701B508);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA28);
  }

  return result;
}

unint64_t sub_216E8A950()
{
  result = qword_280E2AFA0;
  if (!qword_280E2AFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1D0, &qword_217068CE0);
    sub_216E8A9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFA0);
  }

  return result;
}

unint64_t sub_216E8A9DC()
{
  result = qword_280E2B100;
  if (!qword_280E2B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1D8, &qword_217068CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B100);
  }

  return result;
}

uint64_t sub_216E8AA60()
{
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.976470588 green:0.976470588 blue:0.996078431 alpha:1.0];
  v0 = sub_21700AC44();
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  v2 = sub_21700AC44();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);

  sub_216847A1C(sub_216847A14, v3);
  v5 = sub_21700AC44();

  qword_27CB22AF8 = v5;
  return result;
}

unint64_t sub_216E8AB58()
{
  result = qword_280E2B298;
  if (!qword_280E2B298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB140, &qword_217068C40);
    sub_216B81B24();
    sub_2166D9530(&qword_280E31140, &qword_27CACB1E0, &qword_217068CF0, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B298);
  }

  return result;
}

unint64_t sub_216E8AC10()
{
  result = qword_280E2B278;
  if (!qword_280E2B278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB148, &qword_217068C48);
    sub_216E8C8F4(qword_280E36E58, type metadata accessor for AnimatedTextListItemView, &unk_21704D244);
    sub_2166D9530(qword_280E31168, &qword_27CACB1E8, &qword_217068CF8, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B278);
  }

  return result;
}

unint64_t sub_216E8ACF8()
{
  result = qword_280E2AB18;
  if (!qword_280E2AB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB150, &qword_217068C50);
    sub_2166D9530(&qword_280E2BD28, &qword_27CACB1F0, &qword_217068D00, &unk_21701D0D8);
    sub_2166D9530(&qword_280E2BCB0, &qword_27CACB1F8, &qword_217068D08, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB18);
  }

  return result;
}

unint64_t sub_216E8ADD8()
{
  result = qword_280E2B248;
  if (!qword_280E2B248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB158, &qword_217068C58);
    sub_216E8C8F4(qword_280E2EC98, type metadata accessor for ContainerDetailTrackListFooterView, &unk_2170239C0);
    sub_2166D9530(&qword_280E310F8, &qword_27CACB200, &qword_217068D10, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B248);
  }

  return result;
}

unint64_t sub_216E8AEC0()
{
  result = qword_280E2AB90;
  if (!qword_280E2AB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB160, &qword_217068C60);
    sub_216E8C8F4(qword_280E3C4F0, type metadata accessor for EmptyStateLockupView, &unk_217046B98);
    sub_2166D9530(&qword_280E2BD08, &qword_27CACB208, &qword_217068D18, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB90);
  }

  return result;
}

unint64_t sub_216E8AFA8()
{
  result = qword_280E2B260;
  if (!qword_280E2B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB168, &unk_217068C68);
    sub_216E8C8F4(qword_280E35938, type metadata accessor for GroupedTextListLockupView, &unk_2170429CC);
    sub_2166D9530(&qword_280E31110, &qword_27CACB210, &qword_217068D20, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B260);
  }

  return result;
}

unint64_t sub_216E8B090()
{
  result = qword_280E2AAF0;
  if (!qword_280E2AAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB170, &qword_217068C78);
    sub_2166D9530(&qword_280E2BCF8, &qword_27CACB218, &qword_217068D28, &unk_21701D0D8);
    sub_2166D9530(&qword_280E2BCE8, &qword_27CACB220, &qword_217068D30, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAF0);
  }

  return result;
}

unint64_t sub_216E8B170()
{
  result = qword_280E2A988;
  if (!qword_280E2A988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB178, &qword_217068C80);
    sub_216E8B1FC();
    sub_216E8B458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A988);
  }

  return result;
}

unint64_t sub_216E8B1FC()
{
  result = qword_280E2AAB0;
  if (!qword_280E2AAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB228, &qword_217068D38);
    sub_216E8B288();
    sub_216E8B370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAB0);
  }

  return result;
}

unint64_t sub_216E8B288()
{
  result = qword_280E2B2D8;
  if (!qword_280E2B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB230, &qword_217068D40);
    sub_216E8C8F4(qword_280E40FF8, type metadata accessor for InlineUpsellView, &unk_21702D174);
    sub_2166D9530(&qword_280E31130, &qword_27CACB238, &qword_217068D48, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2D8);
  }

  return result;
}

unint64_t sub_216E8B370()
{
  result = qword_280E2B2D0;
  if (!qword_280E2B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB240, &qword_217068D50);
    sub_216E8C8F4(&qword_280E400E0, type metadata accessor for LandingUpsellView, &unk_217068020);
    sub_2166D9530(&qword_280E31128, &qword_27CACB248, &qword_217068D58, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2D0);
  }

  return result;
}

unint64_t sub_216E8B458()
{
  result = qword_280E2AAE0;
  if (!qword_280E2AAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB250, &qword_217068D60);
    sub_2166D9530(&qword_280E2BCC0, &qword_27CACB258, &qword_217068D68, &unk_21701D0D8);
    sub_2166D9530(qword_280E2BD38, &qword_27CACB260, &qword_217068D70, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAE0);
  }

  return result;
}

unint64_t sub_216E8B538()
{
  result = qword_280E2AA98;
  if (!qword_280E2AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB180, &qword_217068C88);
    sub_216E8B5C4();
    sub_216E8B6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA98);
  }

  return result;
}

unint64_t sub_216E8B5C4()
{
  result = qword_280E2B280;
  if (!qword_280E2B280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB268, &qword_217068D78);
    sub_216E8C8F4(qword_280E38600, type metadata accessor for ExpandableParagraphView, &unk_217034CC8);
    sub_2166D9530(&qword_280E31108, &qword_27CACB270, &qword_217068D80, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B280);
  }

  return result;
}

unint64_t sub_216E8B6AC()
{
  result = qword_280E2B268;
  if (!qword_280E2B268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB278, &qword_217068D88);
    sub_216C74104();
    sub_2166D9530(&qword_280E31138, &qword_27CACB280, &qword_217068D90, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B268);
  }

  return result;
}

unint64_t sub_216E8B764()
{
  result = qword_280E2B2B8;
  if (!qword_280E2B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB188, &qword_217068C90);
    sub_216E8C8F4(qword_280E3D4E0, type metadata accessor for PopoverSelectorView, &unk_21701E804);
    sub_2166D9530(&qword_280E31120, &qword_27CACB288, &qword_217068D98, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2B8);
  }

  return result;
}

unint64_t sub_216E8B84C()
{
  result = qword_280E2A9A8;
  if (!qword_280E2A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB190, &qword_217068C98);
    sub_216E8B8D8();
    sub_216E8BA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9A8);
  }

  return result;
}

unint64_t sub_216E8B8D8()
{
  result = qword_280E2AB10;
  if (!qword_280E2AB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB290, &qword_217068DA0);
    sub_2166D9530(&qword_280E2BD20, &qword_27CACB298, &qword_217068DA8, &unk_21701D0D8);
    sub_216E8B990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB10);
  }

  return result;
}

unint64_t sub_216E8B990()
{
  result = qword_280E2B250;
  if (!qword_280E2B250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB2A0, &qword_217068DB0);
    sub_216E8C8F4(qword_280E31DC0, type metadata accessor for SearchQueryContextLockupView, &unk_21706E270);
    sub_2166D9530(&qword_280E31100, &qword_27CACB2A8, &qword_217068DB8, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B250);
  }

  return result;
}

unint64_t sub_216E8BA78()
{
  result = qword_280E2AB00;
  if (!qword_280E2AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB2B0, &qword_217068DC0);
    sub_2166D9530(&qword_280E2BD10, &qword_27CACB2B8, &qword_217068DC8, &unk_21701D0D8);
    sub_2166D9530(&qword_280E2BCC8, &qword_27CACB2C0, &qword_217068DD0, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB00);
  }

  return result;
}

unint64_t sub_216E8BB58()
{
  result = qword_280E2B240;
  if (!qword_280E2B240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB198, &qword_217068CA0);
    sub_216E8C8F4(&qword_280E2EA80, type metadata accessor for SocialProfileFindFriendsButtonView, &unk_217029360);
    sub_2166D9530(&qword_280E310E8, &qword_27CACB2C8, &qword_217068DD8, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B240);
  }

  return result;
}

unint64_t sub_216E8BC40()
{
  result = qword_280E2AAB8;
  if (!qword_280E2AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A0, &qword_217068CA8);
    sub_216E8BCCC();
    sub_216E8BDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAB8);
  }

  return result;
}

unint64_t sub_216E8BCCC()
{
  result = qword_280E2B308;
  if (!qword_280E2B308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB2D0, &qword_217068DE0);
    sub_216E8C8F4(&qword_280E47E48, type metadata accessor for SocialProfileViewFollowRequestsView, &unk_217039B30);
    sub_2166D9530(&qword_280E31160, &qword_27CACB2D8, &qword_217068DE8, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B308);
  }

  return result;
}

unint64_t sub_216E8BDB4()
{
  result = qword_280E2B238;
  if (!qword_280E2B238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB2E0, &qword_217068DF0);
    sub_216E8C8F4(qword_280E2CD20, type metadata accessor for SocialProfileFollowRequestResponseHeaderView, &unk_21706FE60);
    sub_2166D9530(&qword_280E310F0, &qword_27CACB2E8, &qword_217068DF8, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B238);
  }

  return result;
}

unint64_t sub_216E8BE9C()
{
  result = qword_280E2A920;
  if (!qword_280E2A920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1A8, &qword_217068CB0);
    sub_216E8BF28();
    sub_216E8C174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A920);
  }

  return result;
}

unint64_t sub_216E8BF28()
{
  result = qword_280E2A9A0;
  if (!qword_280E2A9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB2F0, &qword_217068E00);
    sub_216E8BFB4();
    sub_216E8C094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9A0);
  }

  return result;
}

unint64_t sub_216E8BFB4()
{
  result = qword_280E2AAE8;
  if (!qword_280E2AAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB2F8, &qword_217068E08);
    sub_2166D9530(&qword_280E2BCE0, &qword_27CACB300, &qword_217068E10, &unk_21701D0D8);
    sub_2166D9530(&qword_280E2BCD8, &qword_27CACB308, &qword_217068E18, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAE8);
  }

  return result;
}

unint64_t sub_216E8C094()
{
  result = qword_280E2AB08;
  if (!qword_280E2AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB310, &qword_217068E20);
    sub_2166D9530(&qword_280E2BD18, &qword_27CACB318, &qword_217068E28, &unk_21701D0D8);
    sub_2166D9530(&qword_280E2BCD0, &qword_27CACB320, &qword_217068E30, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB08);
  }

  return result;
}

unint64_t sub_216E8C174()
{
  result = qword_280E2A980;
  if (!qword_280E2A980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB328, &qword_217068E38);
    sub_216E8C200();
    sub_216E8C3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A980);
  }

  return result;
}

unint64_t sub_216E8C200()
{
  result = qword_280E2AAA0;
  if (!qword_280E2AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB330, &qword_217068E40);
    sub_216E8C2B8();
    sub_2166D9530(&qword_280E2BCB8, &qword_27CACB348, &qword_217068E58, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAA0);
  }

  return result;
}

unint64_t sub_216E8C2B8()
{
  result = qword_280E2B2B0;
  if (!qword_280E2B2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB338, &qword_217068E48);
    sub_216E8C8F4(qword_280E3CFA0, type metadata accessor for SuperHeroLockupView, &unk_21703CAA0);
    sub_2166D9530(&qword_280E31150, &qword_27CACB340, &qword_217068E50, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2B0);
  }

  return result;
}

unint64_t sub_216E8C3A0()
{
  result = qword_280E2AAF8;
  if (!qword_280E2AAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB350, &unk_217068E60);
    sub_2166D9530(&qword_280E2BD00, &qword_27CAC7ED8, &qword_21705B920, &unk_21701D0D8);
    sub_2166D9530(&qword_280E2BD30, &qword_27CACB358, &qword_217068E70, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAF8);
  }

  return result;
}

unint64_t sub_216E8C480()
{
  result = qword_280E2B288;
  if (!qword_280E2B288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B0, &unk_217068CB8);
    sub_216A134F8();
    sub_2166D9530(&qword_280E31148, &qword_27CACB360, &qword_217068E78, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B288);
  }

  return result;
}

unint64_t sub_216E8C538()
{
  result = qword_280E2AA90;
  if (!qword_280E2AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1B8, &qword_217068CC8);
    sub_216E8C5F0();
    sub_2166D9530(&qword_280E2BCF0, &qword_27CACB378, &qword_217068E90, &unk_21701D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA90);
  }

  return result;
}

unint64_t sub_216E8C5F0()
{
  result = qword_280E2B258;
  if (!qword_280E2B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB368, &qword_217068E80);
    sub_216E8C8F4(qword_280E32AB8, type metadata accessor for VerticalArtworkListItemView, &unk_217067D70);
    sub_2166D9530(&qword_280E31158, &qword_27CACB370, &qword_217068E88, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B258);
  }

  return result;
}

unint64_t sub_216E8C6D8()
{
  result = qword_280E2AAA8;
  if (!qword_280E2AAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB1C0, &qword_217068CD0);
    sub_216E8C764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAA8);
  }

  return result;
}

unint64_t sub_216E8C764()
{
  result = qword_280E2B2C0;
  if (!qword_280E2B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB380, &qword_217068E98);
    sub_216E8C8F4(qword_280E3DED8, type metadata accessor for GradientListRowView, &unk_217050000);
    sub_2166D9530(&qword_280E31118, &qword_27CACB388, &qword_217068EA0, &unk_21702FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2C0);
  }

  return result;
}

unint64_t sub_216E8C84C()
{
  result = qword_27CACB4F0;
  if (!qword_27CACB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB4F0);
  }

  return result;
}

unint64_t sub_216E8C8A0()
{
  result = qword_27CACB520;
  if (!qword_27CACB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB520);
  }

  return result;
}

uint64_t sub_216E8C8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216E8C93C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216E8C994(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216E8C9F0()
{
  result = qword_280E2A948;
  if (!qword_280E2A948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB5F8, &qword_217069118);
    sub_216E8CA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A948);
  }

  return result;
}

unint64_t sub_216E8CA74()
{
  result = qword_280E2A950;
  if (!qword_280E2A950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACB138, &unk_217068B68);
    sub_216E8A674();
    sub_216E8A7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A950);
  }

  return result;
}

uint64_t sub_216E8CB00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t static LibraryImportParameters.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v36 = a1[7];
  v35 = a1[8];
  v33 = a1[9];
  v32 = a1[10];
  v29 = a1[11];
  v28 = a1[12];
  v25 = a1[13];
  v24 = a1[14];
  v20 = a1[16];
  v21 = a1[15];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[7];
  v34 = a2[8];
  v30 = a2[10];
  v31 = a2[9];
  v27 = a2[11];
  v7 = *a1 == *a2 && a1[1] == a2[1];
  v26 = a2[12];
  v22 = a2[14];
  v23 = a2[13];
  v18 = a2[16];
  v19 = a2[15];
  if (!v7 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v4 && v3 == v5;
  if (!v8 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  sub_216E20CEC();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_216E20CEC();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_216E20CEC();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v36 == v6 && v35 == v34;
  if (!v12 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  v13 = v33 == v31 && v32 == v30;
  if (!v13 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  v14 = v29 == v27 && v28 == v26;
  if (!v14 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  v15 = v25 == v23 && v24 == v22;
  if (!v15 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  if (v21 == v19 && v20 == v18)
  {
    return 1;
  }

  return sub_21700F7D4();
}

uint64_t sub_216E8CD78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000;
    if (v6 || (sub_21700F7D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69616D6F44707061 && a2 == 0xEA0000000000736ELL;
      if (v7 || (sub_21700F7D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616D6F4468747561 && a2 == 0xEB00000000736E69;
        if (v8 || (sub_21700F7D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463657269646572 && a2 == 0xEF736E69616D6F44;
          if (v9 || (sub_21700F7D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x800000021708F740 == a2;
            if (v10 || (sub_21700F7D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000021708F760 == a2;
              if (v11 || (sub_21700F7D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x800000021708F780 == a2;
                if (v12 || (sub_21700F7D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x800000021708F7A0 == a2;
                  if (v13 || (sub_21700F7D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x736F487472617473 && a2 == 0xE900000000000074)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_21700F7D4();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_216E8D0A0(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x4449746E65696C63;
      break;
    case 2:
      result = 0x69616D6F44707061;
      break;
    case 3:
      result = 0x616D6F4468747561;
      break;
    case 4:
      result = 0x7463657269646572;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x736F487472617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216E8D1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216E8CD78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216E8D218(uint64_t a1)
{
  v2 = sub_216E8D554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216E8D254(uint64_t a1)
{
  v2 = sub_216E8D554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LibraryImportParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB600, &unk_217069150);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = v1[2];
  v45 = v1[3];
  v46 = v9;
  v10 = v1[4];
  v43 = v1[5];
  v44 = v10;
  v11 = v1[6];
  v41 = v1[7];
  v42 = v11;
  v12 = v1[8];
  v13 = v1[9];
  v14 = v1[11];
  v39 = v1[10];
  v40 = v12;
  v36 = v14;
  v15 = v1[13];
  v37 = v1[12];
  v38 = v13;
  v16 = v1[14];
  v17 = v1[15];
  v34 = v15;
  v35 = v16;
  v18 = v1[16];
  v32 = v17;
  v33 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216E8D554();
  sub_21700F974();
  LOBYTE(v49) = 0;
  v19 = v47;
  sub_21700F724();
  if (!v19)
  {
    v21 = v43;
    v20 = v44;
    v22 = v41;
    v23 = v42;
    OUTLINED_FUNCTION_5_136(1);
    OUTLINED_FUNCTION_9_100(v46, v45, v24);
    v49 = v20;
    v48 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    sub_216E8DB18(&qword_27CACB610, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_3_169();
    v49 = v21;
    v48 = 3;
    OUTLINED_FUNCTION_3_169();
    v49 = v23;
    v48 = 4;
    OUTLINED_FUNCTION_3_169();
    OUTLINED_FUNCTION_5_136(5);
    OUTLINED_FUNCTION_9_100(v22, v40, v25);
    OUTLINED_FUNCTION_5_136(6);
    OUTLINED_FUNCTION_9_100(v38, v39, v26);
    OUTLINED_FUNCTION_5_136(7);
    OUTLINED_FUNCTION_9_100(v36, v37, v27);
    OUTLINED_FUNCTION_5_136(8);
    OUTLINED_FUNCTION_9_100(v34, v35, v28);
    OUTLINED_FUNCTION_5_136(9);
    OUTLINED_FUNCTION_9_100(v32, v33, v29);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_216E8D554()
{
  result = qword_27CACB608;
  if (!qword_27CACB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB608);
  }

  return result;
}

uint64_t LibraryImportParameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB618, &qword_217069160);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216E8D554();
  sub_21700F964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = a2;
  LOBYTE(v37[0]) = 0;
  OUTLINED_FUNCTION_4_144();
  v6 = sub_21700F664();
  v34 = v7;
  v24 = OUTLINED_FUNCTION_1_206(1);
  v33 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
  sub_216E8DB18(&qword_27CACB620, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_2_174();
  OUTLINED_FUNCTION_4_144();
  sub_21700F6A4();
  v32 = v37[0];
  OUTLINED_FUNCTION_2_174();
  OUTLINED_FUNCTION_4_144();
  sub_21700F6A4();
  v31 = v37[0];
  LOBYTE(v36[0]) = 4;
  OUTLINED_FUNCTION_2_174();
  OUTLINED_FUNCTION_4_144();
  sub_21700F6A4();
  v30 = v37[0];
  v9 = OUTLINED_FUNCTION_1_206(5);
  v28 = v10;
  v11 = OUTLINED_FUNCTION_1_206(6);
  v29 = v12;
  v23 = v11;
  v22 = OUTLINED_FUNCTION_1_206(7);
  v27 = v13;
  v21 = OUTLINED_FUNCTION_1_206(8);
  v26 = v14;
  v38 = 9;
  OUTLINED_FUNCTION_4_144();
  v15 = sub_21700F664();
  v17 = v16;
  v18 = OUTLINED_FUNCTION_8_109();
  v19(v18);
  v36[0] = v6;
  v36[1] = v34;
  v36[2] = v24;
  v36[3] = v33;
  v36[4] = v32;
  v36[5] = v31;
  v36[6] = v30;
  v36[7] = v9;
  v36[8] = v28;
  v36[9] = v23;
  v36[10] = v29;
  v36[11] = v22;
  v36[12] = v27;
  v36[13] = v21;
  v36[14] = v26;
  v36[15] = v15;
  v36[16] = v17;
  memcpy(v25, v36, 0x88uLL);
  sub_2167E705C(v36, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v37[0] = v6;
  v37[1] = v34;
  v37[2] = v24;
  v37[3] = v33;
  v37[4] = v32;
  v37[5] = v31;
  v37[6] = v30;
  v37[7] = v9;
  v37[8] = v28;
  v37[9] = v23;
  v37[10] = v29;
  v37[11] = v22;
  v37[12] = v27;
  v37[13] = v21;
  v37[14] = v26;
  v37[15] = v15;
  v37[16] = v17;
  return sub_216B6767C(v37);
}

uint64_t sub_216E8DB18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8, &unk_217017160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216E8DBD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_216E8DC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryImportParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216E8DD68()
{
  result = qword_27CACB628;
  if (!qword_27CACB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB628);
  }

  return result;
}

unint64_t sub_216E8DDC0()
{
  result = qword_27CACB630;
  if (!qword_27CACB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACB630);
  }

  return result;
}

unint64_t sub_216E8DE18()
{
  result = qword_27CACB638[0];
  if (!qword_27CACB638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CACB638);
  }

  return result;
}

uint64_t sub_216E8DE6C()
{
  result = sub_21700E4D4();
  qword_280E29C80 = result;
  return result;
}

uint64_t sub_216E8DEC8()
{
  result = sub_21700E4D4();
  qword_280E29CA8 = result;
  return result;
}

__n128 sub_216E8DF4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = *(a3 + 32);
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_216E8DF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216E8DFA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_216E8DFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216E8E048(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = type metadata accessor for SectionContent(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v78 = v6;
  v77 = _s7SectionVMa(0);
  OUTLINED_FUNCTION_16();
  v75 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v76 = v9;
  v10 = *(a2 + 16);
  v11 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  OUTLINED_FUNCTION_16();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v74 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  (*(v13 + 16))(v16, a1, v11, v25);
  if (__swift_getEnumTagSinglePayload(v16, 1, v10) == 1)
  {
    (*(v13 + 8))(v16, v11);
    sub_2167EB34C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  (*(v18 + 32))(v27, v16, v10);
  v28 = v10;
  v71 = *(v18 + 16);
  v71(v23, v27, v10);
  v72 = *(a2 + 24);
  type metadata accessor for SectionChangeInstructionPerformer(0, v10, v72, v29);
  v30 = *v81;
  v31 = v81[1];
  v32 = v79;
  sub_216AD05C8();
  if (v32)
  {
    v34 = *(v18 + 8);
    v34(v23, v10);
    v34(v27, v10);
    return;
  }

  v66 = v18 + 16;
  v67 = v30;
  v69 = v18;
  v70 = v27;
  v79 = v23;
  v35 = *(v72 + 16);
  v36 = *(v35 + 32);
  v37 = v27;
  v68 = v35;
  v38 = v33;
  v64 = v35 + 32;
  v65 = v31;
  v63 = v36;
  v39 = (v36)(v10);
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v37 = v39;
    v28 = v78;
    if (v38 < *(v39 + 16))
    {
      v31 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v40 = *(v75 + 72) * v38;
      sub_21678389C(v39 + v31 + v40, v76);

      sub_2169B5E64();
      v81 = v40;
      v37 = (*(v68 + 48))(v80, v10);
      v28 = v41;
      v42 = *v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v42;
      v75 = 0;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  sub_216E15A14();
  v42 = v60;
  *v28 = v60;
LABEL_8:
  v44 = v74;
  v45 = v67;
  v62 = v38;
  if (v38 >= *(v42 + 16))
  {
    __break(1u);
  }

  else
  {
    v46 = v31;
    v47 = v42 + v31;
    v48 = v81;
    sub_216E8E87C(v78, v81 + v47 + *(v77 + 52));
    v37(v80, 0);
    v49 = v79;
    v71(v44, v79, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D98, &qword_217041020);
    v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC1DA0, &qword_217041028) - 8);
    v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_217013DA0;
    v53 = (v52 + v51);
    v54 = v50[14];
    v55 = v65;
    *v53 = v45;
    v53[1] = v55;
    sub_21700DF14();
    v56 = v63(v10, v68);
    if (v62 < *(v56 + 16))
    {
      sub_21678389C(v48 + v56 + v46, v53 + v54);

      v57 = sub_21700E384();
      sub_216E8E8E0(v78, type metadata accessor for SectionContent);
      OUTLINED_FUNCTION_1_117();
      sub_216E8E8E0(v76, v58);
      v59 = *(v69 + 8);
      v59(v49, v10);
      v59(v70, v10);
      sub_216E41D9C(v74, v57, 0, 0, 0, v10, v72, v73);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_216E8E714()
{
  sub_21700F3B4();

  v1 = sub_21700F324();
  MEMORY[0x21CE9F490](v1);

  MEMORY[0x21CE9F490](0x6F6974636573202CLL, 0xED0000203A44496ELL);
  MEMORY[0x21CE9F490](*v0, v0[1]);
  MEMORY[0x21CE9F490](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_216E8E804(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E8E840(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216E8E87C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionContent(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216E8E8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_216E8E988(uint64_t a1)
{
  sub_216690DE8(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_216690DE8(319, qword_280E44408, type metadata accessor for VideoArtwork, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216E8EAB4(uint64_t a1)
{
  type metadata accessor for ContainerDetailHeaderView.ArtworkData(319);
  if (v1 <= 0x3F)
  {
    sub_216690DE8(319, &qword_27CACB6E0, type metadata accessor for MediaButtonType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_216690DE8(319, qword_280E33788, type metadata accessor for ModalPresentationDescriptor, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
        if (v4 <= 0x3F)
        {
          sub_2168AEB44(319, &qword_280E2B468, MEMORY[0x277CDF310]);
          if (v5 <= 0x3F)
          {
            sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
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

uint64_t sub_216E8EC50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_216E8ECA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_216E8ED38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = sub_217009124();
  OUTLINED_FUNCTION_1();
  v59 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_70(&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB6E8, &qword_217069618);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB6F0, &qword_217069620);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB6F8, &qword_217069628);
  OUTLINED_FUNCTION_1();
  v58 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v15);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB700, &qword_217069630);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v60 = v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB708, &qword_217069638);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v20 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ContainerDetailHeaderView(0);
  v27 = v2 + *(v26 + 36);
  v28 = *v27;
  LODWORD(v27) = *(v27 + 8);
  v62 = v2;
  if (v27 == 1)
  {
    v29 = v28;
  }

  else
  {

    sub_21700ED94();
    v30 = sub_217009C34();
    sub_217007BC4();

    v2 = v62;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v28, 0);
    (*(v22 + 8))(v25, v20);
    v29 = LOBYTE(__src[0]);
  }

  if (v29 >= 2)
  {
    v41 = sub_217009184();
    v42 = v2 + *(v26 + 40);
    v43 = *(v42 + 8);
    if ((*(v42 + 32) & 1) == 0)
    {
      v44 = *v42;
      v59 = a1;
      v45 = *(v42 + 16);
      v46 = *(v42 + 24);

      sub_21700ED94();
      v47 = sub_217009C34();
      v58 = v20;
      v48 = v47;
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v44, v43, v45, v46, 0);
      (*(v22 + 8))(v25, v58);
      v43 = __src[1];
    }

    v49 = v54;
    *v54 = v41;
    *(v49 + 8) = v43;
    *(v49 + 16) = 0;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB710, &qword_217069640);
    sub_216E8F470(v62, v49 + *(v50 + 44));
    sub_216763374();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_170(&qword_27CACB718, &qword_27CACB708, &qword_217069638);
    v51 = sub_216E90B30();
    __src[0] = v61;
    __src[1] = v51;
    OUTLINED_FUNCTION_3_5();
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return sub_2167633D4(v49);
  }

  else
  {
    *v9 = sub_2170093B4();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB730, &qword_217069648);
    sub_216E90140(v2, &v9[*(v31 + 44)]);
    sub_21700B3B4();
    sub_217008BB4();
    v32 = v55;
    sub_2167A4788();
    v33 = v61;
    memcpy((v32 + *(v61 + 36)), __src, 0x70uLL);
    v34 = v59;
    v35 = v57;
    v36 = v53;
    (*(v59 + 104))(v57, *MEMORY[0x277CDDDC0], v53);
    v37 = sub_216E90B30();
    v38 = v56;
    sub_21700A904();
    (*(v34 + 8))(v35, v36);
    sub_216697664(v32, &qword_27CACB6F0, &qword_217069620);
    v39 = v58;
    (*(v58 + 16))(v60, v38, v12);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_170(&qword_27CACB718, &qword_27CACB708, &qword_217069638);
    v65 = v33;
    v66 = v37;
    OUTLINED_FUNCTION_3_5();
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v39 + 8))(v38, v12);
  }
}

uint64_t sub_216E8F470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_217009124();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB740, &qword_217069700);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB748, &qword_217069708);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v30 = &v29 - v13;
  v14 = type metadata accessor for ContainerDetailArtworkView(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v31 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  sub_2166A6EA4();
  type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  sub_2166A6EA4();
  *&v19[*(v15 + 32)] = 0x4072C00000000000;
  *v8 = sub_2170093C4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB750, &qword_217069710);
  sub_216E8F8B4(a1, &v8[*(v20 + 44)]);
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  sub_2166D9530(&qword_27CACB758, &qword_27CACB740, &qword_217069700, MEMORY[0x277CE1198]);
  v21 = v30;
  sub_21700A904();
  (*(v4 + 8))(v6, v3);
  sub_216697664(v8, &qword_27CACB740, &qword_217069700);
  v22 = v31;
  sub_216E90BE8();
  v23 = *(v10 + 16);
  v24 = v32;
  v23(v32, v21, v9);
  v25 = v34;
  sub_216E90BE8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB760, &unk_217069718);
  v23((v25 + *(v26 + 48)), v24, v9);
  v27 = *(v10 + 8);
  v27(v21, v9);
  sub_216E90C40(v19, type metadata accessor for ContainerDetailArtworkView);
  v27(v24, v9);
  return sub_216E90C40(v22, type metadata accessor for ContainerDetailArtworkView);
}

uint64_t sub_216E8F8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2E0, &qword_2170233F0);
  MEMORY[0x28223BE20](v50);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2C8, &qword_2170233D8);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v49 - v9;
  v10 = sub_217009EB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContainerDetailTitlesView(0);
  MEMORY[0x28223BE20](v14);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v49 = type metadata accessor for ContainerDetailHeaderView(0);
  v19 = *(v49 + 20);
  v52 = a1;
  v20 = (a1 + v19);
  v22 = *v20;
  v21 = v20[1];
  v24 = v20[2];
  v23 = v20[3];
  sub_2166A6EA4();
  v25 = *(v20 + 72);
  *v18 = v22;
  *(v18 + 1) = v21;
  *(v18 + 2) = v24;
  *(v18 + 3) = v23;
  v18[72] = v25;
  v63[0] = 0x4042800000000000;
  v26 = qword_27CAB61E0;
  sub_21700DF14();
  sub_21700DF14();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v10, qword_27CACBFC0);
  v28 = *(v11 + 16);
  v28(v13, v27, v10);
  sub_2167CD8D8();
  sub_2170082A4();
  v63[0] = 0x403A000000000000;
  v28(v13, v27, v10);
  sub_2170082A4();
  v63[0] = 0x4041000000000000;
  if (qword_27CAB6208 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v10, qword_27CACBFF8);
  v28(v13, v29, v10);
  sub_2170082A4();
  v30 = &v18[*(v14 + 44)];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v49;
  v32 = v52;
  v33 = (v52 + *(v49 + 24));
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  sub_21700DF14();
  sub_21700DF14();
  v37 = v53;
  sub_216E62E00(v34, v35, v36, v53);
  v38 = v54;
  sub_216E8FE70(v54);
  LOBYTE(v34) = sub_217009C94();
  sub_217007F24();
  v39 = v38 + *(v50 + 36);
  *v39 = v34;
  *(v39 + 8) = v40;
  *(v39 + 16) = v41;
  *(v39 + 24) = v42;
  *(v39 + 32) = v43;
  *(v39 + 40) = 0;
  v44 = *(v32 + *(v31 + 28));
  v61 = 0;
  v62 = 1;
  v63[0] = &v61;
  v45 = v51;
  sub_216E90BE8();
  v63[1] = v45;
  v46 = v55;
  sub_2166A6EA4();
  v63[2] = v46;
  v47 = v57;
  sub_2166A6EA4();
  v59 = 0x4040800000000000;
  v60 = 0;
  v63[3] = v47;
  v63[4] = &v59;
  v58[0] = v44;
  v58[1] = 0x4034000000000000;
  v63[5] = v58;
  sub_2168AB074(v63, v56);
  sub_21700DF14();
  sub_216697664(v38, &qword_27CABB2E0, &qword_2170233F0);
  sub_216697664(v37, &qword_27CABB2C8, &qword_2170233D8);
  sub_216E90C40(v18, type metadata accessor for ContainerDetailTitlesView);

  sub_216697664(v47, &qword_27CABB2E0, &qword_2170233F0);
  sub_216697664(v46, &qword_27CABB2C8, &qword_2170233D8);
  return sub_216E90C40(v45, type metadata accessor for ContainerDetailTitlesView);
}

uint64_t sub_216E8FE70@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08, &qword_217025B20);
  MEMORY[0x28223BE20](v2);
  v4 = &v24[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24[-v6];
  type metadata accessor for ContainerDetailHeaderView(0);
  sub_2166A6EA4();
  v8 = type metadata accessor for ModalPresentationDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_216697664(v7, &qword_27CABBE20, qword_217034D80);
LABEL_9:
    v22 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v22, 1, v2);
  }

  v10 = *(v7 + 4);
  v9 = *(v7 + 5);
  sub_21700DF14();
  sub_216E90C40(v7, type metadata accessor for ModalPresentationDescriptor);
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = sub_216983738(0);
  v14 = v13;
  sub_21700D234();
  v15 = &v4[v2[25]];
  v24[15] = 0;
  sub_21700AEA4();
  v16 = v25;
  *v15 = v24[16];
  *(v15 + 1) = v16;
  v17 = v2[26];
  *&v4[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10, &unk_217034D70);
  swift_storeEnumTagMultiPayload();
  sub_2166A6EA4();
  v18 = type metadata accessor for ParagraphView(0);
  *&v4[*(v18 + 20)] = 0;
  *&v4[*(v18 + 24)] = 0;
  v4[v2[17]] = 1;
  v4[v2[18]] = 1;
  v19 = &v4[v2[20]];
  *v19 = v12;
  v19[1] = v14;
  v20 = &v4[v2[19]];
  *v20 = v10;
  v20[1] = v9;
  *&v4[v2[21]] = 2;
  *&v4[v2[23]] = 0;
  v21 = &v4[v2[22]];
  *v21 = 0;
  v21[1] = 0;
  sub_2167A4788();
  v22 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v22, 1, v2);
}

uint64_t sub_216E90140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2D0, &qword_2170233E0);
  MEMORY[0x28223BE20](v74);
  v81 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2C8, &qword_2170233D8);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v69 - v9;
  v10 = sub_217009EB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContainerDetailTitlesView(0);
  MEMORY[0x28223BE20](v14);
  v76 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2B8, &unk_217069650);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v75 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v69 - v23;
  sub_2166A6EA4();
  type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  v25 = type metadata accessor for ContainerDetailArtworkView(0);
  sub_2166A6EA4();
  *&v24[*(v25 + 24)] = sub_216E909C4();
  LOBYTE(v25) = sub_217009C94();
  sub_217007F24();
  v26 = *(v20 + 44);
  v73 = v24;
  v27 = &v24[v26];
  *v27 = v25;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v71 = type metadata accessor for ContainerDetailHeaderView(0);
  v32 = *(v71 + 20);
  v72 = a1;
  v33 = a1 + v32;
  v34 = *(a1 + v32);
  v35 = *(a1 + v32 + 8);
  v36 = *(a1 + v32 + 16);
  v37 = *(a1 + v32 + 24);
  sub_2166A6EA4();
  v38 = *(v33 + 72);
  *v18 = v34;
  *(v18 + 1) = v35;
  *(v18 + 2) = v36;
  *(v18 + 3) = v37;
  v18[72] = v38;
  v83 = 0x4042800000000000;
  v39 = qword_27CAB61E0;
  sub_21700DF14();
  sub_21700DF14();
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v10, qword_27CACBFC0);
  v41 = *(v11 + 16);
  v41(v13, v40, v10);
  sub_2167CD8D8();
  sub_2170082A4();
  v83 = 0x403A000000000000;
  v41(v13, v40, v10);
  sub_2170082A4();
  v83 = 0x4041000000000000;
  if (qword_27CAB6208 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v10, qword_27CACBFF8);
  v41(v13, v42, v10);
  sub_2170082A4();
  v43 = &v18[*(v14 + 44)];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = v71;
  v45 = v72;
  v46 = (v72 + *(v71 + 24));
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  sub_21700DF14();
  sub_21700DF14();
  v50 = v77;
  sub_216E62E00(v47, v48, v49, v77);
  sub_21700B3B4();
  sub_2170083C4();
  v51 = v94[6];
  v52 = v96;
  v70 = v98;
  v69 = v99;
  v105 = 1;
  v103 = v95;
  v101 = v97;
  v53 = *(v45 + *(v44 + 28));
  sub_21700DF14();
  v54 = v78;
  sub_216E8FE70(v78);
  v55 = sub_21700AD34();
  KeyPath = swift_getKeyPath();
  v57 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACB738, &unk_2170696B8) + 36));
  *v57 = KeyPath;
  v57[1] = v55;
  LOBYTE(v55) = sub_217009C94();
  sub_217007F24();
  v58 = v54 + *(v74 + 36);
  *v58 = v55;
  *(v58 + 8) = v59;
  *(v58 + 16) = v60;
  *(v58 + 24) = v61;
  *(v58 + 32) = v62;
  *(v58 + 40) = 0;
  v63 = v73;
  v64 = v75;
  sub_2166A6EA4();
  v94[0] = v64;
  v65 = v76;
  sub_216E90BE8();
  v94[1] = v65;
  v66 = v79;
  sub_2166A6EA4();
  v83 = 0;
  v84 = v105;
  *v85 = *v104;
  *&v85[3] = *&v104[3];
  v86 = v51;
  v87 = v103;
  *v88 = *v102;
  *&v88[3] = *&v102[3];
  v89 = v52;
  v90 = v101;
  *v91 = *v100;
  *&v91[3] = *&v100[3];
  v92 = v70;
  v93 = v69;
  v94[2] = v66;
  v94[3] = &v83;
  v82[0] = v53;
  v82[1] = 0x4030000000000000;
  v94[4] = v82;
  v67 = v81;
  sub_2166A6EA4();
  v94[5] = v67;
  sub_2168AB144(v94);
  sub_216697664(v54, &qword_27CABB2D0, &qword_2170233E0);
  sub_216697664(v50, &qword_27CABB2C8, &qword_2170233D8);
  sub_216E90C40(v18, type metadata accessor for ContainerDetailTitlesView);
  sub_216697664(v63, &qword_27CABB2B8, &unk_217069650);
  sub_216697664(v67, &qword_27CABB2D0, &qword_2170233E0);

  sub_216697664(v66, &qword_27CABB2C8, &qword_2170233D8);
  sub_216E90C40(v65, type metadata accessor for ContainerDetailTitlesView);
  return sub_216697664(v64, &qword_27CABB2B8, &unk_217069650);
}