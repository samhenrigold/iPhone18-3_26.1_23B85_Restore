void sub_216D6D35C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
        v22 = v7;
        v20 = &qword_27CAC06B8;
        v21 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);
    goto LABEL_11;
  }

  v20 = &qword_27CAC06B0;
  v21 = &qword_2170392C8;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9940, &qword_217060598);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC91C0, &qword_21705F7D0);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC91C0, &qword_21705F7D0);
  }
}

void sub_216D6D980()
{
  OUTLINED_FUNCTION_49();
  v81 = v4;
  v82 = v5;
  v7 = v6;
  v8 = v0;
  v77 = v9;
  v84 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_40();
  v83 = v7(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v78 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_53_1();
  v15 = OUTLINED_FUNCTION_45_0();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v80 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783(v0 + *(v24 + 216));
  OUTLINED_FUNCTION_47_2();
  sub_216DD9F00();
  v85 = v23;
  OUTLINED_FUNCTION_942();
  sub_216DD9F00();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  OUTLINED_FUNCTION_31_2(v2, 1, v25);
  if (v26)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_19();
      sub_216DD9B04();
      if (v77)
      {
        v28 = &qword_27CAC06B8;
        v29 = &qword_2170392D0;
        v30 = v1;
      }

      else
      {
        OUTLINED_FUNCTION_39();
        sub_216DD9F00();
        OUTLINED_FUNCTION_303();
        __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
        OUTLINED_FUNCTION_52_3();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v25);
        OUTLINED_FUNCTION_344();
        v49 = OUTLINED_FUNCTION_947();
        sub_216D636C8(v49, v50, v51, v52);
        v30 = OUTLINED_FUNCTION_97_1();
        v29 = &qword_2170392D0;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v2, &qword_27CAC06A8, &qword_2170392C0);
LABEL_8:
    OUTLINED_FUNCTION_412();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_52_3();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v25);
    OUTLINED_FUNCTION_344();
    v38 = OUTLINED_FUNCTION_947();
    sub_216D636C8(v38, v39, v40, v41);
    goto LABEL_11;
  }

  v28 = &qword_27CAC06B0;
  v29 = &qword_2170392C8;
  v30 = v2;
LABEL_10:
  sub_2166997CC(v30, v28, v29);
LABEL_11:
  v53 = v80;
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v54 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v54, qword_280E2C160);
  v55 = OUTLINED_FUNCTION_784();
  sub_216DDA0A0(v55, v56);
  sub_216DD9F00();
  v57 = sub_217007C84();
  v58 = sub_21700EDA4();
  if (os_log_type_enabled(v57, v58))
  {
    OUTLINED_FUNCTION_544();
    v59 = swift_slowAlloc();
    OUTLINED_FUNCTION_556();
    v86 = swift_slowAlloc();
    *v59 = 136446466;
    sub_216DDA0A0(v3, v78);
    OUTLINED_FUNCTION_696();
    sub_21700E5B4();
    sub_216DDA050();
    v60 = OUTLINED_FUNCTION_696();
    sub_2166A85FC(v60, v61, v62);
    OUTLINED_FUNCTION_1046();
    OUTLINED_FUNCTION_905();
    OUTLINED_FUNCTION_108();
    sub_216DD9F00();
    sub_21700E5B4();
    v63 = OUTLINED_FUNCTION_98();
    sub_2166997CC(v63, v64, &qword_21705F7D0);
    v65 = OUTLINED_FUNCTION_668();
    sub_2166A85FC(v65, v66, v67);
    OUTLINED_FUNCTION_1045();
    *(v59 + 14) = &qword_27CAC91C0;
    OUTLINED_FUNCTION_896();
    _os_log_impl(v68, v69, v70, v71, v72, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  else
  {

    sub_2166997CC(v53, &qword_27CAC91C0, &qword_21705F7D0);
    sub_216DDA050();
  }

  sub_216DD4790();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1245();
  if (v75)
  {
    __break(1u);
  }

  else
  {
    *(v8 + v73) = v74;
    OUTLINED_FUNCTION_858();
    sub_2166997CC(v85, &qword_27CAC91C0, &qword_21705F7D0);
    OUTLINED_FUNCTION_26();
  }
}

void sub_216D6DED8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
        v22 = v7;
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708, &qword_2170600C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = &qword_2170600D0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96A8, &qword_217060088);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0, &qword_2170600B8);
  }
}

void sub_216D6E4FC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v4);
  v6 = &v44[-v5];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96C0, &qword_2170600E8);
  MEMORY[0x28223BE20](v49);
  v46 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v48 = &v44[-v9];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v47);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v44[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v44[-v19];
  swift_beginAccess();
  sub_216DD9F00();
  v50 = v20;
  sub_216DD9F00();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2166997CC(v17, &qword_27CAC0718, &qword_2170600D0);
LABEL_9:
    v23 = v11;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2166997CC(v17, &qword_27CAC0708, &qword_2170600C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
    goto LABEL_9;
  }

  sub_216DD9B04();
  v23 = v11;
  if ((v45 & 1) == 0)
  {
    sub_216DD9F00();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
    sub_216D636C8(v14, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
  }

  sub_2166997CC(v6, &qword_27CAC0710, &unk_217039510);
LABEL_10:
  v24 = v48;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v25 = sub_217007CA4();
  __swift_project_value_buffer(v25, qword_280E2C160);
  sub_216DD9F00();
  sub_216DD9F00();
  v26 = sub_217007C84();
  v27 = sub_21700EDA4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v28 = 136446466;
    sub_216DD9F00();
    v29 = sub_21700E5B4();
    v30 = v24;
    v31 = v29;
    v33 = v32;
    sub_2166997CC(v30, &qword_27CAC96C0, &qword_2170600E8);
    v34 = sub_2166A85FC(v31, v33, &v52);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    sub_216DD9F00();
    v35 = sub_21700E5B4();
    v37 = v36;
    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    v38 = sub_2166A85FC(v35, v37, &v52);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_216679000, v26, v27, "Update started: %{public}s from state: %{public}s", v28, 0x16u);
    v39 = v48;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v39, -1, -1);
    MEMORY[0x21CEA1440](v28, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    sub_2166997CC(v24, &qword_27CAC96C0, &qword_2170600E8);
  }

  sub_216DD4790();
  v40 = *(*v3 + 272);
  v41 = *(v3 + v40);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v40) = v43;
    sub_216D6374C();
    sub_2166997CC(v50, &qword_27CAC96B0, &qword_2170600B8);
  }
}

void sub_216D6EBF8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
        v22 = v7;
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708, &qword_2170600C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = &qword_2170600D0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B8, &qword_2170600C8);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0, &qword_2170600B8);
  }
}

void sub_216D6F21C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
        v22 = v7;
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708, &qword_2170600C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = &qword_2170600D0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9898, &qword_2170603E8);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0, &qword_2170600B8);
  }
}

void sub_216D6F840(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
        v22 = v7;
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708, &qword_2170600C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = &qword_2170600D0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98A0, &qword_217060410);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0, &qword_2170600B8);
  }
}

void sub_216D6FE64(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
        v22 = v7;
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708, &qword_2170600C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = &qword_2170600D0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98C0, &qword_217060460);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0, &qword_2170600B8);
  }
}

void sub_216D70488(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v40) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0710, &unk_217039510);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_beginAccess();
  sub_216DD9F00();
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216DD9B04();
      if (v40)
      {
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
        v22 = v7;
      }

      else
      {
        sub_216DD9F00();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
        sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
        v22 = v7;
        v20 = &qword_27CAC0710;
        v21 = &unk_217039510;
      }

      goto LABEL_10;
    }

    sub_2166997CC(v14, &qword_27CAC0708, &qword_2170600C0);
LABEL_8:
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v5);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    sub_216D636C8(v11, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);
    goto LABEL_11;
  }

  v20 = &qword_27CAC0718;
  v21 = &qword_2170600D0;
  v22 = v14;
LABEL_10:
  sub_2166997CC(v22, v20, v21);
LABEL_11:
  v23 = v42;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v24 = sub_217007CA4();
  __swift_project_value_buffer(v24, qword_280E2C160);
  sub_216DD9F00();

  v25 = sub_217007C84();
  v26 = sub_21700EDA4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = a1;
    v44 = v40;
    *v27 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98C8, &qword_217060488);
    v28 = sub_21700E5B4();
    v30 = sub_2166A85FC(v28, v29, &v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    sub_216DD9F00();
    v31 = sub_21700E5B4();
    v33 = v32;
    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
    v34 = sub_2166A85FC(v31, v33, &v44);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_216679000, v25, v26, "Update started: %{public}s from state: %{public}s", v27, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v27, -1, -1);
  }

  else
  {

    sub_2166997CC(v23, &qword_27CAC96B0, &qword_2170600B8);
  }

  sub_216DD4790();
  v36 = *(*v3 + 272);
  v37 = *(v3 + v36);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v36) = v39;
    sub_216D6374C();
    sub_2166997CC(v17, &qword_27CAC96B0, &qword_2170600B8);
  }
}

uint64_t sub_216D70AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for SectionChangeInstruction(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D70C08, v6, v5);
}

uint64_t sub_216D70C08()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705F0E0);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D70D50()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216DDA274;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D70E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21700DD44();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for Page(0);
  v3[9] = swift_task_alloc();
  v5 = sub_217007C24();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[13] = swift_task_alloc();
  v6 = sub_21700DD54();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v3[18] = v8;
  v3[19] = v7;

  return MEMORY[0x2822009F8](sub_216D710A8, v8, v7);
}

uint64_t sub_216D710A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_735();
  v11 = OUTLINED_FUNCTION_110();
  v12 = type metadata accessor for ObjectGraph(v11);
  OUTLINED_FUNCTION_520(v12);
  OUTLINED_FUNCTION_444();
  v13 = OUTLINED_FUNCTION_436();
  v14(v13);
  OUTLINED_FUNCTION_1200();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  sub_21700DB74();
  OUTLINED_FUNCTION_26_21();

  sub_21700D4F4();
  OUTLINED_FUNCTION_52_16();

  sub_21700DB54();
  OUTLINED_FUNCTION_1180();

  v17 = sub_21700DB64();
  OUTLINED_FUNCTION_958(v17);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_1132();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  __swift_project_value_buffer(v18, qword_280E73E38);
  v19 = OUTLINED_FUNCTION_452();
  v20(v19);
  v21 = OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_950(v21, v22, v23);
  OUTLINED_FUNCTION_378(&qword_21705EFD8);
  OUTLINED_FUNCTION_1184();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v10 + 176) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_256_0(v24);
  OUTLINED_FUNCTION_1078();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_216D71224()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216DDA2CC;
  }

  else
  {
    v8 = sub_216D71360;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D71360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_787();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_173_1();
  v11 = OUTLINED_FUNCTION_109_2();
  sub_216DDA0F4(v11, v12);
  sub_216BD4F2C();

  sub_2166997CC(v10, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216D7141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B80, &qword_2170141F0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D71584, v6, v5);
}

uint64_t sub_216D71584()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705F250);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D716CC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216D71810;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D71810()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_119();
  sub_216DD9B04();
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_216D718C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for SectionChangeInstruction(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D71A24, v6, v5);
}

uint64_t sub_216D71A24()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705FF88);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D71B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21700DD44();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for JSReplayPage(0);
  v3[9] = swift_task_alloc();
  v5 = sub_217007C24();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[13] = swift_task_alloc();
  v6 = sub_21700DD54();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v3[18] = v8;
  v3[19] = v7;

  return MEMORY[0x2822009F8](sub_216D71D80, v8, v7);
}

uint64_t sub_216D71D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_735();
  v11 = OUTLINED_FUNCTION_110();
  v12 = type metadata accessor for ObjectGraph(v11);
  OUTLINED_FUNCTION_520(v12);
  OUTLINED_FUNCTION_444();
  v13 = OUTLINED_FUNCTION_436();
  v14(v13);
  OUTLINED_FUNCTION_1200();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  sub_21700DB74();
  OUTLINED_FUNCTION_26_21();

  sub_21700D4F4();
  OUTLINED_FUNCTION_52_16();

  sub_21700DB54();
  OUTLINED_FUNCTION_1180();

  v17 = sub_21700DB64();
  OUTLINED_FUNCTION_958(v17);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_1132();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  __swift_project_value_buffer(v18, qword_280E73E38);
  v19 = OUTLINED_FUNCTION_452();
  v20(v19);
  v21 = OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_950(v21, v22, v23);
  OUTLINED_FUNCTION_378(&qword_21705FF18);
  OUTLINED_FUNCTION_1184();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v10 + 176) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_256_0(v24);
  OUTLINED_FUNCTION_1078();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_216D71EFC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216DDA2CC;
  }

  else
  {
    v8 = sub_216D72038;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D72038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_787();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_70_12();
  v11 = OUTLINED_FUNCTION_109_2();
  sub_216DDA0F4(v11, v12);
  sub_216BD4F2C();

  sub_2166997CC(v10, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216D720F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD8, &qword_2170142E0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D7225C, v6, v5);
}

uint64_t sub_216D7225C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_217060038);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D723A4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216D724E8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D724E8()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_119();
  sub_216DD9B04();
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_216D725A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for ReplayYearModel(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D726FC, v6, v5);
}

uint64_t sub_216D726FC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_217060578);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D72844()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216D72988;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D72988()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_332();
  v1 = OUTLINED_FUNCTION_119();
  sub_216DDA0F4(v1, v2);
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216D72A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21700DD44();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for ReplayModel(0);
  v3[9] = swift_task_alloc();
  v5 = sub_217007C24();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[13] = swift_task_alloc();
  v6 = sub_21700DD54();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v3[18] = v8;
  v3[19] = v7;

  return MEMORY[0x2822009F8](sub_216D72C48, v8, v7);
}

uint64_t sub_216D72C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_735();
  v11 = OUTLINED_FUNCTION_110();
  v12 = type metadata accessor for ObjectGraph(v11);
  OUTLINED_FUNCTION_520(v12);
  OUTLINED_FUNCTION_444();
  v13 = OUTLINED_FUNCTION_436();
  v14(v13);
  OUTLINED_FUNCTION_1200();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  sub_21700DB74();
  OUTLINED_FUNCTION_26_21();

  sub_21700D4F4();
  OUTLINED_FUNCTION_52_16();

  sub_21700DB54();
  OUTLINED_FUNCTION_1180();

  v17 = sub_21700DB64();
  OUTLINED_FUNCTION_958(v17);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_1132();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  __swift_project_value_buffer(v18, qword_280E73E38);
  v19 = OUTLINED_FUNCTION_452();
  v20(v19);
  v21 = OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_950(v21, v22, v23);
  OUTLINED_FUNCTION_378(&qword_21705F988);
  OUTLINED_FUNCTION_1184();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v10 + 176) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_256_0(v24);
  OUTLINED_FUNCTION_1078();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_216D72DC4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216DDA2CC;
  }

  else
  {
    v8 = sub_216D72F00;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D72F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_787();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_171_1();
  v11 = OUTLINED_FUNCTION_109_2();
  sub_216DDA0F4(v11, v12);
  sub_216BD4F2C();

  sub_2166997CC(v10, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216D72FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for SectionChangeInstruction(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D73118, v6, v5);
}

uint64_t sub_216D73118()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705F658);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D73260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B88, &qword_2170141F8);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D733C8, v6, v5);
}

uint64_t sub_216D733C8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705F6F8);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D73510()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216D73654;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D73654()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_119();
  sub_216DD9B04();
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_216D7370C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21700DD44();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for JSSearchPage(0);
  v3[9] = swift_task_alloc();
  v5 = sub_217007C24();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[13] = swift_task_alloc();
  v6 = sub_21700DD54();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v3[18] = v8;
  v3[19] = v7;

  return MEMORY[0x2822009F8](sub_216D73920, v8, v7);
}

uint64_t sub_216D73920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_735();
  v11 = OUTLINED_FUNCTION_110();
  v12 = type metadata accessor for ObjectGraph(v11);
  OUTLINED_FUNCTION_520(v12);
  OUTLINED_FUNCTION_444();
  v13 = OUTLINED_FUNCTION_436();
  v14(v13);
  OUTLINED_FUNCTION_1200();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  sub_21700DB74();
  OUTLINED_FUNCTION_26_21();

  sub_21700D4F4();
  OUTLINED_FUNCTION_52_16();

  sub_21700DB54();
  OUTLINED_FUNCTION_1180();

  v17 = sub_21700DB64();
  OUTLINED_FUNCTION_958(v17);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_1132();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  __swift_project_value_buffer(v18, qword_280E73E38);
  v19 = OUTLINED_FUNCTION_452();
  v20(v19);
  v21 = OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_950(v21, v22, v23);
  OUTLINED_FUNCTION_378(&qword_21705F548);
  OUTLINED_FUNCTION_1184();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v10 + 176) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_256_0(v24);
  OUTLINED_FUNCTION_1078();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_216D73A9C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216DDA2CC;
  }

  else
  {
    v8 = sub_216D73BD8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D73BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_787();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_169_1();
  v11 = OUTLINED_FUNCTION_109_2();
  sub_216DDA0F4(v11, v12);
  sub_216BD4F2C();

  sub_2166997CC(v10, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216D73C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for SectionChangeInstruction(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D73DF0, v6, v5);
}

uint64_t sub_216D73DF0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705F9F8);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D73F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B90, &qword_217014200);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D740A0, v6, v5);
}

uint64_t sub_216D740A0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_21705FB58);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D741E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216D7432C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D7432C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_119();
  sub_216DD9B04();
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_216D743E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for JSReplayPage(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D74540, v6, v5);
}

uint64_t sub_216D74540()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_2170605D0);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D74688()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216D74878;
  }

  else
  {
    v8 = sub_216D747CC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D747CC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_70_12();
  v1 = OUTLINED_FUNCTION_119();
  sub_216DDA0F4(v1, v2);
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216D74878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  v11 = *(v10 + 80);

  sub_2166997CC(v11, &qword_27CAB82E8, &unk_217067FA0);
  sub_216BD7C24();
  OUTLINED_FUNCTION_485();
  v12 = swift_allocError();
  OUTLINED_FUNCTION_990(v12, v13);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_74_12();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_216D74948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_21700DD44();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for JSSearchResultsPage(0);
  v3[9] = swift_task_alloc();
  v5 = sub_217007C24();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[13] = swift_task_alloc();
  v6 = sub_21700DD54();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v3[18] = v8;
  v3[19] = v7;

  return MEMORY[0x2822009F8](sub_216D74B5C, v8, v7);
}

uint64_t sub_216D74B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_735();
  v11 = OUTLINED_FUNCTION_110();
  v12 = type metadata accessor for ObjectGraph(v11);
  OUTLINED_FUNCTION_520(v12);
  OUTLINED_FUNCTION_444();
  v13 = OUTLINED_FUNCTION_436();
  v14(v13);
  OUTLINED_FUNCTION_1200();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  sub_21700DB74();
  OUTLINED_FUNCTION_26_21();

  sub_21700D4F4();
  OUTLINED_FUNCTION_52_16();

  sub_21700DB54();
  OUTLINED_FUNCTION_1180();

  v17 = sub_21700DB64();
  OUTLINED_FUNCTION_958(v17);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_1132();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  __swift_project_value_buffer(v18, qword_280E73E38);
  v19 = OUTLINED_FUNCTION_452();
  v20(v19);
  v21 = OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_950(v21, v22, v23);
  OUTLINED_FUNCTION_378(&qword_217060328);
  OUTLINED_FUNCTION_1184();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v10 + 176) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_256_0(v24);
  OUTLINED_FUNCTION_1078();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_216D74CD8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 184) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 152);
  v7 = *(v1 + 144);
  if (v0)
  {
    v8 = sub_216D74ED0;
  }

  else
  {
    v8 = sub_216D74E14;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D74E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_787();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_167_1();
  v11 = OUTLINED_FUNCTION_109_2();
  sub_216DDA0F4(v11, v12);
  sub_216BD4F2C();

  sub_2166997CC(v10, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_36_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216D74ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  v15 = v14[23];
  v16 = v14[13];
  v17 = v14[8];
  v34 = v14[9];
  v19 = v14[6];
  v18 = v14[7];

  sub_2166997CC(v16, &qword_27CAB82E8, &unk_217067FA0);
  *v17 = v15;
  (*(v18 + 104))(v17, *MEMORY[0x277D22280], v19);
  v20 = v15;
  sub_21700DD84();
  v21 = OUTLINED_FUNCTION_208_0();
  v22(v21);
  sub_216BD7C24();
  OUTLINED_FUNCTION_485();
  v23 = swift_allocError();
  OUTLINED_FUNCTION_990(v23, v24);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, a11, a12, a13, a14);
}

uint64_t sub_216D7500C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for SectionChangeInstruction(0);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D75168, v6, v5);
}

uint64_t sub_216D75168()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_217060438);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D752B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216D753F4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D753F4()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_37_40();
  v1 = OUTLINED_FUNCTION_119();
  sub_216DDA0F4(v1, v2);
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216D754A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE0, &qword_2170142E8);
  v3[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82E8, &unk_217067FA0);
  v3[10] = swift_task_alloc();
  sub_21700EA34();
  v3[11] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_216D75608, v6, v5);
}

uint64_t sub_216D75608()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1035();
  v0 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for ObjectGraph(v0);
  OUTLINED_FUNCTION_677();
  OUTLINED_FUNCTION_202_1();
  sub_21700E094();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_41_2();

  sub_21700D4F4();
  OUTLINED_FUNCTION_47();

  sub_21700DB54();
  OUTLINED_FUNCTION_43_29();

  v1 = sub_21700DB64();
  OUTLINED_FUNCTION_1058(v1);
  if (qword_280E485C8 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_280E485C8);
  }

  OUTLINED_FUNCTION_317();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82F0, &unk_2170506C0);
  v3 = OUTLINED_FUNCTION_152_1(v2, qword_280E73E38);
  v5 = v4(v3);
  OUTLINED_FUNCTION_414(v5, "Fetch");
  OUTLINED_FUNCTION_230_1(&dword_2170604D8);

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_208_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_90_10(v7);
  OUTLINED_FUNCTION_47_8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_216D75750()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 104);
  v7 = *(v1 + 96);
  if (v0)
  {
    v8 = sub_216DDA40C;
  }

  else
  {
    v8 = sub_216D75894;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216D75894()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_362();
  OUTLINED_FUNCTION_119();
  sub_216DD9B04();
  sub_216BD4F2C();

  sub_2166997CC(v0, &qword_27CAB82E8, &unk_217067FA0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_12_7();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_216D7594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_26();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_1037();
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v25 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v25, qword_280E2C160);

  v26 = sub_217007C84();
  v27 = sub_21700EDA4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_96();
    a10 = OUTLINED_FUNCTION_45_19();
    *v28 = 136446210;

    v29 = OUTLINED_FUNCTION_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v31 = sub_21700E5B4();
    v33 = sub_2166A85FC(v31, v32, &a10);

    *(v28 + 4) = v33;
    OUTLINED_FUNCTION_1274(&dword_216679000, v34, v35, "Update cancelled: %{public}s");
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  OUTLINED_FUNCTION_7_0();
  v37 = *(v22 + *(v36 + 144));

  sub_216DD43B8(v38, v37);

  OUTLINED_FUNCTION_7_0();
  v40 = *(v39 + 272);
  v41 = *(v22 + v40);
  v42 = __OFSUB__(v41, 1);
  v43 = v41 - 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v22 + v40) = v43;
    OUTLINED_FUNCTION_74_0();
    sub_216D6374C();
    OUTLINED_FUNCTION_28_5();
  }
}

void sub_216D75AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_26();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_1037();
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v26 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v26, qword_280E2C160);

  v27 = sub_217007C84();
  v28 = sub_21700EDA4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_96();
    a10 = OUTLINED_FUNCTION_45_19();
    *v29 = 136446210;

    v30 = OUTLINED_FUNCTION_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    v32 = sub_21700E5B4();
    v34 = sub_2166A85FC(v32, v33, &a10);

    *(v29 + 4) = v34;
    OUTLINED_FUNCTION_1274(&dword_216679000, v35, v36, "Update cancelled: %{public}s");
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  OUTLINED_FUNCTION_7_0();
  sub_216DD43B8(*(v23 + 80), *(v22 + *(v37 + 144)));
  OUTLINED_FUNCTION_7_0();
  v39 = *(v38 + 272);
  v40 = *(v22 + v39);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v22 + v39) = v42;
    OUTLINED_FUNCTION_74_0();
    sub_216D6374C();
    OUTLINED_FUNCTION_28_5();
  }
}

void sub_216D75C20(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0, &qword_21705EAC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB0, &qword_21705EAE8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v15 = sub_217007CA4();
  __swift_project_value_buffer(v15, qword_280E2C160);
  sub_216DD9F00();
  v16 = a2;
  v17 = sub_217007C84();
  v18 = sub_21700ED84();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v18;
    v20 = v19;
    v44 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136446466;
    v47 = a2;
    v48[0] = v21;
    sub_216DD9F00();
    v22 = sub_21700E5B4();
    v43 = v17;
    v24 = v23;
    sub_2166997CC(v14, &qword_27CAC8AB0, &qword_21705EAE8);
    v25 = sub_2166A85FC(v22, v24, v48);

    *(v20 + 4) = v25;
    a2 = v47;
    *(v20 + 12) = 2114;
    v26 = a2;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v27;
    v29 = v43;
    v28 = v44;
    *v44 = v27;
    _os_log_impl(&dword_216679000, v29, v45, "Update failed: %{public}s with error: %{public}@", v20, 0x16u);
    sub_2166997CC(v28, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v28, -1, -1);
    v30 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x21CEA1440](v30, -1, -1);
    MEMORY[0x21CEA1440](v20, -1, -1);
  }

  else
  {

    sub_2166997CC(v14, &qword_27CAC8AB0, &qword_21705EAE8);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v31) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v33 = &qword_27CAC0668;
      v34 = &qword_2170390F0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v10, &qword_27CAC0668, &qword_2170390F0);
        goto LABEL_13;
      }
    }

    else
    {
      v33 = &qword_27CAC0670;
      v34 = &qword_2170390F8;
    }

    sub_2166997CC(v10, v33, v34);
  }

  v35 = swift_allocObject();
  swift_weakInit();
  *v7 = a2;
  v7[1] = sub_216DDA2D0;
  v7[2] = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v31);
  v36 = a2;

  sub_216D636C8(v7, &qword_27CAC8AA0, &qword_21705EAC8, sub_216D62B4C);

LABEL_13:
  v37 = *(v3 + *(*v3 + 144));

  sub_216DD43B8(v38, v37);

  v39 = *(*v3 + 272);
  v40 = *(v3 + v39);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v39) = v42;
    sub_216D6374C();
  }
}

void sub_216D76170()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_573(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0, &qword_21705EAC8);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_0();
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v14 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v14, qword_280E2C160);

  v15 = v4;
  v16 = sub_217007C84();
  v17 = sub_21700ED84();

  if (OUTLINED_FUNCTION_1164())
  {
    OUTLINED_FUNCTION_544();
    swift_slowAlloc();
    OUTLINED_FUNCTION_1012();
    v45 = OUTLINED_FUNCTION_45_19();
    *v2 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v3);
    v18 = sub_21700E5B4();
    v17 = v19;
    sub_2166A85FC(v18, v19, &v45);
    OUTLINED_FUNCTION_771();
    OUTLINED_FUNCTION_579();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_1086(v20);
    OUTLINED_FUNCTION_900(&dword_216679000, v21, v22, "Update failed: %{public}s with error: %{public}@");
    sub_2166997CC(v17, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_205();
    v2 = v43;
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783(v0 + *(v23 + 216));
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  OUTLINED_FUNCTION_5_3(v5);
  if (!v24)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC0668;
      v27 = &qword_2170390F0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v5, &qword_27CAC0668, &qword_2170390F0);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC0670;
      v27 = &qword_2170390F8;
    }

    sub_2166997CC(v5, v26, v27);
  }

  OUTLINED_FUNCTION_143();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_1048(v28);
  *v1 = v4;
  v1[1] = v2;
  v1[2] = v17;
  OUTLINED_FUNCTION_158();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_303();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = v4;

  OUTLINED_FUNCTION_60_13();
  v34 = OUTLINED_FUNCTION_1256();
  sub_216D636C8(v34, v35, v36, v37);

LABEL_12:
  v38 = *(v0 + *(*v0 + 144));

  sub_216DD43B8(v39, v38);

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_940();
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v40) = v41;
    OUTLINED_FUNCTION_159_1();
    OUTLINED_FUNCTION_26();
  }
}

void sub_216D76488(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0, &qword_21705EAC8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AD8, &qword_21705EC28);
    v17 = sub_21700E5B4();
    v19 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2114;
    v20 = a2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    v22 = v36;
    *v36 = v21;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v22, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v22, -1, -1);
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v23, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v24) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC0668;
      v27 = &qword_2170390F0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0668, &qword_2170390F0);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC0670;
      v27 = &qword_2170390F8;
    }

    sub_2166997CC(v11, v26, v27);
  }

  v28 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D0;
  v8[2] = v28;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v24);
  v29 = a2;

  sub_216D636C8(v8, &qword_27CAC8AA0, &qword_21705EAC8, sub_216D62B4C);

LABEL_12:
  v30 = *(v3 + *(*v3 + 144));

  sub_216DD43B8(v31, v30);

  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D768EC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_573(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AA0, &qword_21705EAC8);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_0();
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v14 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v14, qword_280E2C160);

  v15 = v4;
  v16 = sub_217007C84();
  v17 = sub_21700ED84();

  if (OUTLINED_FUNCTION_1164())
  {
    OUTLINED_FUNCTION_544();
    swift_slowAlloc();
    OUTLINED_FUNCTION_1012();
    v45 = OUTLINED_FUNCTION_45_19();
    *v2 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v3);
    v18 = sub_21700E5B4();
    v17 = v19;
    sub_2166A85FC(v18, v19, &v45);
    OUTLINED_FUNCTION_771();
    OUTLINED_FUNCTION_579();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_1086(v20);
    OUTLINED_FUNCTION_900(&dword_216679000, v21, v22, "Update failed: %{public}s with error: %{public}@");
    sub_2166997CC(v17, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_205();
    v2 = v43;
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783(v0 + *(v23 + 216));
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  OUTLINED_FUNCTION_5_3(v5);
  if (!v24)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC0668;
      v27 = &qword_2170390F0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v5, &qword_27CAC0668, &qword_2170390F0);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC0670;
      v27 = &qword_2170390F8;
    }

    sub_2166997CC(v5, v26, v27);
  }

  OUTLINED_FUNCTION_143();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_1048(v28);
  *v1 = v4;
  v1[1] = v2;
  v1[2] = v17;
  OUTLINED_FUNCTION_158();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_303();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = v4;

  OUTLINED_FUNCTION_60_13();
  v34 = OUTLINED_FUNCTION_1256();
  sub_216D636C8(v34, v35, v36, v37);

LABEL_12:
  v38 = *(v0 + *(*v0 + 144));

  sub_216DD43B8(v39, v38);

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_940();
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v40) = v41;
    OUTLINED_FUNCTION_159_1();
    OUTLINED_FUNCTION_26();
  }
}

void sub_216D76C04(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9468, &qword_21705FC98);
    v17 = sub_21700E5B4();
    v19 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2114;
    v20 = a2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    v22 = v36;
    *v36 = v21;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v22, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v22, -1, -1);
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v23, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v11, 1, v24) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC06F0;
      v27 = &qword_21705FC00;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06F0, &qword_21705FC00);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC06F8;
      v27 = &unk_2170394F0;
    }

    sub_2166997CC(v11, v26, v27);
  }

  v28 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2DC;
  v8[2] = v28;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v24);
  v29 = a2;

  sub_216D636C8(v8, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);

LABEL_12:
  v30 = *(v3 + *(*v3 + 144));

  sub_216DD43B8(v31, v30);

  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D77068(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9480, &qword_21705FCE0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v15 = sub_217007CA4();
  __swift_project_value_buffer(v15, qword_280E2C160);
  sub_216DD9F00();
  v16 = a2;
  v17 = sub_217007C84();
  v18 = sub_21700ED84();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v18;
    v20 = v19;
    v44 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136446466;
    v47 = a2;
    v48[0] = v21;
    sub_216DD9F00();
    v22 = sub_21700E5B4();
    v43 = v17;
    v24 = v23;
    sub_2166997CC(v14, &qword_27CAC9480, &qword_21705FCE0);
    v25 = sub_2166A85FC(v22, v24, v48);

    *(v20 + 4) = v25;
    a2 = v47;
    *(v20 + 12) = 2114;
    v26 = a2;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v27;
    v29 = v43;
    v28 = v44;
    *v44 = v27;
    _os_log_impl(&dword_216679000, v29, v45, "Update failed: %{public}s with error: %{public}@", v20, 0x16u);
    sub_2166997CC(v28, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v28, -1, -1);
    v30 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x21CEA1440](v30, -1, -1);
    MEMORY[0x21CEA1440](v20, -1, -1);
  }

  else
  {

    sub_2166997CC(v14, &qword_27CAC9480, &qword_21705FCE0);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v10, 1, v31) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v33 = &qword_27CAC06F0;
      v34 = &qword_21705FC00;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v10, &qword_27CAC06F0, &qword_21705FC00);
        goto LABEL_13;
      }
    }

    else
    {
      v33 = &qword_27CAC06F8;
      v34 = &unk_2170394F0;
    }

    sub_2166997CC(v10, v33, v34);
  }

  v35 = swift_allocObject();
  swift_weakInit();
  *v7 = a2;
  v7[1] = sub_216DDA2DC;
  v7[2] = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v31);
  v36 = a2;

  sub_216D636C8(v7, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);

LABEL_13:
  v37 = *(v3 + *(*v3 + 144));

  sub_216DD43B8(v38, v37);

  v39 = *(*v3 + 272);
  v40 = *(v3 + v39);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v39) = v42;
    sub_216D6374C();
  }
}

void sub_216D775B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94A8, &qword_21705FD40);
    v17 = sub_21700E5B4();
    v19 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2114;
    v20 = a2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    v22 = v36;
    *v36 = v21;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v22, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v22, -1, -1);
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v23, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v11, 1, v24) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC06F0;
      v27 = &qword_21705FC00;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06F0, &qword_21705FC00);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC06F8;
      v27 = &unk_2170394F0;
    }

    sub_2166997CC(v11, v26, v27);
  }

  v28 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2DC;
  v8[2] = v28;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v24);
  v29 = a2;

  sub_216D636C8(v8, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);

LABEL_12:
  v30 = *(v3 + *(*v3 + 144));

  sub_216DD43B8(v31, v30);

  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D77A1C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC94B0, &qword_21705FD68);
    v17 = sub_21700E5B4();
    v19 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2114;
    v20 = a2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    v22 = v36;
    *v36 = v21;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v22, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v22, -1, -1);
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v23, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v11, 1, v24) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC06F0;
      v27 = &qword_21705FC00;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06F0, &qword_21705FC00);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC06F8;
      v27 = &unk_2170394F0;
    }

    sub_2166997CC(v11, v26, v27);
  }

  v28 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2DC;
  v8[2] = v28;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v24);
  v29 = a2;

  sub_216D636C8(v8, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);

LABEL_12:
  v30 = *(v3 + *(*v3 + 144));

  sub_216DD43B8(v31, v30);

  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D77E80(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9648, &qword_21705FFC0);
    v17 = sub_21700E5B4();
    v19 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2114;
    v20 = a2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    v22 = v36;
    *v36 = v21;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v22, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v22, -1, -1);
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v23, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  if (__swift_getEnumTagSinglePayload(v11, 1, v24) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC06F0;
      v27 = &qword_21705FC00;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06F0, &qword_21705FC00);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC06F8;
      v27 = &unk_2170394F0;
    }

    sub_2166997CC(v11, v26, v27);
  }

  v28 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2DC;
  v8[2] = v28;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v24);
  v29 = a2;

  sub_216D636C8(v8, &qword_27CAC9470, &qword_21705FCC0, sub_216D62D98);

LABEL_12:
  v30 = *(v3 + *(*v3 + 144));

  sub_216DD43B8(v31, v30);

  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D782E4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_573(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9470, &qword_21705FCC0);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_0();
  if (qword_280E2C158 != -1)
  {
    OUTLINED_FUNCTION_0_118(&qword_280E2C158);
  }

  v14 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v14, qword_280E2C160);

  v15 = v4;
  v16 = sub_217007C84();
  v17 = sub_21700ED84();

  if (OUTLINED_FUNCTION_1164())
  {
    OUTLINED_FUNCTION_544();
    swift_slowAlloc();
    OUTLINED_FUNCTION_1012();
    v45 = OUTLINED_FUNCTION_45_19();
    *v2 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v3);
    v18 = sub_21700E5B4();
    v17 = v19;
    sub_2166A85FC(v18, v19, &v45);
    OUTLINED_FUNCTION_771();
    OUTLINED_FUNCTION_579();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_1086(v20);
    OUTLINED_FUNCTION_900(&dword_216679000, v21, v22, "Update failed: %{public}s with error: %{public}@");
    sub_2166997CC(v17, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_205();
    v2 = v43;
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_783(v0 + *(v23 + 216));
  sub_216DD9F00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  OUTLINED_FUNCTION_5_3(v5);
  if (!v24)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = &qword_27CAC06F0;
      v27 = &qword_21705FC00;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v5, &qword_27CAC06F0, &qword_21705FC00);
        goto LABEL_12;
      }
    }

    else
    {
      v26 = &qword_27CAC06F8;
      v27 = &unk_2170394F0;
    }

    sub_2166997CC(v5, v26, v27);
  }

  OUTLINED_FUNCTION_143();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_1048(v28);
  *v1 = v4;
  v1[1] = v2;
  v1[2] = v17;
  OUTLINED_FUNCTION_158();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_303();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = v4;

  OUTLINED_FUNCTION_179_0();
  v34 = OUTLINED_FUNCTION_1256();
  sub_216D636C8(v34, v35, v36, v37);

LABEL_12:
  v38 = *(v0 + *(*v0 + 144));

  sub_216DD43B8(v39, v38);

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_940();
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v40) = v41;
    OUTLINED_FUNCTION_419();
    OUTLINED_FUNCTION_26();
  }
}

void sub_216D785FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9930, &qword_217060540);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D78A4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D0, &qword_21705F7F0);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v16 = sub_217007CA4();
  __swift_project_value_buffer(v16, qword_280E2C160);
  sub_216DD9F00();
  v17 = a2;
  v18 = sub_217007C84();
  v19 = sub_21700ED84();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v19;
    v21 = v20;
    v47 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v49 = v22;
    *v21 = 136446466;
    v50 = a2;
    v51[0] = v22;
    sub_216DD9F00();
    v23 = sub_21700E5B4();
    v46 = v18;
    v24 = v11;
    v25 = v8;
    v26 = v12;
    v27 = a1;
    v29 = v28;
    sub_2166997CC(v15, &qword_27CAC91D0, &qword_21705F7F0);
    v30 = sub_2166A85FC(v23, v29, v51);
    a1 = v27;
    v12 = v26;
    v8 = v25;
    v11 = v24;

    *(v21 + 4) = v30;
    a2 = v50;
    *(v21 + 12) = 2114;
    v31 = a2;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v32;
    v34 = v46;
    v33 = v47;
    *v47 = v32;
    _os_log_impl(&dword_216679000, v34, v48, "Update failed: %{public}s with error: %{public}@", v21, 0x16u);
    sub_2166997CC(v33, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v33, -1, -1);
    v35 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v21, -1, -1);
  }

  else
  {

    sub_2166997CC(v15, &qword_27CAC91D0, &qword_21705F7F0);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v36) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v38 = &qword_27CAC06A8;
      v39 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_13;
      }
    }

    else
    {
      v38 = &qword_27CAC06B0;
      v39 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v38, v39);
  }

  v40 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v40;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v36);
  v41 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_13:
  sub_216DD43B8(*(a1 + *(v12 + 36)), *(v3 + *(*v3 + 144)));
  v42 = *(*v3 + 272);
  v43 = *(v3 + v42);
  v44 = __OFSUB__(v43, 1);
  v45 = v43 - 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v42) = v45;
    sub_216D6374C();
  }
}

void sub_216D78F88(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E0, &qword_21705F850);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D793D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91E8, &qword_21705F878);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 72), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D79828(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for ReplaceReplayYearUpdate(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v18 = sub_217007CA4();
  __swift_project_value_buffer(v18, qword_280E2C160);
  sub_216DDA0A0(a1, v17);
  v19 = a2;
  v20 = sub_217007C84();
  v21 = sub_21700ED84();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v51 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v50 = a1;
    v48 = v26;
    v52[0] = v26;
    *v23 = 136446466;
    sub_216DDA0A0(v17, v14);
    v27 = sub_21700E5B4();
    v28 = v12;
    v30 = v29;
    sub_216DDA050();
    v31 = sub_2166A85FC(v27, v30, v52);
    v12 = v28;

    *(v23 + 4) = v31;
    *(v23 + 12) = 2114;
    v32 = v51;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v33;
    *v25 = v33;
    _os_log_impl(&dword_216679000, v20, v21, "Update failed: %{public}s with error: %{public}@", v23, 0x16u);
    sub_2166997CC(v25, &qword_27CABF880, &unk_21701D6E0);
    v34 = v25;
    a2 = v51;
    MEMORY[0x21CEA1440](v34, -1, -1);
    v35 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    a1 = v50;
    MEMORY[0x21CEA1440](v35, -1, -1);
    v36 = v23;
    v11 = v49;
    MEMORY[0x21CEA1440](v36, -1, -1);
  }

  else
  {

    sub_216DDA050();
  }

  swift_beginAccess();
  sub_216DD9F00();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v37) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v39 = &qword_27CAC06A8;
      v40 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_13;
      }
    }

    else
    {
      v39 = &qword_27CAC06B0;
      v40 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v39, v40);
  }

  v41 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v41;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v37);
  v42 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_13:
  sub_216DD43B8(*(a1 + *(v12 + 20)), *(v3 + *(*v3 + 144)));
  v43 = *(*v3 + 272);
  v44 = *(v3 + v43);
  v45 = __OFSUB__(v44, 1);
  v46 = v44 - 1;
  if (v45)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v43) = v46;
    sub_216D6374C();
  }
}

void sub_216D79D54(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90D0, &qword_21705F608);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0690;
      v29 = &qword_2170392A0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0690, &qword_2170392A0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06A0;
      v29 = &qword_2170392B0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D4;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7A1A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC8, &qword_21705F310);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v16 = sub_217007CA4();
  __swift_project_value_buffer(v16, qword_280E2C160);
  sub_216DD9F00();
  v17 = a2;
  v18 = sub_217007C84();
  v19 = sub_21700ED84();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v19;
    v21 = v20;
    v47 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v49 = v22;
    *v21 = 136446466;
    v50 = a2;
    v51[0] = v22;
    sub_216DD9F00();
    v23 = sub_21700E5B4();
    v46 = v18;
    v24 = v11;
    v25 = v8;
    v26 = v12;
    v27 = a1;
    v29 = v28;
    sub_2166997CC(v15, &qword_27CAC8EC8, &qword_21705F310);
    v30 = sub_2166A85FC(v23, v29, v51);
    a1 = v27;
    v12 = v26;
    v8 = v25;
    v11 = v24;

    *(v21 + 4) = v30;
    a2 = v50;
    *(v21 + 12) = 2114;
    v31 = a2;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v32;
    v34 = v46;
    v33 = v47;
    *v47 = v32;
    _os_log_impl(&dword_216679000, v34, v48, "Update failed: %{public}s with error: %{public}@", v21, 0x16u);
    sub_2166997CC(v33, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v33, -1, -1);
    v35 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v21, -1, -1);
  }

  else
  {

    sub_2166997CC(v15, &qword_27CAC8EC8, &qword_21705F310);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v36) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v38 = &qword_27CAC0690;
      v39 = &qword_2170392A0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0690, &qword_2170392A0);
        goto LABEL_13;
      }
    }

    else
    {
      v38 = &qword_27CAC06A0;
      v39 = &qword_2170392B0;
    }

    sub_2166997CC(v11, v38, v39);
  }

  v40 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D4;
  v8[2] = v40;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v36);
  v41 = a2;

  sub_216D636C8(v8, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);

LABEL_13:
  sub_216DD43B8(*(a1 + *(v12 + 36)), *(v3 + *(*v3 + 144)));
  v42 = *(*v3 + 272);
  v43 = *(v3 + v42);
  v44 = __OFSUB__(v43, 1);
  v45 = v43 - 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v42) = v45;
    sub_216D6374C();
  }
}

void sub_216D7A6E0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90D8, &qword_21705F630);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0690;
      v29 = &qword_2170392A0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0690, &qword_2170392A0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06A0;
      v29 = &qword_2170392B0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DD6ED8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);

LABEL_12:
  sub_216DD43B8(*(a1 + 16), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7AB30(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC90F8, &qword_21705F680);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0690;
      v29 = &qword_2170392A0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0690, &qword_2170392A0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06A0;
      v29 = &qword_2170392B0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D4;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7AF80(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9100, &qword_21705F6A8);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0690;
      v29 = &qword_2170392A0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0690, &qword_2170392A0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06A0;
      v29 = &qword_2170392B0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D4;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);

LABEL_12:
  sub_216DD43B8(*(a1 + 16), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7B3D0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB0, &qword_21705F2B0);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0690;
      v29 = &qword_2170392A0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0690, &qword_2170392A0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06A0;
      v29 = &qword_2170392B0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D4;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7B820(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EB8, &unk_21705F2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EC0, &unk_21705F2F0);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0690;
      v29 = &qword_2170392A0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0690, &qword_2170392A0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06A0;
      v29 = &qword_2170392B0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D4;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC8EB8, &unk_21705F2E0, sub_216D63230);

LABEL_12:
  sub_216DD43B8(*(a1 + 72), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7BC70(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91B8, &qword_21705F7A8);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7C0C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C8, &qword_21705F7D8);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DD7BF4;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 16), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7C510(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92E0, &qword_21705FA38);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7C960(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92E8, &qword_21705FA60);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 16), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7CDB0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9940, &qword_217060598);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC06A8;
      v29 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC06B0;
      v29 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7D200(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91C0, &qword_21705F7D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for ReplaceReplayPageUpdate(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v18 = sub_217007CA4();
  __swift_project_value_buffer(v18, qword_280E2C160);
  sub_216DDA0A0(a1, v17);
  v19 = a2;
  v20 = sub_217007C84();
  v21 = sub_21700ED84();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v51 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v50 = a1;
    v48 = v26;
    v52[0] = v26;
    *v23 = 136446466;
    sub_216DDA0A0(v17, v14);
    v27 = sub_21700E5B4();
    v28 = v12;
    v30 = v29;
    sub_216DDA050();
    v31 = sub_2166A85FC(v27, v30, v52);
    v12 = v28;

    *(v23 + 4) = v31;
    *(v23 + 12) = 2114;
    v32 = v51;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v33;
    *v25 = v33;
    _os_log_impl(&dword_216679000, v20, v21, "Update failed: %{public}s with error: %{public}@", v23, 0x16u);
    sub_2166997CC(v25, &qword_27CABF880, &unk_21701D6E0);
    v34 = v25;
    a2 = v51;
    MEMORY[0x21CEA1440](v34, -1, -1);
    v35 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    a1 = v50;
    MEMORY[0x21CEA1440](v35, -1, -1);
    v36 = v23;
    v11 = v49;
    MEMORY[0x21CEA1440](v36, -1, -1);
  }

  else
  {

    sub_216DDA050();
  }

  swift_beginAccess();
  sub_216DD9F00();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v37) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v39 = &qword_27CAC06A8;
      v40 = &qword_2170392C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC06A8, &qword_2170392C0);
        goto LABEL_13;
      }
    }

    else
    {
      v39 = &qword_27CAC06B0;
      v40 = &qword_2170392C8;
    }

    sub_2166997CC(v11, v39, v40);
  }

  v41 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2D8;
  v8[2] = v41;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v37);
  v42 = a2;

  sub_216D636C8(v8, &qword_27CAC91C0, &qword_21705F7D0, sub_216D62FE4);

LABEL_13:
  sub_216DD43B8(*(a1 + *(v12 + 20)), *(v3 + *(*v3 + 144)));
  v43 = *(*v3 + 272);
  v44 = *(v3 + v43);
  v45 = __OFSUB__(v44, 1);
  v46 = v44 - 1;
  if (v45)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v43) = v46;
    sub_216D6374C();
  }
}

void sub_216D7D72C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96A8, &qword_217060088);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0708;
      v29 = &qword_2170600C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0708, &qword_2170600C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC0718;
      v29 = &qword_2170600D0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2E0;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7DB7C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96C0, &qword_2170600E8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v16 = sub_217007CA4();
  __swift_project_value_buffer(v16, qword_280E2C160);
  sub_216DD9F00();
  v17 = a2;
  v18 = sub_217007C84();
  v19 = sub_21700ED84();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v19;
    v21 = v20;
    v47 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v49 = v22;
    *v21 = 136446466;
    v50 = a2;
    v51[0] = v22;
    sub_216DD9F00();
    v23 = sub_21700E5B4();
    v46 = v18;
    v24 = v11;
    v25 = v8;
    v26 = v12;
    v27 = a1;
    v29 = v28;
    sub_2166997CC(v15, &qword_27CAC96C0, &qword_2170600E8);
    v30 = sub_2166A85FC(v23, v29, v51);
    a1 = v27;
    v12 = v26;
    v8 = v25;
    v11 = v24;

    *(v21 + 4) = v30;
    a2 = v50;
    *(v21 + 12) = 2114;
    v31 = a2;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v32;
    v34 = v46;
    v33 = v47;
    *v47 = v32;
    _os_log_impl(&dword_216679000, v34, v48, "Update failed: %{public}s with error: %{public}@", v21, 0x16u);
    sub_2166997CC(v33, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v33, -1, -1);
    v35 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v21, -1, -1);
  }

  else
  {

    sub_2166997CC(v15, &qword_27CAC96C0, &qword_2170600E8);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v36) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v38 = &qword_27CAC0708;
      v39 = &qword_2170600C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0708, &qword_2170600C0);
        goto LABEL_13;
      }
    }

    else
    {
      v38 = &qword_27CAC0718;
      v39 = &qword_2170600D0;
    }

    sub_2166997CC(v11, v38, v39);
  }

  v40 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2E0;
  v8[2] = v40;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v36);
  v41 = a2;

  sub_216D636C8(v8, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);

LABEL_13:
  sub_216DD43B8(*(a1 + *(v12 + 36)), *(v3 + *(*v3 + 144)));
  v42 = *(*v3 + 272);
  v43 = *(v3 + v42);
  v44 = __OFSUB__(v43, 1);
  v45 = v43 - 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v42) = v45;
    sub_216D6374C();
  }
}

void sub_216D7E0B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B8, &qword_2170600C8);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0708;
      v29 = &qword_2170600C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0708, &qword_2170600C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC0718;
      v29 = &qword_2170600D0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2E0;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);

LABEL_12:
  sub_216DD43B8(*(a1 + 72), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7E508(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9898, &qword_2170603E8);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0708;
      v29 = &qword_2170600C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0708, &qword_2170600C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC0718;
      v29 = &qword_2170600D0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2E0;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7E958(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98A0, &qword_217060410);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0708;
      v29 = &qword_2170600C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0708, &qword_2170600C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC0718;
      v29 = &qword_2170600D0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DD99CC;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);

LABEL_12:
  sub_216DD43B8(*(a1 + 16), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7EDA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98C0, &qword_217060460);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0708;
      v29 = &qword_2170600C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0708, &qword_2170600C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC0718;
      v29 = &qword_2170600D0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2E0;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);

LABEL_12:
  sub_216DD43B8(*(a1 + 80), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

void sub_216D7F1F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC96B0, &qword_2170600B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  if (qword_280E2C158 != -1)
  {
    swift_once();
  }

  v12 = sub_217007CA4();
  __swift_project_value_buffer(v12, qword_280E2C160);

  v13 = a2;
  v14 = sub_217007C84();
  v15 = sub_21700ED84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = a1;
    v39[0] = v37;
    *v16 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC98C8, &qword_217060488);
    v17 = sub_21700E5B4();
    v19 = a2;
    v20 = a1;
    v21 = sub_2166A85FC(v17, v18, v39);

    *(v16 + 4) = v21;
    a1 = v20;
    a2 = v19;
    *(v16 + 12) = 2114;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v36;
    *v36 = v23;
    _os_log_impl(&dword_216679000, v14, v15, "Update failed: %{public}s with error: %{public}@", v16, 0x16u);
    sub_2166997CC(v24, &qword_27CABF880, &unk_21701D6E0);
    MEMORY[0x21CEA1440](v24, -1, -1);
    v25 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }

  swift_beginAccess();
  sub_216DD9F00();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0708, &qword_2170600C0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = &qword_27CAC0708;
      v29 = &qword_2170600C0;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2166997CC(v11, &qword_27CAC0708, &qword_2170600C0);
        goto LABEL_12;
      }
    }

    else
    {
      v28 = &qword_27CAC0718;
      v29 = &qword_2170600D0;
    }

    sub_2166997CC(v11, v28, v29);
  }

  v30 = swift_allocObject();
  swift_weakInit();
  *v8 = a2;
  v8[1] = sub_216DDA2E0;
  v8[2] = v30;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  v31 = a2;

  sub_216D636C8(v8, &qword_27CAC96B0, &qword_2170600B8, sub_216D6347C);

LABEL_12:
  sub_216DD43B8(*(a1 + 16), *(v3 + *(*v3 + 144)));
  v32 = *(*v3 + 272);
  v33 = *(v3 + v32);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v32) = v35;
    sub_216D6374C();
  }
}

uint64_t sub_216D7F648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB8, &unk_21705EB08);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8028, &unk_21705BDC0);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC0, &qword_21705EB18);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0670, &qword_2170390F8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D7F818, v5, v4);
}

uint64_t sub_216D7F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A420D0();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC0670, &qword_2170390F8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_46_29();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0678, &unk_217039100);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedCatalogPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC0670, &qword_2170390F8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_42_31();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0678, &unk_217039100);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for Page(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705EB20);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D7FA28()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8AB8, &unk_21705EB08);
  sub_2166997CC(v6, &qword_27CAC8028, &unk_21705BDC0);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D7FCC0;
  }

  else
  {
    v10 = sub_216D7FBA0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D7FBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedCatalogPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA26EC(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC8AC0, &qword_21705EB18);
  sub_2166997CC(v13, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D7FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D75C20(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D7FD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB8, &unk_21705EB08);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8028, &unk_21705BDC0);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC0, &qword_21705EB18);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0670, &qword_2170390F8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D7FF48, v5, v4);
}

uint64_t sub_216D7FF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A420D0();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC0670, &qword_2170390F8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_46_29();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0678, &unk_217039100);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedCatalogPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC0670, &qword_2170390F8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_42_31();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0678, &unk_217039100);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for Page(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705EC38);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D80158()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8AB8, &unk_21705EB08);
  sub_2166997CC(v6, &qword_27CAC8028, &unk_21705BDC0);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D803F0;
  }

  else
  {
    v10 = sub_216D802D0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D802D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedCatalogPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA2BC0(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC8AC0, &qword_21705EB18);
  sub_2166997CC(v13, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D803F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D76488(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D804A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB8, &unk_21705EB08);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8028, &unk_21705BDC0);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC0, &qword_21705EB18);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0670, &qword_2170390F8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D80678, v5, v4);
}

uint64_t sub_216D80678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A420D0();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC0670, &qword_2170390F8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_46_29();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0678, &unk_217039100);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedCatalogPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC0670, &qword_2170390F8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_42_31();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0678, &unk_217039100);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for Page(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F0C8);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D80888()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8AB8, &unk_21705EB08);
  sub_2166997CC(v6, &qword_27CAC8028, &unk_21705BDC0);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D80B34;
  }

  else
  {
    v10 = sub_216D80A00;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D80A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedCatalogPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_846();
  sub_216DA2FB4();

  sub_2166997CC(v13, &qword_27CAC8AC0, &qword_21705EB18);
  sub_2166997CC(v14, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216D80B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_392();
  OUTLINED_FUNCTION_7_4();
  sub_216D768EC();
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D80C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AB8, &unk_21705EB08);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8028, &unk_21705BDC0);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8AC0, &qword_21705EB18);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0668, &qword_2170390F0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0670, &qword_2170390F8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D80DEC, v5, v4);
}

uint64_t sub_216D80DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A420D0();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0678, &unk_217039100);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC0670, &qword_2170390F8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_46_29();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0678, &unk_217039100);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedCatalogPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC0670, &qword_2170390F8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_42_31();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0678, &unk_217039100);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for Page(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F170);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D80FFC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8AB8, &unk_21705EB08);
  sub_2166997CC(v6, &qword_27CAC8028, &unk_21705BDC0);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D812A8;
  }

  else
  {
    v10 = sub_216D81174;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D81174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedCatalogPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_846();
  sub_216DA2FB4();

  sub_2166997CC(v13, &qword_27CAC8AC0, &qword_21705EB18);
  sub_2166997CC(v14, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216D812A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_392();
  OUTLINED_FUNCTION_7_4();
  sub_216D768EC();
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC0670, &qword_2170390F8);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D81390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9488, &qword_21705FD00);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9490, &qword_21705FD08);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9498, &qword_21705FD10);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F8, &unk_2170394F0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D81560, v5, v4);
}

uint64_t sub_216D81560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A421DC();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06F8, &unk_2170394F0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0700, &qword_21705FC80);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06F8, &unk_2170394F0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_41_30();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0700, &qword_21705FC80);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSReplayPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705FD18);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D81770()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC9488, &qword_21705FD00);
  sub_2166997CC(v6, &qword_27CAC9490, &qword_21705FD08);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D81A08;
  }

  else
  {
    v10 = sub_216D818E8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D818E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedReplayPage(v16);
    OUTLINED_FUNCTION_1295(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA327C(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC9498, &qword_21705FD10);
  sub_2166997CC(v13, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D81A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D77068(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D81AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9488, &qword_21705FD00);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9490, &qword_21705FD08);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9498, &qword_21705FD10);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F8, &unk_2170394F0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D81C90, v5, v4);
}

uint64_t sub_216D81C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A421DC();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06F8, &unk_2170394F0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0700, &qword_21705FC80);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06F8, &unk_2170394F0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_41_30();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0700, &qword_21705FC80);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSReplayPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705FD78);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D81EA0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC9488, &qword_21705FD00);
  sub_2166997CC(v6, &qword_27CAC9490, &qword_21705FD08);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D82138;
  }

  else
  {
    v10 = sub_216D82018;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D82018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedReplayPage(v16);
    OUTLINED_FUNCTION_1295(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA3774(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC9498, &qword_21705FD10);
  sub_2166997CC(v13, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D82138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D77A1C(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D821F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9488, &qword_21705FD00);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9490, &qword_21705FD08);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9498, &qword_21705FD10);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F8, &unk_2170394F0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D823C0, v5, v4);
}

uint64_t sub_216D823C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A421DC();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06F8, &unk_2170394F0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0700, &qword_21705FC80);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06F8, &unk_2170394F0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_41_30();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0700, &qword_21705FC80);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSReplayPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705FF70);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D825D0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC9488, &qword_21705FD00);
  sub_2166997CC(v6, &qword_27CAC9490, &qword_21705FD08);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D8287C;
  }

  else
  {
    v10 = sub_216D82748;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D82748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedReplayPage(v16);
    OUTLINED_FUNCTION_1295(v17);
  }

  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_846();
  sub_216DA3B8C();

  sub_2166997CC(v13, &qword_27CAC9498, &qword_21705FD10);
  sub_2166997CC(v14, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216D8287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_392();
  OUTLINED_FUNCTION_7_4();
  sub_216D782E4();
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D82964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9488, &qword_21705FD00);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9490, &qword_21705FD08);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9498, &qword_21705FD10);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F0, &qword_21705FC00);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06F8, &unk_2170394F0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D82B34, v5, v4);
}

uint64_t sub_216D82B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A421DC();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0700, &qword_21705FC80);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06F8, &unk_2170394F0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0700, &qword_21705FC80);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06F8, &unk_2170394F0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_41_30();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0700, &qword_21705FC80);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSReplayPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705FFF8);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D82D44()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC9488, &qword_21705FD00);
  sub_2166997CC(v6, &qword_27CAC9490, &qword_21705FD08);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D82FF0;
  }

  else
  {
    v10 = sub_216D82EBC;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D82EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedReplayPage(v16);
    OUTLINED_FUNCTION_1295(v17);
  }

  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_846();
  sub_216DA3B8C();

  sub_2166997CC(v13, &qword_27CAC9498, &qword_21705FD10);
  sub_2166997CC(v14, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216D82FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_392();
  OUTLINED_FUNCTION_7_4();
  sub_216D782E4();
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06F8, &unk_2170394F0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D830D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE090, &unk_217072520);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D8, &qword_21705F820);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B0, &qword_2170392C8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D832A8, v5, v4);
}

uint64_t sub_216D832A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A422E8();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06B0, &qword_2170392C8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_61();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC06B8, &qword_2170392D0);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayModel(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06B0, &qword_2170392C8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_10_89();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC06B8, &qword_2170392D0);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for ReplayModel(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F828);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D834B8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CABE0B8, &unk_21705F810);
  sub_2166997CC(v6, &qword_27CABE090, &unk_217072520);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D83758;
  }

  else
  {
    v10 = sub_216D83630;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D83630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    type metadata accessor for MappedReplayModel(v16);
    OUTLINED_FUNCTION_874();
    v17 = OUTLINED_FUNCTION_1162();
    OUTLINED_FUNCTION_916(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA3E78(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC91D8, &qword_21705F820);
  sub_2166997CC(v13, &qword_27CAC06B0, &qword_2170392C8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D83758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D78A4C(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06B0, &qword_2170392C8);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D83810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE090, &unk_217072520);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D8, &qword_21705F820);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B0, &qword_2170392C8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D839E0, v5, v4);
}

uint64_t sub_216D839E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A422E8();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06B0, &qword_2170392C8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_61();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC06B8, &qword_2170392D0);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayModel(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06B0, &qword_2170392C8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_10_89();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC06B8, &qword_2170392D0);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for ReplayModel(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F888);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D83BF0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CABE0B8, &unk_21705F810);
  sub_2166997CC(v6, &qword_27CABE090, &unk_217072520);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D83E90;
  }

  else
  {
    v10 = sub_216D83D68;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D83D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    type metadata accessor for MappedReplayModel(v16);
    OUTLINED_FUNCTION_874();
    v17 = OUTLINED_FUNCTION_1162();
    OUTLINED_FUNCTION_916(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA42FC(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC91D8, &qword_21705F820);
  sub_2166997CC(v13, &qword_27CAC06B0, &qword_2170392C8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D83E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D793D8(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06B0, &qword_2170392C8);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D83F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE090, &unk_217072520);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D8, &qword_21705F820);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B0, &qword_2170392C8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D84118, v5, v4);
}

uint64_t sub_216D84118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A422E8();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06B0, &qword_2170392C8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_61();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC06B8, &qword_2170392D0);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayModel(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06B0, &qword_2170392C8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_10_89();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC06B8, &qword_2170392D0);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for ReplayModel(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_217060568);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D84328()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CABE0B8, &unk_21705F810);
  sub_2166997CC(v6, &qword_27CABE090, &unk_217072520);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D845C8;
  }

  else
  {
    v10 = sub_216D844A0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D844A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    type metadata accessor for MappedReplayModel(v16);
    OUTLINED_FUNCTION_874();
    v17 = OUTLINED_FUNCTION_1162();
    OUTLINED_FUNCTION_916(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA46A0(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC91D8, &qword_21705F820);
  sub_2166997CC(v13, &qword_27CAC06B0, &qword_2170392C8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D845C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D79828(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06B0, &qword_2170392C8);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D84680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED0, &qword_21705F330);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED8, &qword_21705F338);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE0, &qword_21705F340);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A0, &qword_2170392B0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D84850, v5, v4);
}

uint64_t sub_216D84850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A423F4();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06A0, &qword_2170392B0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_44_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0698, &qword_2170392A8);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedSearchPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06A0, &qword_2170392B0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_40_29();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0698, &qword_2170392A8);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSSearchPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F348);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D84A60()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8ED0, &qword_21705F330);
  sub_2166997CC(v6, &qword_27CAC8ED8, &qword_21705F338);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D84CF8;
  }

  else
  {
    v10 = sub_216D84BD8;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D84BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedSearchPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA4B1C(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC8EE0, &qword_21705F340);
  sub_2166997CC(v13, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D84CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D7A1A4(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D84DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED0, &qword_21705F330);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED8, &qword_21705F338);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE0, &qword_21705F340);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A0, &qword_2170392B0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D84F80, v5, v4);
}

uint64_t sub_216D84F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A423F4();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06A0, &qword_2170392B0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_44_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0698, &qword_2170392A8);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedSearchPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06A0, &qword_2170392B0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_40_29();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0698, &qword_2170392A8);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSSearchPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F640);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D85190()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8ED0, &qword_21705F330);
  sub_2166997CC(v6, &qword_27CAC8ED8, &qword_21705F338);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D8543C;
  }

  else
  {
    v10 = sub_216D85308;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D85308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedSearchPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_846();
  sub_216DA4FC4();

  sub_2166997CC(v13, &qword_27CAC8EE0, &qword_21705F340);
  sub_2166997CC(v14, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216D8543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D7A6E0(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D854F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED0, &qword_21705F330);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED8, &qword_21705F338);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE0, &qword_21705F340);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A0, &qword_2170392B0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D856C4, v5, v4);
}

uint64_t sub_216D856C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A423F4();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06A0, &qword_2170392B0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_44_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0698, &qword_2170392A8);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedSearchPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06A0, &qword_2170392B0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_40_29();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0698, &qword_2170392A8);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSSearchPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F6B8);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D858D4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8ED0, &qword_21705F330);
  sub_2166997CC(v6, &qword_27CAC8ED8, &qword_21705F338);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D85B80;
  }

  else
  {
    v10 = sub_216D85A4C;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D85A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedSearchPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_846();
  sub_216DA4FC4();

  sub_2166997CC(v13, &qword_27CAC8EE0, &qword_21705F340);
  sub_2166997CC(v14, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_216D85B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D7AF80(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D85C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED0, &qword_21705F330);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8ED8, &qword_21705F338);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8EE0, &qword_21705F340);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0690, &qword_2170392A0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A0, &qword_2170392B0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D85E08, v5, v4);
}

uint64_t sub_216D85E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A423F4();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0698, &qword_2170392A8);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06A0, &qword_2170392B0);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_44_27();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC0698, &qword_2170392A8);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedSearchPage(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06A0, &qword_2170392B0);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_40_29();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC0698, &qword_2170392A8);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for JSSearchPage(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F378);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D86018()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CAC8ED0, &qword_21705F330);
  sub_2166997CC(v6, &qword_27CAC8ED8, &qword_21705F338);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D862B0;
  }

  else
  {
    v10 = sub_216D86190;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D86190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    v17 = type metadata accessor for MappedSearchPage(v16);
    OUTLINED_FUNCTION_1030(v17);
  }

  v18 = OUTLINED_FUNCTION_24_38();
  sub_216DA528C(v18, v19, v20, v21);

  sub_2166997CC(v14, &qword_27CAC8EE0, &qword_21705F340);
  sub_2166997CC(v13, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_216D862B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_76_13();
  v15 = OUTLINED_FUNCTION_265();
  sub_216D7B820(v15, v16);
  swift_willThrow();
  sub_2166997CC(v14, &qword_27CAC06A0, &qword_2170392B0);

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_120();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216D86368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE090, &unk_217072520);
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC91D8, &qword_21705F820);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06A8, &qword_2170392C0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B0, &qword_2170392C8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_21700EA34();
  v3[17] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](sub_216D86538, v5, v4);
}

uint64_t sub_216D86538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_97_9();
  OUTLINED_FUNCTION_325();
  if (OUTLINED_FUNCTION_81_10())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
    v10 = OUTLINED_FUNCTION_206_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_641();
    sub_216A422E8();
    v14 = OUTLINED_FUNCTION_7_56();
    sub_2166997CC(v14, v15, v16);
  }

  v17 = *(v9 + 120);
  sub_216DD9F00();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC06B8, &qword_2170392D0);
  OUTLINED_FUNCTION_32_32(v18);
  if (v19)
  {
    sub_2166997CC(v17, &qword_27CAC06B0, &qword_2170392C8);
    v21 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_61();
    sub_216DDA0A0(v17, v20);
    sub_2166997CC(v17, &qword_27CAC06B8, &qword_2170392D0);
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_96_7();
  v23 = type metadata accessor for MappedReplayModel(v22);
  OUTLINED_FUNCTION_326(v23);
  OUTLINED_FUNCTION_115();
  sub_216DD9F00();
  OUTLINED_FUNCTION_54_23();
  if (v19)
  {
    sub_2166997CC(v21, &qword_27CAC06B0, &qword_2170392C8);
  }

  else
  {
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_10_89();
    sub_216DDA0A0(v21 + v24, v25);
    sub_2166997CC(v21, &qword_27CAC06B8, &qword_2170392D0);
  }

  v26 = OUTLINED_FUNCTION_225_1();
  v27 = type metadata accessor for ReplayModel(v26);
  OUTLINED_FUNCTION_31_45(v27);
  OUTLINED_FUNCTION_638(*(v28 + 160));
  OUTLINED_FUNCTION_38_0(&unk_21705F9E0);
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_186_1(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_20_59(v31);
  OUTLINED_FUNCTION_1078();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42);
}

uint64_t sub_216D86748()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 176) = v1;

  OUTLINED_FUNCTION_527();
  v6 = *(v5 + 72);
  sub_2166997CC(*(v0 + 64), &qword_27CABE0B8, &unk_21705F810);
  sub_2166997CC(v6, &qword_27CABE090, &unk_217072520);
  OUTLINED_FUNCTION_527();
  v8 = *(v7 + 152);
  v9 = *(v0 + 144);
  if (v1)
  {
    v10 = sub_216D869FC;
  }

  else
  {
    v10 = sub_216D868C0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_216D868C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_968();
  OUTLINED_FUNCTION_0_1();
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_967();
  }

  v15 = type metadata accessor for MusicPageMetricsProvider(0);
  OUTLINED_FUNCTION_559(v15);
  if (*(v12 + 40))
  {
    v16 = OUTLINED_FUNCTION_634();
    type metadata accessor for MappedReplayModel(v16);
    OUTLINED_FUNCTION_874();
    v17 = OUTLINED_FUNCTION_1162();
    OUTLINED_FUNCTION_916(v17);
  }

  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_846();
  sub_216DA5654();

  sub_2166997CC(v13, &qword_27CAC91D8, &qword_21705F820);
  sub_2166997CC(v14, &qword_27CAC06B0, &qword_2170392C8);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}