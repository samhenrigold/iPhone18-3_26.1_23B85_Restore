uint64_t static UsoEntity_common_HealthLog.builder(healthLogName:areaType:healthLogNameIdentifierNamespace:measurementNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  v21 = a5;
  v22 = a6;
  v11 = sub_251673848();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673DC8();
  swift_allocObject();
  v15 = sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    v20 = a4;
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v16 = sub_2516739C8();
    v19[1] = a2;
    v17 = v16;
    v21 = v11;

    sub_251673818();
    sub_2516737D8();
    (*(v12 + 8))(v14, v21);
    v23 = v17;
    a4 = v20;
    sub_251673868();
  }

  if (a4)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(a3, a4);
    sub_251673D98();
  }

  if (a7)
  {
    sub_251673E88();
    swift_allocObject();
    sub_251673E78();
    sub_251673DA8();
  }

  return v15;
}

uint64_t static UsoEntity_common_HealthLog.with(healthLogName:areaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_251673848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673DC8();
  swift_allocObject();
  v11 = sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    v14 = a3;
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v12 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v8 + 8))(v10, v7);
    v15 = v12;
    a3 = v14;
    sub_251673868();
  }

  if (a4)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(a3, a4);
    sub_251673D98();
  }

  MEMORY[0x25307D850](v11);
  sub_251673A38();
  sub_251673A18();

  return v15;
}

double variable initialization expression of FlowConfigModel.aceService@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static USOParse.startWorkout(_:appIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a4;
  v103 = a3;
  v112 = a5;
  v100 = sub_251674568();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  MEMORY[0x28223BE20](v10 - 8);
  v108 = &v88 - v11;
  v12 = sub_251673688();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v88 - v15;
  v16 = sub_251673AC8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v89 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v106 = &v88 - v20;
  v21 = sub_251673848();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v111 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v92 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v93 = &v88 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v88 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v88 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v88 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v88 - v38;
  v40 = sub_251673A98();
  v41 = *(*(v40 - 8) + 56);
  v113 = v39;
  v41(v39, 1, 1, v40);
  v42 = sub_251673D68();
  v43 = *(*(v42 - 8) + 56);
  v114 = v36;
  v43(v36, 1, 1, v42);
  v105 = v17;
  v44 = *(v17 + 56);
  v115 = v33;
  v91 = v44;
  v44(v33, 1, 1, v16);
  sub_251673CB8();
  swift_allocObject();
  v45 = sub_251673CA8();
  sub_251673DC8();
  swift_allocObject();
  sub_251673DB8();
  v116 = v45;
  if (a2)
  {
    sub_2516739D8();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v46 = sub_2516739C8();
    v104 = v31;
    v102 = v16;
    v47 = v21;
    v48 = a1;
    v49 = a2;
    v50 = v46;
    v51 = v111;
    sub_251673818();
    sub_2516737D8();
    (*(v22 + 8))(v51, v47);
    v120 = v50;
    sub_251673868();
    a2 = v49;
    a1 = v48;
    v21 = v47;
    v16 = v102;
    v31 = v104;
  }

  v101 = v22;
  v102 = v21;
  v90 = a1;
  v97 = a2;

  sub_251673C78();

  v104 = sub_251658E48(v113, v114, 0, 1);
  sub_251673C88();
  sub_251654A14(v115, v31);
  v52 = v105;
  v53 = *(v105 + 48);
  if (v53(v31, 1, v16) == 1)
  {
    sub_251654A84(v31, &qword_27F452390, &unk_251675D30);
    v54 = v109;
    v55 = v112;
    if (!v107)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_251673A68();
    swift_allocObject();
    sub_251673A58();
    sub_2516739D8();
    swift_allocObject();

    v62 = sub_2516739C8();
    v63 = v111;
    sub_251673818();
    sub_2516737D8();
    (*(v101 + 8))(v63, v102);
    v120 = v62;
    sub_251673868();

    sub_251673A08();

    goto LABEL_11;
  }

  v56 = v106;
  v88 = *(v52 + 32);
  v88(v106, v31, v16);
  v57 = v93;
  (*(v52 + 16))(v93, v56, v16);
  v91(v57, 0, 1, v16);
  sub_251673F18();
  swift_allocObject();
  sub_251673F08();
  v58 = v92;
  sub_251654A14(v57, v92);
  if (v53(v58, 1, v16) == 1)
  {
    sub_251654A84(v57, &qword_27F452390, &unk_251675D30);
    v59 = v58;
    v54 = v109;
    v60 = v107;
  }

  else
  {
    v61 = v89;
    v88(v89, v58, v16);
    sub_251673EF8();
    (*(v52 + 8))(v61, v16);
    v54 = v109;
    v60 = v107;
    v59 = v57;
  }

  sub_251654A84(v59, &qword_27F452390, &unk_251675D30);

  sub_2516739F8();

  (*(v52 + 8))(v106, v16);
  v55 = v112;
  if (v60)
  {
    goto LABEL_10;
  }

LABEL_11:

  sub_251673FC8();
  swift_allocObject();
  v64 = sub_251673FB8();
  sub_251673BC8();

  sub_251654A84(v115, &qword_27F452390, &unk_251675D30);
  sub_251654A84(v114, &qword_27F452398, &qword_251675270);
  sub_251654A84(v113, &qword_27F4523A0, &unk_251675E00);
  v65 = v108;
  static Siri_Nlu_External_UserParse.with(task:hasCancelled:)(v64, 0, v108);
  v66 = v110;
  if ((*(v54 + 48))(v65, 1, v110) == 1)
  {
    sub_251654A84(v65, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v67 = v100;
    v68 = __swift_project_value_buffer(v100, static Logger.common);
    swift_beginAccess();
    v69 = v99;
    v70 = v98;
    (*(v99 + 16))(v98, v68, v67);
    v71 = v97;

    v72 = sub_251674548();
    v73 = sub_251674728();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = v69;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v118 = v71;
      v119 = v76;
      *v75 = 136315138;
      v117 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
      v77 = sub_251674788();
      v79 = sub_25165445C(v77, v78, &v119);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_251650000, v72, v73, "Failed to create USOParse for workout task: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x25307EDE0](v76, -1, -1);
      MEMORY[0x25307EDE0](v75, -1, -1);

      (*(v74 + 8))(v70, v67);
    }

    else
    {

      (*(v69 + 8))(v70, v67);
    }

    v85 = 1;
    v55 = v112;
  }

  else
  {
    v80 = v95;
    (*(v54 + 32))(v95, v65, v66);
    (*(v54 + 16))(v94, v80, v66);
    v81 = *MEMORY[0x277D5DA78];
    v82 = sub_251673628();
    v83 = *(v82 - 8);
    v84 = v96;
    (*(v83 + 104))(v96, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    sub_251673608();

    (*(v54 + 8))(v80, v66);
    v85 = 0;
  }

  v86 = sub_251673618();
  return (*(*(v86 - 8) + 56))(v55, v85, 1, v86);
}

uint64_t static USOParse.modifyWorkout(_:verb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v45 = a4;
  v7 = sub_251674568();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_251673688();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v42 = a1;
  v24 = _s12SiriOntology7UsoTaskC18HealthDomainsToolsE13modifyWorkout_4verbAA0C37_VerbTemplateBuilder_ReferenceControlCyAA0c6Entitym8_common_I0CGSSSg_AD06ModifyidK0OtFZ_0(a1, a2, v4);
  static Siri_Nlu_External_UserParse.with(task:hasCancelled:)(v24, 0, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_251654A84(v16, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v25 = v43;
    v26 = __swift_project_value_buffer(v43, static Logger.common);
    swift_beginAccess();
    v27 = v44;
    (*(v44 + 16))(v10, v26, v25);

    v28 = sub_251674548();
    v29 = sub_251674728();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = a2;
      v48 = v31;
      *v30 = 136315138;
      v46 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
      v32 = sub_251674788();
      v34 = sub_25165445C(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_251650000, v28, v29, "Failed to create USOParse for workout task: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25307EDE0](v31, -1, -1);
      MEMORY[0x25307EDE0](v30, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v10, v25);
    v39 = 1;
    v38 = v45;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    (*(v18 + 16))(v21, v23, v17);
    v35 = *MEMORY[0x277D5DA78];
    v36 = sub_251673628();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v13, v35, v36);
    (*(v37 + 56))(v13, 0, 1, v36);
    v38 = v45;
    sub_251673608();

    (*(v18 + 8))(v23, v17);
    v39 = 0;
  }

  v40 = sub_251673618();
  return (*(*(v40 - 8) + 56))(v38, v39, 1, v40);
}

uint64_t sub_251653940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_251674568();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_251673688();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v42 = a1;
  v24 = a3(a1, a2);
  static Siri_Nlu_External_UserParse.with(task:hasCancelled:)(v24, 1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_251654A84(v16, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v25 = v43;
    v26 = __swift_project_value_buffer(v43, static Logger.common);
    swift_beginAccess();
    v27 = v44;
    (*(v44 + 16))(v10, v26, v25);

    v28 = sub_251674548();
    v29 = sub_251674728();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = a2;
      v48 = v31;
      *v30 = 136315138;
      v46 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
      v32 = sub_251674788();
      v34 = sub_25165445C(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_251650000, v28, v29, "Failed to create USOParse for workout task: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25307EDE0](v31, -1, -1);
      MEMORY[0x25307EDE0](v30, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v10, v25);
    v39 = 1;
    v38 = v45;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    (*(v18 + 16))(v21, v23, v17);
    v35 = *MEMORY[0x277D5DA78];
    v36 = sub_251673628();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v13, v35, v36);
    (*(v37 + 56))(v13, 0, 1, v36);
    v38 = v45;
    sub_251673608();

    (*(v18 + 8))(v23, v17);
    v39 = 0;
  }

  v40 = sub_251673618();
  return (*(*(v40 - 8) + 56))(v38, v39, 1, v40);
}

uint64_t sub_251653EB0@<X0>(Class *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_251674568();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452380, &qword_251675260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452388, &qword_251675268);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_251673688();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = [objc_allocWithZone(*a1) init];
  sub_251673788();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v22 = v36;
    sub_251654A84(v13, &qword_27F452388, &qword_251675268);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, static Logger.common);
    swift_beginAccess();
    (*(v5 + 16))(v7, v23, v4);
    v24 = sub_251674548();
    v25 = sub_251674728();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_251650000, v24, v25, v35, v26, 2u);
      MEMORY[0x25307EDE0](v26, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v27 = 1;
    v28 = v22;
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    v29 = *MEMORY[0x277D5DA78];
    v30 = sub_251673628();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v10, v29, v30);
    (*(v31 + 56))(v10, 0, 1, v30);
    v28 = v36;
    sub_251673608();
    (*(v15 + 8))(v20, v14);
    v27 = 0;
  }

  v32 = sub_251673618();
  return (*(*(v32 - 8) + 56))(v28, v27, 1, v32);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25165438C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_251654400(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25165445C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25165445C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251654528(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251654B68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251654528(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251654634(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251674848();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_251654634(uint64_t a1, unint64_t a2)
{
  v3 = sub_251654680(a1, a2);
  sub_2516547B0(&unk_28638E4D0);
  return v3;
}

void *sub_251654680(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25165489C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251674848();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251674678();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25165489C(v10, 0);
        result = sub_2516747F8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2516547B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251654910(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25165489C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B0, &qword_251675278);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251654910(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B0, &qword_251675278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_251654A04(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_251654A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251654A84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_251654B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DialogFlow.catId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DialogFlow.init(catId:wrapper:parameters:snippets:deviceState:aceService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  sub_251654C4C(a6, (a8 + 5));

  return sub_251654C4C(a7, (a8 + 10));
}

uint64_t sub_251654C4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t DialogFlow.execute(completion:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v78 = a1;
  v70 = sub_251673538();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251673558();
  v67 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  v7 = MEMORY[0x28223BE20](v72);
  v73 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v80 = &v65 - v9;
  v10 = sub_251674568();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v71 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - v17;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, static Logger.common);
  swift_beginAccess();
  v20 = *(v11 + 16);
  v76 = v19;
  v75 = v11 + 16;
  v74 = v20;
  v20(v18, v19, v10);
  sub_2516559D8(v3, &v82);
  v21 = sub_251674548();
  v22 = sub_251674718();
  v23 = os_log_type_enabled(v21, v22);
  v77 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v81 = v25;
    *v24 = 136315138;
    v65 = v5;
    v26 = v14;
    v27 = v11;
    v29 = v82;
    v28 = v83;

    sub_251655A10(&v82);
    v30 = sub_25165445C(v29, v28, &v81);
    v11 = v27;
    v14 = v26;
    v5 = v65;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_251650000, v21, v22, "Executing dialog: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v31 = v25;
    v10 = v77;
    MEMORY[0x25307EDE0](v31, -1, -1);
    MEMORY[0x25307EDE0](v24, -1, -1);
  }

  else
  {

    sub_251655A10(&v82);
  }

  v32 = *(v11 + 8);
  v32(v18, v10);
  v33 = v80;
  sub_251674388();
  v34 = v33;
  v35 = v73;
  sub_251655A40(v34, v73);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    v37 = v71;
    v74(v71, v76, v10);
    sub_2516559D8(v3, &v82);
    v38 = sub_251674548();
    v39 = sub_251674728();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v81 = v41;
      *v40 = 136315138;
      v42 = v82;
      v43 = v83;

      sub_251655A10(&v82);
      v44 = sub_25165445C(v42, v43, &v81);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_251650000, v38, v39, "Failed to execute CAT: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v45 = v41;
      v10 = v77;
      MEMORY[0x25307EDE0](v45, -1, -1);
      MEMORY[0x25307EDE0](v40, -1, -1);

      v46 = v71;
    }

    else
    {

      sub_251655A10(&v82);
      v46 = v37;
    }

    v32(v46, v10);
    v74(v14, v76, v10);
    v52 = v36;
    v53 = sub_251674548();
    v54 = sub_251674728();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v81 = v36;
      v82 = v56;
      *v55 = 136315138;
      v57 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
      v58 = sub_251674618();
      v60 = sub_25165445C(v58, v59, &v82);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_251650000, v53, v54, "Error: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x25307EDE0](v56, -1, -1);
      MEMORY[0x25307EDE0](v55, -1, -1);

      v61 = v14;
      v62 = v77;
    }

    else
    {

      v61 = v14;
      v62 = v10;
    }

    v32(v61, v62);
    v63 = v68;
    sub_251673518();
    v78(v63);

    (*(v69 + 8))(v63, v70);
  }

  else
  {
    v47 = v67;
    v48 = v66;
    (*(v67 + 32))(v66, v35, v5);
    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_251673408();
    sub_2516734B8();
    swift_allocObject();
    sub_2516734A8();
    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_251673408();
    v49 = sub_251673498();

    __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
    v50 = swift_allocObject();
    v51 = v79;
    *(v50 + 16) = v78;
    *(v50 + 24) = v51;
    sub_251655B9C();

    sub_251673578();

    (*(v47 + 8))(v48, v5);
  }

  return sub_251655AB0(v80);
}

uint64_t sub_251655594(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_251673538();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673518();
  a2(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_251655678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_251655728;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_251655728(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_251655828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2516558DC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2516558DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_251655A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251655AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_251655B5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_251655B9C()
{
  result = qword_27F4523C8;
  if (!qword_27F4523C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4523C8);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_251655C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251655C5C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static DialogCalendar.make(date:)()
{
  sub_251674378();
  swift_allocObject();
  sub_251674368();
  sub_251673218();
  sub_251674358();

  v0 = sub_251674348();

  return v0;
}

uint64_t static Siri_Nlu_External_UserParse.with(task:hasCancelled:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v50 = a3;
  v4 = sub_2516736A8();
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_251673708();
  v42 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_251673748();
  v49 = *(v45 - 8);
  v7 = MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D0, &qword_251675390);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_251673648();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D8, &qword_251675398);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v38 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251675370;
  *(v24 + 32) = a1;
  v25 = sub_251673898();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);

  MEMORY[0x25307D720](v24, v23);

  sub_251654A84(v23, &qword_27F4523D8, &qword_251675398);
  sub_251673798();
  v26 = v42;
  (*(v15 + 56))(v13, 0, 1, v14);
  (*(v15 + 32))(v20, v13, v14);
  sub_251673738();
  v27 = *(v15 + 16);
  v39 = v20;
  v40 = v14;
  v27(v18, v20, v14);
  sub_251673728();
  v28 = v48;
  sub_2516736F8();
  v29 = *(v49 + 16);
  v30 = v45;
  v41 = v10;
  v29(v44, v10, v45);
  sub_2516736D8();
  if (v46)
  {
    sub_251673698();
    sub_2516736E8();
  }

  v31 = v50;
  sub_251673678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523E0, &qword_2516753A0);
  v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251675380;
  v34 = v33 + v32;
  v35 = v47;
  (*(v26 + 16))(v34, v28, v47);
  sub_251673668();

  (*(v26 + 8))(v28, v35);
  (*(v49 + 8))(v41, v30);
  (*(v15 + 8))(v39, v40);
  v36 = sub_251673688();
  return (*(*(v36 - 8) + 56))(v31, 0, 1, v36);
}

uint64_t static UsoEntity_common_DurationComponent.builder(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251674148();
  swift_allocObject();
  v6 = sub_251674138();
  if (a1)
  {

    sub_251674118();
  }

  if (a3)
  {

    sub_251674128();
  }

  return v6;
}

uint64_t static UsoEntity_common_DurationComponent.with(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251674148();
  swift_allocObject();
  v6 = sub_251674138();
  if (a1)
  {

    sub_251674118();
  }

  if (a3)
  {

    sub_251674128();
  }

  MEMORY[0x25307D850](v6);
  sub_251673E28();
  sub_251673A18();

  return v8;
}

uint64_t LocationService.init(with:geocoder:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_251654C4C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t LocationService.getCurrentLocation()()
{
  v1 = sub_251674568();
  v0[29] = v1;
  v0[30] = *(v1 - 8);
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251656594, 0, 0);
}

uint64_t sub_251656594()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v0[33] = v1;
  v2 = *MEMORY[0x277CE4270];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_2516566E8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523E8, &qword_2516753B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_251656BCC;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 currentLocationWithAccuracy:v0 + 10 timeout:v2 completion:1.0];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2516566E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_251656980;
  }

  else
  {
    v2 = sub_2516567F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2516567F8()
{
  v1 = *(v0 + 216);
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = __swift_project_value_buffer(v3, static Logger.common);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Fetched location", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);

  (*(v11 + 8))(v9, v10);

  v12 = *(v0 + 8);

  return v12(v1);
}

uint64_t sub_251656980()
{
  v24 = v0;
  swift_willThrow();
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = __swift_project_value_buffer(v4, static Logger.common);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_251674548();
  v8 = sub_251674728();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[34];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];
  if (v9)
  {
    v22 = v0[29];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_2516749A8();
    v19 = sub_25165445C(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_251650000, v7, v8, "Error submitting SAGetRequestOrigin: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25307EDE0](v16, -1, -1);
    MEMORY[0x25307EDE0](v15, -1, -1);

    (*(v13 + 8))(v12, v22);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_251656BCC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t LocationService.getLocationCountryCode()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251656D48;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251656D48(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_251656E48, 0, 0);
}

uint64_t sub_251656E48()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) ISOcountryCode], v1, v2))
  {
    v3 = sub_251674608();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7, v6);
}

uint64_t LocationService.getCurrentPlacemark()()
{
  v1[32] = v0;
  v2 = sub_251674568();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[38] = v3;
  *v3 = v1;
  v3[1] = sub_251657000;

  return LocationService.getCurrentLocation()();
}

uint64_t sub_251657000(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_251657100, 0, 0);
}

uint64_t sub_251657100()
{
  v1 = v0[39];
  if (v1)
  {
    v2 = *(v0[32] + 40);
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_25165738C;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523F0, &qword_2516753D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_251657B48;
    v0[13] = &block_descriptor_5;
    v0[14] = v3;
    [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v4 = v0[36];
    v5 = v0[33];
    v6 = v0[34];
    v7 = __swift_project_value_buffer(v5, static Logger.common);
    swift_beginAccess();
    (*(v6 + 16))(v4, v7, v5);
    v8 = sub_251674548();
    v9 = sub_251674728();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[36];
    v12 = v0[33];
    v13 = v0[34];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_251650000, v8, v9, "Could not acquire location, so unable to determine placemark", v14, 2u);
      MEMORY[0x25307EDE0](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_25165738C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_2516576B0;
  }

  else
  {
    v2 = sub_25165749C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25165749C()
{
  v1 = v0[30];
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = __swift_project_value_buffer(v3, static Logger.common);
  swift_beginAccess();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Reverse geocoding returned placemarks", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = v0[37];
  v10 = v0[33];
  v11 = v0[34];

  (*(v11 + 8))(v9, v10);
  if (v1 >> 62)
  {
    result = sub_251674918();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    v16 = v0[39];

    v14 = 0;
    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x25307E6F0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v1 + 32);
  }

  v14 = v13;
  v15 = v0[39];

LABEL_13:

  v17 = v0[1];

  return v17(v14);
}

uint64_t sub_2516576B0()
{
  v24 = v0;
  swift_willThrow();
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = __swift_project_value_buffer(v4, static Logger.common);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_251674548();
  v8 = sub_251674728();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[39];
  v11 = v0[40];
  v13 = v0[34];
  v12 = v0[35];
  v14 = v0[33];
  if (v9)
  {
    v22 = v0[33];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_2516749A8();
    v19 = sub_25165445C(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_251650000, v7, v8, "Error reverse geocoding: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25307EDE0](v16, -1, -1);
    MEMORY[0x25307EDE0](v15, -1, -1);

    (*(v13 + 8))(v12, v22);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t LocationService.getCurrentCity()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251657994;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251657994(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_251657A94, 0, 0);
}

uint64_t sub_251657A94()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [*(v0 + 24) locality], v1, v2))
  {
    v3 = sub_251674608();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7, v6);
}

uint64_t sub_251657B48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_251657F10();
    **(*(v4 + 64) + 40) = sub_2516746B8();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_251657C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251655728;

  return LocationService.getCurrentLocation()();
}

uint64_t sub_251657CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251656D48;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251657D40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251657994;

  return LocationService.getCurrentPlacemark()();
}

uint64_t sub_251657DCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_251657F64;

  return LocationService.getCurrentPlacemark()();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_251657E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251657EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251657F10()
{
  result = qword_27F4523F8;
  if (!qword_27F4523F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4523F8);
  }

  return result;
}

uint64_t FlowConfigModel.init(deviceState:aceService:aceServiceAsync:sharedContextService:outputPublisher:flowFinder:networkStatusProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 272) = 0;
  *(a8 + 256) = 0u;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *a8 = 0u;
  *(a8 + 240) = 0u;
  v15 = a8 + 240;
  *(a8 + 160) = 0u;
  v16 = a8 + 160;
  *(a8 + 80) = 0u;
  v17 = a8 + 80;
  sub_2516580C0(a1, a8, &qword_27F452400, &qword_251675480);
  sub_2516580C0(a2, a8 + 40, &qword_27F452408, &qword_251675488);
  sub_2516580C0(a3, v17, &qword_27F452410, &qword_251675490);
  sub_2516580C0(a4, a8 + 120, &qword_27F452418, &qword_251675498);
  sub_2516580C0(a5, v16, &qword_27F452420, &qword_2516754A0);
  sub_2516580C0(a6, a8 + 200, &qword_27F452428, &qword_2516754A8);
  return sub_2516580C0(a7, v15, &qword_27F452430, &qword_2516754B0);
}

uint64_t sub_2516580C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t FlowConfigModel.getDeviceState()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1, &v4, &qword_27F452400, &qword_251675480);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452400, &qword_251675480);
  return sub_2516735E8();
}

uint64_t FlowConfigModel.getAceService()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 40, &v4, &qword_27F452408, &qword_251675488);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452408, &qword_251675488);
  return sub_2516733F8();
}

uint64_t FlowConfigModel.getAceServiceAsync()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 80, &v4, &qword_27F452410, &qword_251675490);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  result = sub_2516733E8();
  if (v5)
  {
    return sub_251654A84(&v4, &qword_27F452410, &qword_251675490);
  }

  return result;
}

uint64_t FlowConfigModel.getSharedContextService()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 120, &v4, &qword_27F452418, &qword_251675498);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452418, &qword_251675498);
  return sub_251674488();
}

uint64_t FlowConfigModel.getOutputPublisher()@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 160, &v4, &qword_27F452420, &qword_2516754A0);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452420, &qword_2516754A0);
  return sub_2516735B8();
}

uint64_t FlowConfigModel.getFlowFinder()@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 200, &v5, &qword_27F452428, &qword_2516754A8);
  if (v6)
  {
    sub_251654C4C(&v5, v7);
    return sub_251654C4C(v7, a1);
  }

  else
  {
    sub_251654A84(&v5, &qword_27F452428, &qword_2516754A8);
    v4 = type metadata accessor for FlowFinder();
    result = swift_allocObject();
    a1[3] = v4;
    a1[4] = &protocol witness table for FlowFinder;
    *a1 = result;
  }

  return result;
}

uint64_t FlowConfigModel.getNetworkStatusProvider()@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 240, &v5, &qword_27F452430, &qword_2516754B0);
  if (v6)
  {
    return sub_251654C4C(&v5, a1);
  }

  v4 = type metadata accessor for NetworkStatusProvider();
  result = swift_allocObject();
  a1[3] = v4;
  a1[4] = &protocol witness table for NetworkStatusProvider;
  *a1 = result;
  return result;
}

uint64_t sub_2516584CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251658534@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1, &v4, &qword_27F452400, &qword_251675480);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452400, &qword_251675480);
  return sub_2516735E8();
}

uint64_t sub_2516585B0@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 40, &v4, &qword_27F452408, &qword_251675488);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452408, &qword_251675488);
  return sub_2516733F8();
}

uint64_t sub_25165862C@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 80, &v4, &qword_27F452410, &qword_251675490);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  result = sub_2516733E8();
  if (v5)
  {
    return sub_251654A84(&v4, &qword_27F452410, &qword_251675490);
  }

  return result;
}

uint64_t sub_2516586B0@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 120, &v4, &qword_27F452418, &qword_251675498);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452418, &qword_251675498);
  return sub_251674488();
}

uint64_t sub_25165872C@<X0>(uint64_t a1@<X8>)
{
  sub_2516584CC(v1 + 160, &v4, &qword_27F452420, &qword_2516754A0);
  if (v5)
  {
    return sub_251654C4C(&v4, a1);
  }

  sub_251654A84(&v4, &qword_27F452420, &qword_2516754A0);
  return sub_2516735B8();
}

uint64_t sub_2516587AC@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 200, &v5, &qword_27F452428, &qword_2516754A8);
  if (v6)
  {
    sub_251654C4C(&v5, v7);
    return sub_251654C4C(v7, a1);
  }

  else
  {
    sub_251654A84(&v5, &qword_27F452428, &qword_2516754A8);
    v4 = type metadata accessor for FlowFinder();
    result = swift_allocObject();
    a1[3] = v4;
    a1[4] = &protocol witness table for FlowFinder;
    *a1 = result;
  }

  return result;
}

uint64_t sub_251658854@<X0>(uint64_t *a1@<X8>)
{
  sub_2516584CC(v1 + 240, &v5, &qword_27F452430, &qword_2516754B0);
  if (v6)
  {
    return sub_251654C4C(&v5, a1);
  }

  v4 = type metadata accessor for NetworkStatusProvider();
  result = swift_allocObject();
  a1[3] = v4;
  a1[4] = &protocol witness table for NetworkStatusProvider;
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriKitFlow17AceServiceInvoker_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2516588F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_251658954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutGoal.builder(definedValue:measurement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_251673A98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673EC8();
  swift_allocObject();
  v12 = sub_251673EB8();
  sub_2516584CC(a1, v7, &qword_27F4523A0, &unk_251675E00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_251654A84(v7, &qword_27F4523A0, &unk_251675E00);
    if (!a2)
    {
      return v12;
    }

    goto LABEL_5;
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_251673EA8();
  (*(v9 + 8))(v11, v8);
  if (a2)
  {
LABEL_5:

    sub_251673E98();
  }

  return v12;
}

uint64_t static UsoEntity_common_WorkoutGoal.with(definedValue:measurement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_251673A98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673EC8();
  swift_allocObject();
  v12 = sub_251673EB8();
  sub_2516584CC(a1, v7, &qword_27F4523A0, &unk_251675E00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_251654A84(v7, &qword_27F4523A0, &unk_251675E00);
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_251673EA8();
  (*(v9 + 8))(v11, v8);
  if (a2)
  {
LABEL_5:

    sub_251673E98();
  }

LABEL_6:
  MEMORY[0x25307D850](v12);
  sub_251673AA8();
  sub_251673A18();

  return v14[1];
}

uint64_t sub_251658E48(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a4;
  v25 = a3;
  v27 = a1;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = sub_251673D68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_251673A98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673EC8();
  swift_allocObject();
  v19 = sub_251673EB8();
  sub_2516584CC(v27, v14, &qword_27F4523A0, &unk_251675E00);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_251654A84(v14, &qword_27F4523A0, &unk_251675E00);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_251673EA8();
    (*(v16 + 8))(v18, v15);
  }

  sub_2516584CC(v28, v8, &qword_27F452398, &qword_251675270);
  v20 = (*(v10 + 48))(v8, 1, v9);
  v21 = v29;
  if (v20 == 1)
  {
    sub_251654A84(v8, &qword_27F452398, &qword_251675270);
  }

  else
  {
    (*(v10 + 32))(v29, v8, v9);
    if ((v26 & 1) == 0)
    {
      v22 = v24;
      (*(v10 + 16))(v24, v21, v9);
      (*(v10 + 56))(v22, 0, 1, v9);
      sub_2516666F0(v22, v25, 0);
      sub_251654A84(v22, &qword_27F452398, &qword_251675270);

      sub_251673E98();
    }

    (*(v10 + 8))(v21, v9);
  }

  return v19;
}

uint64_t static UsoEntity_common_MeasurementComponent.builder(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2516741F8();
  swift_allocObject();
  v6 = sub_2516741E8();
  if (a1)
  {

    sub_2516741C8();
  }

  if (a3)
  {

    sub_2516741D8();
  }

  return v6;
}

uint64_t static UsoEntity_common_MeasurementComponent.with(unit:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2516741F8();
  swift_allocObject();
  v6 = sub_2516741E8();
  if (a1)
  {

    sub_2516741C8();
  }

  if (a3)
  {

    sub_2516741D8();
  }

  MEMORY[0x25307D850](v6);
  sub_251674008();
  sub_251673A18();

  return v8;
}

uint64_t sub_2516593C0(uint64_t a1, uint64_t a2, int a3)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = sub_251673D68();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v27 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  sub_2516741F8();
  swift_allocObject();
  v28 = sub_2516741E8();
  sub_251659758(a1, v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    sub_2516597C8(v13);
    v21 = v28;
    if (v29)
    {
      return v21;
    }

    goto LABEL_8;
  }

  v26 = a2;
  v25 = *(v15 + 32);
  v25(v19, v13, v14);
  (*(v15 + 16))(v11, v19, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  sub_2516740B8();
  swift_allocObject();
  sub_2516740A8();
  sub_251659758(v11, v8);
  if (v20(v8, 1, v14) == 1)
  {
    sub_2516597C8(v11);
    v11 = v8;
  }

  else
  {
    v22 = v27;
    v25(v27, v8, v14);
    sub_251674078();
    (*(v15 + 8))(v22, v14);
  }

  v21 = v28;
  sub_2516597C8(v11);

  sub_2516741C8();

  (*(v15 + 8))(v19, v14);
  if ((v29 & 1) == 0)
  {
LABEL_8:
    sub_251673C58();
    swift_allocObject();
    sub_251673C48();
    sub_251673C28();
    sub_2516741D8();
  }

  return v21;
}

uint64_t sub_251659758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516597C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UsoEntity_common_GeographicArea.with(areaType:)(uint64_t a1, uint64_t a2)
{
  _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(a1, a2);
  MEMORY[0x25307D850]();
  sub_251673CC8();
  sub_251673A18();

  return v3;
}

uint64_t _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_251673848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251674028();
  swift_allocObject();
  v7 = sub_251674018();
  if (a2)
  {
    sub_2516739D8();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v8 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v4 + 8))(v6, v3);
    v10[1] = v8;
    sub_251673868();
  }

  return v7;
}

uint64_t static UsoEntity_common_MeasurementUnit.builder(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_251673D68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2516740B8();
  swift_allocObject();
  v15 = sub_2516740A8();
  if (a2)
  {
    sub_251674088();
  }

  if (a3)
  {

    sub_251674098();
  }

  sub_251659758(a5, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2516597C8(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_251674078();
    (*(v12 + 8))(v14, v11);
  }

  return v15;
}

uint64_t static UsoEntity_common_MeasurementUnit.with(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = sub_251673D68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2516740B8();
  swift_allocObject();
  v15 = sub_2516740A8();
  if (a2)
  {
    sub_251674088();
  }

  if (a3)
  {

    sub_251674098();
  }

  sub_251659758(a5, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2516597C8(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_251674078();
    (*(v12 + 8))(v14, v11);
  }

  MEMORY[0x25307D850](v15);
  sub_251673D78();
  sub_251673A18();

  return v17[1];
}

uint64_t currentIdiom(deviceState:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_251673468())
  {
    v4 = MEMORY[0x277D61BE8];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_251673478())
    {
      v4 = MEMORY[0x277D61C18];
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      if (sub_251673418())
      {
        v4 = MEMORY[0x277D61BF0];
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        if (sub_251673428())
        {
          v4 = MEMORY[0x277D61BF8];
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          if (sub_251673438())
          {
            v4 = MEMORY[0x277D61C08];
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            if ((sub_251673458() & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1(a1, a1[3]);
              v12 = sub_251673448();
              v8 = sub_2516742B8();
              v7 = *(*(v8 - 8) + 104);
              if (v12)
              {
                v13 = MEMORY[0x277D61C10];
              }

              else
              {
                v13 = MEMORY[0x277D61C28];
              }

              v10 = *v13;
              v9 = a2;
              goto LABEL_14;
            }

            v4 = MEMORY[0x277D61BE0];
          }
        }
      }
    }
  }

  v5 = *v4;
  v6 = sub_2516742B8();
  v7 = *(*(v6 - 8) + 104);
  v8 = v6;
  v9 = a2;
  v10 = v5;
LABEL_14:

  return v7(v9, v10, v8);
}

uint64_t static UsoEntity_common_Duration.builder(durationComponent:)(uint64_t a1, uint64_t a2)
{
  sub_251673D08();
  swift_allocObject();
  v3 = sub_251673CF8();
  if (a1)
  {

    sub_251673CE8();
  }

  return v3;
}

uint64_t static UsoEntity_common_Duration.with(durationComponent:)(uint64_t a1, uint64_t a2)
{
  sub_251673D08();
  swift_allocObject();
  v3 = sub_251673CF8();
  if (a1)
  {

    sub_251673CE8();
  }

  MEMORY[0x25307D850](v3);
  sub_251673998();
  sub_251673A18();

  return v5;
}

uint64_t static UsoEntity_common_TimeUnit.builder(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_2516739A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673D58();
  swift_allocObject();
  v15 = sub_251673D48();
  if (a2)
  {
    sub_251673D28();
  }

  if (a3)
  {

    sub_251673D38();
  }

  sub_25165A354(a5, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25165A3C4(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_251673D18();
    (*(v12 + 8))(v14, v11);
  }

  return v15;
}

uint64_t sub_25165A354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25165A3C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UsoEntity_common_TimeUnit.with(name:type:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452438, &qword_251675628);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = sub_2516739A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673D58();
  swift_allocObject();
  v15 = sub_251673D48();
  if (a2)
  {
    sub_251673D28();
  }

  if (a3)
  {

    sub_251673D38();
  }

  sub_25165A354(a5, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25165A3C4(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_251673D18();
    (*(v12 + 8))(v14, v11);
  }

  MEMORY[0x25307D850](v15);
  sub_2516739B8();
  sub_251673A18();

  return v17[1];
}

uint64_t sub_25165A674()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.health = result;
  return result;
}

uint64_t *Log.health.unsafeMutableAddressor()
{
  if (qword_27F451EF0 != -1)
  {
    swift_once();
  }

  return &static Log.health;
}

uint64_t sub_25165A74C()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.workout = result;
  return result;
}

uint64_t *Log.workout.unsafeMutableAddressor()
{
  if (qword_27F451EF8 != -1)
  {
    swift_once();
  }

  return &static Log.workout;
}

uint64_t sub_25165A828()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.wellness = result;
  return result;
}

uint64_t *Log.wellness.unsafeMutableAddressor()
{
  if (qword_27F451F00 != -1)
  {
    swift_once();
  }

  return &static Log.wellness;
}

uint64_t sub_25165A904()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.emergency = result;
  return result;
}

uint64_t *Log.emergency.unsafeMutableAddressor()
{
  if (qword_27F451F08 != -1)
  {
    swift_once();
  }

  return &static Log.emergency;
}

uint64_t sub_25165A9E4()
{
  sub_25165B68C();
  result = sub_251674778();
  static Log.common = result;
  return result;
}

uint64_t *Log.common.unsafeMutableAddressor()
{
  if (qword_27F451F10 != -1)
  {
    swift_once();
  }

  return &static Log.common;
}

id sub_25165AAC8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t (*static Logger.wellness.modify(uint64_t a1))()
{
  if (qword_27F451F18 != -1)
  {
    swift_once();
  }

  v1 = sub_251674568();
  __swift_project_value_buffer(v1, static Logger.wellness);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.health.modify(uint64_t a1))()
{
  if (qword_27F451F20 != -1)
  {
    swift_once();
  }

  v1 = sub_251674568();
  __swift_project_value_buffer(v1, static Logger.health);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.emergency.modify(uint64_t a1))()
{
  if (qword_27F451F28 != -1)
  {
    swift_once();
  }

  v1 = sub_251674568();
  __swift_project_value_buffer(v1, static Logger.emergency);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.workout.modify(uint64_t a1))()
{
  if (qword_27F451F30 != -1)
  {
    swift_once();
  }

  v1 = sub_251674568();
  __swift_project_value_buffer(v1, static Logger.workout);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25165B004(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_251674568();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_251674578();
}

uint64_t (*static Logger.common.modify(uint64_t a1))()
{
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v1 = sub_251674568();
  __swift_project_value_buffer(v1, static Logger.common);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static Logger.cycleTracking.modify(uint64_t a1))()
{
  if (qword_27F451F40 != -1)
  {
    swift_once();
  }

  v1 = sub_251674568();
  __swift_project_value_buffer(v1, static Logger.cycleTracking);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25165B2B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_251674568();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_251674558();
}

uint64_t sub_25165B360(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_251674568();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_25165B3D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_251674568();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_25165B4A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_251674568();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static Logger.sleep.modify(uint64_t a1))()
{
  if (qword_27F451F48 != -1)
  {
    swift_once();
  }

  v1 = sub_251674568();
  __swift_project_value_buffer(v1, static Logger.sleep);
  swift_beginAccess();
  return j_j__swift_endAccess;
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

unint64_t sub_25165B68C()
{
  result = qword_27F452440;
  if (!qword_27F452440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F452440);
  }

  return result;
}

uint64_t static UsoEntity_common_MeasurementUnitType.builder(definedValue:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_251673F98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2516741B8();
  swift_allocObject();
  v9 = sub_2516741A8();
  sub_25165B878(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25165B8E8(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_251674198();
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_25165B878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25165B8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UsoEntity_common_MeasurementUnitType.with(definedValue:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452448, &qword_251675658);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = sub_251673F98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2516741B8();
  swift_allocObject();
  v9 = sub_2516741A8();
  sub_25165B878(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25165B8E8(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_251674198();
    (*(v6 + 8))(v8, v5);
  }

  MEMORY[0x25307D850](v9);
  sub_251673FA8();
  sub_251673A18();

  return v11[1];
}

uint64_t UsoEntity_common_Number.asDouble.getter()
{
  v1 = v0;
  v2 = sub_251674568();
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = &v60[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_251673908();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  MEMORY[0x28223BE20](v4);
  v64 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452450, &qword_251675660);
  MEMORY[0x28223BE20](v7);
  v9 = &v60[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452458, &qword_251675668);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v60[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v60[-v17];
  sub_2516737F8();
  sub_251673948();
  sub_251673A18();

  if (v71[0])
  {
    v19 = sub_251673938();
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      *&result = v19;
      return result;
    }
  }

  sub_2516737F8();
  sub_251673BB8();
  sub_251673A18();

  if (v71[0])
  {
    v22 = sub_251673B88();
    if (v23)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v22;
    }

    v25 = sub_251673B98();
    if (v26)
    {
    }

    else
    {
      v31 = v25;
      v32 = sub_251673BA8();
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        *&result = v24 + v31 / v32;
        return result;
      }
    }

    goto LABEL_35;
  }

  v63 = v2;
  sub_2516737F8();
  sub_251673928();
  sub_251673A18();

  if (v71[0])
  {
    v28 = sub_251673918();
    if (v29)
    {
      v71[0] = 0;
      v30 = sub_25165C4AC(v28, v29, v71);

      if (v30)
      {
        return v71[0];
      }
    }

    else
    {
    }
  }

  sub_2516737F8();
  sub_251673DF8();
  sub_251673A18();

  if (!v71[0])
  {
    goto LABEL_25;
  }

  if (sub_251673DD8())
  {
    sub_2516737F8();
  }

  sub_251673A18();

  if (!v71[0])
  {

LABEL_25:
    v41 = v63;
    v42 = v67;
    v43 = v68;
    goto LABEL_30;
  }

  v62 = v71[0];
  sub_2516738F8();
  v35 = v65;
  v36 = v66;
  (*(v66 + 104))(v16, *MEMORY[0x277D5E880], v65);
  (*(v36 + 56))(v16, 0, 1, v35);
  v37 = *(v7 + 48);
  v38 = v35;
  sub_25165C3E4(v18, v9);
  sub_25165C3E4(v16, &v9[v37]);
  v39 = *(v36 + 48);
  if (v39(v9, 1, v38) == 1)
  {
    sub_251654A84(v16, &qword_27F452458, &qword_251675668);
    sub_251654A84(v18, &qword_27F452458, &qword_251675668);
    v40 = v39(&v9[v37], 1, v38);
    v41 = v63;
    if (v40 == 1)
    {
      sub_251654A84(v9, &qword_27F452458, &qword_251675668);
      v42 = v67;
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  sub_25165C3E4(v9, v13);
  if (v39(&v9[v37], 1, v38) == 1)
  {
    sub_251654A84(v16, &qword_27F452458, &qword_251675668);
    sub_251654A84(v18, &qword_27F452458, &qword_251675668);
    (*(v66 + 8))(v13, v38);
    v41 = v63;
LABEL_28:
    sub_251654A84(v9, &qword_27F452450, &qword_251675660);
    v42 = v67;
LABEL_29:

    v43 = v68;
    goto LABEL_30;
  }

  v52 = v66;
  v53 = &v9[v37];
  v54 = v64;
  (*(v66 + 32))(v64, v53, v38);
  sub_25165C454();
  v61 = sub_2516745E8();
  v55 = *(v52 + 8);
  v55(v54, v38);
  sub_251654A84(v16, &qword_27F452458, &qword_251675668);
  sub_251654A84(v18, &qword_27F452458, &qword_251675668);
  v55(v13, v38);
  sub_251654A84(v9, &qword_27F452458, &qword_251675668);
  v41 = v63;
  v42 = v67;
  if ((v61 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_37:
  v56 = sub_251673DE8();
  v43 = v68;
  if (!v56)
  {

    goto LABEL_30;
  }

  v57 = COERCE_DOUBLE(UsoEntity_common_Number.asDouble.getter());
  v59 = v58;

  if (v59)
  {
LABEL_30:
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v41, static Logger.common);
    swift_beginAccess();
    (*(v43 + 16))(v42, v44, v41);

    v45 = sub_251674548();
    v46 = sub_251674728();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v1;
      v70 = v48;
      *v47 = 136315138;
      sub_2516738D8();

      v49 = sub_251674618();
      v51 = sub_25165445C(v49, v50, &v70);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_251650000, v45, v46, "UsoEntityCommonNumber#asDouble got unexpected number entityType %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x25307EDE0](v48, -1, -1);
      MEMORY[0x25307EDE0](v47, -1, -1);
    }

    (*(v43 + 8))(v42, v41);
LABEL_35:
    *&result = 0.0;
    return result;
  }

  *&result = v57 / 100.0;
  return result;
}

uint64_t sub_25165C3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452458, &qword_251675668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25165C454()
{
  result = qword_27F452460;
  if (!qword_27F452460)
  {
    sub_251673908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452460);
  }

  return result;
}

BOOL sub_25165C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_251674808();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_25165C5A4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutClass.builder(name:duration:equipment:instructor:episodeNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_251673F88();
  swift_allocObject();
  v14 = sub_251673F78();
  if (a2)
  {
    sub_251673F68();
  }

  if (a3)
  {

    sub_251673F28();
  }

  if (a5)
  {

    sub_251673F38();
  }

  if (a7)
  {

    sub_251673F48();
  }

  if (a9)
  {

    sub_251673F58();
  }

  return v14;
}

uint64_t static UsoEntity_common_WorkoutClass.with(name:duration:equipment:instructor:episodeNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_251673F88();
  swift_allocObject();
  v14 = sub_251673F78();
  if (a2)
  {
    sub_251673F68();
  }

  if (a3)
  {

    sub_251673F28();
  }

  if (a5)
  {

    sub_251673F38();
  }

  if (a7)
  {

    sub_251673F48();
  }

  if (a9)
  {

    sub_251673F58();
  }

  MEMORY[0x25307D850](v14);
  sub_251673AD8();
  sub_251673A18();

  return v16;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v2 = sub_25165C8E8(v0, v1, MEMORY[0x277D83DF0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall String.firstLetterLowerCase()()
{
  v2 = sub_25165C8E8(v0, v1, MEMORY[0x277D83DE0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_25165C8E8(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  v7 = sub_25165CA70(1, a1, a2, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = a3(v7, v9, v11, v13);

  sub_25165CB0C(1uLL, a1, a2, v15);

  sub_25165CBBC();
  sub_251674658();

  return v14;
}

uint64_t String.toDialogPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  sub_251674338();
  swift_allocObject();
  sub_251674328();
  sub_251674318();

  v2 = sub_251674308();

  return v2;
}

uint64_t sub_25165CA70(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_251674648();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_25165CB0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_251674648();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_25165CBBC()
{
  result = qword_27F452468;
  if (!qword_27F452468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452468);
  }

  return result;
}

unint64_t TaskLoggerNames.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  v2 = 0xD000000000000019;
  v3 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25165CCCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = "HealthDomainsTools";
  v4 = a1;
  v5 = 0xD00000000000001BLL;
  if (a1 == 4)
  {
    v6 = "com.apple.siri.health.log";
  }

  else
  {
    v5 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "com.apple.siri.health";
  }

  v8 = 0xD00000000000001DLL;
  if (v4 == 1)
  {
    v9 = "com.apple.siri.health.scribe";
  }

  else
  {
    v8 = 0xD000000000000015;
    v9 = "com.apple.siri.health.fitness";
  }

  if (!v4)
  {
    v8 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000019;
      v3 = "com.apple.siri.health";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "com.apple.siri.health.log";
    }

    else
    {
      v2 = 0xD00000000000001ELL;
      v3 = "com.apple.siri.health.query";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001DLL;
      v3 = "com.apple.siri.health.scribe";
    }

    else
    {
      v3 = "com.apple.siri.health.fitness";
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251674978();
  }

  return v11 & 1;
}

uint64_t sub_25165CE48(unsigned __int8 a1)
{
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25165CF3C(uint64_t a1)
{
  sub_251674638();
}

uint64_t sub_25165D020(uint64_t a1, unsigned __int8 a2)
{
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

unint64_t sub_25165D110@<X0>(Swift::String *a1@<X0>, HealthDomainsTools::TaskLoggerNames_optional *a2@<X8>)
{
  result = _s18HealthDomainsTools15TaskLoggerNamesO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_25165D140@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = *v1;
  v4 = "HealthDomainsTools";
  v5 = "com.apple.siri.health";
  v6 = 0xD000000000000019;
  v7 = "com.apple.siri.health.log";
  v8 = 0xD00000000000001BLL;
  result = 0xD00000000000001ELL;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001ELL;
    v7 = "com.apple.siri.health.query";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "com.apple.siri.health.scribe";
  if (v3 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v10 = "com.apple.siri.health.fitness";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t FederatedTaskKind.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 6778732;
  }

  return 0x7972657571;
}

uint64_t sub_25165D240(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6778732;
  if (v2 != 1)
  {
    v4 = 0x7972657571;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6778732;
  if (*a2 != 1)
  {
    v8 = 0x7972657571;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251674978();
  }

  return v11 & 1;
}

uint64_t sub_25165D32C()
{
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25165D3C4(uint64_t a1)
{
  sub_251674638();
}

uint64_t sub_25165D448(uint64_t a1)
{
  sub_2516749F8();
  sub_251674638();

  return sub_251674A18();
}

unint64_t sub_25165D4DC@<X0>(Swift::String *a1@<X0>, HealthDomainsTools::FederatedTaskKind_optional *a2@<X8>)
{
  result = _s18HealthDomainsTools17FederatedTaskKindO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_25165D50C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 6778732;
  if (v2 != 1)
  {
    v5 = 0x7972657571;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FlowTaskLogger.task(_:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = a2;
  v4 = "com.apple.siri.health";
  v5 = 0xD000000000000019;
  v6 = "com.apple.siri.health.log";
  v7 = 0xD00000000000001BLL;
  if (a2 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.siri.health.scribe";
  if (a2 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = "com.apple.siri.health.fitness";
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (a2 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  sub_25165E454(a1, v10, v11 | 0x8000000000000000, 0x100000000uLL);
}

Swift::Void __swiftcall FlowTaskLogger.taskNeedsAuthorization()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(7, v8, v9 | 0x8000000000000000, 3uLL);
}

uint64_t FlowTaskLogger.task(reason:)(uint64_t result, unsigned __int8 a2)
{
  if (result > 20)
  {
    if (result == 36)
    {
      v33 = 0xD000000000000015;
      v34 = a2;
      v35 = "com.apple.siri.health";
      v36 = 0xD000000000000019;
      v37 = "com.apple.siri.health.log";
      v38 = 0xD00000000000001BLL;
      if (a2 != 4)
      {
        v38 = 0xD00000000000001ELL;
        v37 = "com.apple.siri.health.query";
      }

      if (a2 != 3)
      {
        v36 = v38;
        v35 = v37;
      }

      v39 = "com.apple.siri.health.scribe";
      if (a2 == 1)
      {
        v33 = 0xD00000000000001DLL;
      }

      else
      {
        v39 = "com.apple.siri.health.fitness";
      }

      if (a2)
      {
        v40 = v39;
      }

      else
      {
        v33 = 0xD00000000000001CLL;
        v40 = "HealthDomainsTools";
      }

      if (a2 <= 2u)
      {
        v10 = v33;
      }

      else
      {
        v10 = v36;
      }

      if (v34 <= 2)
      {
        v41 = v40;
      }

      else
      {
        v41 = v35;
      }

      v12 = v41 | 0x8000000000000000;
      v13 = 36;
      v14 = 26;
    }

    else
    {
      if (result != 21)
      {
        return result;
      }

      v15 = 0xD000000000000015;
      v16 = a2;
      v17 = "com.apple.siri.health";
      v18 = 0xD000000000000019;
      v19 = "com.apple.siri.health.log";
      v20 = 0xD00000000000001BLL;
      if (a2 != 4)
      {
        v20 = 0xD00000000000001ELL;
        v19 = "com.apple.siri.health.query";
      }

      if (a2 != 3)
      {
        v18 = v20;
        v17 = v19;
      }

      v21 = "com.apple.siri.health.scribe";
      if (a2 == 1)
      {
        v15 = 0xD00000000000001DLL;
      }

      else
      {
        v21 = "com.apple.siri.health.fitness";
      }

      if (a2)
      {
        v22 = v21;
      }

      else
      {
        v15 = 0xD00000000000001CLL;
        v22 = "HealthDomainsTools";
      }

      if (a2 <= 2u)
      {
        v10 = v15;
      }

      else
      {
        v10 = v18;
      }

      if (v16 <= 2)
      {
        v23 = v22;
      }

      else
      {
        v23 = v17;
      }

      v12 = v23 | 0x8000000000000000;
      v13 = 21;
      v14 = 4;
    }
  }

  else if (result == 1)
  {
    v24 = 0xD000000000000015;
    v25 = a2;
    v26 = "com.apple.siri.health";
    v27 = 0xD000000000000019;
    v28 = "com.apple.siri.health.log";
    v29 = 0xD00000000000001BLL;
    if (a2 != 4)
    {
      v29 = 0xD00000000000001ELL;
      v28 = "com.apple.siri.health.query";
    }

    if (a2 != 3)
    {
      v27 = v29;
      v26 = v28;
    }

    v30 = "com.apple.siri.health.scribe";
    if (a2 == 1)
    {
      v24 = 0xD00000000000001DLL;
    }

    else
    {
      v30 = "com.apple.siri.health.fitness";
    }

    if (a2)
    {
      v31 = v30;
    }

    else
    {
      v24 = 0xD00000000000001CLL;
      v31 = "HealthDomainsTools";
    }

    if (a2 <= 2u)
    {
      v10 = v24;
    }

    else
    {
      v10 = v27;
    }

    if (v25 <= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = v26;
    }

    v12 = v32 | 0x8000000000000000;
    v13 = 1;
    v14 = 2;
  }

  else
  {
    if (result != 3)
    {
      return result;
    }

    v2 = 0xD000000000000015;
    v3 = a2;
    v4 = "com.apple.siri.health";
    v5 = 0xD000000000000019;
    v6 = "com.apple.siri.health.log";
    v7 = 0xD00000000000001BLL;
    if (a2 != 4)
    {
      v7 = 0xD00000000000001ELL;
      v6 = "com.apple.siri.health.query";
    }

    if (a2 != 3)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "com.apple.siri.health.scribe";
    if (a2 == 1)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = "com.apple.siri.health.fitness";
    }

    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v9 = "HealthDomainsTools";
    }

    if (a2 <= 2u)
    {
      v10 = v2;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }

    v12 = v11 | 0x8000000000000000;
    v13 = 3;
    v14 = 7;
  }

  sub_25165E454(v14, v10, v12, v13);
}

Swift::Void __swiftcall FlowTaskLogger.genericError()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(4, v8, v9 | 0x8000000000000000, 0x15uLL);
}

Swift::Void __swiftcall FlowTaskLogger.success()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(2, v8, v9 | 0x8000000000000000, 1uLL);
}

Swift::Void __swiftcall FlowTaskLogger.unsupported()()
{
  v1 = 0xD000000000000015;
  v2 = "com.apple.siri.health";
  v3 = 0xD000000000000019;
  v4 = "com.apple.siri.health.log";
  v5 = 0xD00000000000001BLL;
  if (v0 != 4)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "com.apple.siri.health.query";
  }

  if (v0 != 3)
  {
    v3 = v5;
    v2 = v4;
  }

  v6 = "com.apple.siri.health.scribe";
  if (v0 == 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "com.apple.siri.health.fitness";
  }

  if (v0)
  {
    v7 = v6;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v7 = "HealthDomainsTools";
  }

  if (v0 <= 2u)
  {
    v8 = v1;
  }

  else
  {
    v8 = v3;
  }

  if (v0 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  sub_25165E454(26, v8, v9 | 0x8000000000000000, 0x24uLL);
}

uint64_t sub_25165DDEC(unsigned __int8 a1, uint64_t a2)
{
  v3 = 0xD000000000000015;
  v4 = "com.apple.siri.health";
  v5 = 0xD000000000000019;
  v6 = "com.apple.siri.health.log";
  v7 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.siri.health.scribe";
  if (a1 == 1)
  {
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = "com.apple.siri.health.fitness";
  }

  if (a1)
  {
    v9 = v8;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  sub_25165E454(a2, v10, v11 | 0x8000000000000000, 0x100000000uLL);
}

uint64_t FlowTaskLogger.task(_:name:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = a2;
  v4 = "com.apple.siri.health";
  v5 = 0xD000000000000019;
  v6 = "com.apple.siri.health.log";
  v7 = 0xD00000000000001BLL;
  if (a2 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "com.apple.siri.health.query";
  }

  if (a2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.siri.health.scribe";
  if (a2 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = "com.apple.siri.health.fitness";
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v9 = "HealthDomainsTools";
  }

  if (a2 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  sub_25165E454(a1, v10, v11 | 0x8000000000000000, 0x100000000uLL);
}

Swift::Void __swiftcall FlowTaskLogger.federatedStats(kind:dataTypeString:)(HealthDomainsTools::FederatedTaskKind kind, Swift::String dataTypeString)
{
  object = dataTypeString._object;
  countAndFlagsBits = dataTypeString._countAndFlagsBits;
  v4 = kind;
  v5 = sub_251674568();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F451F18 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, static Logger.wellness);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_251674548();
  v11 = sub_251674718();

  if (os_log_type_enabled(v10, v11))
  {
    v25 = countAndFlagsBits;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315394;
    v24 = v4;
    if (v4)
    {
      if (v4 == 1)
      {
        v14 = 6778732;
      }

      else
      {
        v14 = 0x7972657571;
      }

      if (v4 == 1)
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      v14 = 0x6E776F6E6B6E75;
    }

    v4 = sub_25165445C(v14, v15, &v26);

    *(v12 + 4) = v4;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_25165445C(v25, object, &v26);
    _os_log_impl(&dword_251650000, v10, v11, "Federated Task Log: %s for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25307EDE0](v13, -1, -1);
    MEMORY[0x25307EDE0](v12, -1, -1);

    (*(v6 + 8))(v8, v5);
    LOBYTE(v4) = v24;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v16 = dword_25167589C[v4];
  v17 = objc_allocWithZone(MEMORY[0x277CF1490]);
  v18 = sub_2516745F8();
  v19 = [v17 initWithAction:v16 typeIdentifier:v18];

  v20 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v21 = [v20 Health];
  swift_unknownObjectRelease();
  v22 = [v21 Federated];
  swift_unknownObjectRelease();
  v23 = [v22 source];
  [v23 sendEvent_];
}

unint64_t _s18HealthDomainsTools15TaskLoggerNamesO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_251674938();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t _s18HealthDomainsTools17FederatedTaskKindO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_251674938();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25165E454(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v28 = a2;
  v6 = a1;
  v7 = sub_251674568();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F451F18 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, static Logger.wellness);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_251674548();
  v13 = sub_251674718();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a4;
    v15 = v14;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136315394;
    v16 = sub_251674748();
    v18 = sub_25165445C(v16, v17, &v29);
    v26 = v6;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v30[0] = v28;
    v30[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A8, &qword_251675890);
    v20 = sub_251674788();
    v22 = sub_25165445C(v20, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_251650000, v12, v13, "logging STC: %s in %s", v15, 0x16u);
    v23 = v25;
    swift_arrayDestroy();
    MEMORY[0x25307EDE0](v23, -1, -1);
    MEMORY[0x25307EDE0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2516733D8();

  sub_2516733C8();
  sub_251673388();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_251673398();

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

unint64_t sub_25165E7CC()
{
  result = qword_27F452470;
  if (!qword_27F452470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452470);
  }

  return result;
}

unint64_t sub_25165E824()
{
  result = qword_27F452478;
  if (!qword_27F452478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FederatedTaskKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FederatedTaskKind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25165E9FC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25165EA90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static UsoEntity_common_ListPosition.builder(definedValue:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_251673AC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673F18();
  swift_allocObject();
  v9 = sub_251673F08();
  sub_251654A14(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25165ECFC(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_251673EF8();
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_25165ECFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall NetworkStatusProvider.isNetworkingDisabled()()
{
  if ((_s18HealthDomainsTools21NetworkStatusProviderC9isOfflineSbyF_0() & 1) == 0)
  {
    return 0;
  }

  sub_2516742A8();
  sub_251674298();
  sub_251674288();

  v0 = sub_2516742C8();

  return v0 & 1;
}

uint64_t sub_25165EDEC()
{
  if ((_s18HealthDomainsTools21NetworkStatusProviderC9isOfflineSbyF_0() & 1) == 0)
  {
    return 0;
  }

  sub_2516742A8();
  sub_251674298();
  sub_251674288();

  v0 = sub_2516742C8();

  return v0 & 1;
}

uint64_t NetworkErrors.hashValue.getter()
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](0);
  return sub_251674A18();
}

uint64_t sub_25165EEC8()
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](0);
  return sub_251674A18();
}

uint64_t sub_25165EF34(uint64_t a1)
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](0);
  return sub_251674A18();
}

uint64_t _s18HealthDomainsTools21NetworkStatusProviderC9isOfflineSbyF_0()
{
  v0 = sub_251674568();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2516742E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_2516742A8();
  sub_251674298();
  sub_251674288();

  sub_2516742F8();

  (*(v5 + 104))(v8, *MEMORY[0x277D61DD0], v4);
  v11 = sub_2516742D8();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, static Logger.common);
  swift_beginAccess();
  (*(v1 + 16))(v3, v13, v0);
  v14 = sub_251674548();
  v15 = sub_251674718();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v11 & 1;
    _os_log_impl(&dword_251650000, v14, v15, "NetworkStatusProvider isOffline=%{BOOL}d", v16, 8u);
    MEMORY[0x25307EDE0](v16, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v11 & 1;
}

unint64_t sub_25165F288()
{
  result = qword_27F452480;
  if (!qword_27F452480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452480);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkErrors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NetworkErrors(_WORD *result, int a2, int a3)
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

uint64_t sub_25165F3E8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2516748A8();
    v5 = v4;
    v6 = sub_2516748F8();
    v8 = v7;
    v9 = MEMORY[0x25307E790](v3, v5, v6, v7);
    sub_2516605BC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_2516605BC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2516747B8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2516605C8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_2516605BC(v3, v5, v2 != 0);
  return v12;
}

uint64_t findRemoteDevice(with:deviceResolutionService:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2516742B8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25165F5C4, 0, 0);
}

uint64_t sub_25165F5C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D61C08] || v4 == *MEMORY[0x277D61C10])
  {
    v6 = v0[3];
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_25165F848;

    return MEMORY[0x2821C8A50](v7, v8);
  }

  else if (v4 == *MEMORY[0x277D61BE0])
  {
    v10 = v0[3];
    sub_251674538();
    v11 = sub_251674528();
    v0[8] = v11;
    v12 = v10[3];
    v13 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
    v14 = swift_allocObject();
    v0[9] = v14;
    *(v14 + 16) = xmmword_251675370;
    *(v14 + 32) = v11;
    v15 = v11;
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_25165F968;

    return MEMORY[0x2821C8A68](v14, v12, v13);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_25165F848(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  v5 = *(v4 + 8);

  return v5(a1);
}

uint64_t sub_25165F968(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_25165FB48;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_25165FABC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25165FABC()
{
  v1 = v0[8];
  v2 = sub_25165F3E8(v0[11]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_25165FB48()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t isRemoteDeviceReachable(remoteDevice:aceService:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_251674568();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25165FC98, 0, 0);
}

uint64_t sub_25165FC98()
{
  if (qword_27F451F30 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, static Logger.workout);
  v0[13] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Checking to see if remote device is reachable", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[8];

  v12 = *(v11 + 8);
  v0[16] = v12;
  v12(v9, v10);
  v13 = sub_2516744E8();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v0[6];
    v19 = v17[3];
    v18 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v19);
    v20 = [objc_allocWithZone(MEMORY[0x277D47678]) init];
    v0[17] = v20;
    v21 = sub_2516744E8();
    v23 = v22;
    v0[18] = v22;
    v24 = swift_task_alloc();
    v0[19] = v24;
    v25 = sub_251655B9C();
    *v24 = v0;
    v24[1] = sub_25165FFFC;

    return MEMORY[0x2821BB680](v20, v21, v23, v19, v25, v18);
  }

  else
  {
    v5(v0[10], v4, v0[7]);
    v26 = sub_251674548();
    v27 = sub_251674728();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_251650000, v26, v27, "The assistantId for remote device was an empty string. Marking the device as unreachable", v28, 2u);
      MEMORY[0x25307EDE0](v28, -1, -1);
    }

    (v0[16])(v0[10], v0[7]);

    v29 = v0[1];

    return v29(0);
  }
}

uint64_t sub_25165FFFC(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = sub_2516602B4;
  }

  else
  {
    v5 = v3[17];

    v4 = sub_25166011C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25166011C()
{
  v1 = *(v0 + 160);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 104), *(v0 + 56));
  v2 = v1;
  v3 = sub_251674548();
  v4 = sub_251674718();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_251650000, v3, v4, "Pinged remote device and got response: %@", v7, 0xCu);
    sub_251660554(v8);
    MEMORY[0x25307EDE0](v8, -1, -1);
    MEMORY[0x25307EDE0](v7, -1, -1);
    v10 = *(v0 + 160);
  }

  else
  {
    v10 = v3;
    v3 = *(v0 + 160);
  }

  (*(v0 + 128))(*(v0 + 88), *(v0 + 56));

  v11 = *(v0 + 8);

  return v11(1);
}

uint64_t sub_2516602B4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_251674548();
  v9 = sub_251674728();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 168);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_251650000, v8, v9, "Unable to ping the remote device. Error: %@", v12, 0xCu);
    sub_251660554(v13);
    MEMORY[0x25307EDE0](v13, -1, -1);
    MEMORY[0x25307EDE0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 128))(*(v0 + 72), *(v0 + 56));

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_251660480(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2516604E0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_251660554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452488, &qword_251675FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2516605BC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_2516605C8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_2516748B8();
      sub_2516744F8();
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_2516748D8() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_2516748E8();
  sub_2516744F8();
  swift_dynamicCast();
  v5 = sub_25166B60C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

uint64_t static UsoEntity_common_Integer.builder(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_251673C58();
  swift_allocObject();
  v6 = sub_251673C48();
  if (a2)
  {
    sub_251673C38();
  }

  if ((a4 & 1) == 0)
  {
    sub_251673C28();
  }

  return v6;
}

uint64_t static UsoEntity_common_Number.with(name:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s12SiriOntology23UsoEntity_common_NumberC18HealthDomainsToolsE7builder4name12definedValueAA0cd8Builder_e1_F0CSSSg_AC13DefinedValuesOSgtFZ_0(a1, a2, a3);
  MEMORY[0x25307D850]();
  sub_2516738D8();
  sub_251673A18();

  return v4;
}

uint64_t static UsoEntity_common_Integer.with(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_251673C58();
  swift_allocObject();
  v6 = sub_251673C48();
  if (a2)
  {
    sub_251673C38();
  }

  if ((a4 & 1) == 0)
  {
    sub_251673C28();
  }

  MEMORY[0x25307D850](v6);
  sub_251673948();
  sub_251673A18();

  return v8;
}

uint64_t static UsoEntity_common_Decimal.with(name:canonicalString:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s12SiriOntology24UsoEntity_common_DecimalC18HealthDomainsToolsE7builder4name15canonicalString12definedValueAA0cd8Builder_e1_F0CSSSg_AkC13DefinedValuesOSgtFZ_0(a1, a2, a3, a4, a5);
  MEMORY[0x25307D850]();
  sub_251673928();
  sub_251673A18();

  return v6;
}

uint64_t _s12SiriOntology23UsoEntity_common_NumberC18HealthDomainsToolsE7builder4name12definedValueAA0cd8Builder_e1_F0CSSSg_AC13DefinedValuesOSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452490, qword_2516759F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_2516738C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673B78();
  swift_allocObject();
  v12 = sub_251673B68();
  if (a2)
  {
    sub_251673B58();
  }

  sub_2516584CC(a3, v7, &qword_27F452490, qword_2516759F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_251654A84(v7, &qword_27F452490, qword_2516759F0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_251673B48();
    (*(v9 + 8))(v11, v8);
  }

  return v12;
}

uint64_t _s12SiriOntology24UsoEntity_common_DecimalC18HealthDomainsToolsE7builder4name15canonicalString12definedValueAA0cd8Builder_e1_F0CSSSg_AkC13DefinedValuesOSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452458, &qword_251675668);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_251673908();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673C18();
  swift_allocObject();
  v15 = sub_251673C08();
  if (a2)
  {
    sub_251673BF8();
  }

  if (a4)
  {
    sub_251673BE8();
  }

  sub_2516584CC(a5, v10, &qword_27F452458, &qword_251675668);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_251654A84(v10, &qword_27F452458, &qword_251675668);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_251673BD8();
    (*(v12 + 8))(v14, v11);
  }

  return v15;
}

void __swiftcall DirectInvocationButton.init(label:payloadIdentifier:payloadUserData:)(HealthDomainsTools::DirectInvocationButton *__return_ptr retstr, Swift::String label, Swift::String payloadIdentifier, Swift::OpaquePointer payloadUserData)
{
  retstr->label = label;
  retstr->payloadIdentifier = payloadIdentifier;
  retstr->payloadUserData = payloadUserData;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251660D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251660D84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t isFitnessPlusSubscriber()()
{
  v1 = sub_251674258();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  v2 = sub_2516732E8();
  v0[10] = v2;
  v0[11] = *(v2 - 8);
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251660EF4, 0, 0);
}

uint64_t sub_251660EF4()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_2516732D8();
  sub_251674228();
  sub_251661298();
  sub_251674738();
  (*(v3 + 104))(v2, *MEMORY[0x277D4F368], v4);
  v5 = sub_251674248();
  v6 = MEMORY[0x277D4F358];
  v0[5] = v5;
  v0[6] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_251674238();
  sub_251674278();
  swift_allocObject();
  sub_251674268();
  sub_251674738();
  v7 = sub_251674218();
  v0[13] = v7;
  v8 = swift_task_alloc();
  v0[14] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2516610D8;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000019, 0x8000000251676D60, sub_25166173C, v8, v10);
}

uint64_t sub_2516610D8()
{

  return MEMORY[0x2822009F8](sub_2516611F0, 0, 0);
}

uint64_t sub_2516611F0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  v4 = *(v0 + 128);
  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);

  return v5(v4);
}

unint64_t sub_251661298()
{
  result = qword_27F452498;
  if (!qword_27F452498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F452498);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_251661348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
  v5 = *(v4 - 8);
  v31 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A8, &qword_251675AB8);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = sub_251674568();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F451F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, static Logger.workout);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_251674548();
  v16 = sub_251674718();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v9;
    v18 = a1;
    v19 = v4;
    v20 = v7;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_251650000, v15, v16, "Fetching Fitness+ subscription status", v17, 2u);
    v22 = v21;
    v7 = v20;
    v4 = v19;
    a1 = v18;
    v9 = v30;
    MEMORY[0x25307EDE0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_251674208();
  v23 = v34;
  (*(v5 + 16))(v34, a1, v4);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v24, v23, v4);
  v26 = sub_2516732F8();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_251661C30;
  *(v27 + 24) = v25;

  v26(sub_251661CEC, v27);

  return (*(v35 + 8))(v9, v7);
}

void sub_251661744(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_251674568();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251673238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2516732C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B0, &qword_251675AC0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v28 - v14);
  sub_251661D1C(a1, &v28 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_27F451F30 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v3, static Logger.workout);
    swift_beginAccess();
    v19 = v29;
    v18 = v30;
    (*(v30 + 16))(v29, v17, v3);
    v20 = v16;
    v21 = sub_251674548();
    v22 = sub_251674728();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v16;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_251650000, v21, v22, "Error fetching Fitness+ subscription: %@", v23, 0xCu);
      sub_251660554(v24);
      MEMORY[0x25307EDE0](v24, -1, -1);
      MEMORY[0x25307EDE0](v23, -1, -1);
    }

    (*(v18 + 8))(v19, v3);
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
    sub_251674708();
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    sub_251673228();
    v27 = sub_2516732B8();
    (*(v6 + 8))(v8, v5);
    v33 = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
    sub_251674708();
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_251661B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_251661C30(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524A0, &qword_251675AB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_251661744(a1, v4);
}

uint64_t sub_251661CAC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251661CEC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_251661D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B0, &qword_251675AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Double __swiftcall DispatchTimeInterval.toSeconds()()
{
  v1 = v0;
  v2 = sub_251674598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D85188])
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  if (v6 == *MEMORY[0x277D85178])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = 1000.0;
  }

  else if (v6 == *MEMORY[0x277D85170])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = 100000.0;
  }

  else
  {
    if (v6 != *MEMORY[0x277D85168])
    {
      (*(v3 + 8))(v5, v2);
      return 9.22337204e18;
    }

    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = 100000000.0;
  }

  return v8 / v9;
}

uint64_t UsoEntity_common_App.appIdentifier.getter()
{
  v0 = sub_251673848();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v48 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B8, &qword_251675AC8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  result = sub_251673888();
  if (!result)
  {
    return result;
  }

  v22 = result;
  v57 = v18;
  v58 = result;
  v59 = *(result + 16);
  v53 = v15;
  v54 = v7;
  if (!v59)
  {
    v30 = 1;
    goto LABEL_18;
  }

  v56 = v20;
  v23 = 0;
  v24 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v9, v24 + *(v1 + 72) * v23, v0);
    v26 = sub_251673838();
    if (!v27)
    {
      goto LABEL_5;
    }

    if (v26 == 0x64695F6D657469 && v27 == 0xE700000000000000)
    {
      break;
    }

    v28 = sub_251674978();

    if (v28)
    {
      goto LABEL_12;
    }

LABEL_5:
    ++v23;
    result = (*(v1 + 8))(v9, v0);
    v22 = v58;
    if (v59 == v23)
    {
      v30 = 1;
      v20 = v56;
      goto LABEL_18;
    }
  }

LABEL_12:
  if (sub_251673808() != 0x746163696C707041 || v29 != 0xEC000000736E6F69)
  {
    v25 = sub_251674978();

    if (v25)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

LABEL_15:
  v20 = v56;
  (*(v1 + 32))(v56, v9, v0);
  v30 = 0;
  v22 = v58;
LABEL_18:
  v31 = *(v1 + 56);
  v31(v20, v30, 1, v0);
  v32 = v57;
  sub_251662694(v20, v57);
  v33 = *(v1 + 48);
  if (v33(v32, 1, v0) == 1)
  {
    v49 = v33;
    v50 = v1 + 48;
    v51 = v31;
    v52 = v1 + 56;
    result = sub_251662704(v20);
    if (v59)
    {
      v34 = 0;
      v57 = (v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
      v56 = 0x8000000251676C90;
      do
      {
        if (v34 >= *(v22 + 16))
        {
          goto LABEL_44;
        }

        (*(v1 + 16))(v4, &v57[*(v1 + 72) * v34], v0);
        v37 = sub_251673838();
        if (v38)
        {
          if (v37 == 0x656D614E707061 && v38 == 0xE700000000000000)
          {
          }

          else
          {
            v39 = sub_251674978();

            if ((v39 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          if (sub_251673808() == 0xD000000000000015 && v56 == v40)
          {
          }

          else
          {
            v41 = sub_251674978();

            if ((v41 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v62 = sub_251673828();
          v63 = v35;
          v60 = 46;
          v61 = 0xE100000000000000;
          sub_25166276C();
          v36 = sub_2516747A8();

          if (v36)
          {

            v45 = v53;
            (*(v1 + 32))(v53, v4, v0);
            v44 = 0;
            goto LABEL_36;
          }
        }

LABEL_23:
        ++v34;
        result = (*(v1 + 8))(v4, v0);
        v22 = v58;
      }

      while (v59 != v34);
    }

    v44 = 1;
    v45 = v53;
LABEL_36:
    v51(v45, v44, 1, v0);
    v46 = v55;
    sub_251662694(v45, v55);
    if (v49(v46, 1, v0) == 1)
    {
      sub_251662704(v45);
      return 0;
    }

    v47 = v54;
    (*(v1 + 32))(v54, v46, v0);
    v43 = sub_251673828();
    (*(v1 + 8))(v47, v0);
    sub_251662704(v45);
  }

  else
  {
    v42 = v54;
    (*(v1 + 32))(v54, v32, v0);
    v43 = sub_251673828();
    (*(v1 + 8))(v42, v0);
    sub_251662704(v20);
  }

  return v43;
}

uint64_t sub_251662694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B8, &qword_251675AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251662704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524B8, &qword_251675AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25166276C()
{
  result = qword_27F4524C0;
  if (!qword_27F4524C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4524C0);
  }

  return result;
}

uint64_t makeConfirmationButtons(confirmButton:rejectButton:device:)(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v7 = sub_2516745F8();
  v8 = [v6 initWithIdentifier_];

  sub_251662C3C(a1[4]);
  v9 = sub_2516745A8();

  v38 = v8;
  [v8 setUserData_];

  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v11 = sub_251673488();
  v36 = [v10 runSiriKitExecutorCommandWithContext:v11 payload:v8];

  v12 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v13 = sub_2516745F8();
  v14 = [v12 initWithIdentifier_];

  sub_251662C3C(a2[4]);
  v15 = sub_2516745A8();

  v37 = v14;
  [v14 setUserData_];

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v16 = sub_251673488();
  v35 = [v10 runSiriKitExecutorCommandWithContext:v16 payload:v14];

  v17 = [v10 wrapCommandInStartLocalRequest_];
  v18 = [v10 wrapCommandInStartLocalRequest_];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v34 = sub_251673448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251675370;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251675370;
  *(v20 + 32) = v17;
  v21 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v33 = v17;
  v22 = [v21 init];
  v23 = sub_2516745F8();
  [v22 setLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v24 = sub_2516746A8();

  [v22 setCommands_];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_251675370;
  *(v25 + 32) = v18;
  v26 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v27 = v18;
  v28 = [v26 init];
  v29 = sub_2516745F8();
  [v28 setLabel_];

  v30 = sub_2516746A8();

  [v28 setCommands_];

  v31 = sub_251662F04(v22, v28, 0, v34 & 1);
  *(v19 + 32) = v31;

  return v19;
}

uint64_t sub_251662C3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524F8, &qword_251675B10);
    v2 = sub_251674928();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_251654B68(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_251663790(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_251663790(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_251663790(v31, v32);
    result = sub_2516747C8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_251663790(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_251662F04(id a1, void *a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];
    v27 = [a1 label];
    [v21 setConfirmText_];

    v28 = [a1 commands];
    [v21 setConfirmCommands_];

    v29 = [a2 label];
    [v21 setDenyText_];

    v30 = [a2 commands];
    [v21 setDenyCommands_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_251675AE0;
    *(v31 + 32) = a1;
    *(v31 + 40) = a2;
    v38 = v31;
    if (a3)
    {
      v32 = a1;
      v33 = a2;
      v34 = a3;
      MEMORY[0x25307E560]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2516746C8();
      }

      sub_2516746E8();
    }

    else
    {
      v35 = a1;
      v36 = a2;
    }

    sub_251663748(0, &qword_27F4524E0, 0x277D47A28);
    v37 = sub_2516746A8();

    [v21 setAllConfirmationOptions_];

    return v21;
  }

  result = [a1 label];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = sub_251674608();
  v10 = v9;

  result = [a1 commands];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  sub_251663748(0, &qword_27F4524E8, 0x277D47760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v12 = sub_2516746B8();

  v13 = SASTButtonItem.init(label:commands:centered:)(v8, v10, v12, 1);
  result = [a2 label];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = sub_251674608();
  v17 = v16;

  result = [a2 commands];
  if (result)
  {
    v18 = result;
    v19 = sub_2516746B8();

    v20 = SASTButtonItem.init(label:commands:centered:)(v15, v17, v19, 1);
    v21 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_251675AE0;
    *(v22 + 32) = v13;
    *(v22 + 40) = v20;
    v23 = v13;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4524F0, &qword_251675B08);
    v25 = sub_2516746A8();

    [v21 setTemplateItems_];

    return v21;
  }

LABEL_17:
  __break(1u);
  return result;
}

id makeRFConfirmationButtons(confirmButton:rejectButton:device:)(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v7 = sub_2516745F8();
  v8 = [v6 initWithIdentifier_];

  sub_251662C3C(a1[4]);
  v9 = sub_2516745A8();

  v34 = v8;
  [v8 setUserData_];

  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v11 = sub_251673488();
  v33 = [v10 runSiriKitExecutorCommandWithContext:v11 payload:v8];

  v12 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v13 = sub_2516745F8();
  v14 = [v12 initWithIdentifier_];

  sub_251662C3C(a2[4]);
  v15 = sub_2516745A8();

  [v14 setUserData_];

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v16 = sub_251673488();
  v32 = [v10 runSiriKitExecutorCommandWithContext:v16 payload:v14];

  v17 = [v10 wrapCommandInStartLocalRequest_];
  v18 = [v10 wrapCommandInStartLocalRequest_];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_251673448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251675370;
  *(v19 + 32) = v17;
  v20 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v31 = v17;
  v21 = [v20 init];
  v22 = sub_2516745F8();
  [v21 setLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v23 = sub_2516746A8();

  [v21 setCommands_];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251675370;
  *(v24 + 32) = v18;
  v25 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v26 = v18;
  v27 = [v25 init];
  v28 = sub_2516745F8();
  [v27 setLabel_];

  v29 = sub_2516746A8();

  [v27 setCommands_];

  return v21;
}

uint64_t sub_251663748(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_251663790(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static UsoEntity_common_App.builder(appName:appIdentifier:usoIdentifierNamespace:usoIdentifierAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v18 = a7;
  v19 = a3;
  v20 = a5;
  v9 = sub_251673848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673A68();
  swift_allocObject();
  v13 = sub_251673A58();
  if (a4)
  {
    sub_2516739D8();
    v17 = v9;
    swift_allocObject();

    v14 = sub_2516739C8();

    sub_251673818();
    sub_2516737D8();
    (*(v10 + 8))(v12, v17);
    v21 = v14;
    sub_251673868();
  }

  return v13;
}

uint64_t static UsoEntity_common_App.with(appIdentifier:usoIdentifierNamespace:usoIdentifierAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v19 = a6;
  v9 = sub_251673848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673A68();
  swift_allocObject();
  v13 = sub_251673A58();
  if (a2)
  {
    sub_2516739D8();
    v17[2] = a4;
    v18 = v9;
    swift_allocObject();

    v14 = sub_2516739C8();
    v17[0] = a2;
    v17[1] = a3;
    v15 = v14;

    sub_251673818();
    sub_2516737D8();
    (*(v10 + 8))(v12, v18);
    v20 = v15;
    sub_251673868();
  }

  MEMORY[0x25307D850](v13);
  sub_2516738B8();
  sub_251673A18();

  return v20;
}

uint64_t Date.startOfDay.getter()
{
  v0 = sub_251673298();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673278();
  sub_251673248();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_251673238();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_251673298();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452500, &qword_251675B20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452508, &qword_251675B28);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452510, &qword_251675B30);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v29 = sub_2516731B8();
  v19 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 56))(v18, 1, 1, v3);
  v22 = sub_2516732A8();
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  sub_2516731A8();
  sub_251673188();
  sub_251673198();
  sub_251673278();
  sub_251673278();
  v23 = v31;
  sub_251673248();
  v24 = *(v4 + 8);
  v24(v7, v3);
  v25 = v23;
  sub_251673268();
  v27 = v32;
  v26 = v33;
  (*(v32 + 8))(v25, v33);
  v24(v9, v3);
  result = (*(v27 + 48))(v12, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 8))(v21, v29);
    return (*(v27 + 32))(v30, v12, v26);
  }

  return result;
}

uint64_t Calendar.numberOfDaysBetween(_:and:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_251674568();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2516731B8();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = sub_251673238();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  sub_251673248();
  sub_251673248();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452518, &qword_251675B38);
  v16 = sub_251673288();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251675380;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x277CC9968], v16);
  sub_25166466C(v19);
  swift_setDeallocating();
  (*(v17 + 8))(v19 + v18, v16);
  swift_deallocClassInstance();
  v41 = v15;
  v42 = v13;
  sub_251673258();

  if (qword_27F451F18 != -1)
  {
    swift_once();
  }

  v20 = v50;
  v21 = __swift_project_value_buffer(v50, static Logger.wellness);
  swift_beginAccess();
  v22 = v49;
  (*(v49 + 16))(v4, v21, v20);
  v23 = v46;
  v24 = v47;
  v25 = *(v47 + 16);
  v45 = v9;
  v26 = v48;
  v25(v46, v9, v48);
  v27 = sub_251674548();
  v28 = sub_251674718();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v23;
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    result = sub_251673178();
    if (v32)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v33 = result;
    v34 = *(v24 + 8);
    v34(v29, v26);
    *(v30 + 4) = v33;
    _os_log_impl(&dword_251650000, v27, v28, "Number of days: %ld", v30, 0xCu);
    MEMORY[0x25307EDE0](v30, -1, -1);
    v20 = v50;
  }

  else
  {
    v34 = *(v24 + 8);
    v34(v23, v26);
  }

  (*(v22 + 8))(v4, v20);
  v35 = v45;
  result = sub_251673178();
  if (v36)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v37 = result;
  v34(v35, v26);
  v38 = *(v43 + 8);
  v39 = v44;
  v38(v42, v44);
  v38(v41, v39);
  result = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void *sub_25166461C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25166463C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25166466C(uint64_t a1)
{
  v2 = sub_251673288();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452520, &qword_251675B48);
    v9 = sub_2516747E8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_251664964(&qword_27F452528, MEMORY[0x277CC99D8]);
      v16 = sub_2516745C8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_251664964(&qword_27F452530, MEMORY[0x277CC99E0]);
          v23 = sub_2516745E8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_251664964(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_251673288();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutEquipment.builder(name:)(uint64_t a1, uint64_t a2)
{
  sub_2516740F8();
  swift_allocObject();
  v3 = sub_2516740E8();
  if (a2)
  {
    sub_2516740D8();
  }

  return v3;
}

uint64_t static UsoEntity_common_WorkoutEquipment.with(name:)(uint64_t a1, uint64_t a2)
{
  sub_2516740F8();
  swift_allocObject();
  v3 = sub_2516740E8();
  if (a2)
  {
    sub_2516740D8();
  }

  MEMORY[0x25307D850](v3);
  sub_251673E08();
  sub_251673A18();

  return v5;
}

Swift::Bool __swiftcall App.isFirstParty()()
{
  sub_251674468();
  if (v0)
  {
    sub_251664B44();
    sub_251664B98();
    v1 = sub_2516745D8();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_251664B44()
{
  result = qword_27F452538;
  if (!qword_27F452538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452538);
  }

  return result;
}

unint64_t sub_251664B98()
{
  result = qword_27F452540;
  if (!qword_27F452540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452540);
  }

  return result;
}

uint64_t HealthLogName.rawValue.getter(char a1)
{
  result = 0x79726568637261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 14:
      return 0xD000000000000012;
    case 3:
      return 0x6F746E696D646162;
    case 4:
      return 0x6572726162;
    case 5:
      v11 = 1702060386;
      return v11 | 0x6C6C616200000000;
    case 6:
      v4 = 0x74656B736162;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
    case 7:
      v6 = 1819766626;
      return v6 | 0x676E6900000000;
    case 8:
      return 0x676E69786F62;
    case 9:
      v8 = 0x6F6964726163;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 10:
      return 0x676E69626D696C63;
    case 11:
      return 0x6E776F646C6F6F63;
    case 12:
      v9 = 1701998435;
      return v9 | 0x6961727400000000;
    case 13:
      return 0x74656B63697263;
    case 15:
      return 0x61727473736F7263;
    case 16:
      v6 = 1819440483;
      return v6 | 0x676E6900000000;
    case 17:
      return 0x65636E6164;
    case 18:
      v7 = 1668508004;
      return v7 | 0x726F707300000000;
    case 19:
      return 0x6C6C69686E776F64;
    case 20:
      return 0x63697470696C6C65;
    case 21:
      return 0xD000000000000010;
    case 22:
      return 0x6573696372657865;
    case 23:
      v6 = 1668179302;
      return v6 | 0x676E6900000000;
    case 24:
      v6 = 1752394086;
      return v6 | 0x676E6900000000;
    case 25:
      return 0x677373656E746966;
    case 26:
      return 0x6C69626978656C66;
    case 27:
      v3 = 10;
      return v3 | 0xD000000000000010;
    case 28:
      return 1718382439;
    case 29:
      return 0x697473616E6D7967;
    case 30:
      v11 = 1684955496;
      return v11 | 0x6C6C616200000000;
    case 31:
      return 0x6C637963646E6168;
    case 32:
      v3 = 13;
      return v3 | 0xD000000000000010;
    case 33:
      return 1701538152;
    case 34:
      return 0x79656B636F68;
    case 35:
      v6 = 1953396072;
      return v6 | 0x676E6900000000;
    case 36:
      return 0x7963726F6F646E69;
    case 37:
      return 0x7572726F6F646E69;
    case 38:
      return 0x6177726F6F646E69;
    case 39:
      return 0x65706F72706D756ALL;
    case 40:
      return 0x69786F626B63696BLL;
    case 41:
      return 0x6573736F7263616CLL;
    case 42:
      return 0x616C61697472616DLL;
    case 43:
      return 0x62646E61646E696DLL;
    case 44:
      return 0x726163646578696DLL;
    case 45:
      return 0x726F57726568746FLL;
    case 46:
      return 0x7073656C64646170;
    case 47:
      v4 = 0x656C6B636970;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
    case 48:
      return 0x736574616C6970;
    case 49:
      return 2036427888;
    case 50:
      return 0xD000000000000016;
    case 51:
      return 0x6274657571636172;
    case 52:
      return 0x7265776F72;
    case 53:
      return 0x7962677572;
    case 54:
      v6 = 1818845555;
      return v6 | 0x676E6900000000;
    case 55:
      return 0x756E696D5F786973;
    case 56:
      v5 = 1952541555;
      return v5 | 0x73676E6900000000;
    case 57:
      return 0x72616F62776F6E73;
    case 58:
      v7 = 2003791475;
      return v7 | 0x726F707300000000;
    case 59:
      return 0x726563636F73;
    case 60:
      v8 = 0x6C6169636F73;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 61:
      v11 = 1952870259;
      return v11 | 0x6C6C616200000000;
    case 62:
      return 0x687361757173;
    case 63:
      v9 = 1885697139;
      return v9 | 0x6961727400000000;
    case 64:
      v5 = 1718777203;
      return v5 | 0x73676E6900000000;
    case 65:
      return 0x6E6574656C626174;
    case 66:
      return 0x696863696174;
    case 67:
      return 0x73696E6E6574;
    case 68:
      return 0x61576F54656D6974;
    case 69:
      return 0x646E616B63617274;
    case 70:
      v3 = 9;
      return v3 | 0xD000000000000010;
    case 71:
      v4 = 0x79656C6C6F76;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
    case 72:
      return 0x7469667265746177;
    case 73:
      return 0x6C6F707265746177;
    case 74:
      return 0x6F70737265746177;
    case 75:
      return 0x7374756F6B726F77;
    case 76:
      v10 = 0x6C7473657277;
      goto LABEL_93;
    case 77:
      return 1634168697;
    case 78:
      v10 = 0x6C6379636962;
LABEL_93:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 79:
      result = 7239026;
      break;
    case 80:
      result = 0x635F737269617473;
      break;
    case 81:
      result = 1835628403;
      break;
    case 82:
      result = 1802264951;
      break;
    case 83:
      result = 0x6168636C65656877;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_25166559C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = HealthLogName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HealthLogName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251674978();
  }

  return v8 & 1;
}

uint64_t sub_251665624()
{
  v1 = *v0;
  sub_2516749F8();
  HealthLogName.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_251665688(uint64_t a1)
{
  HealthLogName.rawValue.getter(*v1);
  sub_251674638();
}

uint64_t sub_2516656DC(uint64_t a1)
{
  v2 = *v1;
  sub_2516749F8();
  HealthLogName.rawValue.getter(v2);
  sub_251674638();

  return sub_251674A18();
}

unint64_t sub_25166573C@<X0>(Swift::String *a1@<X0>, HealthDomainsTools::HealthLogName_optional *a2@<X8>)
{
  result = _s18HealthDomainsTools0A7LogNameO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_25166576C@<X0>(uint64_t *a1@<X8>)
{
  result = HealthLogName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall vocabularyIdentifier(for:)(HealthDomainsTools::HealthLogName_optional a1)
{
  if (a1.value == HealthDomainsTools_HealthLogName_unknownDefault)
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v4 = sub_251665874(a1.value);
    v6 = v5;
    if (sub_251665924(a1.value, &unk_28638F688))
    {
      v2 = v6;
      v1 = v4;
    }

    else
    {
      sub_251674818();

      MEMORY[0x25307E530](v4, v6);

      v1 = 0xD000000000000028;
      v2 = 0x8000000251676D80;
    }
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_251665874(uint64_t a1)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = sub_25166C98C(&unk_28638EE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452560, &qword_251675C68);
  swift_arrayDestroy();
  if (*(v3 + 16))
  {
    v4 = sub_25166B694(a1);
    if (v5)
    {
      v2 = *(*(v3 + 56) + 16 * v4);
    }
  }

  return v2;
}

BOOL sub_251665924(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = HealthLogName.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == HealthLogName.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_251674978();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

unint64_t _s18HealthDomainsTools0A7LogNameO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_251674998();

  if (v2 >= 0x54)
  {
    return 84;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_251665A40()
{
  result = qword_27F452548;
  if (!qword_27F452548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452548);
  }

  return result;
}

unint64_t sub_251665A98()
{
  result = qword_27F452550;
  if (!qword_27F452550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F452558, &qword_251675BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452550);
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

uint64_t getEnumTagSinglePayload for HealthLogName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAD)
  {
    goto LABEL_17;
  }

  if (a2 + 83 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 83) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 83;
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

      return (*a1 | (v4 << 8)) - 83;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 83;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x54;
  v8 = v6 - 84;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthLogName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 83 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 83) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAD)
  {
    v4 = 0;
  }

  if (a2 > 0xAC)
  {
    v5 = ((a2 - 173) >> 8) + 1;
    *result = a2 + 83;
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
    *result = a2 + 83;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id SASTButtonItem.init(label:commands:centered:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setCentered_];
  v6 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v7 = sub_2516746A8();

  [v6 setCommands_];

  [v5 setAction_];
  v8 = [objc_allocWithZone(MEMORY[0x277D47A40]) init];
  v9 = sub_2516745F8();

  [v8 setText_];

  [v5 setDecoratedLabel_];
  return v5;
}

id SASTCommandTemplateAction.init(commands:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v2 = sub_2516746A8();

  [v1 setCommands_];

  return v1;
}

id SASTSideBySideButtonsItem.init(primaryButtonConfirmationOption:secondaryButtonConfirmationOption:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = *MEMORY[0x277D48D08];
  v6 = v4;
  [v6 setButtonsViewStyle_];
  result = [a1 commands];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
    [v9 setCommands_];

    [v6 setPrimaryButtonAction_];
    [v6 setPrimaryButtonEnabled_];
    v10 = [a1 label];
    [v6 setPrimaryButtonLabel_];

    v11 = sub_2516734F8();
    [v6 setPrimaryButtonTextColor_];

    result = [a2 commands];
    if (result)
    {
      v12 = result;
      v13 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
      [v13 setCommands_];

      [v6 setSecondaryButtonAction_];
      [v6 setSecondaryButtonEnabled_];
      v14 = [a2 label];
      [v6 setSecondaryButtonLabel_];

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id SASTCountdownTimerItem.init(sashTitle:commands:delay:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = v6;

  if (a3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
    sub_251674908();
  }

  else
  {
    sub_251674988();
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F452570, &unk_251675AF8);
  v9 = sub_2516746A8();

  [v8 setCommands_];

  [v6 setAction_];
  [v6 setActionDelayInSeconds_];
  v10 = sub_2516734F8();
  [v6 setBodyBackgroundColor_];

  v11 = sub_2516734E8();
  [v6 setCountdownTextColor_];

  v12 = sub_2516734F8();
  [v6 setHeaderBackgroundColor_];

  v13 = sub_2516745F8();

  [v6 setHeaderText_];

  v14 = sub_2516734D8();
  [v6 setHeaderTextColor_];

  return v6;
}

id SABaseCommand.asVCatString.getter()
{
  v11[1] = *MEMORY[0x277D85DE8];
  result = [v0 dictionary];
  if (result)
  {
    v2 = result;
    v11[0] = 0;
    v3 = [objc_opt_self() dataWithPropertyList:result format:200 options:0 error:v11];
    v4 = v11[0];
    if (v3)
    {
      v5 = sub_251673208();
      v7 = v6;

      sub_25166640C(v5, v7);
      v8 = sub_2516731F8();

      sub_251666460(v5, v7);
      sub_251666460(v5, v7);
      return v8;
    }

    else
    {
      v9 = v4;
      v10 = sub_2516731C8();

      swift_willThrow();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25166640C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_251666460(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id SAUIAppPunchOut.init(aceService:url:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_2516731D8();
  [v4 setPunchOutUri_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251673568();
  if (v6)
  {
    v7 = sub_2516745F8();
  }

  else
  {
    v7 = 0;
  }

  [v4 setAceId_];

  v8 = sub_2516731E8();
  (*(*(v8 - 8) + 8))(a2, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t static UsoEntity_common_Measurement.builder(component:)(uint64_t a1, uint64_t a2)
{
  sub_251673E88();
  swift_allocObject();
  v3 = sub_251673E78();
  if (a1)
  {

    sub_251673E68();
  }

  return v3;
}

uint64_t static UsoEntity_common_Measurement.with(component:)(uint64_t a1, uint64_t a2)
{
  sub_251673E88();
  swift_allocObject();
  v3 = sub_251673E78();
  if (a1)
  {

    sub_251673E68();
  }

  MEMORY[0x25307D850](v3);
  sub_251673A88();
  sub_251673A18();

  return v5;
}

uint64_t sub_2516666F0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = sub_251673D68();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673E88();
  swift_allocObject();
  v16 = sub_251673E78();
  sub_251659758(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2516597C8(v11);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if ((a3 & 1) == 0)
    {
      (*(v13 + 16))(v9, v15, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
      sub_2516593C0(v9, a2, 0);
      sub_2516597C8(v9);

      sub_251673E68();
    }

    (*(v13 + 8))(v15, v12);
  }

  return v16;
}

unint64_t sub_251666990()
{
  result = qword_27F452580;
  if (!qword_27F452580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452580);
  }

  return result;
}

uint64_t ServerFallbackFlow.execute()(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_251673368();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_251674568();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251666B00, 0, 0);
}

uint64_t sub_251666B00()
{
  v19 = v0;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, static Logger.common);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_251674548();
  v6 = sub_251674718();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25165445C(0xD000000000000012, 0x8000000251675C70, &v18);
    _os_log_impl(&dword_251650000, v5, v6, "Executing %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x25307EDE0](v12, -1, -1);
    MEMORY[0x25307EDE0](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];
  (*(v14 + 104))(v13, *MEMORY[0x277D5B8A0], v15);
  sub_251673528();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_251666D50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2516558DC;

  return ServerFallbackFlow.execute()(a1);
}

uint64_t static UsoTask.startWorkout(_:goalDefinedValue:goalUnitType:goalValue:areaType:sequenceLabel:appIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a8;
  v50 = a7;
  v51 = a5;
  v48 = a6;
  v49 = a4;
  v45 = a1;
  v46 = a9;
  v47 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = sub_251673AC8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v41 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v52 = &v41 - v23;
  v24 = sub_251673848();
  v55 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673CB8();
  swift_allocObject();
  v27 = sub_251673CA8();
  sub_251673DC8();
  swift_allocObject();
  v53 = sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    v42 = v19;
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v28 = v20;
    v29 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v55 + 8))(v26, v24);
    v56 = v29;
    v19 = v42;
    sub_251673868();
    v20 = v28;
  }

  v45 = v24;
  if (v54)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(v50, v54);
    sub_251673D98();
  }

  v50 = a11;

  sub_251673C78();

  v54 = sub_251658E48(v47, v49, v51, v48 & 1);
  sub_251673C88();
  sub_251654A14(v46, v18);
  v30 = *(v20 + 48);
  if (v30(v18, 1, v19) == 1)
  {
    sub_251654A84(v18, &qword_27F452390, &unk_251675D30);
  }

  else
  {
    v51 = v27;
    v31 = *(v20 + 32);
    v32 = v52;
    v31(v52, v18, v19);
    v33 = v44;
    (*(v20 + 16))(v44, v32, v19);
    (*(v20 + 56))(v33, 0, 1, v19);
    sub_251673F18();
    swift_allocObject();
    sub_251673F08();
    v34 = v43;
    sub_251654A14(v33, v43);
    if (v30(v34, 1, v19) == 1)
    {
      sub_251654A84(v33, &qword_27F452390, &unk_251675D30);
      v35 = v34;
    }

    else
    {
      v36 = v41;
      v31(v41, v34, v19);
      sub_251673EF8();
      (*(v20 + 8))(v36, v19);
      v35 = v33;
    }

    sub_251654A84(v35, &qword_27F452390, &unk_251675D30);

    sub_2516739F8();

    (*(v20 + 8))(v52, v19);
  }

  v37 = v55;
  if (v50)
  {
    sub_251673A68();
    swift_allocObject();
    sub_251673A58();
    sub_2516739D8();
    swift_allocObject();

    v38 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v37 + 8))(v26, v45);
    v56 = v38;
    sub_251673868();

    sub_251673A08();
  }

  sub_251673FC8();
  swift_allocObject();
  v39 = sub_251673FB8();
  sub_251673BC8();

  return v39;
}

uint64_t sub_2516675DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = _s12SiriOntology7UsoTaskC18HealthDomainsToolsE13modifyWorkout_4verbAA0C37_VerbTemplateBuilder_ReferenceControlCyAA0c6Entitym8_common_I0CGSSSg_AD06ModifyidK0OtFZ_0(a1, a2, a3);
  v6 = a4(0);

  return MEMORY[0x2821FE918](v5, v6, 0, 0, 0);
}

uint64_t static UsoTask.createHealthLog(_:measurementNeeded:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_251673848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673DC8();
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v9 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v6 + 8))(v8, v5);
    v12[1] = v9;
    sub_251673868();
  }

  if (a3)
  {
    sub_251673E88();
    swift_allocObject();
    sub_251673E78();
    sub_251673DA8();
  }

  sub_251674048();
  swift_allocObject();
  v10 = sub_251674038();
  sub_251673BC8();

  return v10;
}

uint64_t static UsoTask.noVerbHealthLog(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_251673848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673DC8();
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v7 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v4 + 8))(v6, v3);
    v10[1] = v7;
    sub_251673868();
  }

  sub_251674068();
  swift_allocObject();
  v8 = sub_251674058();
  sub_2516737B8();

  return v8;
}

unint64_t UsoTaskBuilder.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D8, &qword_251675398);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251675370;
  *(v4 + 32) = v0;
  v5 = sub_251673898();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  v6 = MEMORY[0x25307D720](v4, v3);

  sub_251654A84(v3, &qword_27F4523D8, &qword_251675398);
  result = MEMORY[0x25307D770](v6);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v9 = result;
  v10 = sub_251674918();
  result = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25307E6F0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);

LABEL_6:

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t UsoTaskBuilder.toProtobufUsoGraph()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523D8, &qword_251675398);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4524D0, &qword_251675D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_251675370;
  *(v6 + 32) = v1;
  v7 = sub_251673898();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);

  MEMORY[0x25307D720](v6, v5);

  sub_251654A84(v5, &qword_27F4523D8, &qword_251675398);
  sub_251673798();

  v8 = sub_251673648();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t ModifyWorkoutTaskVerb.hashValue.getter(unsigned __int8 a1)
{
  sub_2516749F8();
  MEMORY[0x25307E8D0](a1);
  return sub_251674A18();
}

uint64_t sub_251667E2C()
{
  v1 = *v0;
  sub_2516749F8();
  MEMORY[0x25307E8D0](v1);
  return sub_251674A18();
}

uint64_t sub_251667EA0(uint64_t a1)
{
  v2 = *v1;
  sub_2516749F8();
  MEMORY[0x25307E8D0](v2);
  return sub_251674A18();
}

uint64_t _s12SiriOntology7UsoTaskC18HealthDomainsToolsE13modifyWorkout_4verbAA0C37_VerbTemplateBuilder_ReferenceControlCyAA0c6Entitym8_common_I0CGSSSg_AD06ModifyidK0OtFZ_0(uint64_t a1, uint64_t a2, int a3)
{
  v58 = a3;
  v4 = sub_251673AC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v47 - v8;
  v9 = sub_251673848();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v47 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v47 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v47 - v25;
  v27 = sub_251673A98();
  v28 = *(*(v27 - 8) + 56);
  v59 = v26;
  v28(v26, 1, 1, v27);
  v29 = sub_251673D68();
  v30 = *(*(v29 - 8) + 56);
  v60 = v23;
  v30(v23, 1, 1, v29);
  v55 = v5;
  v31 = *(v5 + 56);
  v61 = v20;
  v51 = v31;
  v31(v20, 1, 1, v4);
  sub_251673CB8();
  swift_allocObject();
  v32 = sub_251673CA8();
  sub_251673DC8();
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    v48 = v9;
    v49 = v18;
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v33 = sub_2516739C8();
    v34 = v54;
    sub_251673818();
    sub_2516737D8();
    v35 = v34;
    v18 = v49;
    (*(v56 + 8))(v35, v48);
    v62 = v33;
    sub_251673868();
  }

  sub_251673C78();

  sub_251658E48(v59, v60, 0, 1);
  v56 = v32;
  sub_251673C88();
  sub_251654A14(v61, v18);
  v36 = v55;
  v37 = *(v55 + 48);
  if (v37(v18, 1, v4) == 1)
  {

    sub_251654A84(v18, &qword_27F452390, &unk_251675D30);
  }

  else
  {
    v38 = v57;
    v54 = *(v36 + 32);
    (v54)(v57, v18, v4);
    v39 = v53;
    (*(v36 + 16))(v53, v38, v4);
    v51(v39, 0, 1, v4);
    v40 = v39;
    sub_251673F18();
    swift_allocObject();
    v41 = v36;
    sub_251673F08();
    v42 = v52;
    sub_251654A14(v40, v52);
    if (v37(v42, 1, v4) == 1)
    {
      sub_251654A84(v40, &qword_27F452390, &unk_251675D30);
      v40 = v42;
    }

    else
    {
      v43 = v50;
      (v54)(v50, v42, v4);
      sub_251673EF8();
      (*(v41 + 8))(v43, v4);
    }

    sub_251654A84(v40, &qword_27F452390, &unk_251675D30);

    sub_2516739F8();

    (*(v41 + 8))(v57, v4);
  }

  sub_251654A84(v61, &qword_27F452390, &unk_251675D30);
  sub_251654A84(v60, &qword_27F452398, &qword_251675270);
  sub_251654A84(v59, &qword_27F4523A0, &unk_251675E00);
  if (v58)
  {
    if (v58 == 1)
    {
      sub_251673E58();
      swift_allocObject();
      v44 = sub_251673E48();
    }

    else
    {
      sub_251673FE8();
      swift_allocObject();
      v44 = sub_251673FD8();
    }
  }

  else
  {
    sub_251673EE8();
    swift_allocObject();
    v44 = sub_251673ED8();
  }

  v45 = v44;

  sub_251674108();

  return v45;
}

uint64_t sub_251668704(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v59 = a4;
  v60 = a5;
  v58 = a3;
  v6 = sub_251673AC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v49 - v10;
  v11 = sub_251673848();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v52 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v53 = &v49 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452398, &qword_251675270);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523A0, &unk_251675E00);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v49 - v28;
  v30 = sub_251673A98();
  v31 = *(*(v30 - 8) + 56);
  v61 = v29;
  v31(v29, 1, 1, v30);
  v32 = sub_251673D68();
  v33 = *(*(v32 - 8) + 56);
  v62 = v26;
  v33(v26, 1, 1, v32);
  v54 = v6;
  v55 = v7;
  v34 = *(v7 + 56);
  v63 = v23;
  v51 = v34;
  v34(v23, 1, 1, v6);
  sub_251673CB8();
  swift_allocObject();
  v35 = sub_251673CA8();
  sub_251673DC8();
  swift_allocObject();
  sub_251673DB8();
  if (a2)
  {
    sub_2516739D8();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v36 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v56 + 8))(v13, v11);
    v64 = v36;
    sub_251673868();
  }

  sub_251673C78();

  sub_251658E48(v61, v62, 0, 1);
  v56 = v35;
  sub_251673C88();
  sub_251654A14(v63, v21);
  v38 = v54;
  v37 = v55;
  v39 = *(v55 + 48);
  if (v39(v21, 1, v54) == 1)
  {

    sub_251654A84(v21, &qword_27F452390, &unk_251675D30);
    v40 = v56;
  }

  else
  {
    v41 = v57;
    v49 = *(v37 + 32);
    v49(v57, v21, v38);
    v42 = v53;
    (*(v37 + 16))(v53, v41, v38);
    v51(v42, 0, 1, v38);
    v43 = v42;
    sub_251673F18();
    swift_allocObject();
    v44 = v37;
    sub_251673F08();
    v45 = v52;
    sub_251654A14(v43, v52);
    if (v39(v45, 1, v38) == 1)
    {
      sub_251654A84(v43, &qword_27F452390, &unk_251675D30);
      v43 = v45;
    }

    else
    {
      v46 = v50;
      v49(v50, v45, v38);
      sub_251673EF8();
      (*(v44 + 8))(v46, v38);
    }

    v40 = v56;
    sub_251654A84(v43, &qword_27F452390, &unk_251675D30);

    sub_2516739F8();

    (*(v44 + 8))(v57, v38);
  }

  sub_251654A84(v63, &qword_27F452390, &unk_251675D30);
  sub_251654A84(v62, &qword_27F452398, &qword_251675270);
  sub_251654A84(v61, &qword_27F4523A0, &unk_251675E00);
  v58(0);
  swift_allocObject();
  v47 = v59();
  v60(v40);

  return v47;
}

unint64_t sub_251668E4C()
{
  result = qword_27F452588;
  if (!qword_27F452588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452588);
  }

  return result;
}

unint64_t USOIdentifierNamespace.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6D6572757361656DLL;
    v6 = 0x4E676F4C646F6F6DLL;
    if (a1 != 8)
    {
      v6 = 0x4C6E6F69746F6D65;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E5568746C616568;
    if (a1 != 5)
    {
      v7 = 0x697461636964656DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4E74756F6B726F77;
    v2 = 0xD000000000000016;
    v3 = 0x4C7373656E746966;
    if (a1 != 3)
    {
      v3 = 0x6F4C68746C616568;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7974697669746361;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25166903C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = USOIdentifierNamespace.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == USOIdentifierNamespace.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251674978();
  }

  return v8 & 1;
}

uint64_t sub_2516690C4()
{
  v1 = *v0;
  sub_2516749F8();
  USOIdentifierNamespace.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_251669128(uint64_t a1)
{
  USOIdentifierNamespace.rawValue.getter(*v1);
  sub_251674638();
}

uint64_t sub_25166917C(uint64_t a1)
{
  v2 = *v1;
  sub_2516749F8();
  USOIdentifierNamespace.rawValue.getter(v2);
  sub_251674638();

  return sub_251674A18();
}

unint64_t sub_2516691DC@<X0>(Swift::String *a1@<X0>, HealthDomainsTools::USOIdentifierNamespace_optional *a2@<X8>)
{
  result = _s18HealthDomainsTools22USOIdentifierNamespaceO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_25166920C@<X0>(unint64_t *a1@<X8>)
{
  result = USOIdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_251669238(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v97 = sub_2516744A8();
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v101 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_251673778();
  v82 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_251673748();
  v98 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_251673648();
  v96 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_251673708();
  v92 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251673688();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251673618();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2516735D8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v100, v16);
  if ((*(v17 + 88))(v19, v16) != *MEMORY[0x277D5C160])
  {
    (*(v17 + 8))(v19, v16);
    return MEMORY[0x277D84F90];
  }

  v21 = *(v17 + 96);
  v20 = (v17 + 96);
  v21(v19, v16);
  v76 = v13;
  v22 = *(v13 + 32);
  v77 = v12;
  v22(v15, v19, v12);
  v75 = v15;
  sub_2516735F8();
  v23 = sub_251673658();
  v24 = v11;
  v25 = v23;
  (*(v9 + 8))(v24, v8);
  v88 = *(v25 + 16);
  if (!v88)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_37:
    v104 = v27;

    sub_25166BFF4(&v104);
    v62 = v77;
    v63 = v76;
    v64 = v75;

    v65 = v104;
    v66 = v104[2];
    if (v66)
    {
      v104 = MEMORY[0x277D84F90];
      sub_25166BADC(0, v66, 0);
      v67 = v104;
      v68 = (v65 + 48);
      do
      {
        v70 = *(v68 - 1);
        v69 = *v68;
        v104 = v67;
        v71 = *(v67 + 16);
        v72 = *(v67 + 24);

        if (v71 >= v72 >> 1)
        {
          sub_25166BADC((v72 > 1), v71 + 1, 1);
          v67 = v104;
        }

        *(v67 + 16) = v71 + 1;
        v73 = v67 + 16 * v71;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
        v68 += 3;
        --v66;
      }

      while (v66);
      (*(v76 + 8))(v75, v77);

      return v67;
    }

    (*(v63 + 8))(v64, v62);
    return MEMORY[0x277D84F90];
  }

  v26 = 0;
  v87 = v25 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v85 = v98 + 1;
  v86 = v92 + 16;
  v100 = v82 + 16;
  v98 = (v82 + 8);
  ++v99;
  v84 = (v96 + 8);
  v83 = (v92 + 8);
  v27 = MEMORY[0x277D84F90];
  v96 = a2;
  v28 = v97;
  v29 = v81;
  v30 = v80;
  v31 = v79;
  v78 = v25;
  while (v26 < *(v25 + 16))
  {
    v94 = v26;
    v95 = v27;
    (*(v92 + 16))(v31, v87 + *(v92 + 72) * v26, v30);
    v32 = v90;
    sub_2516736C8();
    sub_251673718();
    (*v85)(v32, v91);
    v33 = sub_251673638();
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = *(v82 + 80);
      v93 = v33;
      v36 = v33 + ((v35 + 32) & ~v35);
      v37 = *(v82 + 72);
      v38 = *(v82 + 16);
      v39 = MEMORY[0x277D84F90];
      v38(v102, v36, v103);
      while (1)
      {
        v40 = v101;
        sub_251673768();
        v41 = sub_251674498();
        v43 = v42;
        (*v99)(v40, v28);
        if (!*(a2 + 16))
        {
          break;
        }

        v44 = sub_25166B71C(v41, v43);
        v46 = v45;

        if ((v46 & 1) == 0)
        {
          goto LABEL_10;
        }

        v47 = *(*(a2 + 56) + 8 * v44);
        v48 = v102;
        v49 = sub_251673758();
        v51 = v50;
        (*v98)(v48, v103);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_25166B4C4(0, v39[2] + 1, 1, v39);
        }

        v53 = v39[2];
        v52 = v39[3];
        if (v53 >= v52 >> 1)
        {
          v39 = sub_25166B4C4((v52 > 1), v53 + 1, 1, v39);
        }

        v39[2] = v53 + 1;
        v54 = &v39[3 * v53];
        v54[4] = v47;
        v54[5] = v49;
        v54[6] = v51;
        a2 = v96;
        v28 = v97;
LABEL_11:
        v36 += v37;
        if (!--v34)
        {

          v29 = v81;
          v30 = v80;
          v31 = v79;
          v25 = v78;
          goto LABEL_22;
        }

        v38(v102, v36, v103);
      }

LABEL_10:
      (*v98)(v102, v103);
      goto LABEL_11;
    }

    v39 = MEMORY[0x277D84F90];
LABEL_22:
    (*v84)(v29, v89);
    (*v83)(v31, v30);
    v55 = v39[2];
    v27 = v95;
    v56 = v95[2];
    v20 = (v56 + v55);
    if (__OFADD__(v56, v55))
    {
      goto LABEL_47;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v20 > v27[3] >> 1)
    {
      if (v56 <= v20)
      {
        v58 = v56 + v55;
      }

      else
      {
        v58 = v56;
      }

      v27 = sub_25166B4C4(isUniquelyReferenced_nonNull_native, v58, 1, v27);
    }

    v28 = v97;
    if (v39[2])
    {
      if ((v27[3] >> 1) - v27[2] < v55)
      {
        goto LABEL_49;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
      v28 = v97;
      swift_arrayInitWithCopy();

      if (v55)
      {
        v59 = v27[2];
        v60 = __OFADD__(v59, v55);
        v61 = v59 + v55;
        if (v60)
        {
          goto LABEL_50;
        }

        v27[2] = v61;
      }
    }

    else
    {

      if (v55)
      {
        goto LABEL_48;
      }
    }

    v26 = v94 + 1;
    if (v94 + 1 == v88)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);

  __break(1u);
  return result;
}