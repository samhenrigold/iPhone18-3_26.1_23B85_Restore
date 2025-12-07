uint64_t DisambiguationView.init(model:)()
{
  type metadata accessor for DisambiguationView(0);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_1_4();
  sub_252F4C048(v2, v3, MEMORY[0x277D63F50]);
  *v1 = sub_252F5326C();
  v1[1] = v4;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_3_1();
  sub_252F49A84();
  if (qword_27F575E18 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_27F575E18);
  }

  v5 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_27F575E10);
  }

  v6 = sub_252F5316C();
  __swift_project_value_buffer(v6, qword_27F57B800);
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57C00);
  v7 = sub_252F3A05C();
  MEMORY[0x2530AF890](v7);

  OUTLINED_FUNCTION_14_3(0, 0xD00000000000006BLL, "biguation snippet. ");

  return OUTLINED_FUNCTION_4_8();
}

uint64_t DisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DisambiguationSnippetModel(0);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_11();
  sub_252F49A84();
  return DefaultDisambiguationView.init(model:)(a1);
}

uint64_t DefaultDisambiguationView.init(model:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_1_4();
  sub_252F4C048(v4, v5, MEMORY[0x277D63F50]);
  *v2 = sub_252F5326C();
  v2[1] = v6;
  v7 = a1 + *(v1 + 28);
  sub_252F5374C();
  *v7 = v12;
  *(v7 + 8) = v13;
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_3_1();
  sub_252F49A84();
  if (qword_27F575E18 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_27F575E18);
  }

  v8 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_27F575E10);
  }

  v9 = sub_252F5316C();
  __swift_project_value_buffer(v9, qword_27F57B800);
  sub_252F53B8C();

  v10 = sub_252F3A05C();
  MEMORY[0x2530AF890](v10);

  OUTLINED_FUNCTION_14_3(0xD00000000000002FLL, 0xD00000000000006BLL, "biguation snippet. ");

  return OUTLINED_FUNCTION_4_8();
}

uint64_t DefaultDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for DefaultDisambiguationView(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_252F49A84();
  swift_allocObject();
  sub_252F4C1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5769C8, "E");
  sub_252F25B24(&qword_27F5769D0, &qword_27F5769C8, "E", MEMORY[0x277CE14C0]);
  sub_252F5381C();
  sub_252F49A84();
  v2 = swift_allocObject();
  sub_252F4C1E0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5769D8, &qword_252F56790);
  v4 = (a1 + *(result + 36));
  *v4 = sub_252F4BC68;
  v4[1] = v2;
  v4[2] = 0;
  v4[3] = 0;
  return result;
}

uint64_t sub_252F48B3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v101 = sub_252F5380C();
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v90 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v89 = &v81 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576828, &qword_252F55DF0);
  v94 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v93 = &v81 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A28, &qword_252F56898);
  MEMORY[0x28223BE20](v96);
  v98 = &v81 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A30, &unk_252F568A0);
  MEMORY[0x28223BE20](v97);
  v82 = (&v81 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v102 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v81 - v11;
  v103 = type metadata accessor for DisambiguationOption(0);
  v86 = *(v103 - 8);
  v12 = MEMORY[0x28223BE20](v103);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v81 - v15;
  v85 = v16;
  MEMORY[0x28223BE20](v14);
  v81 = (&v81 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A38, &qword_252F568B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v108 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v110 = &v81 - v21;
  v22 = type metadata accessor for DefaultDisambiguationView(0);
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = sub_252F5389C();
  MEMORY[0x28223BE20](v26 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A40, &qword_252F568B8);
  v106 = *(v27 - 8);
  v107 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v105 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v81 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  v32 = v114;
  v33 = v115;
  v117 = MEMORY[0x277CE0BD8];
  v118 = MEMORY[0x277D638E8];
  v34 = swift_allocObject();
  v114 = v34;
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  v35 = MEMORY[0x277D84F90];
  *(v34 + 32) = 0;
  *(v34 + 40) = v35;
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  sub_252F5388C();
  sub_252F49A84();
  v83 = *(v24 + 80) | 7;
  swift_allocObject();
  v84 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F4C1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A48, &qword_252F568C0);
  sub_252F25B24(&qword_27F576A50, &qword_27F576A48, &qword_252F568C0, MEMORY[0x277CE14C0]);
  v104 = v31;
  v36 = a1;
  sub_252F5385C();
  v37 = *(a1 + *(v23 + 28));
  if (v37)
  {
    v38 = v37;
    sub_252F5391C();

    if ((sub_252F53B2C() & 1) == 0)
    {
      v39 = v38;
      sub_252F5391C();

      if ((sub_252F53AEC() & 1) == 0)
      {
        v40 = type metadata accessor for DisambiguationSnippetModel(0);
        v41 = v95;
        sub_252F39488(a1 + *(v40 + 24), v95, &qword_27F5766A0, &qword_252F55578);
        if (__swift_getEnumTagSinglePayload(v41, 1, v103) != 1)
        {
          v63 = v81;
          sub_252F4C1E0();
          v64 = sub_252F5332C();
          v65 = v82;
          *v82 = v64;
          *(v65 + 8) = 0;
          *(v65 + 16) = 1;
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A70, &qword_252F568D8);
          sub_252F4B2A0(v63, a1, (v65 + *(v66 + 44)));
          sub_252F39488(v65, v98, &qword_27F576A30, &unk_252F568A0);
          swift_storeEnumTagMultiPayload();
          sub_252F25B24(&qword_27F576A68, &qword_27F576A30, &unk_252F568A0, MEMORY[0x277CE1138]);
          v67 = sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60, MEMORY[0x277CDF028]);
          v68 = sub_252F4C048(&qword_27F5767F0, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
          v114 = v99;
          v115 = v101;
          v116 = v67;
          v117 = v68;
          swift_getOpaqueTypeConformance2();
          v48 = v110;
          sub_252F533EC();
          sub_252F25CDC(v65, &qword_27F576A30, &unk_252F568A0);
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A58, &qword_252F568C8);
          __swift_storeEnumTagSinglePayload(v48, 0, 1, v69);
          sub_252F4CBCC(v63, type metadata accessor for DisambiguationOption);
          goto LABEL_12;
        }

        sub_252F25CDC(v41, &qword_27F5766A0, &qword_252F55578);
      }
    }

    v42 = v38;
    sub_252F5391C();

    v43 = sub_252F53AEC();
    v44 = v110;
    if (v43)
    {
      v45 = type metadata accessor for DisambiguationSnippetModel(0);
      v46 = v102;
      sub_252F39488(v36 + *(v45 + 24), v102, &qword_27F5766A0, &qword_252F55578);
      if (__swift_getEnumTagSinglePayload(v46, 1, v103) != 1)
      {
        v49 = v88;
        sub_252F4C1E0();
        v50 = v49[1];
        v114 = *v49;
        v115 = v50;
        sub_252F49A84();
        sub_252F49A84();
        swift_allocObject();
        sub_252F4C1E0();
        sub_252F4C1E0();
        sub_252F30A14();

        v51 = v89;
        sub_252F5379C();
        v52 = v91;
        sub_252F533FC();
        v53 = sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60, MEMORY[0x277CDF028]);
        v54 = sub_252F4C048(&qword_27F5767F0, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
        v55 = v93;
        v56 = v99;
        v57 = v101;
        sub_252F5357C();
        (*(v92 + 8))(v52, v57);
        (*(v90 + 8))(v51, v56);
        v58 = v94;
        v59 = v100;
        (*(v94 + 16))(v98, v55, v100);
        swift_storeEnumTagMultiPayload();
        sub_252F25B24(&qword_27F576A68, &qword_27F576A30, &unk_252F568A0, MEMORY[0x277CE1138]);
        v114 = v56;
        v115 = v57;
        v116 = v53;
        v117 = v54;
        swift_getOpaqueTypeConformance2();
        v60 = v110;
        sub_252F533EC();
        v61 = v59;
        v48 = v60;
        (*(v58 + 8))(v55, v61);
        sub_252F4CBCC(v49, type metadata accessor for DisambiguationOption);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A58, &qword_252F568C8);
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
        goto LABEL_12;
      }

      sub_252F25CDC(v46, &qword_27F5766A0, &qword_252F55578);
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A58, &qword_252F568C8);
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v47);
    v48 = v44;
LABEL_12:
    v71 = v105;
    v70 = v106;
    v72 = *(v106 + 16);
    v73 = v104;
    v74 = v107;
    v72(v105, v104, v107);
    v75 = v108;
    sub_252F39488(v48, v108, &qword_27F576A38, &qword_252F568B0);
    v76 = v48;
    v77 = v109;
    v72(v109, v71, v74);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A60, &qword_252F568D0);
    sub_252F39488(v75, &v77[*(v78 + 48)], &qword_27F576A38, &qword_252F568B0);
    sub_252F25CDC(v76, &qword_27F576A38, &qword_252F568B0);
    v79 = *(v70 + 8);
    v79(v73, v74);
    sub_252F25CDC(v75, &qword_27F576A38, &qword_252F568B0);
    return (v79)(v71, v74);
  }

  sub_252F5394C();
  sub_252F4C048(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  result = sub_252F5325C();
  __break(1u);
  return result;
}

uint64_t sub_252F49A84()
{
  v1 = OUTLINED_FUNCTION_7_3();
  v2(v1);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_3_1();
  v4(v3);
  return v0;
}

uint64_t sub_252F49AF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = sub_252F5387C();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A80, &qword_252F568E8);
  v65 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v63 = v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = v61 - v7;
  v68 = type metadata accessor for DisambiguationOption(0);
  v61[5] = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v61[6] = v9;
  v61[7] = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A88, &qword_252F568F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v75 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = v61 - v14;
  v15 = type metadata accessor for DefaultDisambiguationView(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A90, &qword_252F568F8);
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v71 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v61 - v23;
  v25 = type metadata accessor for DisambiguationSnippetModel(0);
  v102[0] = *(a1 + *(v25 + 20));
  sub_252F49A84();
  v26 = *(v17 + 80);
  v27 = (v26 + 16) & ~v26;
  v61[1] = v27 + v18;
  v61[2] = v26 | 7;
  v28 = swift_allocObject();
  v61[3] = v27;
  v61[4] = v19;
  sub_252F4C1E0();

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766B8, &qword_252F56900);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A98, &qword_252F56908);
  v31 = sub_252F25B24(&qword_27F576AA0, &qword_27F5766B8, &qword_252F56900, MEMORY[0x277D83980]);
  v32 = sub_252F4CAD0();
  v33 = sub_252F4C048(&qword_27F576AB8, type metadata accessor for DisambiguationOption, &protocol conformance descriptor for DisambiguationOption);
  v70 = v24;
  v34 = v29;
  v35 = MEMORY[0x277D837D0];
  sub_252F537CC(v102, sub_252F4CA54, v28, v34, MEMORY[0x277D837D0], v30, v31, v32, v33);
  v36 = *(a1 + *(v16 + 28));
  if (v36)
  {
    v37 = v36;
    sub_252F5391C();

    if (sub_252F53B2C())
    {
      v38 = a1 + *(v25 + 24);
      v39 = v69;
      sub_252F39488(v38, v69, &qword_27F5766A0, &qword_252F55578);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v68);
      v41 = v74;
      if (EnumTagSinglePayload == 1)
      {
        sub_252F25CDC(v39, &qword_27F5766A0, &qword_252F55578);
        v42 = 1;
        v43 = v76;
      }

      else
      {
        v44 = v62;
        sub_252F4C1E0();
        v46 = *v44;
        v45 = v44[1];
        v102[3] = v35;
        v102[4] = MEMORY[0x277D63F80];
        v102[0] = v46;
        v102[1] = v45;
        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        v83 = 0;
        v81 = 0u;
        v82 = 0u;
        v80 = 0;
        v78 = 0u;
        v79 = 0u;

        v47 = v64;
        sub_252F5386C();
        sub_252F49A84();
        sub_252F49A84();
        swift_allocObject();
        sub_252F4C1E0();
        sub_252F4C1E0();
        sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
        v48 = v63;
        v49 = v67;
        sub_252F5351C();

        (*(v66 + 8))(v47, v49);
        sub_252F4CBCC(v44, type metadata accessor for DisambiguationOption);
        v43 = v76;
        (*(v65 + 32))(v41, v48, v76);
        v42 = 0;
      }
    }

    else
    {
      v42 = 1;
      v43 = v76;
      v41 = v74;
    }

    __swift_storeEnumTagSinglePayload(v41, v42, 1, v43);
    v51 = v71;
    v50 = v72;
    v52 = *(v72 + 16);
    v53 = v70;
    v54 = v41;
    v55 = v73;
    v52(v71, v70, v73);
    v56 = v75;
    sub_252F39488(v54, v75, &qword_27F576A88, &qword_252F568F0);
    v57 = v77;
    v52(v77, v51, v55);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AC0, &unk_252F56910);
    sub_252F39488(v56, &v57[*(v58 + 48)], &qword_27F576A88, &qword_252F568F0);
    sub_252F25CDC(v54, &qword_27F576A88, &qword_252F568F0);
    v59 = *(v50 + 8);
    v59(v53, v55);
    sub_252F25CDC(v56, &qword_27F576A88, &qword_252F568F0);
    return (v59)(v51, v55);
  }

  else
  {
    sub_252F5394C();
    sub_252F4C048(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F4A480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v75 = a3;
  v76 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AC8, &qword_252F56920);
  MEMORY[0x28223BE20](v73);
  v74 = &v53 - v3;
  v4 = type metadata accessor for DisambiguationOption(0);
  v5 = v4 - 8;
  v62 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = v6;
  v66 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DefaultDisambiguationView(0);
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v8;
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252F5387C();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A80, &qword_252F568E8);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v53 - v12;
  v13 = sub_252F5373C();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252F5308C();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_252F537EC();
  v54 = *(v16 - 8);
  v55 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AD0, &unk_252F56928);
  MEMORY[0x28223BE20](v56);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v53 - v22;
  v24 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F39488(v76 + *(v5 + 32), v23, &qword_27F576260, &qword_252F54AA0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_252F25CDC(v23, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    sub_252F4C1E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v27 = v102;
    if (v102)
    {
      v53 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
      sub_252F530BC();
      sub_252F5307C();

      sub_252F537FC();
      v29 = v57;
      v28 = v58;
      v30 = v59;
      (*(v58 + 104))(v57, *MEMORY[0x277CE1010], v59);
      sub_252F4C048(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
      v31 = v55;
      sub_252F5352C();
      (*(v28 + 8))(v29, v30);
      (*(v54 + 8))(v18, v31);
      v32 = static ColorUtils.fromString(_:)(v53, v27);

      KeyPath = swift_getKeyPath();
      v34 = &v20[*(v56 + 36)];
      *v34 = KeyPath;
      v34[1] = v32;
      sub_252F4CC4C();
      v35 = sub_252F534EC();
      sub_252F25CDC(v20, &qword_27F576AD0, &unk_252F56928);
      v37 = *v76;
      v36 = v76[1];
      v103 = MEMORY[0x277D837D0];
      v104 = MEMORY[0x277D63F80];
      v101 = v37;
      v102 = v36;
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v85 = 0;
      v83 = 0u;
      v84 = 0u;
      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      *(&v78 + 1) = MEMORY[0x277CE11C8];
      v79 = MEMORY[0x277D63A60];
      *&v77 = v35;

      v38 = v67;
      sub_252F5386C();
      sub_252F49A84();
      sub_252F49A84();
      swift_allocObject();
      sub_252F4C1E0();
      sub_252F4C1E0();
      v39 = sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
      v41 = v69;
      v40 = v70;
      sub_252F5351C();

      (*(v68 + 8))(v38, v41);
      v43 = v71;
      v42 = v72;
      (*(v71 + 16))(v74, v40, v72);
      swift_storeEnumTagMultiPayload();
      v101 = v41;
      v102 = v39;
      swift_getOpaqueTypeConformance2();
      sub_252F533EC();

      (*(v43 + 8))(v40, v42);
      return sub_252F4CBCC(v26, type metadata accessor for IconConfiguration);
    }

    sub_252F4CBCC(v26, type metadata accessor for IconConfiguration);
  }

  v46 = *v76;
  v45 = v76[1];
  v103 = MEMORY[0x277D837D0];
  v104 = MEMORY[0x277D63F80];
  v101 = v46;
  v102 = v45;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;

  v47 = v67;
  sub_252F5386C();
  sub_252F49A84();
  sub_252F49A84();
  swift_allocObject();
  sub_252F4C1E0();
  sub_252F4C1E0();
  v48 = sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
  v50 = v69;
  v49 = v70;
  sub_252F5351C();

  (*(v68 + 8))(v47, v50);
  v52 = v71;
  v51 = v72;
  (*(v71 + 16))(v74, v49, v72);
  swift_storeEnumTagMultiPayload();
  v101 = v50;
  v102 = v48;
  swift_getOpaqueTypeConformance2();
  sub_252F533EC();
  return (*(v52 + 8))(v49, v51);
}

uint64_t Context.perform(directInvocation:isAwaitingResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5769E0, &qword_252F56798);
  MEMORY[0x2530AF650](&v9);
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v10 = a2;
    v11 = a3;
    v12 = a4 & 1;
    v9 = 1;
    sub_252F537BC();
    v7 = sub_252F5393C();
  }

  return v7 & 1;
}

uint64_t sub_252F4B16C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for DefaultDisambiguationView(0) + 20));
  if (v1)
  {
    type metadata accessor for DisambiguationOption(0);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v3 = sub_252F5302C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E8, &qword_252F54ED0);
    sub_252F5377C();
    Context.perform(directInvocation:isAwaitingResponse:)(v3, v8, v9, v10);
  }

  else
  {
    sub_252F5394C();
    OUTLINED_FUNCTION_1_4();
    v7 = sub_252F4C048(v5, v6, MEMORY[0x277D63F50]);
    result = OUTLINED_FUNCTION_13_6(v7);
    __break(1u);
  }

  return result;
}

uint64_t sub_252F4B2A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21[1] = a2;
  v22 = a3;
  v4 = type metadata accessor for DisambiguationOption(0);
  v21[2] = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for DefaultDisambiguationView(0);
  v21[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = a1[1];
  v23 = *a1;
  v24 = v13;
  sub_252F49A84();
  sub_252F49A84();
  swift_allocObject();
  sub_252F4C1E0();
  sub_252F4C1E0();
  sub_252F30A14();

  sub_252F5379C();
  v14 = *(v7 + 16);
  v14(v10, v12, v6);
  v15 = v22;
  *v22 = 0;
  *(v15 + 8) = 1;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576A78, &qword_252F568E0);
  v14(&v16[*(v17 + 48)], v10, v6);
  v18 = &v16[*(v17 + 64)];
  *v18 = 0;
  v18[8] = 1;
  v19 = *(v7 + 8);
  v19(v12, v6);
  return (v19)(v10, v6);
}

void sub_252F4B620()
{
  v1 = OUTLINED_FUNCTION_7_3();
  v2 = *(v0 + *(type metadata accessor for DefaultDisambiguationView(v1) + 20));
  if (v2)
  {
    type metadata accessor for DisambiguationOption(0);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v7 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    sub_252F5394C();
    OUTLINED_FUNCTION_1_4();
    v6 = sub_252F4C048(v4, v5, MEMORY[0x277D63F50]);
    OUTLINED_FUNCTION_13_6(v6);
    __break(1u);
  }
}

void sub_252F4B6F4(uint64_t a1)
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for DefaultDisambiguationView(0);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F589D0;
  v3._countAndFlagsBits = 0xD00000000000006BLL;
  v3._object = 0x8000000252F57C40;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t objectdestroyTm_3()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_3_4();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v43 = *(v6 + 64);
  v7 = v0 + v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1();
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = type metadata accessor for DisambiguationSnippetModel(0);

  v12 = v7 + *(v11 + 24);
  v13 = type metadata accessor for DisambiguationOption(0);
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    v38 = v7;
    v39 = v2;
    v40 = v4;
    v41 = (v4 + 16) & ~v4;
    v42 = v1;

    v14 = v12 + *(v13 + 24);
    v15 = type metadata accessor for IconConfiguration(0);
    if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
    {
      v10(v14, v8);
      v16 = v15[5];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
      OUTLINED_FUNCTION_1();
      v19 = *(v18 + 8);
      v19(v14 + v16, v17);
      v20 = v15[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      OUTLINED_FUNCTION_0_1();
      (*(v21 + 8))(v14 + v20);
      v22 = v15[7];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
      OUTLINED_FUNCTION_1();
      v25 = *(v24 + 8);
      v25(v14 + v22, v23);
      v25(v14 + v15[8], v23);
      v26 = v15[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
      OUTLINED_FUNCTION_0_1();
      (*(v27 + 8))(v14 + v26);
      v19(v14 + v15[10], v17);
      v28 = v15[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
      OUTLINED_FUNCTION_0_1();
      (*(v29 + 8))(v14 + v28);
      v19(v14 + v15[12], v17);
      v19(v14 + v15[13], v17);
      v30 = v15[14];
      v31 = type metadata accessor for DirectInvocationConfig(0);
      if (!__swift_getEnumTagSinglePayload(v14 + v30, 1, v31))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
        OUTLINED_FUNCTION_0_1();
        (*(v32 + 8))(v14 + v30);
      }
    }

    v33 = *(v13 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1();
    (*(v34 + 8))(v12 + v33);
    v5 = v41;
    v1 = v42;
    v2 = v39;
    v4 = v40;
    v7 = v38;
  }

  v35 = *(v2 + 24);
  sub_252F5314C();
  OUTLINED_FUNCTION_0_1();
  (*(v36 + 8))(v7 + v35);

  return MEMORY[0x2821FE8E8](v1, v5 + v43, v4 | 7);
}

void sub_252F4BC68()
{
  v1 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_252F4B6F4(v3);
}

void sub_252F4BD28(uint64_t a1)
{
  type metadata accessor for DisambiguationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F5314C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DisambiguationSnippetModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_252F5314C();
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DisambiguationSnippetModel(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_252F5314C();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_252F4BF94(uint64_t a1)
{
  type metadata accessor for DisambiguationSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F5314C();
      if (v3 <= 0x3F)
      {
        sub_252F2DCBC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_252F4C048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_252F4C090()
{
  result = qword_27F576A10;
  if (!qword_27F576A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5769D8, &qword_252F56790);
    sub_252F25B24(&qword_27F576A18, &qword_27F576A20, "NE", MEMORY[0x277D63B90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576A10);
  }

  return result;
}

uint64_t sub_252F4C160(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_10(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_252F4C1E0()
{
  v1 = OUTLINED_FUNCTION_7_3();
  v2(v1);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_3_1();
  v4(v3);
  return v0;
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_3_4();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_3_4();
  v69 = *(v8 + 80);
  v70 = (v4 + v6 + v69) & ~v69;
  v10 = *(v9 + 64);
  v71 = v0;
  v11 = v0 + v4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1();
  v68 = *(v13 + 8);
  v68(v11, v12);
  v14 = type metadata accessor for DisambiguationSnippetModel(0);

  v15 = v11 + *(v14 + 24);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v7))
  {
    v64 = v10;

    v16 = v15 + *(v7 + 24);
    v17 = type metadata accessor for IconConfiguration(0);
    v18 = v7;
    if (!__swift_getEnumTagSinglePayload(v16, 1, v17))
    {
      v68(v16, v12);
      v19 = v17[5];
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
      OUTLINED_FUNCTION_1();
      v63 = *(v20 + 8);
      v63(v16 + v19);
      v21 = v17[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
      OUTLINED_FUNCTION_0_1();
      (*(v22 + 8))(v16 + v21);
      v60 = v17[7];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
      v24 = *(*(v23 - 8) + 8);
      v65 = v18;
      v24(v16 + v60, v23);
      v24(v16 + v17[8], v23);
      v25 = v17[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
      OUTLINED_FUNCTION_0_1();
      (*(v26 + 8))(v16 + v25);
      (v63)(v16 + v17[10], v62);
      v61 = v17[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
      OUTLINED_FUNCTION_0_1();
      (*(v27 + 8))(v16 + v61);
      (v63)(v16 + v17[12], v62);
      (v63)(v16 + v17[13], v62);
      v18 = v65;
      v28 = v17[14];
      v29 = type metadata accessor for DirectInvocationConfig(0);
      if (!__swift_getEnumTagSinglePayload(v16 + v28, 1, v29))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
        OUTLINED_FUNCTION_0_1();
        (*(v30 + 8))(v16 + v28);
      }
    }

    v7 = v18;
    v31 = *(v18 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    OUTLINED_FUNCTION_0_1();
    (*(v32 + 8))(v15 + v31);
    v10 = v64;
  }

  v33 = *(v1 + 24);
  sub_252F5314C();
  OUTLINED_FUNCTION_0_1();
  (*(v34 + 8))(v11 + v33);

  v35 = v71 + v70 + *(v7 + 24);
  v36 = type metadata accessor for IconConfiguration(0);
  v37 = v7;
  if (!__swift_getEnumTagSinglePayload(v35, 1, v36))
  {
    v68(v35, v12);
    v66 = v7;
    v38 = v36[5];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1();
    v41 = *(v40 + 8);
    v41(v35 + v38, v39);
    v42 = v36[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_0_1();
    (*(v43 + 8))(v35 + v42);
    v44 = v36[7];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
    OUTLINED_FUNCTION_1();
    v47 = *(v46 + 8);
    v67 = v3;
    v48 = v35 + v44;
    v37 = v66;
    v47(v48, v45);
    v47(v35 + v36[8], v45);
    v49 = v36[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_0_1();
    (*(v50 + 8))(v35 + v49);
    v41(v35 + v36[10], v39);
    v51 = v36[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_0_1();
    v53 = v35 + v51;
    v3 = v67;
    (*(v52 + 8))(v53);
    v41(v35 + v36[12], v39);
    v41(v35 + v36[13], v39);
    v54 = v36[14];
    v55 = type metadata accessor for DirectInvocationConfig(0);
    if (!__swift_getEnumTagSinglePayload(v35 + v54, 1, v55))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
      OUTLINED_FUNCTION_0_1();
      (*(v56 + 8))(v35 + v54);
    }
  }

  v57 = *(v37 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_0_1();
  (*(v58 + 8))(v71 + v70 + v57);

  return MEMORY[0x2821FE8E8](v71, v70 + v10, v3 | v69 | 7);
}

uint64_t sub_252F4C990(uint64_t (*a1)(unint64_t, unint64_t))
{
  v3 = *(type metadata accessor for DefaultDisambiguationView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_10(v6);
  return a1(v1 + v4, v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80)));
}

uint64_t sub_252F4CA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DefaultDisambiguationView(0);
  OUTLINED_FUNCTION_10(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_252F4A480(a1, v7, a2);
}

unint64_t sub_252F4CAD0()
{
  result = qword_27F576AA8;
  if (!qword_27F576AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576A98, &qword_252F56908);
    sub_252F5387C();
    sub_252F4C048(&qword_27F576AB0, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576AA8);
  }

  return result;
}

uint64_t sub_252F4CBCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_252F4CC4C()
{
  result = qword_27F576AD8;
  if (!qword_27F576AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576AD0, &unk_252F56928);
    sub_252F537EC();
    sub_252F4C048(&qword_27F576020, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
    swift_getOpaqueTypeConformance2();
    sub_252F25B24(&qword_27F576AE0, &qword_27F576AE8, &qword_252F56968, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576AD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_252F4CBCC(v0, type metadata accessor for DisambiguationSnippetModel);
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_252F5394C();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{

  return sub_252F5325C();
}

void OUTLINED_FUNCTION_14_3(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3;

  v5 = a3 | 0x8000000000000000;
  Logger.debug(output:test:caller:)(*&a1, 0, *&a2);
}

uint64_t sub_252F4CE24()
{
  OUTLINED_FUNCTION_0_7();
  v3 = 0x5479616C70736964;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x736E6F6974706FLL;
    }

    else
    {
      v5 = 0x4F746C7561666564;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00006E6F697470;
    }
  }

  else
  {
    v5 = 0x5479616C70736964;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x736E6F6974706FLL;
    }

    else
    {
      v3 = 0x4F746C7561666564;
    }

    if (v2 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xED00006E6F697470;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_8(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_252F4CF40(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000017;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = 0x6944646C756F6873;
    }

    if (v3 == 1)
    {
      v5 = 0x8000000252F57A10;
    }

    else
    {
      v5 = 0xED000079616C7073;
    }
  }

  else
  {
    v5 = 0x8000000252F579F0;
    v4 = 0xD000000000000017;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001CLL;
    }

    else
    {
      v2 = 0x6944646C756F6873;
    }

    if (a2 == 1)
    {
      v6 = 0x8000000252F57A10;
    }

    else
    {
      v6 = 0xED000079616C7073;
    }
  }

  else
  {
    v6 = 0x8000000252F579F0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252F53CAC();
  }

  return v8 & 1;
}

uint64_t sub_252F4D038(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = a1;
  v5 = 0x74617265706D6574;
  v6 = 0xEB00000000657275;
  switch(v4)
  {
    case 1:
      v5 = 0x547972616D697270;
      v6 = 0xEB00000000747865;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_7_11();
      v6 = 0xED00000000657275;
      break;
    case 3:
      v5 = 0x6E69746165487369;
      v6 = 0xE900000000000067;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_9_7();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_0_7();
      break;
    case 2:
      v2 = 21625;
      OUTLINED_FUNCTION_2_13();
      break;
    case 3:
      v3 = 0x6E69746165487369;
      v2 = 0xE900000000000067;
      break;
    case 4:
      OUTLINED_FUNCTION_11_4();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_252F4D18C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_19_3();
  v5 = v4;
  v6 = "iconConfiguration";
  v7 = v3;
  v8 = v1;
  switch(v5)
  {
    case 1:
      v7 = OUTLINED_FUNCTION_7_11();
      goto LABEL_7;
    case 2:
      v8 = 0x8000000252F57730;
      v7 = 0xD000000000000015;
      break;
    case 3:
      v7 = 0xD000000000000011;
      v8 = 0x8000000252F57600;
      break;
    case 4:
      v7 = 0x7365636375537369;
      v8 = 0xE900000000000073;
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_9_7();
      break;
    case 6:
      v7 = 0x6572676F72506E69;
      v8 = 0xEA00000000007373;
      break;
    case 7:
      v7 = 0x6E45656C67676F74;
      v8 = 0x64656C6261;
LABEL_7:
      v8 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v3 = 0x7261646E6F636573;
      v9 = 0x7478655479;
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_4_9();
      v3 = v10 | 4;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v1 = (v6 - 32) | 0x8000000000000000;
      break;
    case 4:
      v3 = 0x7365636375537369;
      v1 = 0xE900000000000073;
      break;
    case 5:
      OUTLINED_FUNCTION_11_4();
      break;
    case 6:
      v3 = 0x6572676F72506E69;
      v1 = 0xEA00000000007373;
      break;
    case 7:
      v3 = 0x6E45656C67676F74;
      v9 = 0x64656C6261;
LABEL_16:
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_6_8(v7, v2, v3);
  }

  return v12 & 1;
}

uint64_t sub_252F4D380(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC0000006C616369;
  v3 = 0x6863726172656968;
  v4 = a1;
  v5 = 0x6863726172656968;
  v6 = 0xEC0000006C616369;
  switch(v4)
  {
    case 1:
      v5 = 0x6C6F6369746C756DLL;
      v6 = 0xEA0000000000726FLL;
      break;
    case 2:
      v5 = 0x6F7268636F6E6F6DLL;
      v6 = 0xEA0000000000656DLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x657474656C6170;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C6F6369746C756DLL;
      v2 = 0xEA0000000000726FLL;
      break;
    case 2:
      v3 = 0x6F7268636F6E6F6DLL;
      v2 = 0xEA0000000000656DLL;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x657474656C6170;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_8(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_252F4D4E0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6C6562616CLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6C6562616CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x614C686365657073;
      v3 = 0xEB000000006C6562;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F69746361;
      break;
    case 3:
      v5 = 0x666E6F436E6F6369;
      v3 = 0xEA00000000006769;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x614C686365657073;
      v6 = 0xEB000000006C6562;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6E6F69746361;
      break;
    case 3:
      v2 = 0x666E6F436E6F6369;
      v6 = 0xEA00000000006769;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_6(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_252F4D644(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_8_6(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_252F4D6C8(char a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_18_3();
    if (v2)
    {
      v4 = 6710895;
    }

    else
    {
      v4 = 0x64656C696166;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v4 = 28271;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_18_3();
    if (v6)
    {
      v8 = 6710895;
    }

    else
    {
      v8 = 0x64656C696166;
    }

    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 28271;
  }

  if (v4 == v8 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_8_6(v4, a2, v8);
  }

  return v11 & 1;
}

uint64_t sub_252F4D78C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000065756C61;
  v3 = 0x5672656767697274;
  v4 = a1;
  v5 = 0x5672656767697274;
  v6 = 0xEC00000065756C61;
  switch(v4)
  {
    case 1:
      v6 = 0x8000000252F574F0;
      v5 = 0xD000000000000015;
      break;
    case 2:
      v5 = 0x4972656767697274;
      v6 = 0xEB000000006E6F63;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v7 = "Icons";
      goto LABEL_7;
    case 4:
      v5 = 0x656C756465686373;
      v6 = 0xED00007478655464;
      break;
    case 5:
      v5 = 0xD000000000000011;
      v7 = "automationSubtext";
LABEL_7:
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_4_9();
      v3 = v8 | 4;
      break;
    case 2:
      v3 = 0x4972656767697274;
      v2 = 0xEB000000006E6F63;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v9 = "Icons";
      goto LABEL_14;
    case 4:
      v2 = 21604;
      OUTLINED_FUNCTION_2_13();
      break;
    case 5:
      v3 = 0xD000000000000011;
      v9 = "automationSubtext";
LABEL_14:
      v2 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_8(v5, a2, v3);
  }

  return v11 & 1;
}

uint64_t sub_252F4D94C()
{
  v0 = SnippetHomeDeviceType.rawValue.getter();
  v2 = v1;
  v3 = SnippetHomeDeviceType.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_8_6(v0, v4, v3);
  }

  return v6 & 1;
}

uint64_t sub_252F4DA58()
{
  sub_252F53CCC();
  OUTLINED_FUNCTION_12_6();
  sub_252F539BC();
  return sub_252F53CEC();
}

uint64_t sub_252F4DAC4(uint64_t a1)
{
  OUTLINED_FUNCTION_21_2(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_5_9(v3, v4, v5);

  return sub_252F53CEC();
}

uint64_t sub_252F4DB24(uint64_t a1)
{
  OUTLINED_FUNCTION_21_2(a1);
  v1(v4, v2);
  return sub_252F53CEC();
}

uint64_t sub_252F4DB7C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_17_3();
  }

  sub_252F539BC();
}

uint64_t sub_252F4DC20(uint64_t a1, unsigned __int8 a2)
{
  sub_252F539BC();
}

uint64_t sub_252F4DCC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_0_7();
      OUTLINED_FUNCTION_15_2();
      break;
    case 2:
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_14_4();
      break;
    case 4:
      OUTLINED_FUNCTION_10_6();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4DD98(uint64_t a1)
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_15_2();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_14_4();
      break;
    case 2:
      OUTLINED_FUNCTION_4_9();
      break;
    case 5:
      OUTLINED_FUNCTION_10_6();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4DEA4(uint64_t a1, char a2)
{
  sub_252F539BC();
}

uint64_t sub_252F4DF70(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_12_6();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4E03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_13_7(v3, v4);
}

uint64_t sub_252F4E080(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_18_3();
  }

  sub_252F539BC();
}

uint64_t sub_252F4E0F0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_4_9();
      break;
    case 4:
      OUTLINED_FUNCTION_2_13();
      break;
    default:
      break;
  }

  sub_252F539BC();
}

uint64_t sub_252F4E1EC(uint64_t a1, char a2)
{
  v2 = SnippetHomeDeviceType.rawValue.getter();
  OUTLINED_FUNCTION_13_7(v2, v3);
}

uint64_t sub_252F4E238(uint64_t a1, uint64_t a2)
{
  sub_252F53CCC();
  v2 = SnippetHomeDeviceType.rawValue.getter();
  OUTLINED_FUNCTION_5_9(v2, v3, v4);

  return sub_252F53CEC();
}

uint64_t sub_252F4E2A0(uint64_t a1, char a2)
{
  sub_252F53CCC();
  if (a2)
  {
    OUTLINED_FUNCTION_18_3();
  }

  sub_252F539BC();

  return sub_252F53CEC();
}

uint64_t sub_252F4E36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_252F53CCC();
  a3(v6, a2);
  return sub_252F53CEC();
}

uint64_t sub_252F4E3D0(uint64_t a1)
{
  sub_252F53CCC();
  OUTLINED_FUNCTION_12_6();
  sub_252F539BC();
  return sub_252F53CEC();
}

uint64_t sub_252F4E42C(uint64_t a1, char a2)
{
  sub_252F53CCC();
  sub_252F539BC();

  return sub_252F53CEC();
}

uint64_t sub_252F4E4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_252F53CCC();
  v5 = a3(a2);
  OUTLINED_FUNCTION_5_9(v5, v6, v7);

  return sub_252F53CEC();
}

uint64_t sub_252F4E550(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_252F53CCC();
  if (!v2)
  {
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_17_3();
  }

  sub_252F539BC();

  return sub_252F53CEC();
}

unint64_t CallToActionSnippetModel.description.getter()
{
  v1 = v0;
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](0xD000000000000019, 0x8000000252F58A20);

  sub_252F53B8C();

  v2 = type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v3 = sub_252F5302C();
  v4 = [v3 description];
  v5 = sub_252F5397C();
  v7 = v6;

  MEMORY[0x2530AF890](v5, v7);

  MEMORY[0x2530AF890](0xD00000000000001ELL, 0x8000000252F58A40);

  sub_252F53B8C();

  if (*(v1 + *(v2 + 24)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + *(v2 + 24)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v8, v9);

  MEMORY[0x2530AF890](0x6944646C756F6873, 0xEF203A79616C7073);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t CallToActionSnippetModel.callToActionButtonLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.getter()
{
  type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t type metadata accessor for CallToActionSnippetModel(uint64_t a1)
{
  result = qword_27F576B18;
  if (!qword_27F576B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallToActionSnippetModel.init(callToActionButtonLabel:callToActionDirectInvocation:shouldDisplay:)@<X0>(char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + *(type metadata accessor for CallToActionSnippetModel(0) + 24)) = a4;
  sub_252F5309C();
  sub_252F290F0();
  return sub_252F5300C();
}

uint64_t sub_252F4E990(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CallToActionSnippetModel.callToActionButtonLabel.setter(v1, v2);
}

uint64_t (*CallToActionSnippetModel.callToActionButtonLabel.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F1EBA8;
}

uint64_t CallToActionSnippetModel.callToActionDirectInvocation.setter(uint64_t a1)
{
  type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t (*CallToActionSnippetModel.callToActionDirectInvocation.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for CallToActionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v2[4] = sub_252F5301C();
  return sub_252F20BA0;
}

uint64_t CallToActionSnippetModel.shouldDisplay.setter(char a1)
{
  result = type metadata accessor for CallToActionSnippetModel(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

unint64_t sub_252F4EC54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F1CCC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252F4EC84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F1CD0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252F4ECB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F1CCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F4ECE0(uint64_t a1)
{
  v2 = sub_252F4F144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F4ED1C(uint64_t a1)
{
  v2 = sub_252F4F144();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall CallToActionSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F58A60;
  v1 = 0xD00000000000001BLL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t CallToActionSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v26 = v4;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576AF0, &qword_252F56970);
  OUTLINED_FUNCTION_16();
  v27 = v8;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CallToActionSnippetModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F4F144();
  v28 = v11;
  v15 = v32;
  sub_252F53CFC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v12;
  v16 = v14;
  v17 = v26;
  LOBYTE(v30) = 0;
  v30 = sub_252F53C0C();
  v31 = v18;
  sub_252F5309C();
  LOBYTE(v30) = 1;
  sub_252F2A098(&qword_27F576280, MEMORY[0x277D63230]);
  sub_252F53C2C();
  sub_252F5302C();
  (*(v17 + 8))(v7, v3);
  v19 = v32;
  sub_252F290F0();
  sub_252F5300C();
  LOBYTE(v30) = 2;
  v20 = sub_252F53C1C();
  v21 = OUTLINED_FUNCTION_3_12();
  v22(v21);
  *(v16 + *(v19 + 24)) = v20 & 1;
  sub_252F4F198(v16, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_252F3F7A8(v16);
}

unint64_t sub_252F4F144()
{
  result = qword_27F576AF8;
  if (!qword_27F576AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576AF8);
  }

  return result;
}

uint64_t sub_252F4F198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallToActionSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CallToActionSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v16 = v3;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B00, &qword_252F56978);
  OUTLINED_FUNCTION_16();
  v9 = v8;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F4F144();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v17) = 0;
  v13 = v18;
  sub_252F53C5C();
  if (v13)
  {
    (*(v9 + 8))(v12, v7);
  }

  else
  {

    type metadata accessor for CallToActionSnippetModel(0);
    sub_252F5302C();
    sub_252F290F0();
    sub_252F5300C();
    LOBYTE(v17) = 1;
    sub_252F2A098(&qword_27F576298, MEMORY[0x277D63228]);
    sub_252F53C7C();
    (*(v16 + 8))(v6, v2);
    LOBYTE(v17) = 2;
    sub_252F53C6C();
    return (*(v9 + 8))(v12, v7);
  }
}

uint64_t sub_252F4F538(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallToActionSnippetModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_252F4F5D4(uint64_t a1)
{
  sub_252F27FBC();
  if (v1 <= 0x3F)
  {
    sub_252F3D700(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallToActionSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_252F4F740()
{
  result = qword_27F576B28;
  if (!qword_27F576B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B28);
  }

  return result;
}

unint64_t sub_252F4F798()
{
  result = qword_27F576B30;
  if (!qword_27F576B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B30);
  }

  return result;
}

unint64_t sub_252F4F7F0()
{
  result = qword_27F576B38;
  if (!qword_27F576B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_252F539BC();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252F53CAC();
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252F53CAC();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2)
{

  return sub_252F539BC();
}

void *OUTLINED_FUNCTION_21_2(uint64_t a1, ...)
{

  return sub_252F53CCC();
}

uint64_t HomeAutomationSnippetModels.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_252F5310C();
  OUTLINED_FUNCTION_16();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  type metadata accessor for HomeAutomationSnippetModels(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  sub_252F4FBDC(v2, v12 - v11);
  if ((swift_getEnumCaseMultiPayload() | 2) == 2)
  {
    v14 = 0;
  }

  else
  {
    (*(v5 + 104))(v9, *MEMORY[0x277D61BE8], v3);
    v14 = sub_252F530FC();
    (*(v5 + 8))(v9, v3);
  }

  sub_252F4FFD0(v13, type metadata accessor for HomeAutomationSnippetModels);
  return v14 & 1;
}

uint64_t type metadata accessor for HomeAutomationSnippetModels(uint64_t a1)
{
  result = qword_27F576C00;
  if (!qword_27F576C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F4FBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAutomationSnippetModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeAutomationSnippetModels.description.getter()
{
  v2 = v0;
  v3 = type metadata accessor for TemperatureSnippetModel(0);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for CallToActionSnippetModel(0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for AutomationSnippetModel(0);
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for CompletionSnippetModel(0);
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  v22 = v21 - v20;
  v23 = type metadata accessor for ConfirmationSnippetModel(0);
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_0();
  v25 = OUTLINED_FUNCTION_21_3();
  v26 = type metadata accessor for DisambiguationSnippetModel(v25);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_0();
  v30 = v29 - v28;
  type metadata accessor for HomeAutomationSnippetModels(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  sub_252F4FBDC(v2, v33 - v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v44, v1, v45);
      ConfirmationSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v36 = type metadata accessor for ConfirmationSnippetModel;
      v37 = v1;
      break;
    case 2u:
      v40 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v40, v22, v41);
      CompletionSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v36 = type metadata accessor for CompletionSnippetModel;
      v37 = v22;
      break;
    case 3u:
      v42 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v42, v17, v43);
      AutomationSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v36 = type metadata accessor for AutomationSnippetModel;
      v37 = v17;
      break;
    case 4u:
      v38 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v38, v12, v39);
      CallToActionSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v36 = type metadata accessor for CallToActionSnippetModel;
      v37 = v12;
      break;
    case 5u:
      v46 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v46, v7, v47);
      TemperatureSnippetModel.description.getter();
      OUTLINED_FUNCTION_19_4();
      v36 = type metadata accessor for TemperatureSnippetModel;
      v37 = v7;
      break;
    default:
      v34 = OUTLINED_FUNCTION_17_4();
      sub_252F52264(v34, v30, v35);
      sub_252F3A05C();
      OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_3();
      v37 = v30;
      break;
  }

  sub_252F4FFD0(v37, v36);
  return v2;
}

uint64_t sub_252F4FFD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_252F50034(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000252F58AD0 == a2;
  if (v3 || (sub_252F53CAC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000252F58AF0 == a2;
    if (v6 || (sub_252F53CAC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974656C706D6F63 && a2 == 0xEE00776569566E6FLL;
      if (v7 || (sub_252F53CAC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974616D6F747561 && a2 == 0xEE00776569566E6FLL;
        if (v8 || (sub_252F53CAC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000252F58B10 == a2;
          if (v9 || (sub_252F53CAC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x74617265706D6574 && a2 == 0xEF77656956657275)
          {

            return 5;
          }

          else
          {
            v11 = sub_252F53CAC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_252F50274(unsigned __int8 a1)
{
  sub_252F53CCC();
  MEMORY[0x2530AFB80](a1);
  return sub_252F53CEC();
}

unint64_t sub_252F502BC(char a1)
{
  result = 0x6974656C706D6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6974616D6F747561;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x74617265706D6574;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_252F5038C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_252F53CAC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252F503FC()
{
  sub_252F53CCC();
  MEMORY[0x2530AFB80](0);
  return sub_252F53CEC();
}

uint64_t sub_252F50444(uint64_t a1)
{
  v2 = sub_252F51358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50480(uint64_t a1)
{
  v2 = sub_252F51358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F504BC(uint64_t a1)
{
  v2 = sub_252F51304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F504F8(uint64_t a1)
{
  v2 = sub_252F51304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F50550(uint64_t a1)
{
  v2 = *v1;
  sub_252F53CCC();
  MEMORY[0x2530AFB80](v2);
  return sub_252F53CEC();
}

uint64_t sub_252F5059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F50034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F505C4(uint64_t a1)
{
  v2 = sub_252F5125C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50600(uint64_t a1)
{
  v2 = sub_252F5125C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F5063C(uint64_t a1)
{
  v2 = sub_252F513AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50678(uint64_t a1)
{
  v2 = sub_252F513AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F506B4(uint64_t a1)
{
  v2 = sub_252F51400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F506F0(uint64_t a1)
{
  v2 = sub_252F51400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F5072C(uint64_t a1)
{
  v2 = sub_252F51454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50768(uint64_t a1)
{
  v2 = sub_252F51454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F507A4(uint64_t a1)
{
  sub_252F53CCC();
  MEMORY[0x2530AFB80](0);
  return sub_252F53CEC();
}

uint64_t sub_252F507E4(uint64_t a1)
{
  v2 = sub_252F512B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F50820(uint64_t a1)
{
  v2 = sub_252F512B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationSnippetModels.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B40, &qword_252F56B80);
  OUTLINED_FUNCTION_16();
  v142 = v4;
  v143 = v3;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_3();
  v141 = v6;
  v7 = OUTLINED_FUNCTION_7();
  v139 = type metadata accessor for TemperatureSnippetModel(v7);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v140 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B48, &qword_252F56B88);
  OUTLINED_FUNCTION_16();
  v137 = v12;
  v138 = v11;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_3();
  v136 = v14;
  v15 = OUTLINED_FUNCTION_7();
  v134 = type metadata accessor for CallToActionSnippetModel(v15);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v135 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B50, &qword_252F56B90);
  OUTLINED_FUNCTION_16();
  v132 = v20;
  v133 = v19;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_3();
  v131 = v22;
  v23 = OUTLINED_FUNCTION_7();
  v129 = type metadata accessor for AutomationSnippetModel(v23);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_0();
  v130 = v26 - v25;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B58, &qword_252F56B98);
  OUTLINED_FUNCTION_16();
  v127 = v27;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11_3();
  v126 = v29;
  v30 = OUTLINED_FUNCTION_7();
  v124 = type metadata accessor for CompletionSnippetModel(v30);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v125 = v33 - v32;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B60, &qword_252F56BA0);
  OUTLINED_FUNCTION_16();
  v122 = v34;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11_3();
  v121 = v36;
  v37 = OUTLINED_FUNCTION_7();
  v119 = type metadata accessor for ConfirmationSnippetModel(v37);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  v120 = v40 - v39;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B68, &qword_252F56BA8);
  OUTLINED_FUNCTION_16();
  v117 = v41;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v42);
  v43 = OUTLINED_FUNCTION_21_3();
  type metadata accessor for DisambiguationSnippetModel(v43);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  v47 = v46 - v45;
  v48 = type metadata accessor for HomeAutomationSnippetModels(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_0();
  v52 = v51 - v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576B70, &qword_252F56BB0);
  OUTLINED_FUNCTION_16();
  v145 = v54;
  v146 = v53;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v55);
  v57 = &v116 - v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F5125C();
  v144 = v57;
  sub_252F53D0C();
  sub_252F4FBDC(v147, v52);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v63 = v120;
      sub_252F52264(v52, v120, type metadata accessor for ConfirmationSnippetModel);
      v149 = 1;
      v95 = sub_252F51400();
      OUTLINED_FUNCTION_5_10(&type metadata for HomeAutomationSnippetModels.ConfirmationViewCodingKeys, &v149, v96, v97, v95);
      OUTLINED_FUNCTION_14_5();
      sub_252F52354(v98, v99, &protocol conformance descriptor for ConfirmationSnippetModel);
      v100 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2(v100, v101, v123, v119, v102);
      v103 = OUTLINED_FUNCTION_6_9();
      v104(v103);
      v74 = type metadata accessor for ConfirmationSnippetModel;
      goto LABEL_8;
    case 2u:
      v63 = v125;
      sub_252F52264(v52, v125, type metadata accessor for CompletionSnippetModel);
      v150 = 2;
      v75 = sub_252F513AC();
      OUTLINED_FUNCTION_5_10(&type metadata for HomeAutomationSnippetModels.CompletionViewCodingKeys, &v150, v76, v77, v75);
      OUTLINED_FUNCTION_9_8();
      sub_252F52354(v78, v79, &protocol conformance descriptor for CompletionSnippetModel);
      v80 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2(v80, v81, v128, v124, v82);
      v83 = OUTLINED_FUNCTION_6_9();
      v84(v83);
      v74 = type metadata accessor for CompletionSnippetModel;
      goto LABEL_8;
    case 3u:
      v63 = v130;
      sub_252F52264(v52, v130, type metadata accessor for AutomationSnippetModel);
      v151 = 3;
      v85 = sub_252F51358();
      OUTLINED_FUNCTION_5_10(&type metadata for HomeAutomationSnippetModels.AutomationViewCodingKeys, &v151, v86, v87, v85);
      OUTLINED_FUNCTION_8_7();
      sub_252F52354(v88, v89, &protocol conformance descriptor for AutomationSnippetModel);
      v90 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2(v90, v91, v133, v129, v92);
      v93 = OUTLINED_FUNCTION_6_9();
      v94(v93);
      v74 = type metadata accessor for AutomationSnippetModel;
      goto LABEL_8;
    case 4u:
      v63 = v135;
      sub_252F52264(v52, v135, type metadata accessor for CallToActionSnippetModel);
      v152 = 4;
      v64 = sub_252F51304();
      OUTLINED_FUNCTION_5_10(&type metadata for HomeAutomationSnippetModels.CallToActionViewCodingKeys, &v152, v65, v66, v64);
      OUTLINED_FUNCTION_10_7();
      sub_252F52354(v67, v68, &protocol conformance descriptor for CallToActionSnippetModel);
      v69 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2(v69, v70, v138, v134, v71);
      v72 = OUTLINED_FUNCTION_6_9();
      v73(v72);
      v74 = type metadata accessor for CallToActionSnippetModel;
      goto LABEL_8;
    case 5u:
      v63 = v140;
      sub_252F52264(v52, v140, type metadata accessor for TemperatureSnippetModel);
      v153 = 5;
      v105 = sub_252F512B0();
      OUTLINED_FUNCTION_5_10(&type metadata for HomeAutomationSnippetModels.TemperatureViewCodingKeys, &v153, v106, v107, v105);
      OUTLINED_FUNCTION_12_7();
      sub_252F52354(v108, v109, &protocol conformance descriptor for TemperatureSnippetModel);
      v110 = OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_26_2(v110, v111, v143, v139, v112);
      v113 = OUTLINED_FUNCTION_6_9();
      v114(v113);
      v74 = type metadata accessor for TemperatureSnippetModel;
LABEL_8:
      v61 = v74;
      v62 = v63;
      break;
    default:
      sub_252F52264(v52, v47, type metadata accessor for DisambiguationSnippetModel);
      v148 = 0;
      sub_252F51454();
      v48 = v146;
      v57 = v144;
      sub_252F53C4C();
      OUTLINED_FUNCTION_13_8();
      sub_252F52354(v58, v59, "aG./|o");
      v60 = v118;
      sub_252F53C7C();
      (*(v117 + 8))(v1, v60);
      OUTLINED_FUNCTION_15_3();
      v62 = v47;
      break;
  }

  sub_252F4FFD0(v62, v61);
  return (*(v145 + 8))(v57, v48);
}

unint64_t sub_252F5125C()
{
  result = qword_27F576B78;
  if (!qword_27F576B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B78);
  }

  return result;
}

unint64_t sub_252F512B0()
{
  result = qword_27F576B80;
  if (!qword_27F576B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B80);
  }

  return result;
}

unint64_t sub_252F51304()
{
  result = qword_27F576B88;
  if (!qword_27F576B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B88);
  }

  return result;
}

unint64_t sub_252F51358()
{
  result = qword_27F576B90;
  if (!qword_27F576B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B90);
  }

  return result;
}

unint64_t sub_252F513AC()
{
  result = qword_27F576B98;
  if (!qword_27F576B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576B98);
  }

  return result;
}

unint64_t sub_252F51400()
{
  result = qword_27F576BA0;
  if (!qword_27F576BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576BA0);
  }

  return result;
}

unint64_t sub_252F51454()
{
  result = qword_27F576BA8;
  if (!qword_27F576BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576BA8);
  }

  return result;
}

uint64_t HomeAutomationSnippetModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BB0, &qword_252F56BB8);
  OUTLINED_FUNCTION_16();
  v131 = v4;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_3();
  v139 = v6;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BB8, &qword_252F56BC0);
  OUTLINED_FUNCTION_16();
  v130 = v7;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_3();
  v135 = v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BC0, &qword_252F56BC8);
  OUTLINED_FUNCTION_16();
  v129 = v10;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_3();
  v134 = v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BC8, &qword_252F56BD0);
  OUTLINED_FUNCTION_16();
  v128 = v13;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_3();
  v138 = v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BD0, &qword_252F56BD8);
  OUTLINED_FUNCTION_16();
  v127 = v16;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_3();
  v133 = v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BD8, &qword_252F56BE0);
  OUTLINED_FUNCTION_16();
  v126 = v19;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11_3();
  v132 = v21;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BE0, &qword_252F56BE8);
  OUTLINED_FUNCTION_16();
  v137 = v22;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_21_3();
  v140 = type metadata accessor for HomeAutomationSnippetModels(v24);
  OUTLINED_FUNCTION_1();
  v26 = MEMORY[0x28223BE20](v25);
  v119 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v118 = &v111 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v111 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v111 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v111 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v111 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v111 - v42;
  v44 = a1[3];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_252F5125C();
  v45 = v143;
  sub_252F53CFC();
  if (v45)
  {
    goto LABEL_10;
  }

  v116 = v38;
  v114 = v35;
  v115 = v32;
  v117 = v41;
  v46 = v138;
  v143 = v43;
  v47 = v141;
  v48 = sub_252F53C3C();
  result = sub_252F521A0(v48, 0);
  if (v51 == v52 >> 1)
  {
    v53 = v2;
    v54 = v137;
LABEL_9:
    OUTLINED_FUNCTION_27_2();
    v65 = sub_252F53BAC();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576BE8, &qword_252F56BF0);
    *v67 = v46;
    sub_252F53BFC();
    sub_252F53B9C();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x277D84160], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v53, v47);
LABEL_10:
    v68 = v142;
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v113 = 0;
  if (v51 < (v52 >> 1))
  {
    v112 = *(v50 + v51);
    sub_252F521E8(v51 + 1, v52 >> 1, result, v50, v51, v52);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v59 = v143;
    if (v56 == v58 >> 1)
    {
      v60 = v136;
      switch(v112)
      {
        case 1:
          v145 = 1;
          sub_252F51400();
          v73 = v133;
          v74 = v141;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.ConfirmationViewCodingKeys, &v145, v141);
          type metadata accessor for ConfirmationSnippetModel(0);
          OUTLINED_FUNCTION_14_5();
          sub_252F52354(v82, v83, &protocol conformance descriptor for ConfirmationSnippetModel);
          OUTLINED_FUNCTION_25_2();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          (*(v127 + 8))(v73, v74);
          v104 = OUTLINED_FUNCTION_2_14();
          v105(v104);
          v106 = v116;
          swift_storeEnumTagMultiPayload();
          v103 = v106;
          v102 = v142;
          break;
        case 2:
          v146 = 2;
          sub_252F513AC();
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.CompletionViewCodingKeys, &v146, v141);
          type metadata accessor for CompletionSnippetModel(0);
          OUTLINED_FUNCTION_9_8();
          sub_252F52354(v75, v76, &protocol conformance descriptor for CompletionSnippetModel);
          v77 = v114;
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v91 = OUTLINED_FUNCTION_22_0();
          v92(v91);
          v93 = OUTLINED_FUNCTION_2_14();
          v94(v93);
          swift_storeEnumTagMultiPayload();
          v103 = v77;
          goto LABEL_18;
        case 3:
          v147 = 3;
          sub_252F51358();
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.AutomationViewCodingKeys, &v147, v141);
          v78 = OUTLINED_FUNCTION_27_2();
          type metadata accessor for AutomationSnippetModel(v78);
          OUTLINED_FUNCTION_8_7();
          sub_252F52354(v79, v80, &protocol conformance descriptor for AutomationSnippetModel);
          v81 = v115;
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_28_2();
          v96(v95);
          v97 = OUTLINED_FUNCTION_2_14();
          v98(v97);
          swift_storeEnumTagMultiPayload();
          v103 = v81;
          v102 = v142;
          v59 = v143;
          break;
        case 4:
          v148 = 4;
          sub_252F51304();
          v69 = v141;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.CallToActionViewCodingKeys, &v148, v141);
          v70 = OUTLINED_FUNCTION_27_2();
          type metadata accessor for CallToActionSnippetModel(v70);
          OUTLINED_FUNCTION_10_7();
          sub_252F52354(v71, v72, &protocol conformance descriptor for CallToActionSnippetModel);
          OUTLINED_FUNCTION_29_1();
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v87 = OUTLINED_FUNCTION_22_0();
          v88(v87);
          v89 = OUTLINED_FUNCTION_2_14();
          v90(v89);
          goto LABEL_17;
        case 5:
          v149 = 5;
          sub_252F512B0();
          v69 = v141;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.TemperatureViewCodingKeys, &v149, v141);
          v84 = OUTLINED_FUNCTION_27_2();
          type metadata accessor for TemperatureSnippetModel(v84);
          OUTLINED_FUNCTION_12_7();
          sub_252F52354(v85, v86, &protocol conformance descriptor for TemperatureSnippetModel);
          OUTLINED_FUNCTION_29_1();
          sub_252F53C2C();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          v107 = OUTLINED_FUNCTION_22_0();
          v108(v107);
          v109 = OUTLINED_FUNCTION_2_14();
          v110(v109);
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v103 = v69;
LABEL_18:
          v102 = v142;
          v60 = v136;
          break;
        default:
          v144 = 0;
          sub_252F51454();
          v61 = v132;
          v62 = v141;
          OUTLINED_FUNCTION_16_3(&type metadata for HomeAutomationSnippetModels.DisambiguationViewCodingKeys, &v144, v141);
          type metadata accessor for DisambiguationSnippetModel(0);
          OUTLINED_FUNCTION_13_8();
          sub_252F52354(v63, v64, &protocol conformance descriptor for DisambiguationSnippetModel);
          OUTLINED_FUNCTION_25_2();
          OUTLINED_FUNCTION_20_2();
          swift_unknownObjectRelease();
          (*(v126 + 8))(v61, v62);
          v99 = OUTLINED_FUNCTION_2_14();
          v100(v99);
          v101 = v117;
          swift_storeEnumTagMultiPayload();
          v102 = v142;
          v103 = v101;
          break;
      }

      sub_252F52264(v103, v59, type metadata accessor for HomeAutomationSnippetModels);
      sub_252F52264(v59, v60, type metadata accessor for HomeAutomationSnippetModels);
      v68 = v102;
      return __swift_destroy_boxed_opaque_existential_1(v68);
    }

    v53 = v2;
    v54 = v137;
    v47 = v141;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_252F521A0(uint64_t result, uint64_t a2)
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

uint64_t sub_252F521E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_252F52264(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_252F52354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252F523A4(uint64_t a1)
{
  result = type metadata accessor for DisambiguationSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConfirmationSnippetModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CompletionSnippetModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AutomationSnippetModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for CallToActionSnippetModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TemperatureSnippetModel(319);
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

_BYTE *storeEnumTagSinglePayload for HomeAutomationSnippetModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_252F52594(_BYTE *result, int a2, int a3)
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

unint64_t sub_252F52644()
{
  result = qword_27F576C10;
  if (!qword_27F576C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C10);
  }

  return result;
}

unint64_t sub_252F5269C()
{
  result = qword_27F576C18;
  if (!qword_27F576C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C18);
  }

  return result;
}

unint64_t sub_252F526F4()
{
  result = qword_27F576C20;
  if (!qword_27F576C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C20);
  }

  return result;
}

unint64_t sub_252F5274C()
{
  result = qword_27F576C28;
  if (!qword_27F576C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C28);
  }

  return result;
}

unint64_t sub_252F527A4()
{
  result = qword_27F576C30;
  if (!qword_27F576C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C30);
  }

  return result;
}

unint64_t sub_252F527FC()
{
  result = qword_27F576C38;
  if (!qword_27F576C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C38);
  }

  return result;
}

unint64_t sub_252F52854()
{
  result = qword_27F576C40;
  if (!qword_27F576C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C40);
  }

  return result;
}

unint64_t sub_252F528AC()
{
  result = qword_27F576C48;
  if (!qword_27F576C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C48);
  }

  return result;
}

unint64_t sub_252F52904()
{
  result = qword_27F576C50;
  if (!qword_27F576C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C50);
  }

  return result;
}

unint64_t sub_252F5295C()
{
  result = qword_27F576C58;
  if (!qword_27F576C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C58);
  }

  return result;
}

unint64_t sub_252F529B4()
{
  result = qword_27F576C60;
  if (!qword_27F576C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C60);
  }

  return result;
}

unint64_t sub_252F52A0C()
{
  result = qword_27F576C68;
  if (!qword_27F576C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C68);
  }

  return result;
}

unint64_t sub_252F52A64()
{
  result = qword_27F576C70;
  if (!qword_27F576C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C70);
  }

  return result;
}

unint64_t sub_252F52ABC()
{
  result = qword_27F576C78;
  if (!qword_27F576C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C78);
  }

  return result;
}

unint64_t sub_252F52B14()
{
  result = qword_27F576C80;
  if (!qword_27F576C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C80);
  }

  return result;
}

unint64_t sub_252F52B6C()
{
  result = qword_27F576C88;
  if (!qword_27F576C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C88);
  }

  return result;
}

unint64_t sub_252F52BC4()
{
  result = qword_27F576C90;
  if (!qword_27F576C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C90);
  }

  return result;
}

unint64_t sub_252F52C1C()
{
  result = qword_27F576C98;
  if (!qword_27F576C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576C98);
  }

  return result;
}

unint64_t sub_252F52C74()
{
  result = qword_27F576CA0;
  if (!qword_27F576CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576CA0);
  }

  return result;
}

unint64_t sub_252F52CCC()
{
  result = qword_27F576CA8;
  if (!qword_27F576CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576CA8);
  }

  return result;
}

unint64_t sub_252F52D24()
{
  result = qword_27F576CB0;
  if (!qword_27F576CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576CB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_252F53C4C();
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FD968](a1, a2, a3, a1);
}

void *OUTLINED_FUNCTION_25_2()
{

  return sub_252F53C2C();
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_252F53C7C();
}