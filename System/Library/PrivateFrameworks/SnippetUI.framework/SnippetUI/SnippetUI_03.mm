uint64_t sub_26A4DEDF8()
{
  OUTLINED_FUNCTION_16_0();
  sub_26A851048();
  *(v2 + 328) = v5;
  *(v2 + 336) = v6;
  *(v2 + 344) = swift_getKeyPath();
  *(v2 + 353) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 368) = swift_getKeyPath();
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 392) = swift_getKeyPath();
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  *(v2 + 416) = swift_getKeyPath();
  *(v2 + 424) = 0;
  *(v2 + 432) = swift_getKeyPath();
  *(v2 + 440) = 0;
  memcpy(v2, v1, 0x141uLL);
  *(v2 + 448) = swift_getKeyPath();
  *(v2 + 456) = v3;
  *(v2 + 464) = v0;
  sub_26A4E233C();
}

uint64_t sub_26A4DEFF8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for SummaryItemSwitchView(0) + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_112();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

uint64_t sub_26A4DF13C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemSwitchView(0);
  sub_26A4E233C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SummaryItemSwitchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v41[0] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v43 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v41 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA300, &qword_26A855E88);
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  v30 = v41 - v29;
  v41[2] = *(type metadata accessor for SummaryItemSwitchView(0) + 28);
  sub_26A84C7C8();
  v46 = 0u;
  v47 = 0u;
  v48 = 1;
  v41[1] = sub_26A4DEFF8();
  sub_26A4DF13C(v18);
  v31 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v31);
  v42 = v1;
  v45 = v1;
  sub_26A4E233C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v2) == 1)
  {
    sub_26A4E2544(v23, &qword_2803B3800, &unk_26A856760);
    v32 = type metadata accessor for ActionType(0);
    v33 = v13;
    v34 = 1;
  }

  else
  {
    v35 = *(v4 + 32);
    v36 = v41[0];
    v35(v41[0], v23, v2);
    v35(v13, v36, v2);
    v37 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    v33 = v13;
    v34 = 0;
    v32 = v37;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
  sub_26A4E233C();
  sub_26A4E233C();
  sub_26A4C487C();
  sub_26A4E2544(v13, &qword_2803A91C8, &unk_26A856820);
  sub_26A4E2544(v18, &qword_2803A91C0, &unk_26A854CB0);
  sub_26A4E2544(v26, &qword_2803B3800, &unk_26A856760);
  v38 = sub_26A84C758();
  sub_26A4DBFA4(v38, v39, v44);

  sub_26A4E2544(v30, &qword_2803AA300, &qword_26A855E88);
  sub_26A84C768();
}

uint64_t type metadata accessor for SummaryItemSwitchView(uint64_t a1)
{
  result = qword_2803AA8A8;
  if (!qword_2803AA8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A4DF810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA338, &unk_26A855EA0);
  MEMORY[0x28223BE20](v25[0]);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD30, &unk_26A856E30);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA318, &qword_26A855E90);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = sub_26A84F3A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4DF13C(v12);
  v13 = sub_26A84F388();
  (*(v10 + 8))(v12, v9);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28);
  if (v13)
  {
    v15 = sub_26A84FC08();
    v16 = *(a1 + v14);
    *v8 = v15;
    *(v8 + 1) = v16;
    v8[16] = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD40, &qword_26A856E58);
    sub_26A4E0A20(a1, (a1 + v14), &v8[*(v17 + 44)]);
    *&v8[*(v6 + 36)] = 256;
    v18 = &qword_2803AA318;
    v19 = &qword_26A855E90;
    sub_26A4E233C();
    swift_storeEnumTagMultiPayload();
    sub_26A4D775C();
    sub_26A4D7814();
    sub_26A84FDF8();
    v20 = v8;
  }

  else
  {
    v21 = v25[0];
    if (qword_28157FCB0 != -1)
    {
      swift_once();
    }

    v22 = *(a1 + v14);
    *v4 = qword_2815889E0;
    *(v4 + 1) = v22;
    v4[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD38, &unk_26A856E40);
    sub_26A4DFBCC(a1, &v4[*(v23 + 44)]);
    *&v4[*(v21 + 36)] = 256;
    v18 = &qword_2803AA338;
    v19 = &unk_26A855EA0;
    sub_26A4E233C();
    swift_storeEnumTagMultiPayload();
    sub_26A4D775C();
    sub_26A4D7814();
    sub_26A84FDF8();
    v20 = v4;
  }

  return sub_26A4E2544(v20, v18, v19);
}

uint64_t sub_26A4DFBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_26A84E228();
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x28223BE20](v3);
  v94 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SwitchView(0);
  MEMORY[0x28223BE20](v93);
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v82 - v17;
  v19 = sub_26A84B888();
  v83 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SummaryItemStandardLayout(0);
  MEMORY[0x28223BE20](v86);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v90 = &v82 - v25;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADA0, &qword_26A8570B0);
  MEMORY[0x28223BE20](v89);
  v92 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v82 - v28;
  MEMORY[0x28223BE20](v29);
  v91 = &v82 - v30;
  v31 = *(type metadata accessor for SummaryItemSwitchView(0) + 28);
  v85 = v21;
  sub_26A84C788();
  v99 = a1;
  v100 = v31;
  v32 = v19;
  sub_26A84C798();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_26A4E2544(v18, &qword_2803AA838, &unk_26A856770);
    memset(__src, 0, 40);
    v33 = v83;
  }

  else
  {
    __src[3] = v19;
    __src[4] = &protocol witness table for TextProperty;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
    v33 = v83;
    (*(v83 + 32))(boxed_opaque_existential_1, v18, v32);
  }

  sub_26A84C7A8();
  v35 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v12, 1, v35) == 1)
  {
    sub_26A4E2544(v12, &qword_2803AA830, &unk_26A856FA0);
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
  }

  else
  {
    *(&v111 + 1) = v35;
    v112 = &protocol witness table for MultilineTextProperty;
    v36 = __swift_allocate_boxed_opaque_existential_1(&v110);
    (*(*(v35 - 8) + 32))(v36, v12, v35);
  }

  sub_26A84C7B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v32);
  v38 = v84;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4E2544(v15, &qword_2803AA838, &unk_26A856770);
    v107 = 0u;
    v108 = 0u;
    v109 = 0;
  }

  else
  {
    *(&v108 + 1) = v32;
    v109 = &protocol witness table for TextProperty;
    v39 = __swift_allocate_boxed_opaque_existential_1(&v107);
    (*(v33 + 32))(v39, v15, v32);
  }

  sub_26A84C7E8();
  v40 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v38, 1, v40) == 1)
  {
    sub_26A4E2544(v38, &qword_2803AAD50, &unk_26A857890);
    v104 = 0u;
    v105 = 0u;
    v106 = 0;
  }

  else
  {
    *(&v105 + 1) = v40;
    v106 = &protocol witness table for VisualProperty;
    v41 = __swift_allocate_boxed_opaque_existential_1(&v104);
    (*(*(v40 - 8) + 32))(v41, v38, v40);
  }

  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v42, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4E233C();
  sub_26A6AEE74(v113);
  memcpy(v23, v113, 0xBFuLL);
  sub_26A4E23EC();
  v43 = v86;
  v44 = *(v86 + 20);
  *&v23[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v45 = &v23[v43[6]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = v85;
  *&v23[v43[7]] = TextProperty.asAnyView()();
  sub_26A4E233C();
  v47 = v102;
  if (v102)
  {
    v48 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v49 = (*(v48 + 8))(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    sub_26A4E2544(v101, &qword_2803A91B8, &qword_26A8575C0);
    v49 = 0;
  }

  *&v23[v43[8]] = v49;
  sub_26A4E233C();
  v50 = v102;
  if (v102)
  {
    v51 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v52 = (*(v51 + 8))(v50, v51);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    sub_26A4E2544(v101, &qword_2803A91B8, &qword_26A8575C0);
    v52 = 0;
  }

  *&v23[v43[9]] = v52;
  sub_26A4E233C();
  v53 = v102;
  if (v102)
  {
    v54 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v55 = (*(v54 + 8))(v53, v54);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    sub_26A4E2544(v101, &qword_2803A91B8, &qword_26A8575C0);
    v55 = 0;
  }

  *&v23[v43[10]] = v55;
  sub_26A4E233C();
  v56 = v102;
  if (v102)
  {
    v57 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v58 = (*(v57 + 8))(v56, v57);
    (*(v33 + 8))(v46, v32);
    sub_26A4E2544(&v104, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(&v107, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(&v110, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(__src, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    (*(v33 + 8))(v46, v32);
    sub_26A4E2544(&v104, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(&v107, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(&v110, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(__src, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(v101, &qword_2803A91B8, &qword_26A8575C0);
    v58 = 0;
  }

  *&v23[v43[11]] = v58;
  sub_26A4E249C();
  sub_26A851458();
  sub_26A84F628();
  v59 = v88;
  sub_26A4E249C();
  memcpy(&v59[*(v89 + 36)], __src, 0x70uLL);
  v60 = v91;
  sub_26A4E24F0();
  v61 = v94;
  sub_26A84C7D8();
  v62 = v87;
  v63 = v96;
  __swift_storeEnumTagSinglePayload(v87, 1, 1, v96);
  v64 = v93;
  v65 = v62 + *(v93 + 20);
  *v65 = 0;
  *(v65 + 8) = 0;
  *(v65 + 16) = 0;
  v66 = v62 + v64[6];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  v67 = v62 + v64[7];
  *v67 = swift_getKeyPath();
  *(v67 + 8) = 0;
  *(v67 + 16) = 0;
  *(v67 + 24) = swift_getKeyPath();
  *(v67 + 32) = 0;
  v68 = type metadata accessor for ActionHandler(0);
  v69 = v68[6];
  *(v67 + v69) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v70 = v67 + v68[7];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  *(v70 + 16) = 0;
  v71 = v67 + v68[8];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  v72 = v67 + v68[9];
  *v72 = swift_getKeyPath();
  *(v72 + 8) = 0;
  v73 = v67 + v68[10];
  *v73 = swift_getKeyPath();
  *(v73 + 9) = 0;
  swift_unknownObjectWeakInit();
  v74 = v68[11];
  v75 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(v67 + v74, 1, 1, v75);
  sub_26A4E2544(v67 + v74, &qword_2803B3910, &qword_26A855580);
  __swift_storeEnumTagSinglePayload(v67 + v74, 1, 1, v75);
  v76 = v62 + v64[8];
  LOBYTE(v107) = 0;
  sub_26A851048();
  sub_26A4E2544(v62, &qword_2803AAD90, &qword_26A8570A0);
  v77 = v95;
  (*(v95 + 16))(v62, v61, v63);
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
  LOBYTE(v107) = sub_26A84E1F8() & 1;
  sub_26A851048();
  (*(v77 + 8))(v61, v63);

  v78 = *(&v110 + 1);
  *v76 = v110;
  *(v76 + 8) = v78;
  v79 = v92;
  sub_26A4E233C();
  v80 = v97;
  sub_26A4E23EC();
  sub_26A4E233C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADA8, &qword_26A8570B8);
  sub_26A4E23EC();
  sub_26A4E2544(v60, &qword_2803AADA0, &qword_26A8570B0);
  sub_26A4E2440(v62);
  sub_26A4E2440(v80);
  return sub_26A4E2544(v79, &qword_2803AADA0, &qword_26A8570B0);
}

uint64_t sub_26A4E0A20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v71 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD48, &unk_26A856E60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - v8;
  v65 = sub_26A84B1D8();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD58, &qword_26A856E70);
  MEMORY[0x28223BE20](v64);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD60, &qword_26A856E78);
  MEMORY[0x28223BE20](v20 - 8);
  v68 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - v26;
  v28 = *(type metadata accessor for SummaryItemSwitchView(0) + 28);
  v70 = a1;
  v67 = v28;
  sub_26A84C7E8();
  v29 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v17, 1, v29) == 1)
  {
    sub_26A4E2544(v17, &qword_2803AAD50, &unk_26A857890);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD68, &qword_26A856E80);
    v31 = v24;
    v32 = 1;
  }

  else
  {
    v33 = *(v29 - 8);
    v62 = v27;
    v34 = v33;
    (*(v33 + 16))(v19, v17, v29);
    v35 = type metadata accessor for VisualPropertyView(0);
    v36 = v35[5];
    v63 = v6;
    v37 = &v19[v36];
    *v37 = swift_getKeyPath();
    v37[9] = 0;
    swift_unknownObjectWeakInit();
    v38 = &v19[v35[6]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = &v19[v35[7]];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    v40 = v35[8];
    *&v19[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v41 = &v19[v35[9]];
    v72 = 0;
    sub_26A851048();
    v42 = v74;
    *v41 = v73;
    *(v41 + 1) = v42;
    (*(v34 + 8))(v17, v29);
    v43 = v65;
    (*(v10 + 104))(v12, *MEMORY[0x277D62B38], v65);
    KeyPath = swift_getKeyPath();
    v45 = &v19[*(v64 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v10 + 32))(v45 + v46, v12, v43);
    v47 = v45 + v46;
    v48 = v43;
    v27 = v62;
    v6 = v63;
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
    *v45 = KeyPath;
    v49 = swift_getKeyPath();
    sub_26A4E24F0();
    v50 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD80, &qword_26A856F70) + 36)];
    *v50 = v49;
    v50[8] = 1;
    v51 = swift_getKeyPath();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD68, &qword_26A856E80);
    v52 = &v24[*(v30 + 36)];
    *v52 = v51;
    v52[8] = 0;
    v31 = v24;
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  sub_26A4E24F0();
  v53 = v70;
  v54 = v66;
  sub_26A84C7E8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v29);
  sub_26A4E2544(v54, &qword_2803AAD50, &unk_26A857890);
  if (EnumTagSinglePayload == 1)
  {
    v56 = sub_26A84FA78();
  }

  else
  {
    v56 = sub_26A84FA58();
  }

  v57 = *v69;
  *v9 = v56;
  *(v9 + 1) = v57;
  v9[16] = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD70, &qword_26A856E88);
  sub_26A4E1134(v53, &v9[*(v58 + 44)]);
  v59 = v68;
  sub_26A4E233C();
  sub_26A4E233C();
  sub_26A4E233C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD78, &qword_26A856E90);
  sub_26A4E233C();
  sub_26A4E2544(v9, &qword_2803AAD48, &unk_26A856E60);
  sub_26A4E2544(v27, &qword_2803AAD60, &qword_26A856E78);
  sub_26A4E2544(v6, &qword_2803AAD48, &unk_26A856E60);
  return sub_26A4E2544(v59, &qword_2803AAD60, &qword_26A856E78);
}

uint64_t sub_26A4E1134@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_26A84E228();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v90 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SwitchView(0);
  MEMORY[0x28223BE20](v89);
  v94 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  v16 = sub_26A84B888();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SummaryItemStandardTextLayout(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v81 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD88, &unk_26A856FB0);
  MEMORY[0x28223BE20](v84);
  v88 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v83 = &v81 - v27;
  MEMORY[0x28223BE20](v28);
  v87 = &v81 - v29;
  v30 = *(type metadata accessor for SummaryItemSwitchView(0) + 28);
  v82 = v19;
  v31 = a1;
  sub_26A84C788();
  v97 = v30;
  sub_26A84C798();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v96 = v17;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4E2544(v15, &qword_2803AA838, &unk_26A856770);
    memset(__src, 0, 40);
  }

  else
  {
    __src[3] = v16;
    __src[4] = &protocol witness table for TextProperty;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__src);
    (*(v17 + 32))(boxed_opaque_existential_1, v15, v16);
  }

  sub_26A84C7A8();
  v34 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v10, 1, v34) == 1)
  {
    sub_26A4E2544(v10, &qword_2803AA830, &unk_26A856FA0);
    v108 = 0u;
    v109 = 0u;
    v110 = 0;
  }

  else
  {
    *(&v109 + 1) = v34;
    v110 = &protocol witness table for MultilineTextProperty;
    v35 = __swift_allocate_boxed_opaque_existential_1(&v108);
    (*(*(v34 - 8) + 32))(v35, v10, v34);
  }

  v36 = v86;
  sub_26A84C7B8();
  if (__swift_getEnumTagSinglePayload(v36, 1, v16) == 1)
  {
    sub_26A4E2544(v36, &qword_2803AA838, &unk_26A856770);
    v105 = 0u;
    v106 = 0u;
    v107 = 0;
  }

  else
  {
    *(&v106 + 1) = v16;
    v107 = &protocol witness table for TextProperty;
    v37 = __swift_allocate_boxed_opaque_existential_1(&v105);
    (*(v96 + 32))(v37, v36, v16);
  }

  v86 = v31;
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v38, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4E233C();
  sub_26A6AEE74(v111);
  memcpy(v22, v111, 0xBFuLL);
  sub_26A4E23EC();
  v39 = &v22[v20[5]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = &v22[v20[6]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = &v22[v20[7]];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  v42 = v20[8];
  *&v22[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v43 = &v22[v20[9]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = &v22[v20[10]];
  v103 = 0;
  v104 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470, &qword_26A8560B0);
  sub_26A851048();
  v45 = v99;
  v46 = v100;
  *v44 = v98;
  v44[8] = v45;
  *(v44 + 2) = v46;
  v47 = v82;
  *&v22[v20[12]] = TextProperty.asAnyView()();
  sub_26A4E233C();
  v48 = v101;
  if (v101)
  {
    v49 = v102;
    __swift_project_boxed_opaque_existential_1(&v98, v101);
    v50 = (*(v49 + 8))(v48, v49);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    sub_26A4E2544(&v98, &qword_2803A91B8, &qword_26A8575C0);
    v50 = 0;
  }

  v51 = v96;
  *&v22[v20[13]] = v50;
  sub_26A4E233C();
  v52 = v101;
  if (v101)
  {
    v53 = v102;
    __swift_project_boxed_opaque_existential_1(&v98, v101);
    v54 = (*(v53 + 8))(v52, v53);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    sub_26A4E2544(&v98, &qword_2803A91B8, &qword_26A8575C0);
    v54 = 0;
  }

  *&v22[v20[14]] = v54;
  sub_26A4E233C();
  v55 = v101;
  if (v101)
  {
    v56 = v102;
    __swift_project_boxed_opaque_existential_1(&v98, v101);
    v57 = (*(v56 + 8))(v55, v56);
    (*(v51 + 8))(v47, v16);
    sub_26A4E2544(&v105, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(&v108, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(__src, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    (*(v51 + 8))(v47, v16);
    sub_26A4E2544(&v105, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(&v108, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(__src, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4E2544(&v98, &qword_2803A91B8, &qword_26A8575C0);
    v57 = 0;
  }

  *&v22[v20[15]] = v57;
  v22[v20[11]] = 0;
  sub_26A4E249C();
  sub_26A851458();
  sub_26A84F628();
  v58 = v83;
  sub_26A4E249C();
  memcpy(&v58[*(v84 + 36)], __src, 0x70uLL);
  v59 = v87;
  sub_26A4E24F0();
  v60 = v90;
  sub_26A84C7D8();
  v62 = v92;
  v61 = v93;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v92);
  v63 = v89;
  v64 = v61 + *(v89 + 20);
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 16) = 0;
  v65 = v61 + v63[6];
  *v65 = swift_getKeyPath();
  *(v65 + 8) = 0;
  v66 = v61 + v63[7];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  *(v66 + 24) = swift_getKeyPath();
  *(v66 + 32) = 0;
  v67 = type metadata accessor for ActionHandler(0);
  v68 = v67[6];
  *(v66 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v69 = v66 + v67[7];
  *v69 = swift_getKeyPath();
  *(v69 + 8) = 0;
  *(v69 + 16) = 0;
  v70 = v66 + v67[8];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  v71 = v66 + v67[9];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  v72 = v66 + v67[10];
  *v72 = swift_getKeyPath();
  *(v72 + 9) = 0;
  swift_unknownObjectWeakInit();
  v73 = v67[11];
  v74 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(v66 + v73, 1, 1, v74);
  sub_26A4E2544(v66 + v73, &qword_2803B3910, &qword_26A855580);
  __swift_storeEnumTagSinglePayload(v66 + v73, 1, 1, v74);
  v75 = v61 + v63[8];
  LOBYTE(v105) = 0;
  sub_26A851048();
  sub_26A4E2544(v61, &qword_2803AAD90, &qword_26A8570A0);
  v76 = v91;
  (*(v91 + 16))(v61, v60, v62);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
  LOBYTE(v105) = sub_26A84E1F8() & 1;
  sub_26A851048();
  (*(v76 + 8))(v60, v62);

  v77 = *(&v108 + 1);
  *v75 = v108;
  *(v75 + 8) = v77;
  v78 = v88;
  sub_26A4E233C();
  v79 = v94;
  sub_26A4E23EC();
  sub_26A4E233C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD98, &qword_26A8570A8);
  sub_26A4E23EC();
  sub_26A4E2544(v59, &qword_2803AAD88, &unk_26A856FB0);
  sub_26A4E2440(v61);
  sub_26A4E2440(v79);
  return sub_26A4E2544(v78, &qword_2803AAD88, &unk_26A856FB0);
}

uint64_t sub_26A4E1EE4(uint64_t a1)
{
  result = sub_26A4E2298(&qword_2803AA8A0, MEMORY[0x277D63340], MEMORY[0x277D63338]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4E1F80(uint64_t a1)
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A84C7F8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A4E20C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A4E2128()
{
  result = qword_2803AA8B8;
  if (!qword_2803AA8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8C0, &qword_26A8568D8);
    sub_26A4E21E0();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA8B8);
  }

  return result;
}

unint64_t sub_26A4E21E0()
{
  result = qword_2803AA8C8;
  if (!qword_2803AA8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8D0, &qword_26A8568E0);
    sub_26A4DBCC8(&qword_2803AA8D8, &qword_2803AA300, &qword_26A855E88, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA8C8);
  }

  return result;
}

uint64_t sub_26A4E2298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A4E233C()
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5_0();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return v0;
}

uint64_t sub_26A4E23EC()
{
  OUTLINED_FUNCTION_6_1();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4E2440(uint64_t a1)
{
  v2 = type metadata accessor for SwitchView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A4E249C()
{
  OUTLINED_FUNCTION_6_1();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4E24F0()
{
  OUTLINED_FUNCTION_6_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5_0();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return v0;
}

uint64_t sub_26A4E2544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  v6 = (v3 + *(a1 + 36));
  *v6 = v4;
  v6[1] = v2;
  v6[2] = v1;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 25) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 112) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return result;
}

void *OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{

  return sub_26A851048();
}

uint64_t type metadata accessor for SimpleItemConstants(uint64_t a1)
{
  result = qword_2803AADB0;
  if (!qword_2803AADB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A4E2734(uint64_t a1)
{
  sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    sub_26A4E27D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A4E27D8()
{
  if (!qword_2803AADC0)
  {
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AADC0);
    }
  }
}

uint64_t sub_26A4E2828()
{
  v0 = type metadata accessor for SimpleItemConstants(0);
  MEMORY[0x28223BE20](v0);
  v137 = &v133 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
  __swift_allocate_value_buffer(v2, qword_2803D1900);
  v136 = __swift_project_value_buffer(v2, qword_2803D1900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADD0, &qword_26A857180);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADD8, &qword_26A857188);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v142 = *(*(v3 - 8) + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26A8570C0;
  v135 = v5;
  v6 = (v5 + v4);
  v7 = (v5 + v4 + *(v3 + 48));
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  inited = swift_initStackObject();
  v139 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v9 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v10 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v9, v10);
  sub_26A621A9C(inited);
  *v6 = v11;
  v147 = v6;
  v12 = v0[8];
  v13 = *MEMORY[0x277D62B28];
  v14 = sub_26A84B1D8();
  v15 = *(v14 - 8);
  v148 = *(v15 + 104);
  v146 = v15 + 104;
  v144 = v13;
  v148(&v7[v12], v13, v14);
  v16 = sub_26A84FA58();
  *v7 = 0;
  *(v7 + 1) = 0;
  OUTLINED_FUNCTION_0_2(v16, 0x4024000000000000);
  v141 = xmmword_26A8570E0;
  OUTLINED_FUNCTION_1_1(v17, xmmword_26A8570E0);
  *(v18 + 32) = 1;
  *&v7[v0[12]] = 0x4028000000000000;
  OUTLINED_FUNCTION_6_2();
  *&v7[v19] = v20;
  v21 = v142;
  v22 = (v147 + v142);
  v23 = v147 + v142 + *(v3 + 48);
  v24 = swift_initStackObject();
  v25 = v3;
  v138 = v3;
  v26 = v24;
  v140 = xmmword_26A8570F0;
  *(v24 + 16) = xmmword_26A8570F0;
  v27 = qword_281588968;
  *(v26 + 32) = qword_281588968;
  v28 = byte_281588970;
  *(v26 + 40) = byte_281588970;
  *(v26 + 48) = 3;
  *(v26 + 56) = 1;
  sub_26A4E324C(v27, v28);
  sub_26A621A9C(v26);
  *v22 = v29;
  v30 = *MEMORY[0x277D62B20];
  v148(&v23[v0[8]], v30, v14);
  v31 = sub_26A84FA58();
  *v23 = 0;
  *(v23 + 1) = 0;
  OUTLINED_FUNCTION_0_2(v31, 0x4024000000000000);
  OUTLINED_FUNCTION_5_1(v32, v141);
  v33 = &v23[v0[11]];
  v133 = xmmword_26A857100;
  OUTLINED_FUNCTION_5_1(v33, xmmword_26A857100);
  OUTLINED_FUNCTION_4_1();
  *&v23[v34] = 0x4032000000000000;
  v35 = v21;
  v36 = (v147 + 2 * v21);
  v37 = (v36 + *(v25 + 48));
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_26A857110;
  v39 = OUTLINED_FUNCTION_11_1(&qword_281588968);
  *(v38 + 48) = 3;
  v40 = v147;
  *(v38 + 56) = 1;
  *(v38 + 64) = 1;
  *(v38 + 72) = 5;
  sub_26A4E324C(v39, v41);
  sub_26A621A9C(v38);
  *v36 = v42;
  v43 = v37 + v0[8];
  v145 = v14;
  v148(v43, v30, v14);
  v44 = v35;
  v45 = sub_26A84FA58();
  *v37 = 0;
  v37[1] = 0;
  OUTLINED_FUNCTION_9_2(v45, 0x4020000000000000);
  __asm { FMOV            V0.2D, #10.0 }

  *v51 = _Q0;
  v51[1] = _Q0;
  v134 = _Q0;
  v51[2].n128_u8[0] = 0;
  OUTLINED_FUNCTION_5_1((v37 + v0[11]), v133);
  *(v37 + v0[12]) = 0;
  OUTLINED_FUNCTION_6_2();
  *(v37 + v52) = v53;
  v54 = (v40 + 3 * v35);
  v55 = v138;
  v56 = v54 + *(v138 + 48);
  v57 = swift_initStackObject();
  OUTLINED_FUNCTION_8_2(v57);
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v58 = OUTLINED_FUNCTION_2_2(&qword_281588938);
  sub_26A4E324C(v58, v59);
  sub_26A621A9C(v30);
  *v54 = v60;
  v61 = v144;
  v148(&v56[v0[8]], v144, v145);
  v62 = sub_26A84FA58();
  *v56 = xmmword_26A857120;
  *(v56 + 1) = xmmword_26A857130;
  OUTLINED_FUNCTION_10_2(v62);
  *v63 = 0u;
  *(v63 + 16) = 0u;
  *(v63 + 32) = 1;
  v64 = &v56[v0[11]];
  *v64 = 0u;
  *(v64 + 1) = 0u;
  v64[32] = 1;
  *&v56[v0[12]] = 0;
  OUTLINED_FUNCTION_6_2();
  *&v56[v65] = v66;
  v67 = (v40 + 4 * v44 + *(v55 + 48));
  v68 = swift_initStackObject();
  OUTLINED_FUNCTION_8_2(v68);
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v69 = OUTLINED_FUNCTION_2_2(&qword_281588998);
  sub_26A4E324C(v69, v70);
  sub_26A621A9C(v30);
  v72 = OUTLINED_FUNCTION_7_2(v71);
  v148(v72, v61, v145);
  v73 = sub_26A84FA58();
  *v67 = 0x4010000000000000;
  v67[1] = 0;
  OUTLINED_FUNCTION_0_2(v73, 0x4034000000000000);
  OUTLINED_FUNCTION_3_1(v74);
  OUTLINED_FUNCTION_5_1((v67 + v0[11]), xmmword_26A857140);
  OUTLINED_FUNCTION_4_1();
  *(v67 + v75) = 0x4032000000000000;
  v76 = 5 * v44;
  v77 = v61;
  v78 = v147;
  v79 = (v147 + v76);
  v80 = v138;
  v81 = v147 + v76 + *(v138 + 48);
  v82 = swift_initStackObject();
  *(v82 + 16) = v140;
  v83 = OUTLINED_FUNCTION_11_1(&qword_281588998);
  *(v82 + 48) = 1;
  *(v82 + 56) = 5;
  sub_26A4E324C(v83, v84);
  sub_26A621A9C(v82);
  *v79 = v85;
  v86 = v142;
  v148(&v81[v0[8]], v77, v145);
  v87 = sub_26A84FA58();
  *v81 = 0x4010000000000000;
  *(v81 + 1) = 0;
  OUTLINED_FUNCTION_9_2(v87, 0x4034000000000000);
  OUTLINED_FUNCTION_3_1(v88);
  OUTLINED_FUNCTION_5_1(&v81[v0[11]], vdupq_n_s64(0x4043000000000000uLL));
  *&v81[v0[12]] = 0;
  OUTLINED_FUNCTION_6_2();
  *&v81[v89] = v90;
  v91 = (v78 + 6 * v86);
  v92 = v91 + *(v80 + 48);
  v93 = swift_initStackObject();
  OUTLINED_FUNCTION_8_2(v93);
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v94 = OUTLINED_FUNCTION_2_2(&qword_2815889A8);
  sub_26A4E324C(v94, v95);
  sub_26A621A9C(v80);
  *v91 = v96;
  v97 = v145;
  v98 = v148;
  v148(&v92[v0[8]], v144, v145);
  v99 = sub_26A84FA58();
  *v92 = 0;
  *(v92 + 1) = 0;
  OUTLINED_FUNCTION_0_2(v99, 0x4024000000000000);
  OUTLINED_FUNCTION_1_1(v100, xmmword_26A857150);
  *(v101 + 32) = 1;
  OUTLINED_FUNCTION_4_1();
  *&v92[v102] = 0x4032000000000000;
  v103 = v138;
  v104 = (&v78[v86] + *(v138 + 48) - v86);
  v105 = swift_initStackObject();
  *(v105 + 16) = v140;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v106 = OUTLINED_FUNCTION_2_2(&qword_281588978);
  *(v105 + 48) = 1;
  *(v105 + 56) = 3;
  sub_26A4E324C(v106, v107);
  sub_26A621A9C(v105);
  v109 = OUTLINED_FUNCTION_7_2(v108);
  v98(v109, v144, v97);
  v110 = sub_26A84FA78();
  *v104 = 0;
  v104[1] = 0;
  OUTLINED_FUNCTION_0_2(v110, 0x402C000000000000);
  OUTLINED_FUNCTION_1_1(v111, v141);
  *(v112 + 32) = 1;
  OUTLINED_FUNCTION_4_1();
  *(v104 + v113) = 0x4032000000000000;
  v114 = *(v103 + 48);
  v115 = swift_initStackObject();
  *(v115 + 16) = v140;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v116 = (&v147[v142] + v114);
  v117 = qword_281588988;
  *(v115 + 32) = qword_281588988;
  v118 = byte_281588990;
  *(v115 + 40) = byte_281588990;
  *(v115 + 48) = 1;
  *(v115 + 56) = 3;
  sub_26A4E324C(v117, v118);
  sub_26A621A9C(v115);
  v120 = OUTLINED_FUNCTION_7_2(v119);
  v121 = v144;
  v122 = v98;
  v98(v120, v144, v97);
  v123 = sub_26A84FA58();
  *v116 = 0;
  v116[1] = 0;
  OUTLINED_FUNCTION_0_2(v123, 0x401C000000000000);
  OUTLINED_FUNCTION_1_1(v124, v134);
  *(v125 + 32) = 1;
  OUTLINED_FUNCTION_4_1();
  *(v116 + v126) = 0x4032000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v127 = sub_26A8516A8();
  v128 = v137;
  v122(&v137[v0[8]], v121, v97);
  v129 = sub_26A84FA58();
  *v128 = 0;
  v128[1] = 0;
  v128[2] = 0;
  v128[3] = 0x4024000000000000;
  OUTLINED_FUNCTION_10_2(v129);
  OUTLINED_FUNCTION_5_1(v130, v141);
  v131 = v128 + v0[11];
  *v131 = 0u;
  *(v131 + 1) = 0u;
  v131[32] = 1;
  *(v128 + v0[12]) = 0;
  *(v128 + v0[13]) = 0x4032000000000000;
  return sub_26A80D78C(v127, v128);
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

uint64_t sub_26A4E324C(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

unint64_t sub_26A4E325C()
{
  result = qword_28157D8B8;
  if (!qword_28157D8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1D80, &qword_26A8593E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D8B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = a2;
  *(v3 + *(v2 + 36)) = result;
  return result;
}

double OUTLINED_FUNCTION_1_1@<D0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2].n128_u8[0] = 0;
  v4 = (v3 + *(v2 + 44));
  result = 0.0;
  *v4 = 0u;
  v4[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

double OUTLINED_FUNCTION_3_1@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void OUTLINED_FUNCTION_5_1(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2].n128_u8[0] = 0;
}

__n128 OUTLINED_FUNCTION_8_2(__n128 *a1)
{
  result = v1[4];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = a2;
  *(v3 + *(v2 + 36)) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

id sub_26A4E33CC()
{
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150, &unk_26A857200);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26A8571A0;
    *(v3 + 32) = v2;
    return sub_26A6F9208(v3, 4, 0, 0);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v5 = v0;
    *(v5 + 8) = &unk_287B130B8;
    *(v5 + 16) = 0;
    swift_willThrow();
    return v0;
  }
}

unint64_t sub_26A4E34E4()
{
  result = qword_2803AADE8;
  if (!qword_2803AADE8)
  {
    type metadata accessor for SearchUIMultiButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AADE8);
  }

  return result;
}

unint64_t sub_26A4E353C()
{
  result = qword_2803AADF0;
  if (!qword_2803AADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AADF0);
  }

  return result;
}

BOOL sub_26A4E3594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 48);
  while (v5)
  {
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_26A548510(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + v8);

        if (v10)
        {
          return v5 != 0;
        }
      }

      else
      {
      }
    }

    v6 += 3;
    --v5;
  }

  return v5 != 0;
}

uint64_t sub_26A4E3654(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A4E36CC()
{
  sub_26A8526B8();
  MEMORY[0x26D664930](0);
  return sub_26A8526F8();
}

uint64_t sub_26A4E373C(uint64_t a1)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](0);
  return sub_26A8526F8();
}

uint64_t sub_26A4E3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A4E3654(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A4E37C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A4E34A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A4E37F4(uint64_t a1)
{
  v2 = sub_26A4E3F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A4E3830(uint64_t a1)
{
  v2 = sub_26A4E3F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26A4E386C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE10, &qword_26A857298);
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A4E3F7C();
  sub_26A852708();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE20, &qword_26A8572A0);
    sub_26A4E3FD0();
    sub_26A852508();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_26A4E39E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_26A4E386C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26A4E3A10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_26A852598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026A88AE20 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A852598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A4E3B20(char a1)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a1 & 1);
  return sub_26A8526F8();
}

uint64_t sub_26A4E3B68(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_26A4E3BA4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE50, &qword_26A857418);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A4E435C();
  sub_26A852708();
  if (!v1)
  {
    v4 = sub_26A8524F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE60, &qword_26A857420);
    sub_26A4E43B0();
    sub_26A852508();
    v6 = OUTLINED_FUNCTION_0_3();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_26A4E3D8C(uint64_t a1)
{
  v2 = *v1;
  sub_26A8526B8();
  MEMORY[0x26D664930](v2);
  return sub_26A8526F8();
}

uint64_t sub_26A4E3DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A4E3A10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A4E3E20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A4E3AE0();
  *a1 = result;
  return result;
}

uint64_t sub_26A4E3E48(uint64_t a1)
{
  v2 = sub_26A4E435C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A4E3E84(uint64_t a1)
{
  v2 = sub_26A4E435C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A4E3EC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A4E3BA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_26A4E3F00(uint64_t a1)
{
  result = sub_26A4E3F28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A4E3F28()
{
  result = qword_2803AAE08;
  if (!qword_2803AAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE08);
  }

  return result;
}

unint64_t sub_26A4E3F7C()
{
  result = qword_2803AAE18;
  if (!qword_2803AAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE18);
  }

  return result;
}

unint64_t sub_26A4E3FD0()
{
  result = qword_2803AAE28;
  if (!qword_2803AAE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE20, &qword_26A8572A0);
    sub_26A4E4054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE28);
  }

  return result;
}

unint64_t sub_26A4E4054()
{
  result = qword_2803AAE30;
  if (!qword_2803AAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DomainConfigurations.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for DomainConfigurations.CodingKeys(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26A4E41C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26A4E4204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A4E4258()
{
  result = qword_2803AAE38;
  if (!qword_2803AAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE38);
  }

  return result;
}

unint64_t sub_26A4E42B0()
{
  result = qword_2803AAE40;
  if (!qword_2803AAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE40);
  }

  return result;
}

unint64_t sub_26A4E4308()
{
  result = qword_2803AAE48;
  if (!qword_2803AAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE48);
  }

  return result;
}

unint64_t sub_26A4E435C()
{
  result = qword_2803AAE58;
  if (!qword_2803AAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE58);
  }

  return result;
}

unint64_t sub_26A4E43B0()
{
  result = qword_2803AAE68;
  if (!qword_2803AAE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE60, &qword_26A857420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceScreenSize(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DomainConfigurations.Domain.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A4E45A8()
{
  result = qword_2803AAE70;
  if (!qword_2803AAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE70);
  }

  return result;
}

unint64_t sub_26A4E4600()
{
  result = qword_2803AAE78;
  if (!qword_2803AAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE78);
  }

  return result;
}

unint64_t sub_26A4E4658()
{
  result = qword_2803AAE80;
  if (!qword_2803AAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAE80);
  }

  return result;
}

uint64_t sub_26A4E46C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A4DBD68(v2, &v13 - v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v10, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A4E48A0()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemLargeTextView(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A4E49F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemLargeTextView(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SummaryItemLargeTextView.init(text1:text2:text3:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SummaryItemLargeTextView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = (v11 - v10);
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v12 + v8[5];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v8[6];
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = OUTLINED_FUNCTION_1_2();
  *(v12 + v8[7]) = v16(v15);
  sub_26A4DBD68(a2, v24, &qword_2803A91B8, &qword_26A8575C0);
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v17 = OUTLINED_FUNCTION_1_2();
    v19 = v18(v17);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_26A4DBD10(v24, &qword_2803A91B8, &qword_26A8575C0);
    v19 = 0;
  }

  *(v12 + v8[8]) = v19;
  sub_26A4DBD68(a3, v24, &qword_2803A91B8, &qword_26A8575C0);
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v20 = OUTLINED_FUNCTION_1_2();
    v22 = v21(v20);
    sub_26A4DBD10(a3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_26A4DBD10(a3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v24, &qword_2803A91B8, &qword_26A8575C0);
    v22 = 0;
  }

  *(v12 + v8[9]) = v22;
  sub_26A4E5BC8(v12, a4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SummaryItemLargeTextView(uint64_t a1)
{
  result = qword_2803AAEA0;
  if (!qword_2803AAEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemLargeTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A4E46C0(&v17[-v9]);
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  sub_26A4E48A0();
  sub_26A4E49F4(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4C48EC();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE88, &qword_26A8575C8) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAE90, &qword_26A857600);
  *(a1 + *(result + 36)) = 11;
  return result;
}

void *sub_26A4E5134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FA78();
  v10 = 1;
  sub_26A4E5210(a1, __src);
  memcpy(__dst, __src, 0x79uLL);
  memcpy(v12, __src, 0x79uLL);
  sub_26A4DBD68(__dst, v7, &qword_2803AAEE8, &qword_26A8576B0);
  sub_26A4DBD10(v12, &qword_2803AAEE8, &qword_26A8576B0);
  memcpy(&v9[7], __dst, 0x79uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x80uLL);
}

uint64_t sub_26A4E5210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v6[0] = 1;
  sub_26A4E5364(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_26A4DBD68(__dst, v10, &qword_2803AAEF0, &qword_26A8576B8);
  sub_26A4DBD10(v9, &qword_2803AAEF0, &qword_26A8576B8);
  memcpy(&v7[7], __dst, 0x58uLL);
  v10[0] = v4;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, v7, 0x5FuLL);
  v6[112] = 1;
  memcpy(a2, v10, 0x70uLL);
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *__src = v4;
  *&__src[8] = 0;
  __src[16] = 1;
  memcpy(&__src[17], v7, 0x5FuLL);
  sub_26A4DBD68(v10, v6, &qword_2803AAEF8, &qword_26A8576C0);
  return sub_26A4DBD10(__src, &qword_2803AAEF8, &qword_26A8576C0);
}

uint64_t sub_26A4E5364@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemLargeTextView(0);
  v5 = *(a1 + v4[7]);

  v16 = sub_26A8502C8();
  KeyPath = swift_getKeyPath();
  v7 = *(a1 + v4[8]);
  if (v7)
  {

    v15 = sub_26A8502F8();
    v8 = swift_getKeyPath();
  }

  else
  {
    v8 = 0;
    v15 = 0;
  }

  v9 = *(a1 + v4[9]);
  if (v9)
  {

    sub_26A850468();
    sub_26A850398();
    v14 = sub_26A850428();

    v10 = swift_getKeyPath();
    v11 = sub_26A850E88();
    v12 = swift_getKeyPath();
  }

  else
  {
    v10 = 0;
    v14 = 0;
    v12 = 0;
    v11 = 0;
  }

  *a2 = v5;
  a2[1] = KeyPath;
  a2[2] = v16;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v15;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v14;
  a2[9] = v12;
  a2[10] = v11;

  sub_26A4E624C(v7);
  sub_26A4E629C(v9);
  sub_26A4E630C(v9);
  sub_26A4E6378(v7);
}

uint64_t sub_26A4E5548()
{
  v71 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v66 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v65 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  v27 = type metadata accessor for SummaryItemLargeTextView(0);
  v28 = OUTLINED_FUNCTION_79(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v72 = v30 - v29;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAB0, &qword_26A856BA8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v31);
  v33 = &v65 - v32;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAB8, &unk_26A856BB0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v69 = v35 - v36;
  MEMORY[0x28223BE20](v37);
  v68 = &v65 - v38;
  sub_26A84CF98();
  v39 = TextProperty.asAnyView()();
  (*(v22 + 8))(v26, v20);
  v75[3] = MEMORY[0x277CE11C8];
  v75[4] = &protocol witness table for AnyView;
  v75[0] = v39;
  sub_26A84CFA8();
  v40 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v19, 1, v40) == 1)
  {
    sub_26A4DBD10(v19, &qword_2803AA830, &unk_26A856FA0);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v74[1] = 0;
    v74[2] = 0;
  }

  else
  {
    v41 = v19;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_8_3();
    (*(v44 + 8))(v19, v40);
    v43 = &protocol witness table for AnyView;
    v42 = MEMORY[0x277CE11C8];
  }

  v74[0] = v41;
  v74[3] = v42;
  v74[4] = v43;
  sub_26A84CFB8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v40) == 1)
  {
    sub_26A4DBD10(v16, &qword_2803AA830, &unk_26A856FA0);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v73[1] = 0;
    v73[2] = 0;
  }

  else
  {
    v45 = v16;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_8_3();
    (*(v48 + 8))(v16, v40);
    v47 = &protocol witness table for AnyView;
    v46 = MEMORY[0x277CE11C8];
  }

  v73[0] = v45;
  v73[3] = v46;
  v73[4] = v47;
  SummaryItemLargeTextView.init(text1:text2:text3:)(v75, v74, v73, v72);
  sub_26A84CFC8();
  sub_26A4DBDB4(v11, v8, &qword_2803B3800, &unk_26A856760);
  v49 = v71;
  if (__swift_getEnumTagSinglePayload(v8, 1, v71) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v51 = &v33[*(v67 + 36)];
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v53 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v51 + v52, 1, 1, v53);
    *v51 = KeyPath;
  }

  else
  {
    v54 = *(v66 + 32);
    v55 = v65;
    v54(v65, v8, v49);
    v56 = swift_getKeyPath();
    v57 = &v33[*(v67 + 36)];
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v54(v57 + v58, v55, v49);
    v59 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v57 + v58, 0, 1, v59);
    *v57 = v56;
  }

  sub_26A4E5BC8(v72, v33);
  v60 = sub_26A84CF68();
  v61 = v68;
  sub_26A4DC0F4(v60, v62);

  sub_26A4DBD10(v33, &qword_2803AAAB0, &qword_26A856BA8);
  sub_26A84CF78();

  sub_26A4DBD68(v61, v69, &qword_2803AAAB8, &unk_26A856BB0);
  sub_26A4E5FD8();
  v63 = sub_26A851248();
  sub_26A4DBD10(v61, &qword_2803AAAB8, &unk_26A856BB0);
  return v63;
}

uint64_t sub_26A4E5BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemLargeTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4E5C50(uint64_t a1)
{
  result = sub_26A4E6204(&qword_2803AAE98, MEMORY[0x277D634A8], MEMORY[0x277D634A0]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4E5CD0(uint64_t a1)
{
  sub_26A4D27F4(319);
  if (v1 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_26A4E5E18();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A4E5DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A4E5E18()
{
  if (!qword_2803A9240)
  {
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803A9240);
    }
  }
}

unint64_t sub_26A4E5E68()
{
  result = qword_2803AAEB0;
  if (!qword_2803AAEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE90, &qword_26A857600);
    sub_26A4E5EF4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAEB0);
  }

  return result;
}

unint64_t sub_26A4E5EF4()
{
  result = qword_2803AAEB8;
  if (!qword_2803AAEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAE88, &qword_26A8575C8);
    sub_26A4DBCC8(&qword_2803AAEC0, &qword_2803AA2D8, &unk_26A8576A0, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAEB8);
  }

  return result;
}

unint64_t sub_26A4E5FD8()
{
  result = qword_2803AAEC8;
  if (!qword_2803AAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAB8, &unk_26A856BB0);
    sub_26A4E6090();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAEC8);
  }

  return result;
}

unint64_t sub_26A4E6090()
{
  result = qword_2803AAED0;
  if (!qword_2803AAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAA8, &qword_26A856BA0);
    sub_26A4E611C();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAED0);
  }

  return result;
}

unint64_t sub_26A4E611C()
{
  result = qword_2803AAED8;
  if (!qword_2803AAED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAB0, &qword_26A856BA8);
    sub_26A4E6204(&qword_2803AAEE0, type metadata accessor for SummaryItemLargeTextView, &protocol conformance descriptor for SummaryItemLargeTextView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAED8);
  }

  return result;
}

uint64_t sub_26A4E6204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A4E624C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E629C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E630C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E6378(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4E63F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SummaryItemDetailedTextView(0);
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A4E65D8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemDetailedTextView(0) + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A4E672C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemDetailedTextView(0);
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SummaryItemDetailedTextView.init(text1:text2:text3:text4:text5:text6:thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = type metadata accessor for SummaryItemDetailedTextView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = (v13 - v12);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  v16 = __swift_project_value_buffer(v15, qword_281588798);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v18 = &v14[*(v17 + 32)];
  sub_26A4DBD68(v16, v18, &qword_2803B3890, &unk_26A856670);
  sub_26A6AEE74(__src);
  memcpy(v14, __src, 0xBFuLL);
  sub_26A4DB4E0(v18 + *(v15 + 36), &v14[*(v17 + 28)]);
  v19 = v10[5];
  *&v14[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v20 = &v14[v10[6]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v10[7];
  *&v14[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = OUTLINED_FUNCTION_15_0();
  *&v14[v10[8]] = v24(v23);
  sub_26A4DBD68(a2, v46, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_14_1();
  if (v22)
  {
    v25 = OUTLINED_FUNCTION_1_3();
    v26(v25);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v21 = 0;
  }

  *&v14[v10[9]] = v21;
  v27 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v28 = OUTLINED_FUNCTION_15_0();
  *&v14[v10[10]] = v29(v28);
  sub_26A4DBD68(a4, v46, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v30 = OUTLINED_FUNCTION_1_3();
    v31(v30);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v21 = 0;
  }

  *&v14[v10[11]] = v21;
  sub_26A4DBD68(a5, v46, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v32 = OUTLINED_FUNCTION_1_3();
    v33(v32);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v21 = 0;
  }

  *&v14[v10[12]] = v21;
  sub_26A4DBD68(a6, v46, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v34 = OUTLINED_FUNCTION_1_3();
    v35(v34);
    OUTLINED_FUNCTION_23_0();
  }

  else
  {
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    v21 = 0;
  }

  *&v14[v10[13]] = v21;
  sub_26A4DBD68(a7, v46, &qword_2803A91B8, &qword_26A8575C0);
  OUTLINED_FUNCTION_14_1();
  if (v27)
  {
    v36 = OUTLINED_FUNCTION_1_3();
    v38 = v37(v36);
    OUTLINED_FUNCTION_20_0(a7);
    OUTLINED_FUNCTION_20_0(a6);
    OUTLINED_FUNCTION_20_0(a5);
    OUTLINED_FUNCTION_20_0(a4);
    OUTLINED_FUNCTION_20_0(a2);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    OUTLINED_FUNCTION_18_0(a7);
    OUTLINED_FUNCTION_18_0(a6);
    OUTLINED_FUNCTION_18_0(a5);
    OUTLINED_FUNCTION_18_0(a4);
    OUTLINED_FUNCTION_18_0(a2);
    OUTLINED_FUNCTION_18_0(v46);
    v38 = 0;
  }

  *&v14[v10[14]] = v38;
  sub_26A4E95F8(v14, a8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SummaryItemDetailedTextView(uint64_t a1)
{
  result = qword_2803AAF18;
  if (!qword_2803AAF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemDetailedTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A4E63F0(&v20[-v9]);
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  sub_26A4E65D8();
  sub_26A4E672C(v6);
  sub_26A84F3A8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v21 = v1;
  sub_26A4C50BC();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_26A68CCBC;
  *(v14 + 24) = 0;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF00, &unk_26A8577B8) + 36);
  *(v15 + 16) = swift_getKeyPath();
  *(v15 + 24) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v17 = *(v16 + 40);
  *(v15 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v18 = v15 + *(v16 + 44);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *v15 = sub_26A4D1F7C;
  *(v15 + 8) = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF08, &qword_26A8577F0);
  *(a1 + *(result + 36)) = 12;
  return result;
}

uint64_t sub_26A4E70AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2C8, &qword_26A8578C0);
  MEMORY[0x28223BE20](v30);
  v4 = &v28 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF60, &qword_26A8578C8);
  MEMORY[0x28223BE20](v28);
  v29 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2B8, &unk_26A855E50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2A8, &qword_26A855E48);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_26A84F3A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4E672C(v15);
  v16 = sub_26A84F388();
  (*(v13 + 8))(v15, v12);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28));
  if (v16)
  {
    v18 = sub_26A84FC08();
    v19 = v17[4];
    *v8 = v18;
    *(v8 + 1) = v19;
    v8[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF70, &qword_26A8578D8);
    sub_26A4E816C(a1, &v8[*(v20 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4DBDB4(v8, v11, &qword_2803AA2B8, &unk_26A855E50);
    memcpy(&v11[*(v9 + 36)], __src, 0x70uLL);
    v21 = &qword_2803AA2A8;
    v22 = &qword_26A855E48;
    sub_26A4DBD68(v11, v29, &qword_2803AA2A8, &qword_26A855E48);
    swift_storeEnumTagMultiPayload();
    sub_26A4D7618();
    sub_26A4DBCC8(&qword_2803AA2C0, &qword_2803AA2C8, &qword_26A8578C0, MEMORY[0x277CE1138]);
    sub_26A84FDF8();
    v23 = v11;
  }

  else
  {
    v24 = v29;
    if (qword_28157FC98 != -1)
    {
      swift_once();
    }

    v25 = *v17;
    *v4 = qword_2815889D8;
    *(v4 + 1) = v25;
    v4[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF68, &qword_26A8578D0);
    sub_26A4E7558(a1, v17, &v4[*(v26 + 44)]);
    v21 = &qword_2803AA2C8;
    v22 = &qword_26A8578C0;
    sub_26A4DBD68(v4, v24, &qword_2803AA2C8, &qword_26A8578C0);
    swift_storeEnumTagMultiPayload();
    sub_26A4D7618();
    sub_26A4DBCC8(&qword_2803AA2C0, &qword_2803AA2C8, &qword_26A8578C0, MEMORY[0x277CE1138]);
    sub_26A84FDF8();
    v23 = v4;
  }

  return sub_26A4DBD10(v23, v21, v22);
}

uint64_t sub_26A4E7558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFB0, &qword_26A857978);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11 - 8];
  sub_26A4E7834();
  v13 = *a2;
  KeyPath = swift_getKeyPath();
  v15 = &v12[*(v7 + 44)];
  *v15 = KeyPath;
  v15[8] = 0;
  *(v15 + 2) = v13;
  v16 = sub_26A84FC08();
  v17 = a2[4];
  v25[0] = v16;
  v25[1] = v17;
  LOBYTE(v25[2]) = 0;
  sub_26A4E7AB0(a1, &v25[3]);
  sub_26A851458();
  sub_26A84F628();
  memcpy(v24, v25, 0x639uLL);
  memcpy(v25, v24, 0x6B0uLL);
  sub_26A4E80B8();
  v22[37] = swift_getKeyPath();
  v23 = 2;
  sub_26A4DBD68(v12, v9, &qword_2803AAFB0, &qword_26A857978);
  sub_26A4DBD68(v25, v24, &qword_2803AAFB8, &qword_26A8579D8);
  sub_26A4DBD68(v22, v21, &qword_2803AAFC0, &qword_26A8579E0);
  sub_26A4DBD68(v9, a3, &qword_2803AAFB0, &qword_26A857978);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFC8, &qword_26A8579E8);
  sub_26A4DBD68(v24, a3 + *(v18 + 48), &qword_2803AAFB8, &qword_26A8579D8);
  sub_26A4DBD68(v21, a3 + *(v18 + 64), &qword_2803AAFC0, &qword_26A8579E0);
  sub_26A4DBD10(v22, &qword_2803AAFC0, &qword_26A8579E0);
  sub_26A4DBD10(v25, &qword_2803AAFB8, &qword_26A8579D8);
  sub_26A4DBD10(v12, &qword_2803AAFB0, &qword_26A857978);
  sub_26A4DBD10(v21, &qword_2803AAFC0, &qword_26A8579E0);
  sub_26A4DBD10(v24, &qword_2803AAFB8, &qword_26A8579D8);
  return sub_26A4DBD10(v9, &qword_2803AAFB0, &qword_26A857978);
}

uint64_t sub_26A4E7834()
{
  OUTLINED_FUNCTION_13_1();
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = (&v35 - v11);
  v13 = *(v1 + *(type metadata accessor for SummaryItemDetailedTextView(0) + 56));
  if (v13)
  {
    (*(v4 + 104))(v8, *MEMORY[0x277D62B28], v2);
    KeyPath = swift_getKeyPath();
    v15 = (v12 + *(v9 + 36));
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40);
    (*(v4 + 32))(v15 + *(v16 + 28), v8, v2);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
    *v15 = KeyPath;
    *v12 = v13;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFD8, &qword_26A8579F8);
    v21 = (v0 + *(v20 + 36));
    v22 = *(sub_26A84F5F8() + 20);
    v23 = *MEMORY[0x277CE0118];
    sub_26A84FB88();
    OUTLINED_FUNCTION_46();
    (*(v24 + 104))(&v21[v22], v23);
    __asm { FMOV            V0.2D, #4.0 }

    *v21 = _Q0;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
    sub_26A4DBDB4(v12, v0, &qword_2803AAFA0, &unk_26A85D4D0);
    OUTLINED_FUNCTION_22_0();
    v33 = v20;
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFD8, &qword_26A8579F8);
    v30 = v0;
    v31 = 1;
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

uint64_t sub_26A4E7AB0@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  sub_26A4E7E9C();
  v5 = type metadata accessor for SummaryItemDetailedTextView(0);
  v6 = *(a1 + *(v5 + 32));
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v33, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v32, __src, sizeof(v32));
  v33[11] = 0;
  v33[10] = sub_26A80A810;
  v31 = v6;
  v7 = qword_28157FC78;

  if (v7 != -1)
  {
    swift_once();
  }

  v33[12] = qword_28157FC80;
  v33[13] = sub_26A4D82F0;
  v33[14] = 0;
  v33[15] = sub_26A84FBD8();
  v33[16] = sub_26A4D82F0;
  v33[17] = 0;
  sub_26A4E7F50();
  v8 = *(a1 + *(v5 + 40));
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v29, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v36);
  memcpy(v28, v36, sizeof(v28));
  v29[11] = 0;
  v29[10] = sub_26A80A810;
  v27 = v8;

  sub_26A4E8004();
  v9 = sub_26A850258();
  sub_26A84ED48();
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = 0;
  sub_26A4DBD68(v34, v19, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(&v31, v18, &qword_2803AAFD0, &qword_26A8579F0);
  sub_26A4DBD68(v30, v17, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(&v27, v16, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(v20, v15, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD68(v19, x8_0, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(v18, x8_0 + 296, &qword_2803AAFD0, &qword_26A8579F0);
  sub_26A4DBD68(v17, x8_0 + 640, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(v16, x8_0 + 936, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(v15, x8_0 + 1232, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(v20, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(&v27, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v30, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(&v31, &qword_2803AAFD0, &qword_26A8579F0);
  sub_26A4DBD10(v34, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v15, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(v16, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v17, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v18, &qword_2803AAFD0, &qword_26A8579F0);
  return sub_26A4DBD10(v19, &qword_2803AA888, &qword_26A857920);
}

uint64_t sub_26A4E7E9C()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView(v2) + 52)))
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D27B0, v0 + 200, &qword_2803AA880, &unk_26A8567F0);
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E7F50()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView(v2) + 36)))
  {
    if (qword_2803A9018 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D2760, v0 + 200, &qword_2803AA880, &unk_26A8567F0);
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E8004()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView(v2) + 44)))
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, v0 + 200, &qword_2803AA880, &unk_26A8567F0);
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E80B8()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemDetailedTextView(v2) + 48)))
  {
    if (qword_28157E6B0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588898, v0 + 200, &qword_2803AA880, &unk_26A8567F0);
    v3 = sub_26A6AEE74(v12);
    OUTLINED_FUNCTION_12_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A4E816C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF78, &qword_26A8578E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8 - 8];
  sub_26A4E7E9C();
  *v9 = sub_26A84FA78();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF80, &unk_26A8578E8);
  sub_26A4E8598(a1, &v9[*(v10 + 44)]);
  sub_26A4E7F50();
  v11 = sub_26A850258();
  sub_26A84ED48();
  v51[296] = v11;
  v52 = v12;
  v53 = v13;
  v54 = v14;
  v55 = v15;
  v56 = 0;
  v16 = *(a1 + *(type metadata accessor for SummaryItemDetailedTextView(0) + 40));
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v50, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v58);
  memcpy(v49, v58, sizeof(v49));
  v50[11] = 0;
  v50[10] = sub_26A80A810;
  v48 = v16;

  sub_26A4E8004();
  v17 = sub_26A850258();
  sub_26A84ED48();
  v42[296] = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = 0;
  sub_26A4E80B8();
  v35[37] = swift_getKeyPath();
  v35[38] = 0x4000000000000000;
  v22 = sub_26A850258();
  sub_26A84ED48();
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = 0;
  sub_26A4DBD68(v57, v33, &qword_2803AA888, &qword_26A857920);
  v34[0] = v33;
  sub_26A4DBD68(v9, v6, &qword_2803AAF78, &qword_26A8578E0);
  v34[1] = v6;
  sub_26A4DBD68(v51, v32, &qword_2803AAF88, &unk_26A861C90);
  v34[2] = v32;
  sub_26A4DBD68(&v48, v31, &qword_2803A99A0, &unk_26A856800);
  v34[3] = v31;
  sub_26A4DBD68(v42, v30, &qword_2803AAF88, &unk_26A861C90);
  v34[4] = v30;
  sub_26A4DBD68(v35, v29, &qword_2803AAF90, &qword_26A857928);
  v34[5] = v29;
  sub_26A593EA0(v34);
  sub_26A4DBD10(v35, &qword_2803AAF90, &qword_26A857928);
  sub_26A4DBD10(v42, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(&v48, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v51, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(v9, &qword_2803AAF78, &qword_26A8578E0);
  sub_26A4DBD10(v57, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v29, &qword_2803AAF90, &qword_26A857928);
  sub_26A4DBD10(v30, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(v31, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v32, &qword_2803AAF88, &unk_26A861C90);
  sub_26A4DBD10(v6, &qword_2803AAF78, &qword_26A8578E0);
  return sub_26A4DBD10(v33, &qword_2803AA888, &qword_26A857920);
}

uint64_t sub_26A4E8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98, &unk_26A857930);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&KeyPath - v11);
  MEMORY[0x28223BE20](v13);
  v33 = &KeyPath - v14;
  v15 = type metadata accessor for SummaryItemDetailedTextView(0);
  v16 = *(a1 + *(v15 + 56));
  if (v16)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D62B18], v4);
    KeyPath = swift_getKeyPath();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
    v31 = v15;
    v32 = a2;
    v18 = v17;
    v19 = (v12 + *(v17 + 36));
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
    (*(v5 + 32))(v19 + v20, v7, v4);
    __swift_storeEnumTagSinglePayload(v19 + v20, 0, 1, v4);
    *v19 = KeyPath;
    *v12 = v16;
    v21 = v12;
    v22 = 0;
    v23 = v18;
    v15 = v31;
    a2 = v32;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
    v21 = v12;
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  v24 = v33;
  sub_26A4DBDB4(v12, v33, &qword_2803AAF98, &unk_26A857930);
  v25 = *(a1 + *(v15 + 32));
  v26 = qword_28157E6C0;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v38, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v39);
  memcpy(v37, v39, sizeof(v37));
  v38[11] = 0;
  v38[10] = sub_26A80A810;
  v36 = v25;
  v27 = v34;
  sub_26A4DBD68(v24, v34, &qword_2803AAF98, &unk_26A857930);
  sub_26A4DBD68(&v36, v35, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(v27, a2, &qword_2803AAF98, &unk_26A857930);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA8, &qword_26A857940);
  sub_26A4DBD68(v35, a2 + *(v28 + 48), &qword_2803A99A0, &unk_26A856800);

  sub_26A4DBD10(&v36, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v24, &qword_2803AAF98, &unk_26A857930);
  sub_26A4DBD10(v35, &qword_2803A99A0, &unk_26A856800);
  return sub_26A4DBD10(v27, &qword_2803AAF98, &unk_26A857930);
}

uint64_t sub_26A4E8990()
{
  v129 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v115 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v114 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v128 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v126 = &v113 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v120 = &v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v116 = &v113 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  v18 = OUTLINED_FUNCTION_79(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v117 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v113 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v113 - v25;
  v27 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_41();
  v33 = v32 - v31;
  v121 = type metadata accessor for SummaryItemDetailedTextView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v130 = &v113 - v39;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAC8, &unk_26A856BC0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v40);
  v123 = &v113 - v41;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAD0, &unk_26A8578A0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  v125 = v43 - v44;
  MEMORY[0x28223BE20](v45);
  v124 = &v113 - v46;
  sub_26A84D698();
  v119 = TextProperty.asAnyView()();
  v47 = *(v29 + 8);
  v47(v33, v27);
  v131 = v0;
  sub_26A84D6A8();
  OUTLINED_FUNCTION_26_0(v26);
  if (v48)
  {
    sub_26A4DBD10(v26, &qword_2803AA838, &unk_26A856770);
    OUTLINED_FUNCTION_2_0();
    v138[1] = 0;
    v138[2] = 0;
  }

  else
  {
    v0 = TextProperty.asAnyView()();
    v47(v26, v27);
    v49 = &protocol witness table for AnyView;
    v50 = MEMORY[0x277CE11C8];
  }

  v138[0] = v0;
  v138[3] = v50;
  v138[4] = v49;
  v51 = v131;
  sub_26A84D6B8();
  v118 = TextProperty.asAnyView()();
  v47(v33, v27);
  v52 = v51;
  sub_26A84D6C8();
  OUTLINED_FUNCTION_26_0(v23);
  v53 = v116;
  if (v48)
  {
    sub_26A4DBD10(v23, &qword_2803AA838, &unk_26A856770);
    OUTLINED_FUNCTION_2_0();
    v137[1] = 0;
    v137[2] = 0;
  }

  else
  {
    v52 = TextProperty.asAnyView()();
    v47(v23, v27);
    v54 = &protocol witness table for AnyView;
    v55 = MEMORY[0x277CE11C8];
  }

  v137[0] = v52;
  v137[3] = v55;
  v137[4] = v54;
  v56 = v51;
  sub_26A84D6D8();
  v57 = sub_26A84D098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v57);
  v59 = v120;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v53, &qword_2803AA830, &unk_26A856FA0);
    OUTLINED_FUNCTION_2_0();
    v136[1] = 0;
    v136[2] = 0;
  }

  else
  {
    v56 = v53;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v62 + 8))(v53, v57);
    v60 = &protocol witness table for AnyView;
    v61 = MEMORY[0x277CE11C8];
  }

  v136[0] = v56;
  v136[3] = v61;
  v136[4] = v60;
  v63 = v117;
  v64 = v51;
  sub_26A84D6E8();
  OUTLINED_FUNCTION_26_0(v63);
  v65 = v123;
  if (v48)
  {
    sub_26A4DBD10(v63, &qword_2803AA838, &unk_26A856770);
    OUTLINED_FUNCTION_2_0();
    v135[1] = 0;
    v135[2] = 0;
  }

  else
  {
    v64 = TextProperty.asAnyView()();
    v47(v63, v27);
    v66 = &protocol witness table for AnyView;
    v67 = MEMORY[0x277CE11C8];
  }

  v68 = v121;
  v135[0] = v64;
  v135[3] = v67;
  v135[4] = v66;
  v69 = v51;
  sub_26A84D708();
  v70 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v59, 1, v70) == 1)
  {
    sub_26A4DBD10(v59, &qword_2803AAD50, &unk_26A857890);
    OUTLINED_FUNCTION_2_0();
    v134[1] = 0;
    v134[2] = 0;
  }

  else
  {
    v69 = v59;
    VisualProperty.asAnyView()();
    OUTLINED_FUNCTION_29();
    (*(v73 + 8))(v59, v70);
    v71 = &protocol witness table for AnyView;
    v72 = MEMORY[0x277CE11C8];
  }

  v134[0] = v69;
  v134[3] = v72;
  v134[4] = v71;
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  v75 = __swift_project_value_buffer(v74, qword_281588798);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v77 = &v37[*(v76 + 32)];
  sub_26A4DBD68(v75, v77, &qword_2803B3890, &unk_26A856670);
  sub_26A6AEE74(v139);
  memcpy(v37, v139, 0xBFuLL);
  sub_26A4DB4E0(v77 + *(v74 + 36), &v37[*(v76 + 28)]);
  v78 = v68[5];
  *&v37[v78] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v79 = &v37[v68[6]];
  *v79 = swift_getKeyPath();
  v79[8] = 0;
  v80 = v68[7];
  *&v37[v80] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  *&v37[v68[8]] = v119;
  sub_26A4DBD68(v138, v132, &qword_2803A91B8, &qword_26A8575C0);
  if (v133)
  {
    v81 = OUTLINED_FUNCTION_2_3();
    v82(v81);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v132, &qword_2803A91B8, &qword_26A8575C0);
    v80 = 0;
  }

  v83 = v129;
  *&v37[v68[9]] = v80;
  *&v37[v68[10]] = v118;
  sub_26A4DBD68(v137, v132, &qword_2803A91B8, &qword_26A8575C0);
  if (v133)
  {
    v84 = OUTLINED_FUNCTION_2_3();
    v85(v84);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v132, &qword_2803A91B8, &qword_26A8575C0);
    v80 = 0;
  }

  *&v37[v68[11]] = v80;
  sub_26A4DBD68(v136, v132, &qword_2803A91B8, &qword_26A8575C0);
  if (v133)
  {
    v86 = OUTLINED_FUNCTION_2_3();
    v87(v86);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v132, &qword_2803A91B8, &qword_26A8575C0);
    v80 = 0;
  }

  *&v37[v68[12]] = v80;
  sub_26A4DBD68(v135, v132, &qword_2803A91B8, &qword_26A8575C0);
  if (v133)
  {
    v88 = OUTLINED_FUNCTION_2_3();
    v89(v88);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4DBD10(v132, &qword_2803A91B8, &qword_26A8575C0);
    v80 = 0;
  }

  *&v37[v68[13]] = v80;
  sub_26A4DBD68(v134, v132, &qword_2803A91B8, &qword_26A8575C0);
  if (v133)
  {
    v90 = OUTLINED_FUNCTION_2_3();
    v92 = v91(v90);
    OUTLINED_FUNCTION_19_0(v134);
    OUTLINED_FUNCTION_19_0(v135);
    OUTLINED_FUNCTION_19_0(v136);
    OUTLINED_FUNCTION_19_0(v137);
    OUTLINED_FUNCTION_19_0(v138);
    __swift_destroy_boxed_opaque_existential_1(v132);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(v134);
    OUTLINED_FUNCTION_9_0(v135);
    OUTLINED_FUNCTION_9_0(v136);
    OUTLINED_FUNCTION_9_0(v137);
    OUTLINED_FUNCTION_9_0(v138);
    OUTLINED_FUNCTION_9_0(v132);
    v92 = 0;
  }

  *&v37[v68[14]] = v92;
  sub_26A4E95F8(v37, v130);
  v93 = v126;
  sub_26A84D6F8();
  v94 = v128;
  sub_26A4DBDB4(v93, v128, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v94, 1, v83) == 1)
  {
    sub_26A4DBD10(v94, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v96 = (v65 + *(v122 + 36));
    v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v98 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v96 + v97, 1, 1, v98);
    *v96 = KeyPath;
  }

  else
  {
    v99 = v114;
    v100 = *(v115 + 32);
    v100(v114, v94, v83);
    v101 = swift_getKeyPath();
    v102 = (v65 + *(v122 + 36));
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400);
    v100(v102 + *(v103 + 28), v99, v83);
    v104 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
    *v102 = v101;
  }

  sub_26A4E95F8(v130, v65);
  v108 = sub_26A84D668();
  v109 = v124;
  sub_26A4DC1DC(v108, v110);

  sub_26A4DBD10(v65, &qword_2803AAAC8, &unk_26A856BC0);
  sub_26A84D678();

  sub_26A4DBD68(v109, v125, &qword_2803AAAD0, &unk_26A8578A0);
  sub_26A4E99E0();
  v111 = sub_26A851248();
  OUTLINED_FUNCTION_9_0(v109);
  return v111;
}

uint64_t sub_26A4E95F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemDetailedTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4E9680(uint64_t a1)
{
  result = sub_26A4E9C0C(&qword_2803AAF10, MEMORY[0x277D63568], MEMORY[0x277D63560]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4E9700(uint64_t a1)
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A4D27F4(319);
    if (v2 <= 0x3F)
    {
      sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A4E5E18();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A4E9870()
{
  result = qword_2803AAF28;
  if (!qword_2803AAF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAF08, &qword_26A8577F0);
    sub_26A4E98FC();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF28);
  }

  return result;
}

unint64_t sub_26A4E98FC()
{
  result = qword_2803AAF30;
  if (!qword_2803AAF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAF00, &unk_26A8577B8);
    sub_26A4DBCC8(&qword_2803AAF38, &qword_2803AA290, &qword_26A855E40, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF30);
  }

  return result;
}

unint64_t sub_26A4E99E0()
{
  result = qword_2803AAF40;
  if (!qword_2803AAF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAD0, &unk_26A8578A0);
    sub_26A4E9A98();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF40);
  }

  return result;
}

unint64_t sub_26A4E9A98()
{
  result = qword_2803AAF48;
  if (!qword_2803AAF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAC0, &unk_26A8578B0);
    sub_26A4E9B24();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF48);
  }

  return result;
}

unint64_t sub_26A4E9B24()
{
  result = qword_2803AAF50;
  if (!qword_2803AAF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAC8, &unk_26A856BC0);
    sub_26A4E9C0C(&qword_2803AAF58, type metadata accessor for SummaryItemDetailedTextView, &protocol conformance descriptor for SummaryItemDetailedTextView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF50);
  }

  return result;
}

uint64_t sub_26A4E9C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_0_4()
{
  v0[35] = sub_26A80A810;
  v0[36] = 0;
  *v0 = v1;
}

void *OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy((v9 + 8), &a9, 0xBFuLL);
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 320);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 152);
}

void OUTLINED_FUNCTION_25_0()
{

  bzero(v0, 0x128uLL);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26A4E9DF8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_26A4E9E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26A4E9ECC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    if (qword_2803A9098 != -1)
    {
      swift_once();
    }

    v5 = qword_2803D2BC0;
  }

  else
  {
    if (qword_2803A90A0 != -1)
    {
      swift_once();
    }

    v5 = qword_2803D2C10;
  }

  sub_26A4EA070(v5, v8, &qword_2803AA880, &unk_26A8567F0);
  sub_26A4EA070(v8, v11, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  sub_26A4E2544(v8, &qword_2803AA880, &unk_26A8567F0);
  memcpy(v10, __src, sizeof(v10));
  v11[11] = 0;
  v11[10] = sub_26A80A810;
  v9 = a1;
  sub_26A4EA070(&v9, v8, &qword_2803AAFE0, &qword_26A857AA0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4EA0D8();
  v6 = sub_26A851248();
  result = sub_26A4E2544(&v9, &qword_2803AAFE0, &qword_26A857AA0);
  *a3 = v6;
  return result;
}

uint64_t sub_26A4EA070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26A4EA0D8()
{
  result = qword_2803AAFE8;
  if (!qword_2803AAFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAFE0, &qword_26A857AA0);
    sub_26A4EA164();
    sub_26A4EA1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAFE8);
  }

  return result;
}

unint64_t sub_26A4EA164()
{
  result = qword_2803AAFF0;
  if (!qword_2803AAFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAFF8, &qword_26A8598C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAFF0);
  }

  return result;
}

unint64_t sub_26A4EA1E0()
{
  result = qword_2803A99A8;
  if (!qword_2803A99A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A99B0, &qword_26A8558D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A99A8);
  }

  return result;
}

uint64_t sub_26A4EA244@<X0>(uint64_t a1@<X0>, double *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v10 = sub_26A851E88();
  LOBYTE(v64) = 2;
  sub_26A7A8D74(v10, 1, "SnippetUI/TableLayoutComputer+StandardLayout.swift", 50, 2, 14, "resolveStandardLayout(columns:metrics:useCompact:)", 50, v64, v65, v66, v67, v68, v69, v70, *&v71, v72, v73, v74, v75, v76, v77);
  v65 = a1;
  v12 = v4[1];
  v11 = v4[2];
  v13 = v4[3];
  v14 = v4[4];

  if ((a3 & 1) == 0)
  {

    v16 = v12;
    goto LABEL_7;
  }

  v16 = v11;
  if (sub_26A69676C(v15))
  {

    v16 = v12;
  }

  if (sub_26A69676C(v14))
  {
    v12 = v16;
LABEL_7:
    v17 = v12;
    v18 = v13;
    goto LABEL_9;
  }

  v17 = v16;
  v18 = v14;
LABEL_9:
  v19 = sub_26A69620C(v17, v18);

  sub_26A4EA694(&v65, v19, a2);
  sub_26A5377F8(&v65, v19);

  sub_26A581720(&v65);
  v20 = 0;
  v21 = v65;
  v22 = *a2;
  v23 = a2[1];
  v24 = *(v65 + 16);
  v25 = (v65 + 64);
  v26 = 0.0;
  v27 = v24;
  if (v24)
  {
    while (1)
    {
      v28 = *v25;
      v29 = __OFADD__(v20, v28);
      v20 += v28;
      if (v29)
      {
        break;
      }

      v26 = v26 + *(v25 - 4);
      v25 += 9;
      if (!--v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_12:
  v16 = v24 - v20;
  if (__OFSUB__(v24, v20))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v30 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v31 = v30;
  if (v30 < 0)
  {
    v31 = 0.0;
  }

  v73 = v22;
  v74 = *&v23;
  v75 = v24 - v20;
  v76 = v20;
  *&v77 = v23 * v31;
  v78 = *&v22 - v23 * v31;
  v79 = v26;
  v5 = v78 - v26;
  if (v78 - v26 > 0.0)
  {
    if (v20 < 1)
    {
      if (v24)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_32:
          v36 = 0;
          v38 = v26 == 0.0 && v16 > 0;
          v39 = *(v21 + 16);
          v40 = 32;
          while (1)
          {
            if (v36 >= v39)
            {
              goto LABEL_67;
            }

            v41 = v5 / v16;
            if (v38)
            {
              goto LABEL_43;
            }

            if (v26 > 0.0)
            {
              break;
            }

LABEL_44:
            ++v36;
            v40 += 72;
            if (v24 == v36)
            {
              goto LABEL_45;
            }
          }

          v41 = *(v21 + v40) + floor(v5 * *(v21 + v40) / v26);
LABEL_43:
          *(v21 + v40) = v41;
          goto LABEL_44;
        }

LABEL_73:
        sub_26A848EC8();
        v21 = v63;
        goto LABEL_32;
      }
    }

    else if (v24)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_20:
        if (v24 <= *(v21 + 16))
        {
          v32 = (v21 + 64);
          do
          {
            if (*v32 == 1)
            {
              *(v32 - 4) = v5 / v20;
            }

            v32 += 9;
            --v24;
          }

          while (v24);
          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_73;
      }

LABEL_71:
      sub_26A848EC8();
      v21 = v62;
      goto LABEL_20;
    }

LABEL_45:
    sub_26A84ACB8();
    v34 = type metadata accessor for ResolvedTableLayout(0);
    v35 = a4 + *(v34 + 20);
    *v35 = v21;
    goto LABEL_46;
  }

  if (v5 >= 0.0)
  {
    goto LABEL_45;
  }

  if (a3 & 1) != 0 || (sub_26A69676C(v14) & 1) != 0 && (sub_26A69676C(v11))
  {
    if (sub_26A4EA794(&v65, &v73))
    {
      v33 = v65;
      sub_26A84ACB8();
      v34 = type metadata accessor for ResolvedTableLayout(0);
      v35 = a4 + *(v34 + 20);
      *v35 = v33;
LABEL_46:
      *(v35 + 8) = 0;
      *(a4 + *(v34 + 24)) = a3 & 1;
LABEL_47:
      OUTLINED_FUNCTION_0_5();

      return __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    }

    result = sub_26A4EAA0C(&v65, &v73);
    if ((result & 1) == 0)
    {

      type metadata accessor for ResolvedTableLayout(0);
      goto LABEL_47;
    }

    v52 = 0;
    v53 = *(v65 + 16);
    v54 = (v65 + 64);
    v55 = 0.0;
    v56 = v53;
    if (v53)
    {
      while (1)
      {
        v57 = *v54;
        v29 = __OFADD__(v52, v57);
        v52 += v57;
        if (v29)
        {
          break;
        }

        v55 = v55 + *(v54 - 4);
        v54 += 9;
        if (!--v56)
        {
          goto LABEL_57;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_57:
    v29 = __OFSUB__(v53, v52);
    v58 = v53 - v52;
    if (v29)
    {
      __break(1u);
    }

    else
    {
      v59 = v58 - 1;
      if (!__OFSUB__(v58, 1))
      {
        v60 = v59;
        if (v59 < 0)
        {
          v60 = 0.0;
        }

        v66 = v22;
        v67 = *&v23;
        v68 = v58;
        v69 = v52;
        *&v70 = v23 * v60;
        v71 = *&v22 - v23 * v60;
        v72 = *&v55;
        v48 = &v66;
        v51 = a3 & 1;
        v49 = a4;
        v50 = v65;
        goto LABEL_62;
      }
    }

    __break(1u);
    return result;
  }

  v48 = &v73;
  v49 = a4;
  v50 = v21;
  v51 = 1;
LABEL_62:
  sub_26A4EA244(v50, v48, v51, v49);
  OUTLINED_FUNCTION_0_5();
}

void sub_26A4EA694(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_18:
      sub_26A848EC8();
      v3 = v16;
    }

    v8 = 0;
    v9 = (v3 + 64);
    do
    {
      if (v8 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      if ((*v9 & 1) == 0)
      {
        if (*(v9 - 16))
        {
          v10 = 0.0;
          if (*(a2 + 16))
          {
            v11 = sub_26A5484D4(*(v9 - 1));
            if (v12)
            {
              v13 = *(*(a2 + 56) + 8 * v11);
              if (*(v13 + 16))
              {
                v14 = sub_26A5484D4(1);
                if (v15)
                {
                  v10 = *(*(v13 + 56) + 8 * v14);
                }
              }
            }
          }
        }

        else
        {
          v10 = *(v9 - 3) * *(a3 + 40);
        }

        *(v9 - 4) = v10;
      }

      ++v8;
      v9 += 72;
    }

    while (v4 != v8);
    *result = v3;
  }
}

BOOL sub_26A4EA794(uint64_t *a1, uint64_t a2)
{
  v5 = v2;
  v7 = a1;
  v8 = 0;
  v9 = *(a2 + 40);
  if (v9 / *(a2 + 16) > 32.0)
  {
    v10 = v9 / *(a2 + 16);
  }

  else
  {
    v10 = 32.0;
  }

  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x277D84F90];
LABEL_5:
  v14 = 72 * v8;
  while (v12 != v8)
  {
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      sub_26A848EC8();
      v11 = v28;
      goto LABEL_25;
    }

    v3 = *(v11 + v14 + 32);
    v15 = *(v11 + v14 + 40);
    v16 = *(v11 + v14 + 48);
    v30 = *(v11 + v14 + 49);
    v31 = *(v11 + v14 + 65);
    v32 = *(v11 + v14 + 81);
    if (v16)
    {
      v17 = *(v11 + v14 + 97);
      if ((v17 & 1) == 0 && v10 < v3)
      {
        v29 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7DCCC0(0, *(v13 + 16) + 1, 1);
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_26A7DCCC0((v18 > 1), v19 + 1, 1);
          v20 = v19 + 1;
        }

        v21 = v13 + 80 * v19;
        *(v21 + 32) = v8++;
        *(v13 + 16) = v20;
        *(v21 + 40) = v3;
        *(v21 + 48) = v15;
        *(v21 + 56) = v16;
        *(v21 + 89) = v32;
        *(v21 + 73) = v31;
        *(v21 + 57) = v30;
        *(v21 + 105) = v17;
        v7 = v29;
        goto LABEL_5;
      }
    }

    v14 += 72;
    ++v8;
  }

  v12 = *(v13 + 16);
  if (v12)
  {
    v22 = (v13 + 40);
    v10 = 0.0;
    v23 = *(v13 + 16);
    do
    {
      v24 = *v22;
      v22 += 10;
      v10 = v10 + v24;
      --v23;
    }

    while (v23);
  }

  else
  {
    v10 = 0.0;
  }

  v4 = v9 - *(a2 + 48);
  v9 = -v4;
  v3 = v10 * *(v5 + 48);
  if (v3 < -v4 || !v12)
  {

    return v3 >= v9;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  v25 = 32;
  do
  {
    v26 = *(v13 + v25);
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v26 >= *(v11 + 16))
    {
      goto LABEL_34;
    }

    *(v11 + 32 + 72 * v26) = *(v11 + 32 + 72 * v26) + v4 * (*(v11 + 32 + 72 * v26) / v10);
    v25 += 80;
    --v12;
  }

  while (v12);

  *v7 = v11;
  return v3 >= v9;
}

uint64_t sub_26A4EAA0C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  __dst[0] = *a1;
  v4 = __dst[0];
  __dst[1] = sub_26A4EADFC;
  __dst[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB000, &qword_26A857AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB008, &qword_26A857AB0);
  *(swift_allocObject() + 16) = xmmword_26A8570D0;
  swift_getKeyPath();

  sub_26A84A8C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB010, &qword_26A857AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB018, &qword_26A857AE0);
  sub_26A4DBCC8(&qword_2803AB020, &qword_2803AB010, &qword_26A857AD8, MEMORY[0x277D84418]);
  sub_26A4DBCC8(&qword_2803AB028, &qword_2803AB018, &qword_26A857AE0, MEMORY[0x277D83970]);
  sub_26A4DBCC8(&qword_2803AB030, &qword_2803AB008, &qword_26A857AB0, MEMORY[0x277CC8A08]);
  v5 = v4;
  v6 = sub_26A851988();

  v7 = *(a2 + 40) - *(a2 + 48);
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = -v7;
    v12 = (v6 + 80);
    v13 = 1;
    v14 = 0.0;
    do
    {
      v15 = v13;
      v16 = *(v12 - 1);
      v13 = *v12;
      if (v14 >= v11)
      {
        if (v15)
        {
          if (!*v12)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v10 == v16)
          {
            v17 = *v12;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            goto LABEL_13;
          }
        }
      }

      ++v9;
      v14 = v14 + *(v12 - 6) + *(v3 + 40);
      v12 += 72;
      v10 = v16;
    }

    while (v8 != v9);
    v9 = *(v6 + 16);
LABEL_13:
    if (v14 >= v11)
    {
      goto LABEL_18;
    }

LABEL_16:

    return 0;
  }

  if (v7 < 0.0)
  {
    goto LABEL_16;
  }

  v9 = 0;
LABEL_18:
  v22 = sub_26A7F7BA0(v9, v6);
  v23 = *(v4 + 16);
  if (v23)
  {
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = (v5 + 32);
    v28 = MEMORY[0x277D84F90];
    do
    {
      memcpy(__dst, v27, 0x42uLL);
      if (!sub_26A61B088(__dst, v22, v24, v25, v26))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7DCCE0(0, *(v28 + 16) + 1, 1);
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_26A7DCCE0((v29 > 1), v30 + 1, 1);
        }

        *(v28 + 16) = v30 + 1;
        memcpy((v28 + 72 * v30 + 32), __dst, 0x42uLL);
      }

      v27 += 72;
      --v23;
    }

    while (v23);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  swift_unknownObjectRelease();
  *a1 = v28;
  return 1;
}

uint64_t sub_26A4EB1A0()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000015, 0x800000026A88AF10);
  sub_26A84E278();
  sub_26A4EB2DC();
  v0 = sub_26A852568();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](0xD000000000000023, 0x800000026A88AF30);
  return 0;
}

uint64_t sub_26A4EB27C()
{
  sub_26A84E278();

  return sub_26A4EB1A0();
}

unint64_t sub_26A4EB2DC()
{
  result = qword_2803AB038;
  if (!qword_2803AB038)
  {
    sub_26A84E278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB038);
  }

  return result;
}

id sub_26A4EB3BC@<X0>(char *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v7 = [v5 text_1];
  if (!v7)
  {
    sub_26A4E353C();
    swift_allocError();
    *v32 = v5;
    *(v32 + 8) = &unk_287B13170;
    *(v32 + 16) = 0;
    swift_willThrow();
    return v5;
  }

  v8 = v7;
  v141 = a2;
  v143 = v5;
  v9 = sub_26A4EC1C4(v5, &selRef_expanding_component_content, &qword_2803AB080, 0x277D4C100);
  v145 = v8;
  if (!v9)
  {
    v11 = 0;
LABEL_53:
    v34 = [v143 attribution];
    if (v34)
    {
      v35 = v34;
      sub_26A761EE8(v231);
      if (v4)
      {

        v36 = 0;
      }

      else
      {

        __dst[0] = v231[0];
        LOBYTE(__dst[1]) = v231[1];
        __dst[2] = v231[2];
        *&__dst[3] = *&v231[3];
        sub_26A4EC55C();
        v36 = sub_26A851248();
      }
    }

    else
    {
      v36 = 0;
    }

    RFTextProperty.asPartialText()(v231);
    v37 = [v143 text_2];
    if (v37)
    {
      v38 = v37;
      *(&v229 + 1) = &type metadata for PartialText;
      v230 = &protocol witness table for PartialText;
      v228[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v228[0] + 16);
    }

    else
    {
      v230 = 0;
      v229 = 0u;
      *v228 = 0u;
    }

    v39 = [v143 thumbnail];
    if (v39)
    {
      v40 = v39;
      *(&v226 + 1) = sub_26A84BD28();
      v227 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v225);
      RFVisualProperty.asVisualProperty()();

      if (v36)
      {
LABEL_63:
        v41 = &protocol witness table for AnyView;
        v42 = MEMORY[0x277CE11C8];
        goto LABEL_66;
      }
    }

    else
    {
      v227 = 0;
      v226 = 0u;
      *v225 = 0u;
      if (v36)
      {
        goto LABEL_63;
      }
    }

    v42 = 0;
    v41 = 0;
    v224[2] = 0;
    v224[1] = 0;
LABEL_66:
    v224[0] = v36;
    v224[3] = v42;
    v224[4] = v41;

    v43 = [v143 attribution_caveat];
    if (v43)
    {
      v44 = v43;
      *(&v222 + 1) = &type metadata for PartialText;
      v223 = &protocol witness table for PartialText;
      v221[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v221[0] + 16);

      if (v11)
      {
LABEL_68:
        v45 = Array<A>.asExpandedContentStack()(v11);

        v46 = &protocol witness table for AnyView;
        v47 = MEMORY[0x277CE11C8];
        goto LABEL_71;
      }
    }

    else
    {
      v223 = 0;
      v222 = 0u;
      *v221 = 0u;
      if (v11)
      {
        goto LABEL_68;
      }
    }

    v45 = 0;
    v47 = 0;
    v46 = 0;
    v220[2] = 0;
    v220[1] = 0;
LABEL_71:
    v234 = v36;
    v220[0] = v45;
    v220[3] = v47;
    v220[4] = v46;
    LODWORD(v166) = [v143 attribution_ignores_expansion];
    v10 = v141;
    *v141 = swift_getKeyPath();
    v141[9] = 0;
    swift_unknownObjectWeakInit();
    v13 = type metadata accessor for SummaryItemExpandableView(0);
    a2 = &v141[*(v13 + 20)];
    if (qword_28157E670 != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_72;
  }

  v10 = v9;
  v11 = MEMORY[0x277D84F90];
  *v199 = MEMORY[0x277D84F90];
  v12 = sub_26A73670C();
  v13 = 0;
  v14 = v10 & 0xC000000000000001;
  v234 = v10 & 0xFFFFFFFFFFFFFF8;
  v137 = v10 & 0xC000000000000001;
  v139 = v12;
  while (1)
  {
    if (v12 == v13)
    {

      goto LABEL_53;
    }

    if (v14)
    {
      v15 = MEMORY[0x26D6644E0](v13, v10);
    }

    else
    {
      if (v13 >= *(v234 + 16))
      {
        goto LABEL_93;
      }

      v15 = *(v10 + 8 * v13 + 32);
    }

    a2 = v15;
    v16 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      break;
    }

    sub_26A7624FC(__dst);
    if (v4)
    {

      v4 = 0;
      ++v13;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v18 = sub_26A4EC1C4(v143, &selRef_referencedCommands, &qword_2803AB078, 0x277D4C2A8);
      if (!v18)
      {
        v21 = 0;
        goto LABEL_46;
      }

      v19 = v18;
      v135 = KeyPath;
      v166 = [a2 command_reference];
      v159 = sub_26A73670C();
      v13 = 0;
      v152 = v19 & 0xFFFFFFFFFFFFFF8;
      v154 = v19 & 0xC000000000000001;
      v148 = v19;
      for (i = v10; ; v10 = i)
      {
        if (v159 == v13)
        {

          v21 = 0;
          goto LABEL_45;
        }

        if (v154)
        {
          v20 = MEMORY[0x26D6644E0](v13, v19);
        }

        else
        {
          if (v13 >= *(v152 + 16))
          {
            goto LABEL_95;
          }

          v20 = *(v19 + 8 * v13 + 32);
        }

        v21 = v20;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_94;
        }

        v22 = [v20 commandReference];
        if (v22)
        {
          v23 = sub_26A4EC238(v22);
          v25 = v24;
          if (!v166)
          {
            v19 = v148;
            if (!v24)
            {
              goto LABEL_43;
            }

            goto LABEL_36;
          }

          v26 = v23;
        }

        else
        {
          if (!v166)
          {
            goto LABEL_43;
          }

          v25 = 0;
          v26 = 0;
        }

        v27 = sub_26A758F24(v166);
        if (!v25)
        {
          v19 = v148;
          if (!v28)
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        if (v28)
        {
          break;
        }

        v19 = v148;
LABEL_36:

LABEL_37:
        ++v13;
      }

      if (v26 == v27 && v25 == v28)
      {

        goto LABEL_44;
      }

      v30 = sub_26A852598();

      if ((v30 & 1) == 0)
      {

        v19 = v148;
        goto LABEL_37;
      }

LABEL_43:

LABEL_44:

      v10 = i;
LABEL_45:
      KeyPath = v135;
LABEL_46:
      sub_26A4EC2A8(__dst, v231);
      v231[6] = KeyPath;
      v231[7] = v21;
      sub_26A4EA070(v231, __dst, &qword_2803AB048, &qword_26A857CA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB048, &qword_26A857CA8);
      sub_26A4EC304();
      sub_26A851248();

      v31 = sub_26A4E2544(v231, &qword_2803AB048, &qword_26A857CA8);
      MEMORY[0x26D663CE0](v31);
      if (*(*v199 + 16) >= *(*v199 + 24) >> 1)
      {
        sub_26A851B08();
      }

      a2 = v199;
      sub_26A851B28();
      v11 = *v199;
      v13 = v16;
      v14 = v137;
      v12 = v139;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  swift_once();
LABEL_72:
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  v49 = __swift_project_value_buffer(v48, qword_281588798);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v51 = &a2[*(v50 + 32)];
  sub_26A4EA070(v49, v51, &qword_2803B3890, &unk_26A856670);
  sub_26A6AEE74(__src);
  memcpy(a2, __src, 0xBFuLL);
  sub_26A4DB4E0(&v51[*(v48 + 36)], &a2[*(v50 + 28)]);
  v52 = (v10 + *(v13 + 24));
  if (qword_2803A8C48 != -1)
  {
    swift_once();
  }

  *v201 = xmmword_2803D1DE8;
  v202 = unk_2803D1DF8;
  *v203 = xmmword_2803D1E08;
  v204 = unk_2803D1E18;
  *v205 = xmmword_2803D1DE8;
  v206 = unk_2803D1DF8;
  *v207 = xmmword_2803D1E08;
  v208 = unk_2803D1E18;
  *v155 = unk_2803D1E18;
  v160 = xmmword_2803D1E08;
  sub_26A4EA070(v201, __dst, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v209);
  memcpy(v52, v209, 0xC0uLL);
  v52[12] = v160;
  v52[13] = *v155;
  v53 = v208;
  v52[16] = *v207;
  v52[17] = v53;
  v54 = v206;
  v52[14] = *v205;
  v52[15] = v54;
  v55 = (v10 + *(v13 + 28));
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  *v210 = xmmword_281588758;
  v211 = unk_281588768;
  *v212 = xmmword_281588778;
  v213 = xmmword_281588788;
  *v214 = xmmword_281588758;
  *v215 = unk_281588768;
  v216 = xmmword_281588778;
  *v217 = xmmword_281588788;
  *v156 = xmmword_281588788;
  v161 = xmmword_281588778;
  sub_26A4EA070(v210, __dst, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v218);
  memcpy(v55, v218, 0xC0uLL);
  v55[12] = v161;
  v55[13] = *v156;
  v56 = *v215;
  v55[14] = *v214;
  v55[15] = v56;
  v57 = *v217;
  v55[16] = v216;
  v55[17] = v57;
  v58 = *(v13 + 32);
  sub_26A6AEE74(v233);
  memcpy((v10 + v58), v233, 0xBFuLL);
  v59 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v59);
  v60 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v60);
  v61 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v61);
  v62 = *(v13 + 48);
  *(v10 + v62) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v63 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v63);
  v64 = v10 + *(v13 + 56);
  v199[0] = 0;
  sub_26A851048();
  v65 = __dst[1];
  *v64 = __dst[0];
  *(v64 + 8) = v65;
  v66 = memcpy(__dst, v231, 0xFAuLL);
  OUTLINED_FUNCTION_2_4(v66, v67, v68, v69, v70, v71, v72, v73, v133, v135, v137, v139, v141, v143, v145, v148, i, v152, v156[0], v156[1], v161, *(&v161 + 1), v164, v166, v169[0], v169[1], v169[2], v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *v199);
  sub_26A4EC458(__dst, v169);
  sub_26A4EC4B4();
  *(v10 + *(v13 + 60)) = sub_26A851248();
  sub_26A4EA070(v228, v199, &qword_2803A91B8, &qword_26A8575C0);
  if (v200)
  {
    __swift_project_boxed_opaque_existential_1(v199, v200);
    v74 = OUTLINED_FUNCTION_0_7();
    v76 = v75(v74);
    OUTLINED_FUNCTION_5_2(v76, v77, v78, v79, v80, v81, v82, v83, v134, v136, v138, v140, v142, v144, v146, v149, v151, v153, v157, v158, v162, v163, v165, v167, v169[0], v169[1], v169[2], v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
  }

  else
  {
    sub_26A4E2544(v199, &qword_2803A91B8, &qword_26A8575C0);
    v64 = 0;
  }

  *(v10 + *(v13 + 64)) = v64;
  sub_26A4EA070(v225, v199, &qword_2803A91B8, &qword_26A8575C0);
  if (v200)
  {
    __swift_project_boxed_opaque_existential_1(v199, v200);
    v84 = OUTLINED_FUNCTION_0_7();
    v86 = v85(v84);
    OUTLINED_FUNCTION_5_2(v86, v87, v88, v89, v90, v91, v92, v93, v134, v136, v138, v140, v142, v144, v146, v149, v151, v153, v157, v158, v162, v163, v165, v167, v169[0], v169[1], v169[2], v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
  }

  else
  {
    sub_26A4E2544(v199, &qword_2803A91B8, &qword_26A8575C0);
    v64 = 0;
  }

  *(v10 + *(v13 + 68)) = v64;
  sub_26A4EA070(v224, v199, &qword_2803A91B8, &qword_26A8575C0);
  if (v200)
  {
    __swift_project_boxed_opaque_existential_1(v199, v200);
    v94 = OUTLINED_FUNCTION_0_7();
    v96 = v95(v94);
    OUTLINED_FUNCTION_5_2(v96, v97, v98, v99, v100, v101, v102, v103, v134, v136, v138, v140, v142, v144, v146, v149, v151, v153, v157, v158, v162, v163, v165, v167, v169[0], v169[1], v169[2], v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
  }

  else
  {
    sub_26A4E2544(v199, &qword_2803A91B8, &qword_26A8575C0);
    v64 = 0;
  }

  *(v10 + *(v13 + 72)) = v64;
  sub_26A4EA070(v221, v199, &qword_2803A91B8, &qword_26A8575C0);
  if (v200)
  {
    __swift_project_boxed_opaque_existential_1(v199, v200);
    v104 = OUTLINED_FUNCTION_0_7();
    v106 = v105(v104);
    OUTLINED_FUNCTION_5_2(v106, v107, v108, v109, v110, v111, v112, v113, v134, v136, v138, v140, v142, v144, v146, v149, v151, v153, v157, v158, v162, v163, v165, v167, v169[0], v169[1], v169[2], v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
  }

  else
  {
    sub_26A4E2544(v199, &qword_2803A91B8, &qword_26A8575C0);
    v64 = 0;
  }

  *(v10 + *(v13 + 76)) = v64;
  v114 = sub_26A4EA070(v220, v169, &qword_2803A91B8, &qword_26A8575C0);
  if (v170)
  {
    __swift_project_boxed_opaque_existential_1(v169, v170);
    v122 = OUTLINED_FUNCTION_0_7();
    v124 = v123(v122);

    OUTLINED_FUNCTION_2_4(v125, v126, v127, v128, v129, v130, v131, v132, v134, v136, v138, v140, v142, v144, v146, v149, v151, v153, v157, v158, v162, v163, v165, v167, v169[0], v169[1], v169[2], v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *v199);
    sub_26A4EC508(v199);
    OUTLINED_FUNCTION_3_2(v220);
    OUTLINED_FUNCTION_3_2(v221);
    OUTLINED_FUNCTION_3_2(v224);
    OUTLINED_FUNCTION_3_2(v225);
    OUTLINED_FUNCTION_3_2(v228);
    result = __swift_destroy_boxed_opaque_existential_1(v169);
  }

  else
  {
    OUTLINED_FUNCTION_2_4(v114, v115, v116, v117, v118, v119, v120, v121, v134, v136, v138, v140, v142, v144, v146, v149, v151, v153, v157, v158, v162, v163, v165, v167, v169[0], v169[1], v169[2], 0, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *v199);
    sub_26A4EC508(v199);

    OUTLINED_FUNCTION_1_5(v220);
    OUTLINED_FUNCTION_1_5(v221);
    OUTLINED_FUNCTION_1_5(v224);
    OUTLINED_FUNCTION_1_5(v225);
    OUTLINED_FUNCTION_1_5(v228);
    result = OUTLINED_FUNCTION_1_5(v169);
    v124 = 0;
  }

  *(v10 + *(v13 + 80)) = v124;
  *(v10 + *(v13 + 84)) = v168;
  *(v10 + *(v13 + 88)) = 0;
  return result;
}

unint64_t sub_26A4EC16C()
{
  result = qword_2803AB040;
  if (!qword_2803AB040)
  {
    type metadata accessor for SummaryItemExpandableView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB040);
  }

  return result;
}

uint64_t sub_26A4EC1C4(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_26A4EC5B0(0, a3, a4);
  v8 = sub_26A851A98();

  return v8;
}

uint64_t sub_26A4EC238(void *a1)
{
  v2 = [a1 referenceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

unint64_t sub_26A4EC304()
{
  result = qword_2803AB050;
  if (!qword_2803AB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB048, &qword_26A857CA8);
    sub_26A4EC390();
    sub_26A4EC3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB050);
  }

  return result;
}

unint64_t sub_26A4EC390()
{
  result = qword_2803AB058;
  if (!qword_2803AB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB058);
  }

  return result;
}

unint64_t sub_26A4EC3E4()
{
  result = qword_2803AB060;
  if (!qword_2803AB060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB068, &qword_26A857CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB060);
  }

  return result;
}

uint64_t sub_26A4EC448(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26A4EC4B4()
{
  result = qword_28157F800;
  if (!qword_28157F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F800);
  }

  return result;
}

unint64_t sub_26A4EC55C()
{
  result = qword_2803AB070;
  if (!qword_2803AB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB070);
  }

  return result;
}

uint64_t sub_26A4EC5B0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

void *OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x6D8], 0xFAuLL);
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

double sub_26A4EC66C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  OUTLINED_FUNCTION_55(v8, &dword_26A48D000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v4 + 8))(v1, v2);
  return v12;
}

uint64_t sub_26A4EC78C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v4 + 8))(v1, v2);
    return v12;
  }

  return v6;
}

uint64_t KeyValueStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD20, &qword_26A857DC0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  *v6 = sub_26A84FBF8();
  *(v6 + 1) = 0x4014000000000000;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB088, &qword_26A857DC8);
  sub_26A4ECAA0(v1);
  type metadata accessor for KeyValueStandardView(0);
  v7 = sub_26A84C108();
  sub_26A4DC2C4(v7, v8);

  sub_26A4DBD10(v6, &qword_2803AAD20, &qword_26A857DC0);
  if (qword_2803A8CB8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SeparatorsConfig(0);
  __swift_project_value_buffer(v9, qword_2803D1E50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB090, &qword_26A857DD0) + 36);
  sub_26A4EEE08();
  __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v9);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB098, &qword_26A857DD8) + 36)) = 62;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB0A0, &qword_26A857E30);
  v14 = a1 + *(result + 36);
  *v14 = KeyPath;
  *(v14 + 8) = 0;
  *(v14 + 16) = v12;
  *(v14 + 24) = 256;
  return result;
}

uint64_t sub_26A4ECAA0(uint64_t a1)
{
  v1 = type metadata accessor for KeyValueStandardView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = *(sub_26A84C148() + 16);

  v8[0] = 0;
  v8[1] = v4;
  swift_getKeyPath();
  sub_26A4EEE08();
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_26A4EEE60(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110, &unk_26A872FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB118, &qword_26A857F00);
  sub_26A4EEF40();
  sub_26A4DBCC8(&qword_2803AB130, &qword_2803AB118, &qword_26A857F00, MEMORY[0x277CE1138]);
  return sub_26A8512F8();
}

uint64_t type metadata accessor for KeyValueStandardView(uint64_t a1)
{
  result = qword_2803AB0B8;
  if (!qword_2803AB0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A4ECCC4@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *a3 = sub_26A84FA58();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB138, &qword_26A857F08);
  return sub_26A4ECD2C(v4, a3 + *(v5 + 44));
}

uint64_t sub_26A4ECD2C@<X0>(unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB140, &qword_26A857F10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB148, &qword_26A857F18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_26A84B888();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26A84C138();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v45 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB150, &qword_26A857F20);
  MEMORY[0x28223BE20](v50);
  v46 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v49 = *(type metadata accessor for KeyValueStandardView(0) + 24);
  v25 = sub_26A84C148();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v25 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v43 = v6;
  v41 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = *(v16 + 72) * a2;
  v27 = *(v16 + 16);
  v44 = a2;
  v40 = v26;
  v42 = v27;
  v27(v20, v25 + v41 + v26, v15);

  sub_26A84C118();
  v39 = *(v16 + 8);
  v39(v20, v15);
  *v11 = sub_26A84FA78();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB158, &qword_26A857F28);
  sub_26A4ED638(v14, &v11[*(v28 + 44)]);
  sub_26A4EC66C();
  sub_26A851448();
  while (1)
  {
    sub_26A84F628();
    sub_26A4EF020();
    memcpy(&v24[*(v50 + 36)], __src, 0x70uLL);
    (*(v51 + 8))(v14, v52);
    v29 = sub_26A84C148();
    if (*(v29 + 16) > v44)
    {
      break;
    }

LABEL_8:
    __break(1u);
    v38 = sub_26A851EA8();
    v37 = sub_26A8501F8();
    sub_26A84EA78();
  }

  v30 = v45;
  v42(v45, v29 + v41 + v40, v15);

  v31 = sub_26A84C128();
  v39(v30, v15);
  v32 = v47;
  sub_26A4ED37C(v31, v47);

  v33 = v46;
  sub_26A4EF6D0();
  v34 = v43;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB160, &qword_26A857F30);
  sub_26A4EF6D0();
  sub_26A4DBD10(v32, &qword_2803AB140, &qword_26A857F10);
  sub_26A4DBD10(v24, &qword_2803AB150, &qword_26A857F20);
  sub_26A4DBD10(v34, &qword_2803AB140, &qword_26A857F10);
  return sub_26A4DBD10(v33, &qword_2803AB150, &qword_26A857F20);
}

void *sub_26A4ED37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB168, &qword_26A857F38);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = __src - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = __src - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB170, &qword_26A857F40);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  v15 = __src - v14;
  *v15 = sub_26A84FA78();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB178, &qword_26A857F48) + 44)];
  *v11 = sub_26A84FC08();
  *(v11 + 1) = 0;
  v11[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB180, &qword_26A857F50);
  sub_26A4ED960(a1, v2);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB188, &qword_26A857F58) + 48)];
  *v17 = 0;
  v17[8] = 1;
  sub_26A4DBD10(v11, &qword_2803AB168, &qword_26A857F38);
  sub_26A4DBD10(v8, &qword_2803AB168, &qword_26A857F38);
  sub_26A4EC66C();
  sub_26A851448();
  OUTLINED_FUNCTION_7_4();
  sub_26A84F628();
  sub_26A4EF020();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB140, &qword_26A857F10);
  return memcpy((a2 + *(v18 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A4ED638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB210, &qword_26A857FD8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_26A84B888();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = type metadata accessor for TextPropertyView(0);
  v13 = &v10[v12[5]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v12[6];
  *&v10[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v15 = &v10[v12[7]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v10[v12[8]];
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 3) = swift_getKeyPath();
  v16[32] = 0;
  v17 = type metadata accessor for ActionHandler(0);
  v18 = v17[6];
  *&v16[v18] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v19 = &v16[v17[7]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = &v16[v17[8]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v16[v17[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v16[v17[10]];
  *v22 = swift_getKeyPath();
  v22[9] = 0;
  swift_unknownObjectWeakInit();
  v23 = v17[11];
  v24 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v16[v23], 1, 1, v24);
  sub_26A4DBD10(&v16[v23], &qword_2803B3910, &qword_26A855580);
  __swift_storeEnumTagSinglePayload(&v16[v23], 1, 1, v24);
  *&v10[*(v5 + 44)] = sub_26A84FED8();
  sub_26A4EF6D0();
  *a2 = 0;
  *(a2 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB218, &unk_26A858130);
  sub_26A4EF6D0();
  sub_26A4DBD10(v10, &qword_2803AB210, &qword_26A857FD8);
  return sub_26A4DBD10(v7, &qword_2803AB210, &qword_26A857FD8);
}

uint64_t sub_26A4ED960(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for KeyValueStandardView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(a1 + 16);
  v10[0] = 0;
  v10[1] = v6;
  swift_getKeyPath();
  sub_26A4EEE08();
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_26A4EEE60(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110, &unk_26A872FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB190, &qword_26A857F60);
  sub_26A4EEF40();
  sub_26A4EF11C();
  return sub_26A8512F8();
}

void sub_26A4EDB18(unint64_t *result@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(a3 + 16))
  {
    v7 = *(sub_26A84B888() - 8);
    sub_26A4EDBC8(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, x8_0);
    return;
  }

  __break(1u);
}

double sub_26A4EDBC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KeyValueStandardView(0);
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = *(v12 + 16);
  v17(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v16);
  TextPropertyView.init(_:)(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (v17)(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  sub_26A4EEE08();
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = (v14 + *(v28 + 80) + v18) & ~*(v28 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v18, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_26A4EEE60(v9, v20 + v19);
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26A4EF390;
  *(v22 + 24) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26A4EF584;
  *(v23 + 24) = v22;
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB1B8, &qword_26A857F70) + 36));
  *v24 = KeyPath;
  v24[1] = sub_26A4EF5B0;
  v24[2] = v23;
  LODWORD(KeyPath) = sub_26A84FEA8();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB1A8, &qword_26A857F68) + 36)) = KeyPath;
  sub_26A851458();
  OUTLINED_FUNCTION_7_4();
  sub_26A84F028();
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB190, &qword_26A857F60) + 36));
  v26 = v30;
  *v25 = v29;
  v25[1] = v26;
  result = *&v31;
  v25[2] = v31;
  return result;
}

__n128 sub_26A4EDEB8@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X8>)
{
  *(&v67 + 1) = a2;
  v68 = a4;
  v65 = a6;
  v66 = a3;
  *&v67 = a1;
  v69 = a7;
  v8 = sub_26A84B058();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0, &unk_26A857FC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v59 - v13;
  v63 = sub_26A84E278();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = sub_26A84BAB8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a5;
  sub_26A84B868();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_26A4DBD10(v21, &qword_2803B3800, &unk_26A856760);
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    v26 = sub_26A4EC78C();
    VRXIdiom.idiom.getter(v26, v11);
    sub_26A84BAA8();
    (*(v9 + 8))(v11, v8);
    v27 = v63;
    if (__swift_getEnumTagSinglePayload(v14, 1, v63) == 1)
    {
      (*(v23 + 8))(v25, v22);
      sub_26A4DBD10(v14, &qword_2803B38C0, &unk_26A857FC0);
    }

    else
    {
      v60 = v23;
      v28 = v62;
      v29 = v61;
      (*(v62 + 32))(v61, v14, v27);
      if (sub_26A84E258())
      {
        v30 = sub_26A4EE644(0x2E6E6F7276656863, 0xEF64726177726F66);
        v32 = v31;
        v34 = v33;
        v35 = sub_26A8506F8();
        v37 = v36;
        v39 = v38;
        v41 = v40;
        sub_26A4EC448(v30, v32, v34 & 1);

        v70.n128_u64[0] = v35;
        v70.n128_u64[1] = v37;
        v71.n128_u64[0] = v39 & 1;
        v71.n128_u64[1] = v41;
        LOBYTE(v72) = 0;
        sub_26A4EF6C0(v35, v37, v39 & 1);

        sub_26A84FDF8();
        v70 = v73;
        v71 = v74;
        v72 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB200, &qword_26A878770);
        sub_26A4EF644();
        sub_26A84FDF8();
        sub_26A4EC448(v35, v37, v39 & 1);

        (*(v62 + 8))(v61, v63);
        (*(v60 + 8))(v25, v22);
        goto LABEL_11;
      }

      (*(v28 + 8))(v29, v27);
      (*(v60 + 8))(v25, v22);
    }
  }

  sub_26A84B868();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v22);
  sub_26A4DBD10(v18, &qword_2803B3800, &unk_26A856760);
  if (EnumTagSinglePayload == 1)
  {
    v70 = v67;
    v71.n128_u64[0] = v66 & 1;
    v71.n128_u64[1] = v68;
    v72 = 256;
    sub_26A4EF6C0(v67, *(&v67 + 1), v66 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB200, &qword_26A878770);
    sub_26A4EF644();
    sub_26A84FDF8();
  }

  else
  {
    v43 = sub_26A4EE644(0xD00000000000001ALL, 0x800000026A88AF90);
    v45 = v44;
    v47 = v46;
    v48 = sub_26A8506F8();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_26A4EC448(v43, v45, v47 & 1);

    v70.n128_u64[0] = v48;
    v70.n128_u64[1] = v50;
    v71.n128_u64[0] = v52 & 1;
    v71.n128_u64[1] = v54;
    LOBYTE(v72) = 1;
    sub_26A4EF6C0(v48, v50, v52 & 1);

    sub_26A84FDF8();
    v70 = v73;
    v71 = v74;
    v72 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB200, &qword_26A878770);
    sub_26A4EF644();
    sub_26A84FDF8();
    sub_26A4EC448(v48, v50, v52 & 1);
  }

LABEL_11:
  result = v74;
  v56 = v75;
  v57 = v76;
  v58 = v69;
  *v69 = v73;
  v58[1] = result;
  v58[2].n128_u8[0] = v56;
  v58[2].n128_u8[1] = v57;
  return result;
}

uint64_t sub_26A4EE644(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v9 - v4;
  v9[4] = 0;
  v9[5] = 0xE000000000000000;
  MEMORY[0x26D663B00](32, 0xE100000000000000, v3);

  v9[3] = sub_26A850F08();
  sub_26A8523D8();

  sub_26A850398();
  v6 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_26A8503E8();
  sub_26A4DBD10(v5, &qword_2803AB208, &qword_26A857FD0);
  v7 = sub_26A850738();

  return v7;
}

uint64_t sub_26A4EE7D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *__return_ptr, void *))
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3;
  v9 = a4;
  a5(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB1E8, &unk_26A857FB0);
  sub_26A4EF5B8();
  return sub_26A851248();
}

uint64_t sub_26A4EE844(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *__return_ptr, void *))
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3;
  v9 = a4;
  a5(v6, v7);
  return sub_26A851248();
}

uint64_t sub_26A4EE904(uint64_t a1)
{
  result = sub_26A4EF348(&qword_2803AB0B0, MEMORY[0x277D63268], MEMORY[0x277D63260]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4EE984(uint64_t a1)
{
  sub_26A4EEA20();
  if (v1 <= 0x3F)
  {
    sub_26A4EEA70(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      sub_26A84C168();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A4EEA20()
{
  if (!qword_2803AB0C8)
  {
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AB0C8);
    }
  }
}

void sub_26A4EEA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2803A9218)
  {
    type metadata accessor for VRXIdiom(255, a2, a3, a4);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, &qword_2803A9218);
    }
  }
}

unint64_t sub_26A4EEAC8()
{
  result = qword_2803AB0D0;
  if (!qword_2803AB0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB0A0, &qword_26A857E30);
    sub_26A4EEB54();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0D0);
  }

  return result;
}

unint64_t sub_26A4EEB54()
{
  result = qword_2803AB0D8;
  if (!qword_2803AB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB098, &qword_26A857DD8);
    sub_26A4EEBE0();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0D8);
  }

  return result;
}

unint64_t sub_26A4EEBE0()
{
  result = qword_2803AB0E0;
  if (!qword_2803AB0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB090, &qword_26A857DD0);
    sub_26A4EEC98();
    sub_26A4DBCC8(&qword_2803AB100, &qword_2803AB108, &unk_26A857ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0E0);
  }

  return result;
}

unint64_t sub_26A4EEC98()
{
  result = qword_2803AB0E8;
  if (!qword_2803AB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD28, &unk_26A856E20);
    sub_26A4EED50();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0E8);
  }

  return result;
}

unint64_t sub_26A4EED50()
{
  result = qword_2803AB0F0;
  if (!qword_2803AB0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD18, &unk_26A856E10);
    sub_26A4DBCC8(&qword_2803AB0F8, &qword_2803AAD20, &qword_26A857DC0, MEMORY[0x277CE1198]);
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB0F0);
  }

  return result;
}

uint64_t sub_26A4EEE08()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A4EEE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyValueStandardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4EEEC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KeyValueStandardView(0);
  OUTLINED_FUNCTION_79(v4);

  return sub_26A4ECCC4(a1, a2);
}

unint64_t sub_26A4EEF40()
{
  result = qword_2803AB120;
  if (!qword_2803AB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB110, &unk_26A872FA0);
    sub_26A4EEFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB120);
  }

  return result;
}

unint64_t sub_26A4EEFCC()
{
  result = qword_2803AB128;
  if (!qword_2803AB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB128);
  }

  return result;
}

uint64_t sub_26A4EF020()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_46();
  (*(v4 + 32))(v0, v1);
  return v0;
}

void sub_26A4EF078(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for KeyValueStandardView(0);
  OUTLINED_FUNCTION_2_5(v5);
  v8 = *(v2 + ((*(v7 + 64) + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26A4EDB18(a1, v8, a2);
}

unint64_t sub_26A4EF11C()
{
  result = qword_2803AB198;
  if (!qword_2803AB198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB190, &qword_26A857F60);
    sub_26A4EF1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB198);
  }

  return result;
}

unint64_t sub_26A4EF1A8()
{
  result = qword_2803AB1A0;
  if (!qword_2803AB1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB1A8, &qword_26A857F68);
    sub_26A4EF260();
    sub_26A4DBCC8(&qword_2803AB1D8, &qword_2803AB1E0, &qword_26A857F80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1A0);
  }

  return result;
}

unint64_t sub_26A4EF260()
{
  result = qword_2803AB1B0;
  if (!qword_2803AB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB1B8, &qword_26A857F70);
    sub_26A4EF348(&qword_2803AB1C0, type metadata accessor for TextPropertyView, &protocol conformance descriptor for TextPropertyView);
    sub_26A4DBCC8(&qword_2803AB1C8, &qword_2803AB1D0, &qword_26A857F78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1B0);
  }

  return result;
}

uint64_t sub_26A4EF348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_26A4EF390@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v11 = sub_26A84B888();
  OUTLINED_FUNCTION_2_5(v11);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = *(v14 + 64);
  v16 = type metadata accessor for KeyValueStandardView(0);
  OUTLINED_FUNCTION_79(v16);
  v18 = v5 + ((v13 + v15 + *(v17 + 80)) & ~*(v17 + 80));

  *&result = sub_26A4EDEB8(a1, a2, a3 & 1, a4, v5 + v13, v18, a5).n128_u64[0];
  return result;
}

uint64_t sub_26A4EF490(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26A4C2304(*a1, v2);
  return sub_26A7D1194(v1, v2);
}

double sub_26A4EF4D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  a4(v10, a1, a2, a3 & 1);
  v6 = v11;
  v7 = v12;
  result = *v10;
  v9 = v10[1];
  *a5 = v10[0];
  *(a5 + 16) = v9;
  *(a5 + 32) = v6;
  *(a5 + 33) = v7;
  return result;
}

double sub_26A4EF528@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  sub_26A4EF4D4(*a1, *(a1 + 8), *(a1 + 16), a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

unint64_t sub_26A4EF5B8()
{
  result = qword_2803AB1F0;
  if (!qword_2803AB1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB1E8, &unk_26A857FB0);
    sub_26A4EF644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1F0);
  }

  return result;
}

unint64_t sub_26A4EF644()
{
  result = qword_2803AB1F8;
  if (!qword_2803AB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB200, &qword_26A878770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB1F8);
  }

  return result;
}

uint64_t sub_26A4EF6C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26A4EF6D0()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_46();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A4EF778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ControlSwitchView(0);
  sub_26A4DBD68(v1 + *(v10 + 32), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A4EF960()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ControlSwitchView(0) + 36);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A4EFAB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ControlSwitchView(0);
  sub_26A4DBD68(v1 + *(v10 + 40), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ControlSwitchView.init(isOn:text1:text2:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = type metadata accessor for ControlSwitchView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v16 = *(v15 + 32);
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v17 = v14 + v10[9];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10[10];
  *(v14 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A84E228();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = type metadata accessor for SwitchView(0);
  v24 = v14 + v23[5];
  v25 = v14 + v23[6];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v14 + v23[7];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = swift_getKeyPath();
  *(v26 + 32) = 0;
  v27 = type metadata accessor for ActionHandler(0);
  v28 = v27[6];
  *(v26 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v29 = v26 + v27[7];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_144(KeyPath);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v32);
  v33 = v27[11];
  v34 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  sub_26A4DBD10(v26 + v33, &qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  v41 = v14 + v23[8];
  v58 = 0;
  sub_26A851048();
  v42 = v56[1];
  *v41 = v56[0];
  *(v41 + 8) = v42;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v43 = OUTLINED_FUNCTION_3_3();
  *(v14 + v10[5]) = v44(v43);
  sub_26A4DBD68(a5, v56, &qword_2803A91B8, &qword_26A8575C0);
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v45 = OUTLINED_FUNCTION_3_3();
    v47 = v46(v45);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_26A4DBD10(v56, &qword_2803A91B8, &qword_26A8575C0);
    v47 = 0;
  }

  *(v14 + v10[6]) = v47;
  sub_26A4DBD68(a6, v56, &qword_2803A91B8, &qword_26A8575C0);
  if (v57)
  {
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v48 = OUTLINED_FUNCTION_3_3();
    v50 = v49(v48);
    sub_26A4DBD10(a6, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a5, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_26A4DBD10(a6, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a5, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v56, &qword_2803A91B8, &qword_26A8575C0);
    v50 = 0;
  }

  *(v14 + v10[7]) = v50;
  sub_26A4F1A70(v14, a7);
  return __swift_destroy_boxed_opaque_existential_1(a4);
}

uint64_t type metadata accessor for ControlSwitchView(uint64_t a1)
{
  result = qword_2803AB2A8;
  if (!qword_2803AB2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A4F0154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v64 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v61 = &v60 - v8;
  sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  v14 = sub_26A84E228();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for ControlSwitchView(0);
  v22 = v21[8];
  *(a2 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v23 = a2 + v21[9];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v21[10];
  *(a2 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A84B978();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v14);
  v28 = type metadata accessor for SwitchView(0);
  v29 = a2 + v28[5];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_144(KeyPath);
  v31 = a2 + v28[7];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = swift_getKeyPath();
  *(v31 + 32) = 0;
  v32 = type metadata accessor for ActionHandler(0);
  v33 = v32[6];
  *(v31 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v34 = v31 + v32[7];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v37);
  v38 = v32[11];
  v39 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  sub_26A4DBD10(v31 + v38, &qword_2803B3910, &qword_26A855580);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  v46 = a2 + v28[8];
  v65 = 0;
  sub_26A851048();
  sub_26A4DBD10(a2, &qword_2803AAD90, &qword_26A8570A0);
  (*(v16 + 16))(a2, v20, v14);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
  v65 = sub_26A84E1F8() & 1;
  v47 = v61;
  sub_26A851048();
  (*(v16 + 8))(v20, v14);
  v48 = v62;

  v49 = v67;
  *v46 = v66;
  *(v46 + 8) = v49;
  v50 = v60;
  sub_26A84B948();
  v51 = TextProperty.asAnyView()();
  v52 = *(v63 + 8);
  v52(v13, v48);
  *(a2 + v21[5]) = v51;
  sub_26A84B958();
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
  {
    sub_26A4DBD10(v47, &qword_2803AA838, &unk_26A856770);
    v53 = 0;
  }

  else
  {
    v53 = TextProperty.asAnyView()();
    v52(v47, v48);
  }

  *(a2 + v21[6]) = v53;
  v54 = v64;
  sub_26A84B988();
  v55 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
  {
    sub_26A84B998();
    OUTLINED_FUNCTION_46();
    (*(v56 + 8))(v50);
    result = sub_26A4DBD10(v54, &qword_2803AAD50, &unk_26A857890);
    v58 = 0;
  }

  else
  {
    v58 = VisualProperty.asAnyView()();
    sub_26A84B998();
    OUTLINED_FUNCTION_46();
    (*(v59 + 8))(v50);
    result = (*(*(v55 - 8) + 8))(v54, v55);
  }

  *(a2 + v21[7]) = v58;
  return result;
}

uint64_t ControlSwitchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A4EF778(&v17[-v9]);
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  sub_26A4EF960();
  sub_26A4EFAB4(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4C512C();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB270, &unk_26A8582F0) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB278, &qword_26A858328);
  *(a1 + *(result + 36)) = 30;
  return result;
}

uint64_t sub_26A4F09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2D0, &qword_26A8583D8);
  return sub_26A4F0A14(a1, a2 + *(v4 + 44));
}

uint64_t sub_26A4F0A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2D8, &unk_26A8583E0);
  MEMORY[0x28223BE20](v56);
  v60 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &KeyPath - v5;
  v6 = sub_26A84B1D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  MEMORY[0x28223BE20](v10);
  v12 = (&KeyPath - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
  MEMORY[0x28223BE20](v13);
  v15 = &KeyPath - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E8, &qword_26A8583F8);
  MEMORY[0x28223BE20](v16 - 8);
  v57 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &KeyPath - v19;
  MEMORY[0x28223BE20](v21);
  v61 = &KeyPath - v22;
  v23 = *(type metadata accessor for ControlSwitchView(0) + 28);
  v55 = a1;
  v24 = *(a1 + v23);
  if (v24)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D62B28], v6);
    KeyPath = swift_getKeyPath();
    v25 = (v12 + *(v10 + 36));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40);
    v54 = v13;
    v27 = v24;
    v28 = v6;
    v29 = *(v26 + 28);
    (*(v7 + 32))(v25 + v29, v9, v28);
    __swift_storeEnumTagSinglePayload(v25 + v29, 0, 1, v28);
    *v25 = KeyPath;
    *v12 = v27;
    v30 = swift_getKeyPath();
    sub_26A4DBDB4(v12, v15, &qword_2803AAFA0, &unk_26A85D4D0);
    v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308, &qword_26A8584C0) + 36)];
    *v31 = v30;
    v31[8] = 1;
    v32 = swift_getKeyPath();
    v33 = &v15[*(v54 + 36)];
    *v33 = v32;
    v33[8] = 0;
    v34 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    sub_26A4DBDB4(v15, v20, &qword_2803AB2E0, &qword_26A8583F0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2F0, &qword_26A858400);
    v37 = &v20[*(v36 + 36)];
    *v37 = v34;
    v37[8] = 0;
    *(v37 + 2) = v35;
    *(v37 + 12) = 256;
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v36);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2F0, &qword_26A858400);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v38);
  }

  v39 = v61;
  sub_26A4DBDB4(v20, v61, &qword_2803AB2E8, &qword_26A8583F8);

  v63[0] = sub_26A84FC08();
  v63[1] = 0;
  v64 = 1;
  v40 = v55;
  sub_26A4F10A8(v55, v65);
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v65[74] = v41;
  v66 = 0;
  v67 = v42;
  v68 = 0;
  v69 = 1;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = v58;
  sub_26A4F2068(v40, v58);
  v46 = v57;
  v47 = v45 + *(v56 + 36);
  *v47 = v43;
  *(v47 + 8) = 0;
  *(v47 + 16) = v44;
  *(v47 + 24) = 0;
  sub_26A4DBD68(v39, v46, &qword_2803AB2E8, &qword_26A8583F8);
  sub_26A4DBD68(v63, v62, &qword_2803AB2F8, &qword_26A858458);
  v48 = v60;
  sub_26A4DBD68(v45, v60, &qword_2803AB2D8, &unk_26A8583E0);
  v49 = v59;
  sub_26A4DBD68(v46, v59, &qword_2803AB2E8, &qword_26A8583F8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB300, &qword_26A858460);
  sub_26A4DBD68(v62, v49 + v50[12], &qword_2803AB2F8, &qword_26A858458);
  v51 = v49 + v50[16];
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_26A4DBD68(v48, v49 + v50[20], &qword_2803AB2D8, &unk_26A8583E0);
  sub_26A4DBD10(v45, &qword_2803AB2D8, &unk_26A8583E0);
  sub_26A4DBD10(v63, &qword_2803AB2F8, &qword_26A858458);
  sub_26A4DBD10(v61, &qword_2803AB2E8, &qword_26A8583F8);
  sub_26A4DBD10(v48, &qword_2803AB2D8, &unk_26A8583E0);
  sub_26A4DBD10(v62, &qword_2803AB2F8, &qword_26A858458);
  return sub_26A4DBD10(v46, &qword_2803AB2E8, &qword_26A8583F8);
}

uint64_t sub_26A4F10A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlSwitchView(0);
  v5 = *(a1 + *(v4 + 20));
  if (qword_2803A89D8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(qword_2803AB220, v14, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v13, __src, sizeof(v13));
  v14[11] = 0;
  v14[10] = sub_26A80A810;
  v12 = v5;
  v6 = *(a1 + *(v4 + 24));
  if (v6)
  {
    v7 = qword_2803A9018;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D2760, &v10[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v16);
    memcpy(&v10[1], v16, 0xBFuLL);
    v10[36] = 0;
    v10[35] = sub_26A80A810;
    v10[0] = v6;
  }

  else
  {
    bzero(v10, 0x128uLL);
  }

  memcpy(__dst, v10, sizeof(__dst));
  sub_26A4DBD68(&v12, v10, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(__dst, v9, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD68(v10, a2, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD68(v9, a2 + 296, &qword_2803AA888, &qword_26A857920);

  sub_26A4DBD10(__dst, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(&v12, &qword_2803A99A0, &unk_26A856800);
  sub_26A4DBD10(v9, &qword_2803AA888, &qword_26A857920);
  return sub_26A4DBD10(v10, &qword_2803A99A0, &unk_26A856800);
}

uint64_t ControlSwitch.view.getter()
{
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v54 = v2;
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v53 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = sub_26A84B998();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for ControlSwitchView(0);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD08, &unk_26A856E00);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD10, &unk_26A858330);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  v56 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v52 - v32;
  (*(v14 + 16))(v18, v0, v12, v31);
  v57 = v23;
  sub_26A4F0154(v18, v23);
  v59 = v0;
  sub_26A84B968();
  v34 = v11;
  v35 = v55;
  sub_26A4DBDB4(v34, v8, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v8, 1, v35) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v37 = &v27[*(v24 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400);
    type metadata accessor for ActionType(0);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    *v37 = KeyPath;
  }

  else
  {
    v42 = v53;
    v43 = *(v54 + 32);
    v43(v53, v8, v35);
    v44 = swift_getKeyPath();
    v45 = &v27[*(v24 + 36)];
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v43(v45 + v46, v42, v35);
    v47 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v45 + v46, 0, 1, v47);
    *v45 = v44;
  }

  sub_26A4F1A70(v57, v27);
  v48 = sub_26A84B928();
  sub_26A4DC3AC(v48, v49);

  sub_26A4DBD10(v27, &qword_2803AAD08, &unk_26A856E00);
  sub_26A4DBD68(v33, v56, &qword_2803AAD10, &unk_26A858330);
  sub_26A4F1ADC();
  v50 = sub_26A851248();
  sub_26A4DBD10(v33, &qword_2803AAD10, &unk_26A858330);
  return v50;
}

void sub_26A4F1780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A8502F8();
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0;
  *(inited + 40) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v7 = qword_281588938;
  *(v6 + 32) = qword_281588938;
  v8 = byte_281588940;
  *(v6 + 40) = byte_281588940;
  sub_26A4E324C(v7, v8);
  sub_26A621A9C(v6);
  *(inited + 88) = v9;
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, &v19, &qword_2803AA880, &unk_26A8567F0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v11 = qword_281588938;
  *(v10 + 32) = qword_281588938;
  v12 = byte_281588940;
  *(v10 + 40) = byte_281588940;
  sub_26A4E324C(v11, v12);

  sub_26A58787C(v13);
  sub_26A5075B0();

  if (v16)
  {
    *(inited + 96) = v16;
    *(inited + 112) = v17;
    *(inited + 128) = v18;
  }

  else
  {
    sub_26A4F20CC(&v21 + 8, inited + 96);
  }

  sub_26A4DBD10(&v19, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v14 = sub_26A8516A8();
  v15 = sub_26A8502F8();
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v19 = v15;
  sub_26A80D690(v14);
}

uint64_t sub_26A4F1A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlSwitchView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4F1ADC()
{
  result = qword_2803AB280;
  if (!qword_2803AB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD10, &unk_26A858330);
    sub_26A4F1B94();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB280);
  }

  return result;
}

unint64_t sub_26A4F1B94()
{
  result = qword_2803AB288;
  if (!qword_2803AB288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD00, &unk_26A858340);
    sub_26A4F1C20();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB288);
  }

  return result;
}

unint64_t sub_26A4F1C20()
{
  result = qword_2803AB290;
  if (!qword_2803AB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAD08, &unk_26A856E00);
    sub_26A4F1D7C(&qword_2803AB298, type metadata accessor for ControlSwitchView, &protocol conformance descriptor for ControlSwitchView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB290);
  }

  return result;
}

uint64_t sub_26A4F1D24(uint64_t a1)
{
  result = sub_26A4F1D7C(&qword_2803AB2A0, MEMORY[0x277D62E60], MEMORY[0x277D62E58]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A4F1D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26A4F1DEC(uint64_t a1)
{
  type metadata accessor for SwitchView(319);
  if (v1 <= 0x3F)
  {
    sub_26A4E5E18();
    if (v2 <= 0x3F)
    {
      sub_26A4D27F4(319);
      if (v3 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
        if (v4 <= 0x3F)
        {
          sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A4F1EF8()
{
  result = qword_2803AB2B8;
  if (!qword_2803AB2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB278, &qword_26A858328);
    sub_26A4F1F84();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB2B8);
  }

  return result;
}

unint64_t sub_26A4F1F84()
{
  result = qword_2803AB2C0;
  if (!qword_2803AB2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB270, &unk_26A8582F0);
    sub_26A4DBCC8(&qword_2803AB2C8, &qword_2803AA270, &qword_26A855E28, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB2C0);
  }

  return result;
}

uint64_t sub_26A4F2068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwitchView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4F2140()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  if (*(v0 + 41) != 1)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v8, v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v8;
}

uint64_t sub_26A4F228C@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_26A84FA98();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  memcpy(__dst, (v1 + 80), sizeof(__dst));
  sub_26A4F5680(__dst, v47);
  sub_26A7D1500();
  v43 = v8;
  v9 = sub_26A4F49D4();
  v11 = v10;
  memcpy(v48, (v1 + 80), sizeof(v48));
  v12 = sub_26A7D18DC();
  v42 = sub_26A628634(v9, v11 & 1, v12);
  v14 = v13;
  v16 = v15;
  sub_26A4F56DC(v1, v47);
  v17 = swift_allocObject();
  sub_26A4F5730(v47, v17 + 16);
  v18 = sub_26A851448();
  v20 = v19;
  v50 = v16 & 1;
  sub_26A4F56DC(v1, v47);
  v21 = swift_allocObject();
  sub_26A4F5730(v47, v21 + 16);
  v22 = v50;
  v23 = sub_26A850248();
  sub_26A84ED48();
  v47[216] = 0;
  v46[0] = v43;
  v46[1] = v42;
  v46[2] = v14;
  LOBYTE(v46[3]) = v22;
  v46[4] = sub_26A4F5768;
  v46[5] = v17;
  v46[6] = v18;
  v46[7] = v20;
  v46[8] = 0;
  v46[9] = 0;
  v46[10] = sub_26A4F5800;
  v46[11] = v21;
  LOBYTE(v46[12]) = v23;
  v46[13] = v24;
  v46[14] = v25;
  v46[15] = v26;
  v46[16] = v27;
  LOBYTE(v46[17]) = 0;
  (*(v3 + 104))(v7, *MEMORY[0x277CE00F0], v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3C0, &qword_26A8588E0);
  sub_26A4F60AC(&qword_2803AB3C8, &qword_2803AB3C0, &qword_26A8588E0, sub_26A4F5808);
  sub_26A850A18();
  (*(v3 + 8))(v7, v44);
  memcpy(v47, v46, 0x89uLL);
  sub_26A491A94();
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB428, &qword_26A858910) + 36));
  v29 = type metadata accessor for VibrancyModifier(0);
  v30 = *(v29 + 20);
  *&v28[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v31 = &v28[*(v29 + 24)];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  *v28 = 2;
  LOBYTE(v31) = sub_26A850248();
  sub_26A84ED48();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB438, &qword_26A858978);
  v41 = a1 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_26A4F262C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *a1;
  sub_26A4F56DC(a2, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_26A4F5730(v7, v5 + 24);
  *a3 = sub_26A4F5A58;
  a3[1] = v5;
}

void sub_26A4F26B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a1;
  v79 = sub_26A84F088();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = v7;
  v76 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84FE18();
  MEMORY[0x28223BE20](v8);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26A84FA18();
  v80 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v86 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB440, &unk_26A858980);
  v74 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v81 = v66 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB448, &qword_26A888290);
  MEMORY[0x28223BE20](v85);
  v16 = v66 - v15;
  v17 = sub_26A8507A8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  if (*(a2 + 16))
  {
    v69 = v21;
    v67 = v18;
    v84 = v22;
    v66[1] = v10;
    v24 = v23;
    v68 = v8;
    v25 = v66 - v20;
    sub_26A850828();
    v73 = v13;
    v72 = a4;
    sub_26A850808();
    v82 = sub_26A850818();
    v26 = sub_26A4F2140();
    v28 = v27;
    v71 = v11;
    v29 = *(v18 + 16);
    v30 = v25;
    v29(v16, v25, v24);
    v66[0] = v29;
    v31 = _s15TextLayoutShapeVMa(0);
    v32 = &v16[*(v31 + 20)];
    *v32 = v26;
    v32[8] = v28 & 1;
    v33 = sub_26A850DF8();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB450, &qword_26A858990);
    *&v16[*(v34 + 52)] = v33;
    *&v16[*(v34 + 56)] = 256;
    v35 = sub_26A4F2140();
    v37 = v36;
    v38 = *(v85 + 36);
    v83 = a3;
    v39 = &v16[v38];
    v70 = v25;
    v29(&v16[v38], v25, v24);
    v40 = &v39[*(v31 + 20)];
    *v40 = v35;
    v40[8] = v37 & 1;
    v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB458, &qword_26A858998) + 36)] = 0;
    v41 = v75;
    sub_26A84F068();
    type metadata accessor for CGPoint(0, v42, v43, v44);
    sub_26A84F098();
    v45 = v88;
    v46 = v89;
    sub_26A84FF48();
    sub_26A84FA08();
    v47 = v78;
    v48 = v76;
    v49 = v79;
    (*(v78 + 16))(v76, v41, v79);
    v68 = v16;
    v50 = v69;
    (v66[0])(v69, v30, v24);
    sub_26A4F56DC(v83, v87);
    v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v52 = v67;
    v75 = *(v67 + 80);
    v53 = (v77 + v75 + v51) & ~v75;
    v77 = v75 | 7;
    v54 = (v84 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v45;
    *(v55 + 24) = v46;
    (*(v47 + 32))(v55 + v51, v48, v49);
    v56 = *(v52 + 32);
    v57 = v50;
    v56(v55 + v53, v50, v24);
    sub_26A4F5730(v87, v55 + v54);
    sub_26A4F625C();
    v58 = v81;
    v59 = v71;
    v60 = v86;
    sub_26A851338();

    (*(v80 + 8))(v60, v59);
    sub_26A84EEB8();
    sub_26A4F5B58();
    sub_26A4D7DCC();
    v61 = v72;
    v62 = v73;
    sub_26A850C28();

    (*(v74 + 8))(v58, v62);
    sub_26A4D6FD8();
    sub_26A4F56DC(v83, v87);
    v56(v57, v70, v24);
    v63 = (v75 + 232) & ~v75;
    v64 = swift_allocObject();
    sub_26A4F5730(v87, v64 + 16);
    v56(v64 + v63, v57, v24);
    v65 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB488, &qword_26A8589A0) + 36));
    *v65 = sub_26A4F2F50;
    v65[1] = 0;
    v65[2] = sub_26A4F5C3C;
    v65[3] = v64;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26A4F2F50@<X0>(void *a1@<X8>)
{
  result = sub_26A84F068();
  *a1 = v3;
  return result;
}

uint64_t sub_26A4F2F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490, &qword_26A8589A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = *(a2 + 208);
  v9 = sub_26A8507A8();
  (*(*(v9 - 8) + 16))(v7, a3, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC9SnippetUI14PopOverManager_layout;
  swift_beginAccess();
  sub_26A4F5CB0(v7, v8 + v10);
  return swift_endAccess();
}

uint64_t sub_26A4F30A8(double a1, double a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v100 = a6;
  v109 = a5;
  v124 = a4;
  v93 = sub_26A84F988();
  v116 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490, &qword_26A8589A8);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = v90 - v10;
  v120 = sub_26A8507A8();
  v103 = *(v120 - 8);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v120);
  v108 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = v90 - v13;
  v122 = sub_26A850758();
  v96 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v15 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v125 = v90 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498, &unk_26A8589B0);
  MEMORY[0x28223BE20](v110);
  v19 = v90 - v18;
  v20 = sub_26A850798();
  v123 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v119 = v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v112 = v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = v90 - v26;
  v28 = sub_26A84FE48();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84F9F8();
  v33 = v32 - a1;
  sub_26A84F9F8();
  v144.origin.y = v34 - a2;
  v144.size.width = 0.0;
  v144.size.height = 0.0;
  v144.origin.x = v33;
  v145 = CGRectInset(v144, -8.0, -8.0);
  x = v145.origin.x;
  y = v145.origin.y;
  width = v145.size.width;
  height = v145.size.height;
  sub_26A84FF58();
  sub_26A84F078();
  v101 = v40;
  v102 = v39;
  v97 = v42;
  v98 = v41;
  v43 = v28;
  v44 = v122;
  (*(v29 + 8))(v31, v43);
  v105 = *(v103 + 16);
  v106 = v103 + 16;
  v105(v27, v109, v120);
  v45 = *(v25 + 44);
  v46 = sub_26A4F625C();
  v115 = v45;
  sub_26A851D88();
  LODWORD(v121) = 0;
  v118 = (v123 + 2);
  v111 = (v123 + 4);
  v113 = (v123 + 1);
  v114 = v27;
  v47 = (v96 + 32);
  v123 = (v96 + 16);
  v124 = (v96 + 8);
  v94 = v103 + 32;
  v91 = (v116 + 8);
  v95 = (v103 + 8);
  v96 = v104 + 7;
  v117 = v46;
LABEL_2:
  while (1)
  {
    sub_26A851DD8();
    if (*&v27[v115] == v130)
    {
      return sub_26A4D6FD8();
    }

    v48 = sub_26A851E18();
    v116 = *v118;
    v116(v112);
    v48(&v130, 0);
    sub_26A851DE8();
    v49 = v119;
    (*v111)();
    sub_26A850778();
    v146.origin.x = v132;
    v146.size.width = v134;
    v146.origin.y = v133 - v135;
    v146.size.height = v135 + v136;
    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = width;
    v148.size.height = height;
    if (CGRectIntersectsRect(v146, v148))
    {
      (v116)(v19, v49, v20);
      v50 = *(v110 + 36);
      sub_26A4F625C();
      sub_26A851D88();
      while (1)
      {
        while (1)
        {
          sub_26A851DD8();
          if (*&v19[v50] == v130)
          {
            sub_26A4D6FD8();
            (*v113)(v119, v20);
            v27 = v114;
            goto LABEL_2;
          }

          v51 = sub_26A851E18();
          v52 = v125;
          (*v123)(v125);
          v51(&v130, 0);
          sub_26A851DE8();
          (*v47)(v15, v52, v44);
          sub_26A4F5D20();
          sub_26A850768();
          v53 = v44;
          v54 = v131;
          if (v131)
          {
            break;
          }

          (*v124)(v15, v53);
          v44 = v53;
        }

        v55 = v130;
        sub_26A850748();
        v147.origin.x = v137;
        v147.size.width = v139;
        v147.origin.y = v138 - v140;
        v147.size.height = v140 + v141;
        v149.origin.x = x;
        v149.origin.y = y;
        v149.size.width = width;
        v149.size.height = height;
        if (CGRectIntersectsRect(v147, v149) && (v121 & 1) == 0)
        {
          break;
        }

        v56 = v122;
        (*v124)(v15, v122);
        v44 = v56;
      }

      sub_26A4F56DC(v100, &v130);
      v57 = v107;
      v58 = v105;
      v105(v107, v109, v120);
      sub_26A4F56DC(&v130, &v127);
      v59 = v57;
      v60 = v120;
      v58(v108, v59, v120);
      v61 = v103;
      v62 = (*(v103 + 80) + 248) & ~*(v103 + 80);
      v104 = (v96 + v62) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      v121 = v55;
      v64 = v63;
      sub_26A4F5730(&v130, v63 + 16);
      *(v64 + 232) = v121;
      *(v64 + 240) = v54;
      (*(v61 + 32))(v64 + v62, v107, v60);
      v116 = v64;
      v65 = v105;
      v66 = v64 + v104;
      v67 = v121;
      v68 = v101;
      *v66 = v102;
      *(v66 + 8) = v68;
      v69 = v97;
      *(v66 + 16) = v98;
      *(v66 + 24) = v69;
      v70 = v99;
      v65(v99, v109, v60);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v60);

      sub_26A4F41B8(v67, v70, v142);
      sub_26A4D6FD8();
      if (v143)
      {
        (*v95)(v108, v60);
        sub_26A4F5E34(&v127);
        v83 = v100;
        sub_26A4F56DC(v100, v126);
        v84 = swift_allocObject();
        sub_26A4F5730(v126, (v84 + 2));
        v84[29] = v67;
        v84[30] = v54;
        v85 = v116;
        v84[31] = sub_26A4F5D74;
        v84[32] = v85;
        v86 = *(v83 + 16);
        if (*(v83 + 24) == 1)
        {

          j__swift_retain();
        }

        else
        {

          j__swift_retain();
          sub_26A851EA8();
          v87 = sub_26A8501F8();
          sub_26A84EA78();

          v88 = v92;
          sub_26A84F978();
          swift_getAtKeyPath();
          j__swift_release();
          (*v91)(v88, v93);
          v86 = v126[0];
        }

        if (v86)
        {
          v89 = swift_allocObject();
          *(v89 + 16) = sub_26A4F5E64;
          *(v89 + 24) = v84;
          v126[0] = sub_26A4F5E78;
          v126[1] = v89;

          sub_26A84EB98();
        }

        (*v124)(v15, v122);
        sub_26A4D6FD8();
        (*v113)(v119, v20);
        return sub_26A4D6FD8();
      }

      v72 = *v142;
      v71 = *&v142[1];
      v73 = *&v142[2];
      v74 = *&v142[3];
      v75 = v129[18];
      v76 = sub_26A4F49D4();
      if ((v77 & 1) != 0 || v76 != v67)
      {
        v104 = v75;
        v78 = v127;
        v27 = v114;
        if (v128 == 1)
        {
        }

        else
        {

          v90[3] = sub_26A851EA8();
          v80 = sub_26A8501F8();
          sub_26A84EA78();

          v81 = v92;
          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A4F5714(v78, 0);
          (*v91)(v81, v93);
          v78 = v126[0];
        }

        sub_26A4F4D04(v121, v54, v72, v71, v73, v74, v102, v101, v79, v129, v78);

        v60 = v120;
      }

      else
      {

        v27 = v114;
      }

      (*v95)(v108, v60);
      v44 = v122;
      (*v124)(v15, v122);
      sub_26A4D6FD8();
      (*v113)(v119, v20);
      sub_26A4F5E34(&v127);
      LODWORD(v121) = 1;
    }

    else
    {
      (*v113)(v49, v20);
      v27 = v114;
    }
  }
}

uint64_t sub_26A4F3ED4(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_26A84F988();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26A4F49D4();
  if ((v23 & 1) != 0 || result != a2)
  {
    v24 = *a1;
    if (*(a1 + 8) == 1)
    {
    }

    else
    {

      sub_26A851EA8();
      v26 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A4F5714(v24, 0);
      (*(v19 + 8))(v21, v18);
      v24 = v27[1];
    }

    sub_26A4F4D04(a2, a3, a4, a5, a6, a7, a8, a9, v25, (a1 + 8), v24);
  }

  return result;
}

uint64_t sub_26A4F40B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double, double, double, double))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490, &qword_26A8589A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13[-v8];
  v10 = *(a1 + 208);
  v11 = OBJC_IVAR____TtC9SnippetUI14PopOverManager_layout;
  swift_beginAccess();
  sub_26A4F5EA0(v10 + v11, v9);
  sub_26A4F41B8(a2, v9, v14);
  result = sub_26A4D6FD8();
  if ((v15 & 1) == 0)
  {
    return a4(result, v14[0], v14[1], v14[2], v14[3]);
  }

  return result;
}

uint64_t sub_26A4F41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v78 = a2;
  v76 = a1;
  v4 = sub_26A850758();
  OUTLINED_FUNCTION_15();
  v75 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  *&v79 = v64 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB498, &unk_26A8589B0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = v64 - v12;
  v14 = sub_26A850798();
  OUTLINED_FUNCTION_15();
  v77 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v74 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v71 = v64 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490, &qword_26A8589A8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  v24 = v64 - v23;
  v25 = sub_26A8507A8();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  sub_26A4F5EA0(v78, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    result = sub_26A4D6FD8();
    v33 = 0uLL;
    v34 = 1;
    v35 = 0uLL;
  }

  else
  {
    v65 = a3;
    (*(v27 + 32))(v31, v24, v25);
    v64[2] = v27;
    (*(v27 + 16))();
    v36 = *(v19 + 36);
    v37 = sub_26A4F625C();
    v64[1] = v31;
    sub_26A851D88();
    v67 = (v77 + 2);
    v66 = (v77 + 1);
    v77 = (v75 + 32);
    *&v78 = v75 + 16;
    v38 = (v75 + 8);
    v39 = MEMORY[0x277D84F90];
    v40 = v71;
    v69 = v25;
    v68 = v36;
    v73 = v37;
    while (1)
    {
      sub_26A851DD8();
      if (*&v40[v36] == v80)
      {
        break;
      }

      v75 = v39;
      v72 = sub_26A851E18();
      v41 = *v67;
      (*v67)(v74);
      v72(&v80, 0);
      sub_26A851DE8();
      v42 = v74;
      (v41)(v13, v74, v14);
      v43 = *(v70 + 36);
      sub_26A4F625C();
      sub_26A851D88();
      (*v66)(v42, v14);
LABEL_6:
      v44 = v8;
      for (i = v4; ; (*v38)(v44, i))
      {
        sub_26A851DD8();
        if (*&v13[v43] == v80)
        {
          break;
        }

        v46 = sub_26A851E18();
        v47 = v79;
        v4 = i;
        (*v78)(v79);
        v46(&v80, 0);
        sub_26A851DE8();
        v48 = v47;
        v8 = v44;
        (*v77)(v44, v48, i);
        sub_26A4F5F10();
        sub_26A850768();
        if (v81 != 1 && v80 == v76)
        {
          sub_26A850748();
          v49 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26A7A12C4();
            v49 = v56;
          }

          v50 = *(v49 + 16);
          if (v50 >= *(v49 + 24) >> 1)
          {
            sub_26A7A12C4();
            v49 = v57;
          }

          v51 = v82;
          v52 = v84;
          v53 = v83 - v85;
          v54 = v85 + v86;
          (*v38)(v8, i);
          *(v49 + 16) = v50 + 1;
          v75 = v49;
          v55 = v49 + 32 * v50;
          *(v55 + 32) = v51;
          *(v55 + 40) = v53;
          *(v55 + 48) = v52;
          *(v55 + 56) = v54;
          goto LABEL_6;
        }
      }

      sub_26A4D6FD8();
      v25 = v69;
      v4 = i;
      v8 = v44;
      v40 = v71;
      v39 = v75;
      v36 = v68;
    }

    sub_26A4D6FD8();
    v58 = *(v39 + 16);
    v34 = v58 == 0;
    if (v58)
    {
      v59 = v39 + 56;
      OUTLINED_FUNCTION_11_2();
      do
      {
        *&v60 = CGRectUnion(*&v60, *(v59 - 24));
        v59 += 32;
        --v58;
      }

      while (v58);
      *(&v60 + 1) = v61;
      *(&v62 + 1) = v63;
      v78 = v62;
      v79 = v60;
    }

    else
    {
      v78 = 0u;
      v79 = 0u;
      OUTLINED_FUNCTION_11_2();
    }

    (*(v4 + 8))(v8, v25);

    a3 = v65;
    v35 = v78;
    v33 = v79;
  }

  *a3 = v33;
  *(a3 + 16) = v35;
  *(a3 + 32) = v34;
  return result;
}

uint64_t sub_26A4F49D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A4F4A4C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_26A84EC28();
}

id sub_26A4F4ACC(void *a1, id a2, double a3, double a4)
{
  result = [a2 view];
  if (result)
  {
    v8 = result;
    [result frame];
    [v8 convertPoint:0 toView:?];
    [a1 setModalPresentationStyle_];
    v9 = OUTLINED_FUNCTION_12_2();
    if (v9)
    {
      v10 = v9;
      [v9 setPermittedArrowDirections_];
    }

    v11 = OUTLINED_FUNCTION_12_2();
    if (v11)
    {
      v12 = v11;
      [v11 setDelegate_];
    }

    v13 = OUTLINED_FUNCTION_12_2();
    if (v13)
    {
      v14 = v13;
      [v13 setSourceView_];
    }

    v15 = OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_9_3();
    [v16 v17];

    [a2 presentViewController:a1 animated:1 completion:0];

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_26A4F4C9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_26A4F4D04(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v21 = type metadata accessor for PopOver(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v25 = (v24 - v23);
  if ((*(v12 + OBJC_IVAR____TtC9SnippetUI14PopOverManager_isPopOverPresented) & 1) == 0)
  {
    sub_26A4F5FCC(a10, (v25 + 2));
    *v25 = a2;
    v25[1] = a11;
    v26 = *(v21 + 28);
    *(v25 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_9_3();
    MinX = CGRectGetMinX(v34);
    OUTLINED_FUNCTION_9_3();
    MinY = CGRectGetMinY(v35);
    v29 = sub_26A69F2DC();
    v30 = sub_26A5E5E04();
    if (v30)
    {
      v31 = v30;
      sub_26A6A7238(a2);
      MEMORY[0x28223BE20](v32);
      *&v33[-64] = v12;
      *&v33[-56] = a1;
      *&v33[-48] = v29;
      *&v33[-40] = v31;
      *&v33[-32] = MinX + a7;
      *&v33[-24] = MinY + a8;
      *&v33[-16] = a5;
      *&v33[-8] = a6;
      sub_26A8514B8();
      sub_26A84F1C8();

      sub_26A4F6028(v25);
    }

    else
    {
      sub_26A4F6028(v25);
    }
  }
}

uint64_t sub_26A4F4FE4(uint64_t a1)
{
  sub_26A8514B8();
  sub_26A84F1C8();

  return 1;
}

id sub_26A4F50D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4B8, &qword_26A858A08);
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC9SnippetUI14PopOverManager_layout;
  v8 = sub_26A8507A8();
  __swift_storeEnumTagSinglePayload(&v0[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SnippetUI14PopOverManager__selection;
  v13 = 0;
  v14 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB3B8, &qword_26A858510);
  sub_26A84EBD8();
  (*(v3 + 32))(&v0[v9], v6, v1);
  v0[OBJC_IVAR____TtC9SnippetUI14PopOverManager_isPopOverPresented] = 0;
  swift_unknownObjectWeakInit();
  v10 = type metadata accessor for PopOverManager(0);
  v12.receiver = v0;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_26A4F524C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopOverManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PopOverManager(uint64_t a1)
{
  result = qword_2803AB398;
  if (!qword_2803AB398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A4F5378(uint64_t a1)
{
  sub_26A4F5458(319);
  if (v1 <= 0x3F)
  {
    sub_26A4F54B0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A4F5458(uint64_t a1)
{
  if (!qword_2803AB3A8)
  {
    sub_26A8507A8();
    v1 = sub_26A852068();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AB3A8);
    }
  }
}

void sub_26A4F54B0(uint64_t a1)
{
  if (!qword_28157FEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3B8, &qword_26A858510);
    v1 = sub_26A84EC38();
    if (!v2)
    {
      atomic_store(v1, &qword_28157FEC0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI24RFInteractionDelegateBoxVSg(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A4F5554(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_26A4F5594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A4F5640@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PopOverManager(0);
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

uint64_t sub_26A4F5714(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26A4F5724(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6();
  if (v2)
  {
    if ((*(v1 + 72) & 1) == 0)
    {
      MEMORY[0x26D665710](v1 + 64);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 80);

  OUTLINED_FUNCTION_6_4();
  if (*(v1 + 160))
  {
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_4_3();

  return swift_deallocObject();
}

unint64_t sub_26A4F5808()
{
  result = qword_2803AB3D0;
  if (!qword_2803AB3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3D8, &qword_26A8588E8);
    sub_26A4F5894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB3D0);
  }

  return result;
}

unint64_t sub_26A4F5894()
{
  result = qword_2803AB3E0;
  if (!qword_2803AB3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3E8, &qword_26A8588F0);
    sub_26A4F594C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB3E0);
  }

  return result;
}

unint64_t sub_26A4F594C()
{
  result = qword_2803AB3F0;
  if (!qword_2803AB3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803AB3F8, &qword_26A8588F8);
    sub_26A4F5A04();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB3F0);
  }

  return result;
}

unint64_t sub_26A4F5A04()
{
  result = qword_28157EC00[0];
  if (!qword_28157EC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157EC00);
  }

  return result;
}

uint64_t sub_26A4F5A64(uint64_t a1)
{
  v3 = sub_26A84F088();
  OUTLINED_FUNCTION_2_5(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_26A8507A8();
  OUTLINED_FUNCTION_2_5(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_26A4F30A8(v14, v15, a1, (v1 + v5), v1 + v13, v16);
}

unint64_t sub_26A4F5B58()
{
  result = qword_2803AB468;
  if (!qword_2803AB468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB448, &qword_26A888290);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB468);
  }

  return result;
}

uint64_t sub_26A4F5C3C(uint64_t a1)
{
  v3 = *(sub_26A8507A8() - 8);
  v4 = v1 + ((*(v3 + 80) + 232) & ~*(v3 + 80));

  return sub_26A4F2F7C(a1, v1 + 16, v4);
}

uint64_t sub_26A4F5CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490, &qword_26A8589A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4F5D20()
{
  result = qword_2803AB4A8;
  if (!qword_2803AB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB4A8);
  }

  return result;
}

uint64_t sub_26A4F5D74(double a1, double a2)
{
  v2 = sub_26A8507A8();
  OUTLINED_FUNCTION_2_5(v2);
  OUTLINED_FUNCTION_9_3();

  return sub_26A4F3ED4(v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_26A4F5EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB490, &qword_26A8589A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4F5F10()
{
  result = qword_2803AB4B0;
  if (!qword_2803AB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB4B0);
  }

  return result;
}

uint64_t sub_26A4F6028(uint64_t a1)
{
  v2 = type metadata accessor for PopOver(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A4F60AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A4F6130()
{
  result = qword_2803AB4C8;
  if (!qword_2803AB4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB428, &qword_26A858910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB3C0, &qword_26A8588E0);
    sub_26A4F60AC(&qword_2803AB3C8, &qword_2803AB3C0, &qword_26A8588E0, sub_26A4F5808);
    swift_getOpaqueTypeConformance2();
    sub_26A4F625C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB4C8);
  }

  return result;
}

unint64_t sub_26A4F625C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  sub_26A4F5714(*(v0 + 16), *(v0 + 24));
  j__swift_release();
  return sub_26A4F5724(*(v0 + 48), *(v0 + 56), *(v0 + 57));
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  sub_26A4EC448(*(v0 + 168), *(v0 + 176), *(v0 + 184));
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  sub_26A4EC448(*(v0 + 136), *(v0 + 144), *(v0 + 152));
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  sub_26A4EC448(*(v0 + 104), *(v0 + 112), *(v0 + 120));
}

id OUTLINED_FUNCTION_12_2()
{

  return [v0 (v1 + 3509)];
}

uint64_t (*sub_26A4F63D4(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

void sub_26A4F6448(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26A4F6494()
{
  sub_26A84ACC8();
  type metadata accessor for SmartDialogAnimation(0);
  sub_26A4FA450();
  v0 = sub_26A8516A8();
  type metadata accessor for SmartDialogAnimations(0);
  swift_allocObject();
  return sub_26A5D57D4(v0);
}

uint64_t sub_26A4F6538()
{
  type metadata accessor for AnimationWatchdog(0);
  swift_allocObject();
  return sub_26A4FA5A8();
}

uint64_t sub_26A4F6570@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for SmartDialogAnimationModifier(0);
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartDialogAnimationSettings(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *(v2 + 96);
  v9 = v8[4];
  v31 = v8[5];
  v32 = v9;
  v30 = v8[6];
  v11 = *(v2 + *(v4 + 48) + *(v10 + 28)) * v9;

  sub_26A8511C8();
  v13 = v11 + v12;
  v36 = sub_26A850DF8();
  v42 = 0;
  v43 = v36;
  v38 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E8, &unk_26A858B70);
  sub_26A851058();
  type metadata accessor for SmartDialogAnimations(0);
  sub_26A4FA450();
  v14 = sub_26A84EEF8();
  v15 = *(v2 + 88);
  LOWORD(v38) = *(v2 + 80);
  *(&v38 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0, &qword_26A858B68);
  sub_26A851058();
  v16 = v41;
  type metadata accessor for AnimationWatchdog(0);
  sub_26A4FA450();
  v17 = sub_26A84EEF8();
  sub_26A4FAAE8();
  v18 = (v7 + ((*(v29 + 80) + 34) & ~*(v29 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v13;
  *(v19 + 32) = v16;
  sub_26A4FAB3C();
  v20 = (v19 + v18);
  v21 = v31;
  *v20 = v32;
  v20[1] = v21;
  v20[2] = v30;
  *(v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_26A4FAAE8();
  v22 = (v34 + ((*(v35 + 80) + 16) & ~*(v35 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_26A4FAB3C();
  *(v23 + v22) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5F0, &qword_26A858B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5F8, &qword_26A858B88);
  v24 = type metadata accessor for SmartDialogLineAnimatingView(255);
  v25 = sub_26A4FA450();
  *&v38 = v24;
  *(&v38 + 1) = MEMORY[0x277D839F8];
  v39 = v25;
  v40 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  sub_26A4D7DCC();
  v26 = v37;
  sub_26A850AE8();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB610, &qword_26A858B90);
  *(v26 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26A4F6ADC@<X0>(double *a1@<X1>, __int16 a2@<W3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, uint64_t a9)
{
  v26 = a7;
  v24 = a4;
  v25 = a9;
  v14 = type metadata accessor for SmartDialogAnimationSettings(0);
  v23 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for SmartDialogLineAnimatingView(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v28 = a2;
  sub_26A4F9D38(&v28, v18, a8);
  sub_26A4FAAE8();
  *v17 = v18;
  v19 = (v17 + *(v15 + 24));
  v20 = v24;
  *v19 = v24;
  v19[1] = a5;
  v19[2] = a6;
  *(v17 + *(v15 + 28)) = a2;
  v27 = v18;
  sub_26A4FAAE8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  *(v21 + 40) = a2;
  *(v21 + 48) = v25;
  *(v21 + 56) = v18;
  sub_26A4FAB3C();
  sub_26A4FA450();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_26A850C88();

  return sub_26A4FAD5C();
}

uint64_t sub_26A4F6DA0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, unsigned __int16 a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v74 = a6;
  v56 = a1;
  v69 = type metadata accessor for SmartDialogAnimation(0);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = (&v56 - v13);
  v14 = type metadata accessor for SmartDialogAnimationDrawableType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A84ACC8();
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v75 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for SmartDialogAnimationChunk(0);
  MEMORY[0x28223BE20](v22);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(a4 + 16);
  if (v26)
  {
    v66 = a5;
    v73 = OBJC_IVAR____TtC9SnippetUI21SmartDialogAnimations_animations;
    v27 = a4 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v72 = (v57 + 16);
    v64 = (v57 + 8);
    v65 = (v57 + 32);
    v28 = *(v23 + 72);
    v62 = v16;
    v63 = v14;
    v61 = v21;
    v60 = v22;
    v59 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v28;
    do
    {
      sub_26A4FAAE8();
      sub_26A4FAAE8();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v65)(v21, v16, v17);
        v29 = *v25;
        if ((v66 & 0x100) != 0)
        {
          v30 = __OFSUB__(v56, v29);
          v29 = v56 - v29;
          if (v30)
          {
            goto LABEL_21;
          }
        }

        v31 = v21;
        v32 = v17;
        v33 = v17;
        v34 = v66;
        v71 = *v72;
        v71(v75, v31, v33);
        v36 = v68;
        v35 = v69;
        sub_26A4FAAE8();
        *v36 = v29;
        v36[1] = a2;
        *(v36 + *(v35 + 28)) = 1;
        *(v36 + *(v35 + 32)) = v34;
        v38 = v73;
        v37 = v74;
        swift_beginAccess();
        sub_26A4FAB3C();
        swift_isUniquelyReferenced_nonNull_native();
        v76 = *(v37 + v38);
        v39 = v76;
        *(v37 + v38) = 0x8000000000000000;
        v40 = sub_26A5485E4();
        if (__OFADD__(*(v39 + 16), (v41 & 1) == 0))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          result = sub_26A852618();
          __break(1u);
          return result;
        }

        v42 = v40;
        v43 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB650, &qword_26A858C00);
        if (sub_26A8523E8())
        {
          v44 = sub_26A5485E4();
          v46 = v64;
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_24;
          }

          v42 = v44;
          v17 = v32;
        }

        else
        {
          v17 = v32;
          v46 = v64;
        }

        v47 = v76;
        if (v43)
        {
          sub_26A4FAE00(v11, *(v76 + 56) + *(v67 + 72) * v42);
          v48 = *v46;
          (*v46)(v75, v17);
        }

        else
        {
          *(v76 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v49 = v57;
          v50 = v75;
          v71((*(v47 + 48) + *(v57 + 72) * v42), v75, v17);
          sub_26A4FAB3C();
          v48 = *(v49 + 8);
          v48(v50, v17);
          v51 = *(v47 + 16);
          v30 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v30)
          {
            goto LABEL_22;
          }

          *(v47 + 16) = v52;
        }

        v21 = v61;
        *(v74 + v73) = v47;

        swift_endAccess();
        v48(v21, v17);
        v25 = v59;
        sub_26A4FAD5C();
        v16 = v62;
        v28 = v58;
      }

      else
      {
        sub_26A4FAD5C();
        sub_26A4FAD5C();
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v53 = sub_26A84EC08();
  if (__OFADD__(*v54, 1))
  {
    goto LABEL_23;
  }

  ++*v54;
  v53(v77, 0);
}

uint64_t sub_26A4F7480@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v67 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB618, &qword_26A858B98);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v53 - v5;
  v6 = sub_26A851558();
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB620, &qword_26A858BA0);
  v60 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB628, &qword_26A858BA8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB630, &qword_26A858BB0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v63 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v30 = *(a1 + 88);
  LOWORD(v68) = *(a1 + 80);
  v69 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0, &qword_26A858B68);
  sub_26A851058();
  v64 = v25;
  if (!v73)
  {
    a3 = 0.0;
    goto LABEL_5;
  }

  if (v73 != 2)
  {
LABEL_5:
    v68 = a3;
    v45 = MEMORY[0x277D839F8];
    sub_26A84EF88();
    v46 = sub_26A4D7DCC();
    MEMORY[0x26D661790](v14, *&v45, v11, v46);
    v47 = *(v12 + 8);
    v47(v14, v11);
    MEMORY[0x26D6617C0](v17, *&v45, v11, v46);
    v48 = sub_26A4D7DCC();
    v68 = v45;
    v69 = v11;
    v70 = v65;
    v71 = v46;
    v72 = v48;
    swift_getOpaqueTypeConformance2();
    sub_26A84F518();
    v47(v23, v11);
    v47(v17, v11);
    goto LABEL_6;
  }

  v68 = 0.0;
  v31 = MEMORY[0x277D839F8];
  sub_26A84EF88();
  v53 = sub_26A4D7DCC();
  MEMORY[0x26D661790](v20, v31, v11, v53);
  v32 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v32;
  v32(v20, v11);
  v68 = a3;
  sub_26A851548();
  v33 = v58;
  v34 = v31;
  sub_26A84F248();
  v35 = sub_26A4D7DCC();
  v36 = v59;
  v54 = v23;
  v37 = v34;
  v38 = v65;
  MEMORY[0x26D661790](v33, v37, v65, v35);
  v57 = v29;
  v60 = *(v60 + 8);
  (v60)(v33, v38);
  v39 = v23;
  v40 = MEMORY[0x277D839F8];
  v41 = v53;
  MEMORY[0x26D6617C0](v39, MEMORY[0x277D839F8], v11, v53);
  v42 = v61;
  sub_26A84F548();
  v68 = v40;
  v69 = v11;
  v70 = v38;
  v71 = v41;
  v72 = v35;
  swift_getOpaqueTypeConformance2();
  v43 = v66;
  sub_26A84F508();
  (*(v62 + 8))(v42, v43);
  v44 = v56;
  v56(v20, v11);
  (v60)(v36, v38);
  v29 = v57;
  v44(v54, v11);
LABEL_6:
  v49 = sub_26A4D7DCC();
  v50 = v63;
  MEMORY[0x26D6617C0](v29, MEMORY[0x277D839F8], v24, v49);
  sub_26A84F538();
  v51 = *(v64 + 8);
  v51(v50, v24);
  return (v51)(v29, v24);
}

uint64_t sub_26A4F7C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for SmartDialogAnimationModifier(0);
  v5 = *(v4 - 8);
  v34 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5B0, &qword_26A858B40);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5B8, &qword_26A858B48);
  OUTLINED_FUNCTION_46();
  (*(v9 + 16))(v8, a1);
  v29 = v2;
  sub_26A4FAAE8();
  v10 = *(v5 + 80);
  v11 = swift_allocObject();
  sub_26A4FAB3C();
  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5C0, &qword_26A858B50) + 36)];
  *v12 = sub_26A4FA720;
  v12[1] = v11;
  v32 = type metadata accessor for SmartDialogAnimationModifier;
  sub_26A4FAAE8();
  v31 = v10;
  v13 = swift_allocObject();
  v30 = type metadata accessor for SmartDialogAnimationModifier;
  sub_26A4FAB3C();
  v14 = sub_26A851448();
  v16 = v15;
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5C8, &qword_26A858B58) + 36)];
  *v17 = sub_26A4FA888;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = v16;
  v18 = *(v29 + *(v34 + 52));
  sub_26A4FAAE8();
  v19 = swift_allocObject();
  sub_26A4FAB3C();
  v20 = v36;
  v21 = *(v36 + 52);
  v33 = v8;
  *&v8[v21] = v18;
  v22 = &v8[*(v20 + 56)];
  *v22 = sub_26A4FA8F0;
  v22[1] = v19;
  type metadata accessor for AnimationWatchdog(0);
  sub_26A4FA450();

  sub_26A84EEF8();
  LOBYTE(v18) = sub_26A4F9BFC();

  v37 = v18 & 1;
  sub_26A4FAAE8();
  swift_allocObject();
  sub_26A4FAB3C();
  sub_26A4D7DCC();
  v23 = v35;
  sub_26A850C88();

  sub_26A492288();
  type metadata accessor for SmartDialogAnimations(0);
  sub_26A4FA450();
  v24 = sub_26A84EEF8();
  v25 = sub_26A84EB78();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5D8, &qword_26A858B60);
  v27 = (v23 + *(result + 36));
  *v27 = v25;
  v27[1] = v24;
  return result;
}

uint64_t sub_26A4F8130(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB658, &qword_26A858C08);
  return sub_26A851068();
}

double sub_26A4F818C@<D0>(uint64_t *a1@<X0>, uint64_t (**a3)()@<X8>)
{
  v5 = type metadata accessor for SmartDialogAnimationModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *a1;
  sub_26A4FAAE8();
  v9 = (v7 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_26A4FAB3C();
  *(v10 + v9) = v8;
  *a3 = sub_26A4FAA54;
  a3[1] = v10;

  return result;
}

uint64_t sub_26A4F82CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_26A4F8334(a2, a1);
  sub_26A540618(v4);

  return sub_26A4F6570(a3);
}

uint64_t sub_26A4F8334(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v24 = *(v2 + 64);
  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB658, &qword_26A858C08);
  sub_26A851058();
  v22 = a2;
  v6 = sub_26A4F8D30(sub_26A4FAE64, v21, v23);

  v20[2] = a2;
  result = sub_26A4F8F2C(sub_26A4FAE84, v20, a1);
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 == v9)
    {

      v24 = v6;
      sub_26A614A28(v11);
      return v24;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v12 = *(v8 + 8 * v9 + 32);
    v13 = *(v12 + 16);
    v14 = *(v11 + 16);
    if (__OFADD__(v14, v13))
    {
      goto LABEL_17;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v11 + 24) >> 1)
    {
      sub_26A7A138C();
      v11 = v15;
    }

    if (*(v12 + 16))
    {
      v16 = (*(v11 + 24) >> 1) - *(v11 + 16);
      result = type metadata accessor for SmartDialogCollatableItem(0);
      if (v16 < v13)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v17 = *(v11 + 16);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_20;
        }

        *(v11 + 16) = v19;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_18;
      }
    }

    ++v9;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26A4F8550(__int16 *a1, uint64_t a2)
{
  v15[1] = a2;
  v3 = sub_26A851618();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A851648();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmartDialogAnimationModifier(0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *a1;
  sub_26A4FA9A0();
  v11 = sub_26A851F28();
  sub_26A4FAAE8();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_26A4FAB3C();
  aBlock[4] = sub_26A4FA9E4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A4F8A68;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  sub_26A851638();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26A4FA450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60, &qword_26A86E650);
  sub_26A4D7DCC();
  sub_26A852118();
  MEMORY[0x26D6641A0](0, v8, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v16);
}

void *sub_26A4F88F4(__int16 a1, uint64_t a2)
{
  if (a1 == 2)
  {
    type metadata accessor for AnimationWatchdog(0);
    sub_26A4FA450();
    *(sub_26A84EEF8() + OBJC_IVAR____TtC9SnippetUIP33_08BC3339106E03C478B5B13852E725C017AnimationWatchdog_enabled) = 1;
    sub_26A4F9C70(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0, &qword_26A858B68);
  sub_26A851068();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E8, &unk_26A858B70);
  result = sub_26A851058();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_26A851068();
  }

  return result;
}

uint64_t sub_26A4F8A68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_26A4F8AAC(uint64_t a1)
{
  type metadata accessor for AnimationWatchdog(0);
  sub_26A4FA450();
  sub_26A84EEF8();
  v1 = sub_26A4F9BFC();

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E0, &qword_26A858B68);
    sub_26A851058();
    v3 = v5 & 0x100;
    if (v5 < 0)
    {
      v4 = v3 | 0x8001;
    }

    else
    {
      v4 = v3 | 1;
    }

    LOWORD(v6) = v4;

    sub_26A851068();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB5E8, &unk_26A858B70);
    result = sub_26A851058();
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26A851068();
    }
  }

  return result;
}

uint64_t sub_26A4F8C38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for CGRect(0, a2, a3, a4);
  sub_26A84F098();
  v7 = type metadata accessor for SmartDialogAnimatableRect(0);
  v8 = sub_26A84ACC8();
  v9 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB668, &qword_26A858C20) + 48));
  (*(*(v8 - 8) + 16))(a5, &a1[*(v7 + 20)], v8);
  *v9 = v11;
  v9[1] = v12;
  type metadata accessor for SmartDialogCollatableItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26A4F8D30(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for SmartDialogCollatableItem(0) - 8;
  MEMORY[0x28223BE20](v6);
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v16 = MEMORY[0x277D84F90];
  sub_26A7DCD84(0, v7, 0);
  v8 = v16;
  v9 = *(type metadata accessor for SmartDialogAnimatableRect(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(v9 + 72);
  while (1)
  {
    a1(v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = *(v16 + 16);
    v11 = *(v16 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_26A7DCD84(v11 > 1, v12 + 1, 1);
    }

    *(v16 + 16) = v12 + 1;
    sub_26A4FAB3C();
    v10 += v14;
    if (!--v7)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}