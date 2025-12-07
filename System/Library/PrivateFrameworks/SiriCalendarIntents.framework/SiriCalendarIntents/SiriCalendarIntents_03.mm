uint64_t sub_26658D19C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3[6] = v1;
  v3[7] = v2;
  v3[8] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26658D2A4()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_5_9();

  v1 = OUTLINED_FUNCTION_14_4();

  return v2(v1);
}

uint64_t sub_26658D324(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  v6 = *v2;
  *v5 = *v2;
  v4[24] = v1;

  if (v1)
  {
    sub_266557D74(v4[11], &unk_28007D130, &unk_266671DF0);

    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v11 = v4[13];
    v10 = v4[14];
    v13 = v4[11];
    v12 = v4[12];

    sub_266557D74(v13, &unk_28007D130, &unk_266671DF0);
    (*(v11 + 8))(v10, v12);

    v14 = v6[1];

    return v14(a1);
  }
}

uint64_t sub_26658D51C()
{
  OUTLINED_FUNCTION_11();
  (*(v0[13] + 8))(v0[14], v0[12]);
  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_26658D5AC()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_5_9();

  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_26658D62C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v46[-v6];
  v8 = sub_266669AE8();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v49 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v46[-v17];
  sub_266669CD8();
  v19 = sub_266669AD8();
  v21 = v20;
  v50 = *(v10 + 8);
  v51 = v8;
  v50(v18, v8);
  if (v19 == 0x656D695465746164 && v21 == 0xED000065676E6152)
  {
LABEL_11:

    goto LABEL_12;
  }

  v23 = sub_26666CAC8();

  if ((v23 & 1) == 0)
  {
    sub_266669CD8();
    v24 = sub_266669AD8();
    v26 = v25;
    v50(v16, v51);
    if (v24 != 0x656C746974 || v26 != 0xE500000000000000)
    {
      v28 = sub_26666CAC8();

      v29 = v28 & 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  v29 = 1;
LABEL_13:
  v30 = v7;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v31 = sub_26666C168();
  __swift_project_value_buffer(v31, qword_28156D7E8);
  (*(v4 + 16))(v7, a1, v2);
  v32 = sub_26666C148();
  v33 = sub_26666C618();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v34 = 136446466;
    v52 = v29;
    v35 = sub_26666C318();
    v47 = v33;
    v37 = v4;
    v38 = v30;
    v39 = sub_2665BFC90(v35, v36, &v53);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2082;
    v40 = v49;
    sub_266669CD8();
    v41 = sub_266669AD8();
    v43 = v42;
    v50(v40, v51);
    (*(v37 + 8))(v38, v2);
    v44 = sub_2665BFC90(v41, v43, &v53);

    *(v34 + 14) = v44;
    _os_log_impl(&dword_266549000, v32, v47, "[CreateEvent.UnsupportedValueStrategy] Returning %{public}s as unsupported behavior for %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v4 + 8))(v7, v2);
  }

  return v29;
}

uint64_t sub_26658DA8C()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_266669AE8();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_26658DB48()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v4 = sub_266669AD8();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);

  v8 = sub_2665FAB78(v4, v6);
  v9 = v0[5];
  if (v8 == 4)
  {
    v10 = sub_26656CBFC();
    OUTLINED_FUNCTION_49(&type metadata for CommonError, v10);
    *v11 = v4;
    *(v11 + 8) = v6;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_4_7();

    __asm { BRAA            X1, X16 }
  }

  v14 = v8;
  v15 = v0[3];

  v16 = sub_266669CB8();
  sub_266669CD8();
  v17 = sub_266669AC8();
  v19 = v18;
  v7(v9, v15);
  sub_2665827C8(v14, v17, v19 & 1);

  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_4_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26658DD10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_26658C170();
}

uint64_t sub_26658DDB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656FEA4;

  return sub_26658DA8C();
}

uint64_t sub_26658DE5C(void *a1)
{
  v2 = [a1 participants];

  if (!v2)
  {
    return 0;
  }

  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C498();

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_9()
{
}

double OUTLINED_FUNCTION_15_6(uint64_t a1, _OWORD *a2)
{
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t type metadata accessor for Signpost.OpenSignpost(uint64_t a1)
{
  result = qword_28156C1E8;
  if (!qword_28156C1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26658DFEC(uint64_t a1)
{
  result = sub_26666C0B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_26658E0BC(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_26666C0B8();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_26666C0D8();
  v15 = sub_26666C638();
  result = sub_26666C698();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_26666C098();
      _os_signpost_emit_with_name_impl(&dword_266549000, v14, v15, v18, a1, "", v17, 2u);
      MEMORY[0x266789690](v17, -1, -1);
LABEL_10:

      (*(v9 + 16))(v13, a4, v7);
      sub_26666C128();
      swift_allocObject();
      return sub_26666C118();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v19;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26658E268()
{
  sub_26658E540();
  result = sub_26666C6A8();
  qword_28156D800 = result;
  return result;
}

uint64_t sub_26658E2D0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = sub_26666C0F8();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_26666C0B8();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v19 = sub_26666C0D8();
  sub_26666C108();
  v25 = sub_26666C628();
  result = sub_26666C698();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v14 + 8))(v18, v12);
  }

  if ((a3 & 1) == 0)
  {
    v21 = a1;
    if (a1)
    {
LABEL_9:

      sub_26666C138();

      if ((*(v7 + 88))(v11, v5) == *MEMORY[0x277D85B00])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v11, v5);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_26666C098();
      _os_signpost_emit_with_name_impl(&dword_266549000, v19, v25, v24, v21, v22, v23, 2u);
      MEMORY[0x266789690](v23, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v21 = &v27;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_26658E540()
{
  result = qword_28156C070;
  if (!qword_28156C070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156C070);
  }

  return result;
}

uint64_t sub_26658E584(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26658E624, 0, 0);
}

uint64_t sub_26658E624()
{
  sub_26656704C(*(v0 + 16));
  if (v1)
  {
    sub_26666C358();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v3, v2, 1, v5);
  v6 = [v4 dateTimeRange];
  if (v6)
  {
    v7 = v6;
    sub_26666BB78();
    v8 = sub_2665CAB68(v7);
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 48) = v8;
  v9 = [*(v0 + 16) dateTimeRange];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for CalendarEventRecurrence();
    v11 = sub_2665CAE4C(v10);
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 56) = v11;
  v12 = [*(v0 + 16) dateTimeRange];
  if (v12)
  {
    v13 = v12;
    sub_2665D2370();
  }

  v14 = sub_2665670B0(*(v0 + 16));
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 24);
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    sub_2665511FC(sub_266557CC8, v17, v15);
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  *(v0 + 64) = v19;
  v20 = *(v0 + 16);
  sub_26666BD58();
  *(v0 + 72) = sub_2665CAF44([v20 location]);
  v21 = swift_task_alloc();
  *(v0 + 80) = v21;
  *v21 = v0;
  v21[1] = sub_26658E894;

  return sub_2665D8954();
}

uint64_t sub_26658E894(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  sub_266583058(*(v4 + 40));

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26658EA8C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_26658EA8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26658EAF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 83))
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

uint64_t sub_26658EB38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26658EBA4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_266668D38();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for OpenCalendarViewIntent(0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26658ECE0, 0, 0);
}

uint64_t sub_26658ECE0()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_26658ED80;

  return sub_26658FDD4();
}

uint64_t sub_26658ED80()
{
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](sub_26658EE78, 0, 0);
}

uint64_t sub_26658EE78()
{
  v30 = v0;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_26666C168();
  __swift_project_value_buffer(v3, qword_28156D7E8);
  sub_26658F758(v2, v1);
  v4 = sub_26666C148();
  v5 = sub_26666C618();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136315138;
    sub_26658F758(v7, v8);
    v11 = sub_26666C318();
    v13 = v12;
    sub_26658F7BC(v7);
    v14 = sub_2665BFC90(v11, v13, v29);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_266549000, v4, v5, "[OpenCalendarViewToFindEventsWrapper] Converting OpenCalendarView to INFindEventsIntent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266789690](v10, -1, -1);
    MEMORY[0x266789690](v9, -1, -1);
  }

  else
  {

    sub_26658F7BC(v7);
  }

  v15 = v0[6];
  v16 = v0[3];
  sub_26655E020(v0[10], v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v17 = 0;
  }

  else
  {
    v18 = v0[5];
    v19 = v0[3];
    v20 = v0[4];
    (*(v20 + 32))(v18, v0[6], v19);
    sub_26658F1A0(v18, v29);
    (*(v20 + 8))(v18, v19);
    v17 = v29[0];
  }

  v21 = v0[10];
  v22 = v0[2];
  objc_allocWithZone(MEMORY[0x277CD3C10]);
  v23 = v17;
  v24 = sub_26660B190(0, 0, v17, 0, 0, 0);
  v25 = __swift_project_boxed_opaque_existential_1((v22 + 40), *(v22 + 64));
  v26 = sub_26658F818(v24, 1, *v25, v22);

  sub_26658F7BC(v21);

  v27 = v0[1];

  return v27(v26);
}

id sub_26658F1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = sub_266668D38();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
  sub_266668E58();
  v17 = sub_266668E68();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  sub_266668EA8();
  v18 = sub_266668EB8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
  v19 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  result = sub_26658F56C(v15, v13, v9, v6);
  *a2 = result;
  return result;
}

uint64_t sub_26658F3DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26658F46C;

  return sub_26658EBA4();
}

uint64_t sub_26658F46C()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

id sub_26658F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_266668D38();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) != 1)
  {
    v11 = sub_266668C88();
    OUTLINED_FUNCTION_0_15();
    (*(v12 + 8))(a1, v10);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v10) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_266668C88();
    OUTLINED_FUNCTION_0_15();
    (*(v14 + 8))(a2, v10);
  }

  v15 = sub_266668E68();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v15) != 1)
  {
    v16 = sub_266668E18();
    OUTLINED_FUNCTION_0_15();
    (*(v17 + 8))(a3, v15);
  }

  v18 = sub_266668EB8();
  v19 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v18) != 1)
  {
    v19 = sub_266668E88();
    (*(*(v18 - 8) + 8))(a4, v18);
  }

  v20 = [v5 initWithStartDate:v11 endDate:v13 onCalendar:v16 inTimeZone:v19];

  return v20;
}

uint64_t sub_26658F758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenCalendarViewIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26658F7BC(uint64_t a1)
{
  v2 = type metadata accessor for OpenCalendarViewIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26658F818(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v45[3] = &type metadata for CalendarReferenceResolver;
  v45[4] = &off_28780BAC8;
  v45[0] = a3;

  v7 = a1;
  if ((a2 & 1) != 0 && (sub_2665667CC() & 1) != 0 && *(a4 + 81) == 4)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_266549000, v9, v10, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v11, 2u);
      MEMORY[0x266789690](v11, -1, -1);
    }

    v12 = __swift_project_boxed_opaque_existential_1(v45, &type metadata for CalendarReferenceResolver);
    sub_26663E15C(*v12);
    if (v13)
    {
      v14 = sub_26666C148();
      v15 = sub_26666C618();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266549000, v14, v15, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v16, 2u);
        MEMORY[0x266789690](v16, -1, -1);
      }

      v17 = sub_26666AA08();
      v19 = v18;
      if (sub_26666A9E8())
      {
        v20 = sub_26655F060();
      }

      else
      {
        v20 = 0;
      }

      v24 = objc_allocWithZone(MEMORY[0x277CD3C10]);
      v25 = sub_26660B190(v17, v19, v20, 0, 0, 0);

      v7 = v25;
    }

    else
    {
      v21 = sub_26666C148();
      v22 = sub_26666C618();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266549000, v21, v22, "[FindEventsIntentWrapping] No calendar event found in SRR", v23, 2u);
        MEMORY[0x266789690](v23, -1, -1);
      }
    }
  }

  v26 = v7;
  v27 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v28 = sub_26666C168();
  __swift_project_value_buffer(v28, qword_28156D7E8);
  v29 = sub_26666C148();
  v30 = sub_26666C618();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v27;
    v33 = v27;
    _os_log_impl(&dword_266549000, v29, v30, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v31, 0xCu);
    sub_26658FD5C(v32);
    MEMORY[0x266789690](v32, -1, -1);
    MEMORY[0x266789690](v31, -1, -1);
  }

  sub_26658FCF4(a4, v44);
  v34 = sub_26666C148();
  v35 = sub_26666C618();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v38 = sub_26666C318();
    v40 = v39;
    sub_26658FD2C(v44);
    v41 = sub_2665BFC90(v38, v40, &v43);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_266549000, v34, v35, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x266789690](v37, -1, -1);
    MEMORY[0x266789690](v36, -1, -1);
  }

  else
  {

    sub_26658FD2C(v44);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v27;
}

uint64_t sub_26658FD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DCA0, &qword_26666E370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26658FDD4()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v3);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for OpenCalendarViewIntent(0);
  v1[9] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB58, &qword_266671CB0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[15] = swift_task_alloc();
  v6 = sub_26666A718();
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26658FF7C()
{
  sub_26666A808();
  v2 = *(v0 + 16);
  *(v0 + 168) = v2;
  if (!v2)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v28 = sub_26666C168();
    __swift_project_value_buffer(v28, qword_28156D7E8);
    v29 = sub_26666C148();
    v30 = sub_26666C5F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266549000, v29, v30, "[OpenCalendarViewUSOIntentWrapper] Bare uso intent of summarise::commonCalendar. Creating default intent to open to day view", v31, 2u);
      OUTLINED_FUNCTION_12();
    }

    v33 = *(v0 + 80);
    v32 = *(v0 + 88);
    v34 = *(v0 + 72);

    sub_266668D38();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    *(v32 + *(v34 + 20)) = 0;
    sub_26658F758(v32, v33);
    v39 = sub_26666C148();
    v40 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v40))
    {
      v41 = *(v0 + 96);
      v42 = *(v0 + 80);
      v43 = OUTLINED_FUNCTION_21();
      v44 = swift_slowAlloc();
      v85 = v44;
      *v43 = 136315138;
      sub_26658F758(v42, v41);
      v45 = sub_26666C318();
      v47 = v46;
      sub_26658F7BC(v42);
      v48 = sub_2665BFC90(v45, v47, &v85);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_266549000, v39, v40, "[OpenCalendarViewUSOIntentWrapper] parsed intent: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v62 = *(v0 + 80);

      sub_26658F7BC(v62);
    }

    OUTLINED_FUNCTION_2_14();
    sub_2665922E8(v1, v63);

    OUTLINED_FUNCTION_14_2();

    __asm { BRAA            X1, X16 }
  }

  v3 = sub_26666A698();
  if (v3)
  {
    v4 = __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 40), *(*(v0 + 40) + 64));
    v5 = sub_266591F84(v3, *v4, MEMORY[0x277D5E8E0]);
    if (v5)
    {
      v6 = v5;

      v3 = v6;
    }
  }

  *(v0 + 176) = v3;
  v7 = sub_26666A688();
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  if (v7)
  {
    sub_26666A708();

    if (__swift_getEnumTagSinglePayload(v9, 1, v8) != 1)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 120), *(v0 + 128));
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = *(v0 + 128);
      v13 = *(v0 + 136);
      v14 = sub_26666C168();
      __swift_project_value_buffer(v14, qword_28156D7E8);
      v15 = *(v13 + 16);
      v15(v11, v10, v12);
      v16 = sub_26666C148();
      v17 = sub_26666C618();
      v18 = OUTLINED_FUNCTION_7_2(v17);
      v19 = *(v0 + 152);
      if (v18)
      {
        v84 = v17;
        v20 = *(v0 + 136);
        v21 = *(v0 + 144);
        v22 = *(v0 + 128);
        OUTLINED_FUNCTION_21();
        v83 = OUTLINED_FUNCTION_13();
        v85 = v83;
        *v12 = 136315138;
        v15(v21, v19, v22);
        v82 = sub_26666C318();
        v24 = v23;
        v25 = *(v20 + 8);
        v25(v19, v22);
        v26 = sub_2665BFC90(v82, v24, &v85);

        *(v12 + 4) = v26;
        OUTLINED_FUNCTION_5_10(&dword_266549000, v27, v84, "[OpenCalendarViewUSOIntentWrapper] Using viewPeriod %s to calculate target calendar app view");
        __swift_destroy_boxed_opaque_existential_1(v83);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_12();
      }

      else
      {
        v70 = *(v0 + 128);
        v71 = *(v0 + 136);

        v25 = *(v71 + 8);
        v25(v19, v70);
      }

      v72 = *(v0 + 160);
      v73 = *(v0 + 128);
      v61 = sub_266590B3C(v72);
      v25(v72, v73);
      goto LABEL_35;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v8);
  }

  sub_266557D74(*(v0 + 120), &qword_28007DB58, &qword_266671CB0);
  if (v3)
  {
    v52 = qword_28156C150;

    if (v52 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v53 = sub_26666C168();
    __swift_project_value_buffer(v53, qword_28156D7E8);

    v54 = sub_26666C148();
    v55 = sub_26666C618();

    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_21();
      v56 = OUTLINED_FUNCTION_13();
      v85 = v56;
      *v9 = 136315138;
      *(v0 + 24) = v3;
      sub_26666A6E8();

      v57 = sub_26666C318();
      v59 = sub_2665BFC90(v57, v58, &v85);

      *(v9 + 4) = v59;
      OUTLINED_FUNCTION_5_10(&dword_266549000, v60, v55, "[OpenCalendarViewUSOIntentWrapper] Using viewDate %s to calculate target calendar app view");
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    v61 = sub_266590F2C(v3);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v66 = sub_26666C168();
    __swift_project_value_buffer(v66, qword_28156D7E8);
    v67 = sub_26666C148();
    v68 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_2(v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_266549000, v67, v68, "[OpenCalendarViewUSOIntentWrapper] could not calculate target view from viewDate or viewPeriod using .day", v69, 2u);
      OUTLINED_FUNCTION_12();
    }

    v61 = 0;
  }

LABEL_35:
  *(v0 + 208) = v61;
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  if (qword_28007CDB0 != -1)
  {
    swift_once();
  }

  v74 = sub_26666B628();
  __swift_project_value_buffer(v74, qword_2800956E0);
  *(v0 + 184) = sub_266668D38();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  v79 = swift_task_alloc();
  *(v0 + 192) = v79;
  *v79 = v0;
  v79[1] = sub_26659074C;
  OUTLINED_FUNCTION_14_2();

  __asm { BR              X4 }
}

uint64_t sub_26659074C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  *(v8 + 200) = v7;

  sub_266557D74(v4, &qword_28007D140, &qword_26666F140);
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_266590868()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = [*(v0 + 200) startDate];

    if (v2)
    {
      sub_266668CE8();

      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    __swift_storeEnumTagSinglePayload(v9, v3, 1, *(v0 + 184));
    sub_266557CE4(v9, v8);
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 112);
  v12 = *(v0 + 72);
  sub_266557CE4(*(v0 + 64), v11);
  *(v11 + *(v12 + 20)) = v10;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = sub_26666C168();
  __swift_project_value_buffer(v15, qword_28156D7E8);
  sub_26658F758(v14, v13);
  v16 = sub_26666C148();
  v17 = sub_26666C618();
  v18 = OUTLINED_FUNCTION_7_2(v17);
  v19 = *(v0 + 104);
  if (v18)
  {
    v20 = *(v0 + 96);
    v21 = OUTLINED_FUNCTION_21();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    sub_26658F758(v19, v20);
    v23 = sub_26666C318();
    v25 = v24;
    sub_26658F7BC(v19);
    v26 = sub_2665BFC90(v23, v25, &v31);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_266549000, v16, v17, "[OpenCalendarViewUSOIntentWrapper] parsed intent: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    sub_26658F7BC(v19);
  }

  v27 = *(v0 + 112);
  OUTLINED_FUNCTION_2_14();
  sub_2665922E8(v27, v28);

  OUTLINED_FUNCTION_14_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266590B3C(uint64_t a1)
{
  v2 = sub_26666A718();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v3 + 16);
  v12(&v29 - v10, a1, v2);
  v13 = (*(v3 + 88))(v11, v2);
  if (v13 == *MEMORY[0x277D5E930])
  {
    return 2;
  }

  if (v13 == *MEMORY[0x277D5E920])
  {
    return 3;
  }

  if (v13 == *MEMORY[0x277D5E958] || v13 == *MEMORY[0x277D5E980])
  {
    return 2;
  }

  if (v13 == *MEMORY[0x277D5E978])
  {
    return 0;
  }

  if (v13 == *MEMORY[0x277D5E938])
  {
    return 2;
  }

  v16 = v13 == *MEMORY[0x277D5E970] || v13 == *MEMORY[0x277D5E940];
  v17 = v16 || v13 == *MEMORY[0x277D5E948];
  if (v17 || v13 == *MEMORY[0x277D5E928])
  {
    return 0;
  }

  if (v13 == *MEMORY[0x277D5E960] || v13 == *MEMORY[0x277D5E968])
  {
    return 2;
  }

  if (v13 != *MEMORY[0x277D5E950])
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v20 = sub_26666C168();
    __swift_project_value_buffer(v20, qword_28156D7E8);
    v12(v9, a1, v2);
    v21 = sub_26666C148();
    v22 = sub_26666C608();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v23 = 136315138;
      v12(v6, v9, v2);
      v30 = sub_26666C318();
      v25 = v24;
      v26 = *(v3 + 8);
      v26(v9, v2);
      v27 = sub_2665BFC90(v30, v25, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_266549000, v21, v22, "[OpenCalendarViewUSOIntentWrapper] unexpected viewPeriod of %s returning .day", v23, 0xCu);
      v28 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x266789690](v28, -1, -1);
      MEMORY[0x266789690](v23, -1, -1);
    }

    else
    {

      v26 = *(v3 + 8);
      v26(v9, v2);
    }

    v26(v11, v2);
    return 0;
  }

  return 1;
}

uint64_t sub_266590F2C(uint64_t a1)
{
  if (sub_2665913F8())
  {
    return 0;
  }

  if (sub_266591630())
  {
    return 1;
  }

  if ((sub_2665917B4() & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v2 = sub_26666C168();
    __swift_project_value_buffer(v2, qword_28156D7E8);

    v3 = sub_26666C148();
    v4 = sub_26666C5F8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      sub_26666A6E8();

      v7 = sub_26666C318();
      v9 = sub_2665BFC90(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_266549000, v3, v4, "[OpenCalendarViewUSOIntentWrapper] Could not determine date granularity from %s using .day as default ", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x266789690](v6, -1, -1);
      MEMORY[0x266789690](v5, -1, -1);
    }

    return 0;
  }

  return 2;
}

uint64_t sub_2665910D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2665910FC, 0, 0);
}

uint64_t sub_2665910FC()
{
  if (v0[2])
  {

    v0[6] = sub_26666A6A8();
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_26659128C;

    return sub_26660988C();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v3 = sub_26666C168();
    __swift_project_value_buffer(v3, qword_28156D7E8);
    v4 = sub_26666C148();
    v5 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_266549000, v4, v5, "[CalendarDateTimeResolving] UsoEntity_common_DateTime not present or is empty, not resolving date component range", v6, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_26659128C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266591398()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2665913F8()
{
  v0 = sub_26666A718();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB70, &qword_266671CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  if (sub_26666A6D8())
  {
LABEL_10:

    goto LABEL_11;
  }

  if (!sub_26666A6C8())
  {
    v8 = sub_26666A5D8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
LABEL_6:
    sub_266557D74(v6, &qword_28007DB70, &qword_266671CD0);
    if (!sub_26666A6C8() || (v9 = sub_26666A5F8(), , !v9))
    {
      if (!sub_26666A6C8() || (v10 = sub_26666A598(), , !v10))
      {
        (*(v1 + 104))(v3, *MEMORY[0x277D5E940], v0);
        v11 = sub_2665918E4(v3);
        (*(v1 + 8))(v3, v0);
        return v11 & 1;
      }
    }

    goto LABEL_10;
  }

  sub_26666A5C8();

  v7 = sub_26666A5D8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    goto LABEL_6;
  }

  sub_266557D74(v6, &qword_28007DB70, &qword_266671CD0);
LABEL_11:
  v11 = 1;
  return v11 & 1;
}

uint64_t sub_266591630()
{
  v0 = sub_26666A718();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26666A6C8() && (v4 = sub_26666A5A8(), , v4))
  {
  }

  else
  {
    v5 = *(v1 + 104);
    v5(v3, *MEMORY[0x277D5E950], v0);
    v6 = sub_2665918E4(v3);
    v7 = *(v1 + 8);
    v7(v3, v0);
    if ((v6 & 1) == 0)
    {
      v5(v3, *MEMORY[0x277D5E920], v0);
      v8 = sub_2665918E4(v3);
      v7(v3, v0);
      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_2665917B4()
{
  v0 = sub_26666A718();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26666A6C8() && (v4 = sub_26666A5B8(), , v4))
  {

    v5 = 1;
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D5E960], v0);
    v5 = sub_2665918E4(v3);
    (*(v1 + 8))(v3, v0);
  }

  return v5 & 1;
}

uint64_t sub_2665918E4(uint64_t a1)
{
  v2 = sub_26666A6B8();
  v3 = v2;
  if (v2)
  {
    v4 = sub_26666A6F8();

    if (v4)
    {
      MEMORY[0x28223BE20](v5);
      v7[2] = a1;
      v3 = sub_266591E70(sub_26659234C, v7, v4);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_266591998(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_26666A718();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB60, &qword_266671CC8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB58, &qword_266671CB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_26666A3D8();
  if (v27 && (v17 = sub_26666AD18(), , v17))
  {
    sub_26666A708();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v2);
  }

  (*(v3 + 16))(v14, v26, v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v5 + 48);
  sub_26659236C(v16, v7, &qword_28007DB58, &qword_266671CB0);
  sub_26659236C(v14, &v7[v18], &qword_28007DB58, &qword_266671CB0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) != 1)
  {
    sub_26659236C(v7, v11, &qword_28007DB58, &qword_266671CB0);
    if (__swift_getEnumTagSinglePayload(&v7[v18], 1, v2) != 1)
    {
      v20 = &v7[v18];
      v21 = v25;
      (*(v3 + 32))(v25, v20, v2);
      sub_2665923D4();
      v19 = sub_26666C2E8();
      v22 = *(v3 + 8);
      v22(v21, v2);
      sub_266557D74(v14, &qword_28007DB58, &qword_266671CB0);
      sub_266557D74(v16, &qword_28007DB58, &qword_266671CB0);
      v22(v11, v2);
      sub_266557D74(v7, &qword_28007DB58, &qword_266671CB0);
      return v19 & 1;
    }

    sub_266557D74(v14, &qword_28007DB58, &qword_266671CB0);
    sub_266557D74(v16, &qword_28007DB58, &qword_266671CB0);
    (*(v3 + 8))(v11, v2);
    goto LABEL_10;
  }

  sub_266557D74(v14, &qword_28007DB58, &qword_266671CB0);
  sub_266557D74(v16, &qword_28007DB58, &qword_266671CB0);
  if (__swift_getEnumTagSinglePayload(&v7[v18], 1, v2) != 1)
  {
LABEL_10:
    sub_266557D74(v7, &qword_28007DB60, &qword_266671CC8);
    v19 = 0;
    return v19 & 1;
  }

  sub_266557D74(v7, &qword_28007DB58, &qword_266671CB0);
  v19 = 1;
  return v19 & 1;
}

BOOL sub_266591DC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_266591E70(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_2665C485C();
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x266788B60](v7, a3);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_266591F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_26666C228();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v10 = OUTLINED_FUNCTION_3_3(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  sub_26666A218();
  v16 = sub_26666C038();

  if ((v16 & 1) == 0)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v17 = sub_26666C168();
    __swift_project_value_buffer(v17, qword_28156D7E8);

    v18 = sub_26666C148();
    v19 = sub_26666C618();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_21();
      v20 = OUTLINED_FUNCTION_13();
      v26 = a1;
      v27 = v20;
      *v8 = 136315138;
      a3(0);

      v21 = sub_26666C318();
      v23 = sub_2665BFC90(v21, v22, &v27);

      *(v8 + 4) = v23;
      OUTLINED_FUNCTION_5_10(&dword_266549000, v24, v19, "[CalendarReferenceResolver] %s has no reference to resolve");
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    return 0;
  }

  sub_26666A218();
  sub_26663C5A0();

  sub_26659236C(v15, v13, &qword_28007ED70, &qword_266671CC0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_266557D74(v15, &qword_28007ED70, &qword_266671CC0);
    return 0;
  }

  (*(v6 + 32))(v8, v13, v5);
  sub_26666C218();
  a3(0);
  sub_26666A7D8();

  (*(v6 + 8))(v8, v5);
  sub_266557D74(v15, &qword_28007ED70, &qword_266671CC0);
  return v27;
}

uint64_t sub_2665922E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenCalendarViewIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26659236C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2665923D4()
{
  result = qword_28007DB68;
  if (!qword_28007DB68)
  {
    sub_26666A718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DB68);
  }

  return result;
}

uint64_t sub_266592434(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_266592474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_5_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t type metadata accessor for UpdateEventCATsSimple(uint64_t a1)
{
  result = qword_28007DB78;
  if (!qword_28007DB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665925A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665925B4()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_26666EED0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2665926E0;

  return v6(0xD000000000000027, 0x800000026667E2C0, v2);
}

uint64_t sub_2665926E0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_266592808()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266592864()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 96) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v8);
  *(v1 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266592900()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = xmmword_266671D50;
  strcpy((v2 + 32), "updatedEvent");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = *(v0 + 24);
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000026667E280;
  v5 = 0;
  if (v4)
  {
    v5 = sub_26666BB78();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  *(v2 + 96) = v4;
  *(v2 + 120) = v5;
  *(v2 + 128) = 0x656C74695477656ELL;
  *(v2 + 136) = 0xE800000000000000;
  sub_266566430(v7, v6, &unk_28007D130, &unk_266671DF0);
  v8 = sub_26666BDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  v10 = *(v0 + 64);
  if (EnumTagSinglePayload == 1)
  {

    sub_266594028(v10, &unk_28007D130, &unk_266671DF0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v8;
    __swift_allocate_boxed_opaque_existential_1((v2 + 144));
    OUTLINED_FUNCTION_4_5();
    (*(v11 + 32))();
  }

  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  *(v2 + 176) = 0x7469766E4977656ELL;
  *(v2 + 184) = 0xEB00000000736565;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v2 + 192) = v13;
  *(v2 + 216) = v14;
  *(v2 + 224) = 0x7461636F4C77656ELL;
  *(v2 + 232) = 0xEB000000006E6F69;
  v15 = 0;
  if (v12)
  {
    v15 = sub_26666BD58();
  }

  else
  {
    *(v2 + 248) = 0;
    *(v2 + 256) = 0;
  }

  v16 = *(v0 + 96);
  *(v2 + 240) = v12;
  *(v2 + 264) = v15;
  *(v2 + 272) = 0x776F6C6C6F467369;
  *(v2 + 280) = 0xEA00000000007055;
  *(v2 + 312) = MEMORY[0x277D839B0];
  *(v2 + 288) = v16;
  v20 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 80) = v17;
  *v17 = v18;
  v17[1] = sub_266592C28;

  return v20(0xD000000000000019, 0x800000026667E2A0, v2);
}

uint64_t sub_266592C28()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_11();

    return v11(v10);
  }
}

uint64_t sub_266592D58()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266592DBC(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266592DE0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_266671D60);
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = *(v0 + 66);
  v6 = *(v0 + 65);
  v7 = *(v0 + 64);
  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;
  v2[5].n128_u64[0] = 0x4C794264656B7361;
  v2[5].n128_u64[1] = 0xEF6E6F697461636FLL;
  v8 = MEMORY[0x277D839B0];
  v2[6].n128_u8[0] = v7;
  v2[7].n128_u64[1] = v8;
  v2[8].n128_u64[0] = 0x49794264656B7361;
  v2[8].n128_u64[1] = 0xEF7365657469766ELL;
  v2[9].n128_u8[0] = v6;
  v2[10].n128_u64[1] = v8;
  v2[11].n128_u64[0] = 0xD000000000000015;
  v2[11].n128_u64[1] = 0x800000026667E230;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v2[12].n128_u64[1] = 0;
    v2[13].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x277D839F8];
  }

  v2[12].n128_u64[0] = v9;
  v2[13].n128_u64[1] = v10;
  v14 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 48) = v11;
  *v11 = v12;
  v11[1] = sub_266592FCC;

  return v14(0xD000000000000021, 0x800000026667E250, v2);
}

uint64_t sub_266592FCC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665930F4()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266593150()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2665931E0()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_26666EED0;
  *(v3 + 32) = 0x756C6156746F6C73;
  *(v3 + 40) = 0xE900000000000065;
  sub_266566430(v2, v1, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_14_5() == 1)
  {
    sub_266594028(v0[4], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_17_5();
    v5();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v9 = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_266593388;

  return v9(0xD00000000000001ELL, 0x800000026667E210, v3);
}

uint64_t sub_266593388()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_11();

    return v11(v10);
  }
}

uint64_t sub_2665934B8()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26659351C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_26658BF28;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000023, 0x800000026667E1E0, v3);
}

uint64_t sub_2665935D4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665935EC()
{
  OUTLINED_FUNCTION_36_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000026667E1C0;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55C70];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_7_9(v3);
  v9 = v4;
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 32) = v6;
  *v6 = v7;
  v6[1] = sub_26659370C;

  return v9(0xD000000000000023, 0x800000026667E190, v2);
}

uint64_t sub_26659370C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_266593834()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266593890()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266593930()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_266671D70;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x800000026667E140;
  sub_266566430(v2, v1, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_14_5() == 1)
  {
    sub_266594028(v0[6], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_17_5();
    v5();
  }

  v6 = v0[5];
  v7 = v0[3];
  *(v3 + 80) = 0x746954746E657665;
  *(v3 + 88) = 0xEA0000000000656CLL;
  sub_266566430(v7, v6, &unk_28007D130, &unk_266671DF0);
  if (OUTLINED_FUNCTION_14_5() == 1)
  {
    sub_266594028(v0[5], &unk_28007D130, &unk_266671DF0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_17_5();
    v8();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v13 = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[8] = v10;
  *v10 = v11;
  v10[1] = sub_266593B7C;

  return v13(0xD000000000000022, 0x800000026667E160, v3);
}

uint64_t sub_266593B7C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_11();

    return v11(v10);
  }
}

uint64_t sub_266593CB8()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_266593D28(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_17_5();
  return sub_266593D78(v1, v2, v3);
}

uint64_t sub_266593D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  MEMORY[0x28223BE20](v12);
  sub_266566430(a1, &v16 - v13, &qword_28007D2B0, &qword_26666E5F0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_26666BDB8();
  (*(v7 + 8))(a2, v3);
  sub_266594028(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v14;
}

uint64_t sub_266593EF0(uint64_t a1, uint64_t a2)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_26666BDC8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_266593FF0()
{
  v0 = sub_26666BDE8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_266594028(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_5();
  (*(v4 + 8))(a1);
  return a1;
}

__n128 *OUTLINED_FUNCTION_11_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E657665;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t (*ComposeEventAppIntent.title.modify())()
{
  v1 = OUTLINED_FUNCTION_0_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_15(v2);
  *(v0 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t ComposeEventAppIntent.startDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  MEMORY[0x28223BE20](v3);
  sub_26655E020(a1, &v6 - v4);
  sub_26666BFE8();
  return sub_266574608(a1);
}

uint64_t (*ComposeEventAppIntent.startDate.modify())()
{
  v1 = OUTLINED_FUNCTION_0_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_15(v2);
  *(v0 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t sub_2665943DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  MEMORY[0x28223BE20](v3);
  sub_26655E020(a1, &v8 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB0, &qword_266671E20);
  OUTLINED_FUNCTION_7(v5);
  v6 = sub_26666BFB8();
  sub_266574608(a1);
  return v6;
}

uint64_t ComposeEventAppIntent.endDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  MEMORY[0x28223BE20](v3);
  sub_26655E020(a1, &v6 - v4);
  sub_26666BFE8();
  return sub_266574608(a1);
}

uint64_t (*ComposeEventAppIntent.endDate.modify())()
{
  v1 = OUTLINED_FUNCTION_0_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_15(v2);
  *(v0 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t property wrapper backing initializer of ComposeEventAppIntent.isAllDay(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB8, &qword_266671E28);
  OUTLINED_FUNCTION_7(v1);
  return sub_26666BFB8();
}

uint64_t (*ComposeEventAppIntent.isAllDay.modify())()
{
  v1 = OUTLINED_FUNCTION_0_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_15(v2);
  *(v0 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t _s19SiriCalendarIntents21ComposeEventAppIntentV5titleSSSgvpfP_0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBA8, &unk_266671E10);
  OUTLINED_FUNCTION_7(v2);
  return sub_26666BFB8();
}

uint64_t (*ComposeEventAppIntent.location.modify())()
{
  v1 = OUTLINED_FUNCTION_0_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_15(v2);
  *(v0 + 32) = sub_26666BFC8();
  return sub_26659577C;
}

uint64_t property wrapper backing initializer of ComposeEventAppIntent.focus(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBC0, &qword_266671E30);
  OUTLINED_FUNCTION_7(v1);
  return sub_26666BFB8();
}

uint64_t (*ComposeEventAppIntent.focus.modify())()
{
  v1 = OUTLINED_FUNCTION_0_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_15(v2);
  *(v0 + 32) = sub_26666BFC8();
  return sub_26659492C;
}

void sub_266594930(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static ComposeEventAppIntent.Focus.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = *static ComposeEventAppIntent.Focus.enumIdentifier;

  return v0;
}

uint64_t static ComposeEventAppIntent.Focus.enumIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ComposeEventAppIntent.Focus.enumIdentifier = a1;
  qword_28007DBA0 = a2;
}

SiriCalendarIntents::ComposeEventAppIntent::Focus_optional __swiftcall ComposeEventAppIntent.Focus.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_26666C958();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t ComposeEventAppIntent.Focus.rawValue.getter(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x7961447472617473;
      break;
    case 2:
      result = 0x6D69547472617473;
      break;
    case 3:
      result = 0x796144646E65;
      break;
    case 4:
      result = 0x656D6954646E65;
      break;
    case 5:
      result = 0x6E65727275636572;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriCalendarIntents::ComposeEventAppIntent::Focus_optional sub_266594C40@<W0>(Swift::String *a1@<X0>, SiriCalendarIntents::ComposeEventAppIntent::Focus_optional *a2@<X8>)
{
  result.value = ComposeEventAppIntent.Focus.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_266594C70@<X0>(uint64_t *a1@<X8>)
{
  result = ComposeEventAppIntent.Focus.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266594C9C()
{
  swift_beginAccess();
  v0 = *static ComposeEventAppIntent.Focus.enumIdentifier;

  return v0;
}

uint64_t sub_266594D00(uint64_t a1)
{
  v2 = sub_266595724();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_266594D3C(uint64_t a1)
{
  v2 = sub_266595724();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_266594D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2665952A8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_266594DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266595724();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_266594E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2665952A8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t ComposeEventAppIntent.init(snippetModel:focus:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v31 = 0;
  v32 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBA8, &unk_266671E10);
  OUTLINED_FUNCTION_7(v11);
  sub_26666BFB8();
  sub_266668D38();
  OUTLINED_FUNCTION_4_15();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB0, &qword_266671E20);
  OUTLINED_FUNCTION_7(v12);
  v28[0] = sub_26666BFB8();
  sub_266574608(v10);
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_3_16();
  v28[1] = sub_26666BFB8();
  sub_266574608(v10);
  v31 = 0;
  v32 = 0;
  swift_allocObject();
  v13 = sub_26666BFB8();
  LOBYTE(v31) = 7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBC0, &qword_266671E30);
  OUTLINED_FUNCTION_7(v14);

  v15 = sub_26666BFB8();
  if (a1[4])
  {
    v16 = a1[3];
    v17 = a1[4];
  }

  else
  {
    v16 = a1[1];
  }

  v31 = v16;
  v32 = v17;
  swift_allocObject();

  v18 = sub_26666BFB8();

  v19 = type metadata accessor for Snippet.ComposeEventModel(0);
  sub_26655E020(a1 + v19[7], v10);
  sub_26655E020(v10, v8);
  OUTLINED_FUNCTION_3_16();

  v20 = sub_26666BFB8();

  sub_266574608(v10);
  sub_26655E020(a1 + v19[8], v10);
  sub_26655E020(v10, v8);
  OUTLINED_FUNCTION_3_16();

  v21 = sub_26666BFB8();

  sub_266574608(v10);
  LOBYTE(v31) = *(a1 + v19[9]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DBB8, &qword_266671E28);
  OUTLINED_FUNCTION_7(v22);

  v23 = sub_26666BFB8();
  v24 = (a1 + v19[12]);
  v25 = v24[1];
  v31 = *v24;
  v32 = v25;

  sub_26666BFE8();

  LOBYTE(v31) = v29;
  sub_26666BFE8();

  result = sub_266574860(a1);
  v27 = v30;
  *v30 = v18;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v23;
  v27[4] = v13;
  v27[5] = v15;
  return result;
}

unint64_t sub_2665951F8()
{
  result = qword_28007DBC8;
  if (!qword_28007DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBC8);
  }

  return result;
}

unint64_t sub_266595250()
{
  result = qword_28007DBD0;
  if (!qword_28007DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBD0);
  }

  return result;
}

unint64_t sub_2665952A8()
{
  result = qword_28007DBD8;
  if (!qword_28007DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBD8);
  }

  return result;
}

unint64_t sub_266595300()
{
  result = qword_28007DBE0;
  if (!qword_28007DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBE0);
  }

  return result;
}

unint64_t sub_266595358()
{
  result = qword_28007DBE8;
  if (!qword_28007DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBE8);
  }

  return result;
}

unint64_t sub_2665953BC()
{
  result = qword_28007DBF0;
  if (!qword_28007DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007DBF8, &qword_266671F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DBF0);
  }

  return result;
}

unint64_t sub_266595420()
{
  result = qword_28007DC00;
  if (!qword_28007DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC00);
  }

  return result;
}

unint64_t sub_266595478()
{
  result = qword_28007DC08;
  if (!qword_28007DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC08);
  }

  return result;
}

unint64_t sub_2665954D0()
{
  result = qword_28007DC10;
  if (!qword_28007DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC10);
  }

  return result;
}

uint64_t sub_266595524(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_266595564(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ComposeEventAppIntent.Focus(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ComposeEventAppIntent.Focus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266595724()
{
  result = qword_28007DC18;
  if (!qword_28007DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);

  return sub_26655E020(v1, v2);
}

uint64_t sub_2665957F8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 < 0 || sub_26666C4F8() <= a1)
  {
    v6 = 1;
  }

  else
  {
    sub_26666C518();
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v6, 1, a3);
}

_BYTE *storeEnumTagSinglePayload for ParticipantListComparator(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26659595C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC30, &qword_266672208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266672100;
  *(inited + 32) = sub_266595ABC;
  *(inited + 40) = 0;
  *(inited + 48) = sub_266595B34;
  *(inited + 56) = 0;
  *(inited + 64) = sub_266595C18;
  *(inited + 72) = 0;
  v5 = a1;
  v6 = a2;
  v7 = 0;
  while (1)
  {
    v8 = v7 + 16;
    if (v7 == 48)
    {
      break;
    }

    v9 = *(inited + v7 + 32);
    v13 = v6;
    v14 = v5;

    v9(&v12, &v14, &v13);

    v7 = v8;
    if (v12)
    {
      v13 = v6;
      v14 = v5;

      v9(&v12, &v14, &v13);

      swift_setDeallocating();
      sub_266639188();
      v10 = v12;
      goto LABEL_6;
    }
  }

  swift_setDeallocating();
  sub_266639188();
  v10 = 0;
LABEL_6:

  return v10;
}

uint64_t sub_266595ABC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_266666780() & 1;
  result = sub_266666780();
  if (v2 == (result & 1))
  {
    v4 = 0;
  }

  else
  {
    result = sub_266666780();
    v4 = -1;
    if ((result & 1) == 0)
    {
      v4 = 1;
    }
  }

  *a1 = v4;
  return result;
}

unint64_t sub_266595B34@<X0>(id *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*a1 status];
  if (v6 > 7)
  {
    v7 = 99;
  }

  else
  {
    v7 = qword_266672220[v6];
  }

  result = [v5 status];
  if (result > 7)
  {
    v9 = 99;
  }

  else
  {
    v9 = qword_266672220[result];
  }

  if (v7 == v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v4 status];
    if (v11 > 7)
    {
      v12 = 99;
    }

    else
    {
      v12 = qword_266672220[v11];
    }

    result = [v5 status];
    if (result > 7)
    {
      v13 = 99;
    }

    else
    {
      v13 = qword_266672220[result];
    }

    v14 = v12 >= v13;
    v10 = -1;
    if (v14)
    {
      v10 = 1;
    }
  }

  *a3 = v10;
  return result;
}

uint64_t sub_266595C18@<X0>(id *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC38, &unk_266672210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = *a2;
  v10 = [*a1 person];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 displayName];

    v13 = sub_26666C308();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v24[2] = v13;
  v24[3] = v15;
  v16 = [v9 person];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 displayName];

    v17 = sub_26666C308();
    v20 = v19;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v24[0] = v17;
  v24[1] = v20;
  v21 = sub_266668D98();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v21);
  sub_266595F88();
  v22 = sub_26666C708();
  sub_266595FDC(v8);

  *a3 = v22;
  return result;
}

uint64_t sub_266595DF0(char a1)
{
  sub_26666CB88();
  sub_266668ED8();
  return sub_26666CBC8();
}

uint64_t sub_266595E88(uint64_t a1)
{
  sub_26666CB88();
  sub_266668ED8();
  return sub_26666CBC8();
}

unint64_t sub_266595EDC()
{
  result = qword_28007DC20;
  if (!qword_28007DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC20);
  }

  return result;
}

unint64_t sub_266595F34()
{
  result = qword_28007DC28;
  if (!qword_28007DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DC28);
  }

  return result;
}

unint64_t sub_266595F88()
{
  result = qword_28156C140;
  if (!qword_28156C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156C140);
  }

  return result;
}

uint64_t sub_266595FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC38, &unk_266672210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266596044(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266596058()
{
  v37 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = *(v0 + 72);
  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  v5 = sub_26666C618();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_21();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    sub_26659A3E0();

    v8 = sub_26666C558();
    v10 = v9;

    v11 = sub_2665BFC90(v8, v10, &v36);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_266549000, v4, v5, "[UpdateEvent.IntentHandler] parametersToUpdate: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_12();
  }

  v12 = *(v0 + 64);
  v13 = __swift_project_boxed_opaque_existential_1((*(v0 + 72) + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider), *(*(v0 + 72) + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider + 24));
  v14 = sub_2666514C0(v12, *v13);
  if ([v14 unsupportedReason])
  {
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (!OUTLINED_FUNCTION_7_1(v16))
    {
      goto LABEL_14;
    }

LABEL_10:
    v22 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v22);
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_12();
    goto LABEL_14;
  }

  v17 = *(v0 + 72);
  v18 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
  OUTLINED_FUNCTION_41(v17 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate);
  v19 = *(*(v17 + v18) + 16);
  v15 = sub_26666C148();
  v20 = sub_26666C618();
  v21 = OUTLINED_FUNCTION_7_1(v20);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v21)
  {
    v28 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v28);
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    OUTLINED_FUNCTION_12();
  }

  sub_266552C44(0, &unk_28007D170, 0x277CD4218);
  v15 = v14;
  v14 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_14:

  OUTLINED_FUNCTION_8();

  return v34(v14);
}

uint64_t sub_266596358(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26655603C;

  return sub_266596044(v6);
}

uint64_t sub_26659641C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_266596430()
{
  v1 = sub_26659A29C(*(v0 + 40), &selRef_setTitle);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v5 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v5, qword_28156D7E8);

    v6 = sub_26666C148();
    v7 = sub_26666C618();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_21();
      v9 = swift_slowAlloc();
      v41[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2665BFC90(v3, v4, v41);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_9_5();
    }

    objc_opt_self();
    OUTLINED_FUNCTION_6();
    v15 = sub_26666C2F8();

    v16 = [v6 successWithResolvedString:v15];
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
    OUTLINED_FUNCTION_41(v17 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate);
    v19 = *(v17 + v18);
    if (*(v19 + 16))
    {
      sub_26666CB88();

      sub_26666C368();
      v20 = sub_26666CBC8();
      v21 = -1 << *(v19 + 32);
      v22 = v20 & ~v21;
      if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          switch(*(*(v19 + 48) + v22))
          {
            case 1:

              goto LABEL_22;
            case 2:
            case 3:
              goto LABEL_13;
            case 4:
              OUTLINED_FUNCTION_5_12();
              goto LABEL_13;
            default:
              OUTLINED_FUNCTION_19_6();
LABEL_13:
              v24 = sub_26666CAC8();

              if (v24)
              {
LABEL_22:

                if (qword_28156C150 != -1)
                {
                  OUTLINED_FUNCTION_1_1(&qword_28156C150);
                }

                v32 = sub_26666C168();
                OUTLINED_FUNCTION_11_4(v32, qword_28156D7E8);
                v33 = sub_26666C148();
                v34 = sub_26666C618();
                if (OUTLINED_FUNCTION_9(v34))
                {
                  v35 = OUTLINED_FUNCTION_20();
                  OUTLINED_FUNCTION_15(v35);
                  OUTLINED_FUNCTION_4_0(&dword_266549000, v36, v37, "[UpdateEvent.IntentHandler] No title set on intent, returning needsValue");
                  OUTLINED_FUNCTION_10();
                }

                sub_266552C44(0, &unk_28007D170, 0x277CD4218);
                v31 = [swift_getObjCClassFromMetadata() needsValue];
                goto LABEL_27;
              }

              v22 = (v22 + 1) & v23;
              if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
              {
                goto LABEL_15;
              }

              break;
          }
        }
      }

LABEL_15:
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v25 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v25, qword_28156D7E8);
    v26 = sub_26666C148();
    v27 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v27))
    {
      v28 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v28);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v29, v30, "[UpdateEvent.IntentHandler] setTitle not required");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &unk_28007D170, 0x277CD4218);
    v31 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_27:
    v38 = v31;
  }

  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_47_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2665968E8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_26659641C(v6);
}

uint64_t sub_2665969AC()
{
  OUTLINED_FUNCTION_14();
  v1[15] = v2;
  v1[16] = v0;
  v3 = sub_266668EB8();
  v1[17] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[18] = v4;
  v1[19] = OUTLINED_FUNCTION_19();
  v5 = sub_266668E68();
  v1[20] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[21] = v6;
  v1[22] = OUTLINED_FUNCTION_19();
  v7 = sub_266668B08();
  v1[23] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v1[26] = OUTLINED_FUNCTION_19();
  v9 = sub_266668D38();
  v1[27] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[28] = v10;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266596B8C, 0, 0);
}

uint64_t sub_266596B8C()
{
  v2 = [*(v0 + 120) setDateTimeRange];
  if (v2)
  {
    v3 = v2;
    v4 = &off_279BCF000;
    v5 = [v2 startDate];
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 240);
      v8 = *(v0 + 216);
      v9 = *(v0 + 224);
      sub_266668CE8();

      sub_266668CF8();
      OUTLINED_FUNCTION_15_2();
      LOBYTE(v6) = sub_266668CA8();
      v10 = *(v9 + 8);
      v10(v7, v8);
      if (v6)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v11 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v11, qword_28156D7E8);
        v12 = sub_26666C148();
        v13 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v13))
        {
          v14 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v14);
          OUTLINED_FUNCTION_4_0(&dword_266549000, v15, v16, "[UpdateEvent.IntentHandler] past setDateTimeRange given, returning unsupported");
          OUTLINED_FUNCTION_10();
        }

        v17 = *(v0 + 248);
        v18 = *(v0 + 216);

        sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
        v19 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        v10(v17, v18);
LABEL_65:

        goto LABEL_73;
      }

      v10(*(v0 + 248), *(v0 + 216));
    }

    v33 = *(v0 + 128);
    v34 = sub_26659A29C(*(v0 + 120), &selRef_targetEventIdentifier);
    v36 = v35;
    v37 = (v33 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider);
    OUTLINED_FUNCTION_36_1((v33 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider), *(v33 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider + 24));
    v38 = type metadata accessor for EventProvider();
    OUTLINED_FUNCTION_48_0(v38, &off_287806290);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v36)
    {
      OUTLINED_FUNCTION_36_1((v0 + 56), *(v0 + 80));

      v39 = sub_26655A8B4();
      v40 = sub_26665140C(v34, v36, v39);

      swift_bridgeObjectRelease_n();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      if (v40)
      {
        v41 = v3;
        v42 = sub_2665D2370();

        if ((v42 & 1) != 0 && ([v40 isAllDay] & 1) == 0)
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v57 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v57, qword_28156D7E8);
          v58 = sub_26666C148();
          v59 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_2(v59))
          {
            v60 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_42_1(v60);
            OUTLINED_FUNCTION_29_3(&dword_266549000, v61, v62, "[UpdateEvent.IntentHandler] Target Event is not all day but date time value is all day. Pushing event to new day but keeping time.");
            OUTLINED_FUNCTION_4_2();
          }

          v63 = v41;
          sub_2665D289C();
          v65 = v64;

          goto LABEL_54;
        }

        v43 = [v41 startDate];
        if (!v43)
        {
          goto LABEL_45;
        }

        v44 = v43;
        sub_266668CE8();

        v45 = [v41 endDateComponents];
        v46 = *(v0 + 208);
        v47 = *(v0 + 184);
        if (v45)
        {
          v4 = v45;
          sub_266668A28();

          __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
          sub_266557D74(v46, &unk_28007DC90, &qword_266676EB0);
          v48 = v41;
          sub_2665D3034();
          v50 = v49;

          if ((v50 & 1) == 0)
          {
LABEL_44:
            (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
LABEL_45:
            v65 = v41;
            sub_2665D1CD4();

LABEL_54:
            v84 = *(v0 + 120);
            v3 = v65;
            v85 = sub_26659A29C(v84, &selRef_targetEventIdentifier);
            v87 = v86;
            v88 = __swift_project_boxed_opaque_existential_1(v37, v37[3]);
            v19 = sub_266616490(v3, *v88, v85, v87);

            if (v19)
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1(&qword_28156C150);
              }

              v89 = sub_26666C168();
              OUTLINED_FUNCTION_11_4(v89, qword_28156D7E8);
              v90 = sub_26666C148();
              v91 = sub_26666C618();
              if (OUTLINED_FUNCTION_7_2(v91))
              {
                v92 = OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_42_1(v92);
                OUTLINED_FUNCTION_29_3(&dword_266549000, v93, v94, "[UpdateEvent.IntentHander] Conflicting results found, confirming");
                OUTLINED_FUNCTION_4_2();
              }
            }

            else
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1(&qword_28156C150);
              }

              v95 = sub_26666C168();
              OUTLINED_FUNCTION_11_4(v95, qword_28156D7E8);
              v96 = sub_26666C148();
              v97 = sub_26666C618();
              if (OUTLINED_FUNCTION_7_1(v97))
              {
                v98 = OUTLINED_FUNCTION_21();
                v99 = swift_slowAlloc();
                *v98 = 138412290;
                *(v98 + 4) = v3;
                *v99 = v3;
                v100 = v3;
                _os_log_impl(&dword_266549000, v96, OS_LOG_TYPE_DEFAULT, "[UpdateEvent.IntentHandler] returning success for setDateTimeRange: %@", v98, 0xCu);
                sub_266557D74(v99, &unk_28007DCA0, &qword_26666E370);
                OUTLINED_FUNCTION_4_2();
                OUTLINED_FUNCTION_9_5();
              }

              v19 = [objc_opt_self() successWithResolvedDateComponentsRange_];
            }

            goto LABEL_65;
          }
        }

        else
        {
          __swift_storeEnumTagSinglePayload(*(v0 + 208), 1, 1, *(v0 + 184));
          sub_266557D74(v46, &unk_28007DC90, &qword_266676EB0);
        }

        v66 = v41;
        v67 = sub_2665D2370();

        if ((v67 & 1) == 0)
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1(&qword_28156C150);
          }

          v68 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v68, qword_28156D7E8);
          v69 = sub_26666C148();
          v70 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_2(v70))
          {
            v71 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_42_1(v71);
            _os_log_impl(&dword_266549000, v69, v70, "[UpdateEvent.IntentHandler] End date components are not set, using existing event duration or default duration as new time", v4, 2u);
            OUTLINED_FUNCTION_4_2();
          }

          v117 = v66;
          v113 = v40;
          if ([v40 isAllDay])
          {
            OUTLINED_FUNCTION_36_1(v37, v37[3]);
            sub_26655AAD0();
          }

          else
          {
            [v40 duration];
          }

          v72 = *(v0 + 240);
          v73 = *(v0 + 216);
          v109 = *(v0 + 200);
          v110 = *(v0 + 224);
          v114 = *(v0 + 232);
          v115 = *(v0 + 192);
          v116 = *(v0 + 184);
          v74 = *(v0 + 168);
          v75 = *(v0 + 176);
          v76 = *(v0 + 152);
          v77 = *(v0 + 144);
          v111 = *(v0 + 136);
          v112 = *(v0 + 160);
          sub_266668E58();
          sub_266668EA8();
          sub_266668C78();
          sub_266668DD8();
          v78 = *(v110 + 8);
          v78(v72, v73);
          (*(v77 + 8))(v76, v111);
          (*(v74 + 8))(v75, v112);
          v79 = v117;
          v80 = sub_266668A18();
          v81 = sub_26666C2F8();
          [v79 setValue:v80 forKeyPath:v81];

          v65 = v79;
          v82 = sub_26666C578();
          v83 = sub_26666C2F8();
          [v65 setValue:v82 forKeyPath:v83];

          (*(v115 + 8))(v109, v116);
          v78(v114, v73);
          v40 = v113;
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v51 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v51, qword_28156D7E8);
    v52 = sub_26666C148();
    v53 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v53))
    {
      v54 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v54);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v55, v56, "[UpdateEvent.IntentHandler] targetEventIdentifier not found, returning unsupported");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v19 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_65;
  }

  v20 = *(v0 + 128);
  v21 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
  swift_beginAccess();
  v22 = *(v20 + v21);
  if (!*(v22 + 16))
  {
LABEL_17:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v26 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
    v27 = sub_26666C148();
    v28 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v28))
    {
      v29 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v29);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v30, v31, "[UpdateEvent.IntentHandler] setDateTimeRange not required");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v32 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_72;
  }

  sub_26666CB88();

  sub_26666C368();
  sub_26666CBC8();
  OUTLINED_FUNCTION_20_5();
  if ((v23 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  while (2)
  {
    switch(*(*(v22 + 48) + v1))
    {
      case 1:
      case 3:
        goto LABEL_14;
      case 2:

        goto LABEL_67;
      case 4:
        OUTLINED_FUNCTION_5_12();
        goto LABEL_14;
      default:
        OUTLINED_FUNCTION_19_6();
LABEL_14:
        v24 = sub_26666CAC8();

        if ((v24 & 1) == 0)
        {
          OUTLINED_FUNCTION_30_3();
          if ((v25 & 1) == 0)
          {
            goto LABEL_16;
          }

          continue;
        }

LABEL_67:

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v101 = sub_26666C168();
        OUTLINED_FUNCTION_11_4(v101, qword_28156D7E8);
        v102 = sub_26666C148();
        v103 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v103))
        {
          v104 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v104);
          OUTLINED_FUNCTION_4_0(&dword_266549000, v105, v106, "[UpdateEvent.IntentHandler] No dateTimeRange set on intent, returning needsValue");
          OUTLINED_FUNCTION_10();
        }

        sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
        v32 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_72:
        v19 = v32;
LABEL_73:

        OUTLINED_FUNCTION_8();

        return v107(v19);
    }
  }
}

uint64_t sub_2665977CC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_2665969AC();
}

uint64_t sub_266597890(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_2_1();
}

void sub_2665978A4()
{
  v2 = v0[6];
  v3 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate;
  OUTLINED_FUNCTION_41(v2 + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate);
  v4 = *(v2 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_12;
  }

  sub_26666CB88();

  sub_26666C368();
  sub_26666CBC8();
  OUTLINED_FUNCTION_20_5();
  if (v5)
  {
    while (1)
    {
      switch(*(*(v4 + 48) + v1))
      {
        case 1:
        case 2:
          goto LABEL_6;
        case 3:

          goto LABEL_10;
        case 4:
          OUTLINED_FUNCTION_5_12();
          goto LABEL_6;
        default:
          OUTLINED_FUNCTION_19_6();
LABEL_6:
          v6 = sub_26666CAC8();

          if (v6)
          {
LABEL_10:
            v8 = v0[5];

            v9 = [v8 setLocation];
            if (!v9)
            {
              if (qword_28156C150 != -1)
              {
                OUTLINED_FUNCTION_1_1(&qword_28156C150);
              }

              v13 = sub_26666C168();
              OUTLINED_FUNCTION_11_4(v13, qword_28156D7E8);
              v14 = sub_26666C148();
              v15 = sub_26666C618();
              if (OUTLINED_FUNCTION_9(v15))
              {
                v16 = OUTLINED_FUNCTION_20();
                OUTLINED_FUNCTION_15(v16);
                OUTLINED_FUNCTION_4_0(&dword_266549000, v17, v18, "[UpdateEvent.IntentHandler] No location set on intent and itent needs one, returning needsValue");
                OUTLINED_FUNCTION_10();
              }

              sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
              v19 = [swift_getObjCClassFromMetadata() needsValue];
              OUTLINED_FUNCTION_8();
              OUTLINED_FUNCTION_47_0();

              __asm { BRAA            X2, X16 }
            }

LABEL_12:
            __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_locationProvider), *(v0[6] + OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_locationProvider + 24));
            v10 = swift_task_alloc();
            v0[7] = v10;
            *v10 = v0;
            v10[1] = sub_266597BFC;
            OUTLINED_FUNCTION_47_0();

            __asm { BR              X2 }
          }

          OUTLINED_FUNCTION_30_3();
          if ((v7 & 1) == 0)
          {
            goto LABEL_8;
          }

          break;
      }
    }
  }

LABEL_8:

  goto LABEL_12;
}

uint64_t sub_266597BFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_10();

  return v4(v3);
}

uint64_t sub_266597CFC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_266597890(v6);
}

uint64_t sub_266597DD4()
{
  OUTLINED_FUNCTION_11();
  sub_26659A29C(*(v0 + 16), &selRef_setTitle);
  if (v1)
  {
  }

  else
  {
    v2 = [*(v0 + 16) setDateTimeRange];
    if (!v2)
    {
      v13 = sub_26659A310(*(v0 + 16), &selRef_addParticipants);
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      sub_266637788(v14, 1);

      goto LABEL_10;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v3 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v3, qword_28156D7E8);
  v4 = sub_26666C148();
  v5 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v5))
  {
    v6 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v6);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v7, v8, "#UpdateEventIntentHandler already resolved setTitle or setDateTimeRange, returning notRequired for addParticipants");
    OUTLINED_FUNCTION_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  OUTLINED_FUNCTION_23();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26666E050;
  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  *(v9 + 32) = [swift_getObjCClassFromMetadata() notRequired];
LABEL_10:
  v10 = OUTLINED_FUNCTION_1_10();

  return v11(v10);
}

uint64_t sub_266597F94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266598054;

  return sub_266597DC0(v6);
}

uint64_t sub_266598054(uint64_t a1)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_18();
  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  v8 = sub_26666C488();

  (v3)[2](v3, v8);

  _Block_release(v3);
  OUTLINED_FUNCTION_51_0();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2665981EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  if (sub_26659A310(*(v3 + 16), &selRef_removeParticipants))
  {

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v5 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v5, qword_28156D7E8);
    v6 = sub_26666C148();
    v7 = sub_26666C5F8();
    v8 = &selRef_unsupported;
    if (OUTLINED_FUNCTION_9(v7))
    {
      v9 = "[UpdateEvent.IntentHandler] encountered value for removeParticipants, returning unsupported";
LABEL_10:
      v12 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_28_3(v12);
      _os_log_impl(&dword_266549000, v6, v2, v9, v4, 2u);
      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v10 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v10, qword_28156D7E8);
    v6 = sub_26666C148();
    v11 = sub_26666C618();
    v8 = &selRef_notRequired;
    if (OUTLINED_FUNCTION_9(v11))
    {
      v9 = "[UpdateEvent.IntentHandler] no participants to remove, returning notRequired";
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  OUTLINED_FUNCTION_23();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26666E050;
  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  *(v13 + 32) = [swift_getObjCClassFromMetadata() *v8];
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_2665983BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26659A944;

  return sub_2665981D8(v6);
}

uint64_t sub_266598490()
{
  OUTLINED_FUNCTION_11();
  v1 = [*(v0 + 16) removeLocation];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v4 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v4, qword_28156D7E8);
    v5 = sub_26666C148();
    v6 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      v7[1] = v3;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v8, v9, v10, v11, v12, 8u);
      OUTLINED_FUNCTION_12();
    }

    v13 = [objc_opt_self() successWithResolvedValue_];
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v14 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v14, qword_28156D7E8);
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v16))
    {
      v17 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v17);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v18, v19, "[UpdateEvent.IntentHandler] Remove location is nil, returning notRequired");
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
    v13 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v20 = v13;
  OUTLINED_FUNCTION_8();

  return v21();
}

uint64_t sub_266598684(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2665582C4;

  return sub_26659847C(v6);
}

uint64_t sub_266598744(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266598758(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v5 = sub_26666C168();
  v6 = __swift_project_value_buffer(v5, qword_28156D7E8);
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v8))
  {
    v9 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v9);
    _os_log_impl(&dword_266549000, v7, v2, "[UpdateEvent.IntentHandler] resolving update all occurrences", v4, 2u);
    OUTLINED_FUNCTION_12();
  }

  v10 = *(v3 + 96);
  v11 = *(v3 + 104);

  v12 = sub_26659A29C(v10, &selRef_targetEventIdentifier);
  v14 = v13;
  OUTLINED_FUNCTION_36_1(&v11[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider], *&v11[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider + 24]);
  v15 = type metadata accessor for EventProvider();
  OUTLINED_FUNCTION_48_0(v15, &off_287806290);

  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  if (v14)
  {
    OUTLINED_FUNCTION_36_1((v3 + 56), *(v3 + 80));

    v16 = sub_26655A8B4();
    v17 = sub_26665140C(v12, v14, v16);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v3 + 56));
    if (v17)
    {
      if ([v17 hasRecurrenceRules])
      {
        v18 = [*(v3 + 96) updateAllOccurrences];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 BOOLValue];

          v21 = sub_26666C148();
          v22 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v22))
          {
            v23 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_44_0(v23);
            _os_log_impl(&dword_266549000, v21, v6, "[UpdateEvent.IntentHandler] Event is recurring and intent has a value for updateAllOccurrences, returning .success", v11, 2u);
            OUTLINED_FUNCTION_9_5();
          }

          v24 = [objc_opt_self() successWithResolvedValue_];
        }

        else
        {
          v38 = sub_26666C148();
          v39 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v39))
          {
            v40 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_3(v40);
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v41, v42, v43, v44, v45, 2u);
            OUTLINED_FUNCTION_12();
          }

          sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
          v24 = [swift_getObjCClassFromMetadata() needsValue];
        }
      }

      else
      {
        v30 = sub_26666C148();
        v31 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v31))
        {
          v32 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v32);
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v33, v34, v35, v36, v37, 2u);
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
        v24 = [swift_getObjCClassFromMetadata() notRequired];
      }

      v24;

      goto LABEL_23;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  }

  v25 = sub_26666C148();
  v26 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_9(v26))
  {
    v27 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v27);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v28, v29, "[UpdateEvent.IntentHandler] No EKEvent found for target event id, returning .unsupported");
    OUTLINED_FUNCTION_10();
  }

  sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
  [swift_getObjCClassFromMetadata() unsupported];
LABEL_23:
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53);
}

uint64_t sub_266598B1C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_266598744(v6);
}

uint64_t sub_266598BE0()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v3 = sub_266668D38();
  v1[21] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[22] = v4;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266598CE4, 0, 0);
}

uint64_t sub_266598CE4()
{
  v115 = v0;
  v1 = *(v0 + 144);
  sub_26659A29C(*(v0 + 136), &selRef_targetEventIdentifier);
  v3 = v2;
  v4 = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider;
  *(v0 + 200) = OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider;
  OUTLINED_FUNCTION_36_1((&v1->isa + v4), *(&v1[3].isa + v4));
  v5 = type metadata accessor for EventProvider();
  *(v0 + 16) = v1;
  *(v0 + 40) = v5;
  *(v0 + 48) = &off_287806290;
  sub_26655358C(v0 + 16, v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_36_1((v0 + 56), *(v0 + 80));

  sub_26655A8B4();
  v6 = OUTLINED_FUNCTION_6();
  v7 = sub_26665140C(v6, v3, v1);
  *(v0 + 208) = v7;

  swift_bridgeObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (!v7)
  {
LABEL_23:
    OUTLINED_FUNCTION_39_0();
    if (!v28)
    {
LABEL_74:
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v29 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v29, qword_28156D7E8);
    v30 = sub_26666C148();
    v31 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v31))
    {
      v32 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v32);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v33, v34, "[UpdateEvent.IntentHandler] unexpectedly found nil targetEventIdentifier or nonexistent event for identifier");
      OUTLINED_FUNCTION_10();
    }

    v35 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v35, v36, MEMORY[0x277D84F90]);
    goto LABEL_28;
  }

  v8 = [*(v0 + 136) setDateTimeRange];
  if (v8)
  {
    v9 = v8;
    [v7 setAllDay_];
    v10 = [v9 startDate];
    if (v10)
    {
      v11 = *(v0 + 192);
      sub_266668CE8();

      v10 = v11;
      sub_266668C88();
      v12 = OUTLINED_FUNCTION_45_0();
      v13(v12);
    }

    [v7 setStartDate_];

    v1 = [v9 endDate];
    if (v1)
    {
      v14 = *(v0 + 184);
      sub_266668CE8();

      v1 = v14;
      sub_266668C88();
      v15 = OUTLINED_FUNCTION_45_0();
      v16(v15);
    }

    [v7 setEndDate_];
  }

  v17 = sub_26659A29C(*(v0 + 136), &selRef_setTitle);
  if (v18)
  {
    sub_26659A37C(v17, v18, v7);
  }

  v19 = sub_26659A310(*(v0 + 136), &selRef_addParticipants);
  if (!v19)
  {
    goto LABEL_54;
  }

  v20 = v19;
  v21 = sub_26659A310(*(v0 + 136), &selRef_addParticipants);
  if (!v21)
  {
LABEL_42:
    OUTLINED_FUNCTION_39_0();
    if (!v28)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v59 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v59, qword_28156D7E8);
    v60 = sub_26666C148();
    v61 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v61))
    {
      v62 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_42_1(v62);
      OUTLINED_FUNCTION_29_3(&dword_266549000, v63, v64, "[UpdateEvent.IntentHandler] participants are not invitable, adding them to title");
      OUTLINED_FUNCTION_4_2();
    }

    result = sub_2665EF638(v7);
    if (v65)
    {
      v66 = *(v0 + 160);
      v67 = *(v0 + 136);

      sub_26666C358();

      v68 = sub_26666BDA8();
      __swift_storeEnumTagSinglePayload(v66, 0, 1, v68);
      v69 = sub_26659A310(v67, &selRef_addParticipants);
      if (v69)
      {
        v70 = v69;
        sub_266669E68();
        v71 = swift_task_alloc();
        *(v71 + 16) = v0 + 96;
        sub_2665511FC(sub_266557CC8, v71, v70);
        v73 = v72;

        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      }

      else
      {
        v73 = MEMORY[0x277D84F90];
      }

      *(v0 + 216) = v73;
      __swift_storeEnumTagSinglePayload(*(v0 + 152), 1, 1, v68);
      v74 = swift_task_alloc();
      *(v0 + 224) = v74;
      *v74 = v0;
      v74[1] = sub_266599744;

      return sub_2665D8CB8();
    }

LABEL_76:
    __break(1u);
    return result;
  }

  v22 = v21;
  v113 = v20;
  v23 = sub_2665C485C();
  v24 = 0;
  while (v23 != v24)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x266788B60](v24, v22);
    }

    else
    {
      if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v26 = v25;
    v27 = sub_266580A7C();

    ++v24;
    if ((v27 & 1) == 0)
    {

      goto LABEL_42;
    }
  }

  v40 = sub_266580B18(v20);

  result = sub_2665C485C();
  if (!result)
  {
    goto LABEL_38;
  }

  v41 = result;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_76;
  }

  for (i = 0; i != v41; ++i)
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x266788B60](i, v40);
    }

    else
    {
      v43 = *(v40 + 8 * i + 32);
    }

    v44 = v43;
    [v7 addAttendee_];
  }

LABEL_38:
  OUTLINED_FUNCTION_39_0();
  if (!v28)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v45 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v45, qword_28156D7E8);

  v1 = sub_26666C148();
  v46 = sub_26666C618();

  if (os_log_type_enabled(v1, v46))
  {
    v47 = OUTLINED_FUNCTION_21();
    v48 = swift_slowAlloc();
    v114 = v48;
    *v47 = 136315138;
    v49 = sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    v50 = MEMORY[0x2667887F0](v40, v49);
    v52 = v51;

    v53 = sub_2665BFC90(v50, v52, &v114);

    *(v47 + 4) = v53;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

LABEL_54:
  if (sub_26659A310(*(v0 + 136), &selRef_removeParticipants))
  {
    OUTLINED_FUNCTION_34_1();
    sub_266580B18(v75);

    sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    sub_26666C488();
    OUTLINED_FUNCTION_6();

    v76 = OUTLINED_FUNCTION_14_6();
    v77 = OUTLINED_FUNCTION_32_3();
    [v77 v78];
  }

  if ([*(v0 + 136) setLocation])
  {
    OUTLINED_FUNCTION_34_1();
    sub_266552C44(0, &qword_28007D2C8, 0x277CC5AD0);
    v79 = v1;
    v80 = sub_266653E0C(v79);
    v81 = OUTLINED_FUNCTION_32_3();
    [v81 v82];
  }

  v83 = [*(v0 + 136) updateAllOccurrences];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v84 = sub_26666C658();
  v85 = v84;
  if (v83)
  {
    OUTLINED_FUNCTION_15_2();
    sub_26666C678();
  }

  else
  {
  }

  v86 = (*(v0 + 144) + *(v0 + 200));
  OUTLINED_FUNCTION_36_1(v86, v86[3]);
  v87 = OUTLINED_FUNCTION_15_2();
  v89 = sub_26655BCC8(v87, v88);
  if (v89)
  {
    v90 = v89;
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v91 = v90;
    sub_2665EB4F8();
    OUTLINED_FUNCTION_39_0();
    if (!v28)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v92 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v92, qword_28156D7E8);
    v93 = sub_26666C148();
    v94 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v94))
    {
      v95 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v95);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v96, v97, v98, v99, v100, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v101 = *(v0 + 208);

    v102 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_40_0(v102, v103, MEMORY[0x277D84F90]);
  }

  else
  {
    OUTLINED_FUNCTION_39_0();
    if (!v28)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v104 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v104, qword_28156D7E8);
    v105 = sub_26666C148();
    v106 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v106))
    {
      v107 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v107);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v108, v109, "[UpdateEvent.IntentHandler] event could not be updated, returning failure");
      OUTLINED_FUNCTION_10();
    }

    v110 = *(v0 + 208);

    v111 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v111, v112, MEMORY[0x277D84F90]);
  }

LABEL_28:

  v37 = OUTLINED_FUNCTION_1_10();

  return v38(v37);
}

uint64_t sub_266599744(uint64_t a1)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  v3 = *v2;
  *(*v2 + 232) = v4;

  v5 = *(v3 + 152);
  if (v1)
  {
  }

  sub_266557D74(v5, &unk_28007D130, &unk_266671DF0);
  v6 = OUTLINED_FUNCTION_25();
  sub_266557D74(v6, v7, &unk_266671DF0);
  OUTLINED_FUNCTION_51_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266599910(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();
  v3 = *(v2 + 232);
  v4 = sub_26655F6C8();
  v6 = v5;

  if (v6)
  {
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v8 = *(v2 + 232);
    v9 = *(v2 + 208);
    if (v7)
    {
      sub_26659A37C(v4, v6, *(v2 + 208));
    }

    else
    {
    }
  }

  else
  {
    v9 = *(v2 + 208);
  }

  if (sub_26659A310(*(v2 + 136), &selRef_removeParticipants))
  {
    OUTLINED_FUNCTION_34_1();
    sub_266580B18(v10);

    sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    sub_26666C488();
    OUTLINED_FUNCTION_6();

    v11 = OUTLINED_FUNCTION_14_6();
    v12 = OUTLINED_FUNCTION_32_3();
    [v12 v13];
  }

  if ([*(v2 + 136) setLocation])
  {
    OUTLINED_FUNCTION_34_1();
    sub_266552C44(0, &qword_28007D2C8, 0x277CC5AD0);
    v14 = v9;
    v15 = sub_266653E0C(v14);
    v16 = OUTLINED_FUNCTION_32_3();
    [v16 v17];
  }

  v18 = [*(v2 + 136) updateAllOccurrences];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v19 = sub_26666C658();
  v20 = v19;
  if (v18)
  {
    OUTLINED_FUNCTION_15_2();
    sub_26666C678();
  }

  else
  {
  }

  v21 = (*(v2 + 144) + *(v2 + 200));
  OUTLINED_FUNCTION_36_1(v21, v21[3]);
  v22 = OUTLINED_FUNCTION_15_2();
  v24 = sub_26655BCC8(v22, v23);
  if (v24)
  {
    v25 = v24;
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v26 = v25;
    sub_2665EB4F8();
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v27 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v27, qword_28156D7E8);
    v28 = sub_26666C148();
    v29 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v29))
    {
      v30 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v30);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v36 = *(v2 + 208);

    v37 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_40_0(v37, v38, MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v39 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v39, qword_28156D7E8);
    v40 = sub_26666C148();
    v41 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v41))
    {
      v42 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v42);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v43, v44, "[UpdateEvent.IntentHandler] event could not be updated, returning failure");
      OUTLINED_FUNCTION_10();
    }

    v36 = *(v2 + 208);

    v45 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v45, v46, MEMORY[0x277D84F90]);
  }

  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54);
}

uint64_t sub_266599CF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_36_0();

  if (sub_26659A310(*(v3 + 136), &selRef_removeParticipants))
  {
    OUTLINED_FUNCTION_34_1();
    sub_266580B18(v4);

    sub_266552C44(0, &unk_28007DC70, 0x277CC5A70);
    sub_26666C488();
    OUTLINED_FUNCTION_6();

    v5 = OUTLINED_FUNCTION_14_6();
    v6 = OUTLINED_FUNCTION_32_3();
    [v6 v7];
  }

  if ([*(v3 + 136) setLocation])
  {
    OUTLINED_FUNCTION_34_1();
    sub_266552C44(0, &qword_28007D2C8, 0x277CC5AD0);
    v8 = v2;
    v9 = sub_266653E0C(v8);
    v10 = OUTLINED_FUNCTION_32_3();
    [v10 v11];
  }

  v12 = [*(v3 + 136) updateAllOccurrences];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v13 = sub_26666C658();
  v14 = v13;
  if (v12)
  {
    OUTLINED_FUNCTION_15_2();
    sub_26666C678();
  }

  else
  {
  }

  v15 = (*(v3 + 144) + *(v3 + 200));
  OUTLINED_FUNCTION_36_1(v15, v15[3]);
  v16 = OUTLINED_FUNCTION_15_2();
  v18 = sub_26655BCC8(v16, v17);
  if (v18)
  {
    v19 = v18;
    sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
    v20 = v19;
    sub_2665EB4F8();
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v21 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v21, qword_28156D7E8);
    v22 = sub_26666C148();
    v23 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v24);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v30 = *(v3 + 208);

    v31 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_40_0(v31, v32, MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v33 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v33, qword_28156D7E8);
    v34 = sub_26666C148();
    v35 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v35))
    {
      v36 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v36);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v37, v38, "[UpdateEvent.IntentHandler] event could not be updated, returning failure");
      OUTLINED_FUNCTION_10();
    }

    v30 = *(v3 + 208);

    v39 = sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
    OUTLINED_FUNCTION_33_1(v39, v40, MEMORY[0x277D84F90]);
  }

  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_51_0();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48);
}

uint64_t sub_26659A08C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2665582C4;

  return sub_266598BE0();
}

id sub_26659A160()
{
  v2.receiver = v0;
  v2.super_class = _s13IntentHandlerCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26659A29C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_26666C308();
  }

  return OUTLINED_FUNCTION_25();
}

uint64_t sub_26659A310(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v4 = sub_26666C498();

  return v4;
}

void sub_26659A37C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();

  [a3 setTitle_];
}

unint64_t sub_26659A3E0()
{
  result = qword_28007DCB0;
  if (!qword_28007DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DCB0);
  }

  return result;
}

uint64_t sub_26659A434()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A4C4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A554()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A5E4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A674()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A704()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A794()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A824()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26659A8B4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_26666C2F8();
}

void OUTLINED_FUNCTION_29_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2666369A4(5, 0, a3, 0);
}

id OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2666369A4(3, 0, a3, v3);
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[2] = v2;

  return sub_26655358C((v3 + 2), (v3 + 7));
}

uint64_t type metadata accessor for TaskParser(uint64_t a1)
{
  result = qword_28156CDB8;
  if (!qword_28156CDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26659ABA4(uint64_t a1)
{
  result = sub_266668D98();
  if (v2 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CF58, &protocol descriptor for CalendarDateTimeResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26655EC10(319, qword_28156CB10, &protocol descriptor for ContactResolving);
      if (v4 <= 0x3F)
      {
        result = sub_26655EC10(319, &qword_28156CF50, &protocol descriptor for CalendarReferenceResolving);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26659AC88@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266669E88();
  OUTLINED_FUNCTION_3_0();
  v70 = v5;
  MEMORY[0x28223BE20](v6);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26666B208();
  OUTLINED_FUNCTION_3_0();
  v73 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  result = sub_2665DA448(a1);
  if (result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 5;
  }

  else
  {
    v68 = v4;
    v69 = a2;
    v26 = (v15 + 16);
    v27 = *(v15 + 16);
    v27(v24, a1, v13);
    v28 = OUTLINED_FUNCTION_6_6();
    v30 = v29(v28);
    if (v30 == *MEMORY[0x277D5C128])
    {
      v31 = OUTLINED_FUNCTION_6_6();
      v32(v31);
      v33 = v8;
      (v73[4])(v12, v24, v8);
      sub_26659B44C(v12, &v76);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v34 = sub_26666C168();
      __swift_project_value_buffer(v34, qword_28156D7E8);
      sub_26657E808(&v76, v75, &unk_28007D200, &qword_26666FD20);
      v35 = sub_26666C148();
      v36 = sub_26666C618();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v74 = v38;
        *v37 = 136315138;
        OUTLINED_FUNCTION_7_10();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
        sub_26666C318();
        OUTLINED_FUNCTION_4_16();
        v39 = sub_2665BFC90(v22, a1, &v74);

        *(v37 + 4) = v39;
        _os_log_impl(&dword_266549000, v35, v36, "[TaskParser] NLv3 parser parsed task: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        sub_26656CAEC(v75, &unk_28007D200, &qword_26666FD20);
      }

      result = (v73[1])(v12, v33);
      v52 = v69;
      v53 = v77[0];
      *v69 = v76;
      *(v52 + 16) = v53;
      *(v52 + 25) = *(v77 + 9);
    }

    else if (v30 == *MEMORY[0x277D5C160])
    {
      v40 = OUTLINED_FUNCTION_6_6();
      v41(v40);
      v42 = v70;
      v43 = v71;
      (*(v70 + 32))(v71, v24, v68);
      sub_26659C324(v43, &v76);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v44 = sub_26666C168();
      __swift_project_value_buffer(v44, qword_28156D7E8);
      sub_26657E808(&v76, v75, &unk_28007D200, &qword_26666FD20);
      v45 = sub_26666C148();
      v46 = sub_26666C618();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v69;
      if (v47)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v74 = v50;
        *v49 = 136315138;
        OUTLINED_FUNCTION_7_10();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
        sub_26666C318();
        OUTLINED_FUNCTION_4_16();
        v51 = sub_2665BFC90(v22, a1, &v74);

        *(v49 + 4) = v51;
        _os_log_impl(&dword_266549000, v45, v46, "[TaskParser] USO parser parsed task: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        sub_26656CAEC(v75, &unk_28007D200, &qword_26666FD20);
      }

      result = (*(v42 + 8))(v71, v68);
      v64 = v77[0];
      *v48 = v76;
      v48[1] = v64;
      *(v48 + 25) = *(v77 + 9);
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v54 = sub_26666C168();
      __swift_project_value_buffer(v54, qword_28156D7E8);
      v27(v22, a1, v13);
      v55 = sub_26666C148();
      v56 = sub_26666C618();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v72 = v57;
        v73 = swift_slowAlloc();
        *&v76 = v73;
        *v57 = 136315138;
        v27(v19, v22, v13);
        v58 = sub_26666C318();
        v60 = v59;
        v61 = OUTLINED_FUNCTION_3_17();
        v26(v61);
        v62 = sub_2665BFC90(v58, v60, &v76);

        v63 = v72;
        *(v72 + 1) = v62;
        _os_log_impl(&dword_266549000, v55, v56, "[TaskParser] got unsupported parse type: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        v65 = OUTLINED_FUNCTION_3_17();
        v26(v65);
      }

      v66 = v69;
      *(v69 + 32) = 0;
      *v66 = 0u;
      *(v66 + 16) = 0u;
      *(v66 + 40) = -1;
      v67 = OUTLINED_FUNCTION_6_6();
      return (v26)(v67);
    }
  }

  return result;
}

void sub_26659B44C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper(0);
  MEMORY[0x28223BE20](EventsNLv3IntentWrapper);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
  MEMORY[0x28223BE20](updated);
  v102 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_266668D98();
  v104 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for CalendarNLv3Intent(0);
  v7 = MEMORY[0x28223BE20](v98);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v109 = &v96 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v96 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D230, &qword_26666E2B8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v96 - v14;
  v16 = sub_26666B208();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v20 = sub_26666C168();
  v21 = __swift_project_value_buffer(v20, qword_28156D7E8);
  v22 = *(v17 + 16);
  v113 = a1;
  v107 = (v17 + 16);
  v106 = v22;
  v22(v19, a1, v16);
  v23 = sub_26666C148();
  v24 = sub_26666C618();
  v25 = os_log_type_enabled(v23, v24);
  v112 = v12;
  v108 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v97 = a2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v96 = v21;
    v29 = v28;
    v120[0] = v28;
    *v27 = 136315138;
    sub_266563A94(&qword_28007D2E0, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
    v30 = sub_26666CAA8();
    v32 = v31;
    (*(v17 + 8))(v19, v16);
    v33 = sub_2665BFC90(v30, v32, v120);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_266549000, v23, v24, "[TaskParser] parsing NLv3 intent: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x266789690](v29, -1, -1);
    v34 = v27;
    a2 = v97;
    MEMORY[0x266789690](v34, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v19, v16);
  }

  v35 = v113;
  sub_26666B0F8();
  v36 = sub_26666A588();
  if (__swift_getEnumTagSinglePayload(v15, 1, v36) == 1)
  {
    sub_26656CAEC(v15, &qword_28007D230, &qword_26666E2B8);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = sub_26666A548();
    v38 = v39;
    (*(*(v36 - 8) + 8))(v15, v36);
  }

  if (qword_28007CE30 != -1)
  {
    swift_once();
  }

  v40 = sub_26666A0F8();
  if (!v38)
  {

    goto LABEL_19;
  }

  if (v37 == v40 && v38 == v41)
  {

    goto LABEL_25;
  }

  v43 = sub_26666CAC8();

  if ((v43 & 1) == 0)
  {
LABEL_19:
    v44 = sub_26666C148();
    v45 = sub_26666C618();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_266549000, v44, v45, "[TaskParser] NLv3 intent is not a calendarEvent intent", v46, 2u);
      MEMORY[0x266789690](v46, -1, -1);
    }

    goto LABEL_22;
  }

LABEL_25:
  v48 = v112;
  v106(v112, v35, v108);
  if (!sub_26662E0D4())
  {
    if (sub_26662E328())
    {
      v77 = v102;
      sub_266571E2C(v48, v102);
      v78 = updated;
      v79 = v105;
      (*(v104 + 16))(v77 + *(updated + 20), v105, v111);
      v80 = type metadata accessor for TaskParser(0);
      sub_26655358C(v79 + v80[5], v77 + v78[6]);
      sub_26655358C(v79 + v80[6], v77 + v78[7]);
      sub_26655358C(v79 + v80[7], v77 + v78[8]);
      *(a2 + 24) = v78;
      *(a2 + 32) = &off_28780A6F0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      sub_26659D0A8(v77, boxed_opaque_existential_1, type metadata accessor for UpdateEventNLv3IntentWrapper);
      sub_266563A38(v48);
      v47 = 3;
      goto LABEL_23;
    }

    if (sub_26662E594() & 1) != 0 || (sub_26662E8E4())
    {
      v82 = v100;
      sub_266571E2C(v48, v100);
      v83 = type metadata accessor for TaskParser(0);
      v84 = EventsNLv3IntentWrapper;
      v85 = v105;
      sub_26655358C(v105 + v83[5], v82 + *(EventsNLv3IntentWrapper + 20));
      sub_26655358C(v85 + v83[6], v82 + *(v84 + 24));
      sub_26655358C(v85 + v83[7], v82 + *(v84 + 28));
      LOBYTE(v83) = sub_26662E594();
      *(a2 + 24) = v84;
      *(a2 + 32) = &off_287808F80;
      v86 = __swift_allocate_boxed_opaque_existential_1(a2);
      sub_26659D0A8(v82, v86, type metadata accessor for FindEventsNLv3IntentWrapper);
      sub_266563A38(v48);
      if (v83)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      goto LABEL_23;
    }

    v87 = v99;
    sub_266571E2C(v48, v99);
    v88 = sub_26666C148();
    v89 = sub_26666C5F8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v120[0] = v91;
      *v90 = 136315138;
      sub_266563A94(&qword_28007DCC0, type metadata accessor for CalendarNLv3Intent, &unk_266679EC4);
      v92 = sub_26666CAA8();
      v94 = v93;
      sub_266563A38(v87);
      v95 = sub_2665BFC90(v92, v94, v120);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_266549000, v88, v89, "[TaskParser] unsupported calendarEvent intent: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x266789690](v91, -1, -1);
      MEMORY[0x266789690](v90, -1, -1);
    }

    else
    {

      sub_266563A38(v87);
    }

    sub_266563A38(v48);
LABEL_22:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v47 = -1;
LABEL_23:
    *(a2 + 40) = v47;
    return;
  }

  sub_266571E2C(v48, v109);
  v49 = v104;
  v50 = v105;
  (*(v104 + 16))(v110, v105, v111);
  v51 = type metadata accessor for TaskParser(0);
  sub_26655358C(v50 + v51[5], v120);
  sub_26655358C(v50 + v51[6], &v119);
  sub_26655358C(v50 + v51[7], v118);
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v120, v120[3]);
  v113 = &v96;
  MEMORY[0x28223BE20](v52);
  v54 = &v96 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 16))(v54);
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v118, v118[3]);
  v108 = &v96;
  MEMORY[0x28223BE20](v56);
  v58 = (&v96 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = *v58;
  v61 = type metadata accessor for CalendarDateTimeResolver(0);
  v116 = v61;
  v117 = &off_28780BA58;
  v62 = __swift_allocate_boxed_opaque_existential_1(v115);
  sub_26659D0A8(v54, v62, type metadata accessor for CalendarDateTimeResolver);
  v114[4] = &off_28780BAC8;
  v114[3] = &type metadata for CalendarReferenceResolver;
  v114[0] = v60;
  EventNLv3IntentWrapper = type metadata accessor for CreateEventNLv3IntentWrapper(0);
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
  v107 = &v96;
  MEMORY[0x28223BE20](v65);
  v67 = &v96 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v114, &type metadata for CalendarReferenceResolver);
  MEMORY[0x28223BE20](v69);
  v71 = (&v96 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;
  v74 = (v64 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_dateTimeResolver);
  v74[3] = v61;
  v74[4] = &off_28780BA58;
  v75 = __swift_allocate_boxed_opaque_existential_1(v74);
  sub_26659D0A8(v67, v75, type metadata accessor for CalendarDateTimeResolver);
  v76 = (v64 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_referenceResolver);
  v76[3] = &type metadata for CalendarReferenceResolver;
  v76[4] = &off_28780BAC8;
  *v76 = v73;
  *(v64 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper____lazy_storage___resolvedCalendarEvent) = 1;
  sub_26659D0A8(v109, v64 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_calendarIntent, type metadata accessor for CalendarNLv3Intent);
  (*(v49 + 32))(v64 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_siriLocale, v110, v111);
  sub_26654B7D8(&v119, v64 + OBJC_IVAR____TtC19SiriCalendarIntents28CreateEventNLv3IntentWrapper_contactResolver);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v118);
  __swift_destroy_boxed_opaque_existential_1(v120);
  *(a2 + 24) = EventNLv3IntentWrapper;
  *(a2 + 32) = &off_287806910;
  *a2 = v64;
  sub_266563A38(v112);
  *(a2 + 40) = 0;
}

void sub_26659C324(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = sub_266668D98();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v102 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateEventUSOIntentWrapper(0);
  MEMORY[0x28223BE20](updated);
  v104 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventUSOIntentWrapper = type metadata accessor for CreateEventUSOIntentWrapper(0);
  MEMORY[0x28223BE20](EventUSOIntentWrapper);
  v105 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266669E88();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v101 - v12;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v14 = sub_26666C168();
  v15 = __swift_project_value_buffer(v14, qword_28156D7E8);
  v16 = *(v8 + 16);
  v110 = a1;
  v16(v13, a1, v7);
  v101[1] = v15;
  v17 = sub_26666C148();
  v18 = sub_26666C618();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v101[0] = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    __src[0] = v21;
    *v20 = 136315138;
    v16(v11, v13, v7);
    v22 = sub_26666C318();
    v24 = v23;
    (*(v8 + 8))(v13, v7);
    v25 = sub_2665BFC90(v22, v24, __src);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_266549000, v17, v18, "[TaskParser] parsing USO Parse: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x266789690](v21, -1, -1);
    v26 = v20;
    a2 = v101[0];
    MEMORY[0x266789690](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v27 = sub_2665F1538();
  if (v27)
  {
    v28 = v27;
    v29 = v105;
    v30 = v109;
    (*(v107 + 16))(v105, v109, v108);
    v31 = type metadata accessor for TaskParser(0);
    v32 = EventUSOIntentWrapper;
    sub_26655358C(v30 + v31[5], v29 + *(EventUSOIntentWrapper + 20));
    sub_26655358C(v30 + v31[7], v29 + v32[6]);
    sub_26655358C(v30 + v31[6], v29 + v32[7]);
    *(v29 + v32[8]) = v28;
    *(a2 + 24) = v32;
    *(a2 + 32) = &off_287806A60;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    sub_26659D0A8(v29, boxed_opaque_existential_1, type metadata accessor for CreateEventUSOIntentWrapper);
    *(a2 + 40) = 0;
    return;
  }

  v34 = sub_2665F1578();
  if (v34)
  {
    v35 = v34;
    v36 = type metadata accessor for TaskParser(0);
    v37 = a2;
    v38 = v109;
    sub_26655358C(v109 + v36[5], __src);
    sub_26655358C(v38 + v36[7], &__src[5]);
    sub_26655358C(v38 + v36[6], &__src[10]);
    __src[18] = sub_26666ADD8();
    __src[19] = &off_28780BC30;
    __src[15] = v35;
    *(a2 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(a2 + 32) = &off_28780BD68;
    v39 = swift_allocObject();
    *a2 = v39;
    memcpy((v39 + 16), __src, 0xA0uLL);
    v40 = 2;
LABEL_14:
    *(v37 + 40) = v40;
    return;
  }

  v41 = sub_2665F17DC();
  if (v41)
  {
    v42 = v41;
    v43 = type metadata accessor for TaskParser(0);
    v44 = v109;
    sub_26655358C(v109 + v43[5], __src);
    sub_26655358C(v44 + v43[7], &v113);
    sub_26655358C(v44 + v43[6], &v112);
    v45 = v107;
    v37 = a2;
    v46 = *(v107 + 16);
    v47 = v102;
    v48 = v108;
    v46(v102, v44, v108);
    v49 = v104;
    sub_26655358C(__src, v104);
    sub_26655358C(&v113, v49 + 40);
    sub_26655358C(&v112, v49 + 80);
    v50 = updated;
    v46((v49 + *(updated + 28)), v47, v48);
    *(v49 + *(v50 + 32)) = v42;
    v51 = (v49 + *(v50 + 36));
    v51[3] = &type metadata for FindEventUSOIntentWrapper;
    v51[4] = &off_28780BD68;
    v52 = swift_allocObject();
    *v51 = v52;
    sub_26655358C(__src, (v52 + 2));
    sub_26655358C(&v113, (v52 + 7));
    sub_26655358C(&v112, (v52 + 12));
    v52[20] = sub_26666ADF8();
    v52[21] = &off_28780BC58;
    v52[17] = v42;
    v53 = *(v45 + 8);
    swift_retain_n();
    v53(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(&v112);
    __swift_destroy_boxed_opaque_existential_1(&v113);
    __swift_destroy_boxed_opaque_existential_1(__src);
    *(v37 + 24) = v50;
    *(v37 + 32) = &off_28780BF78;
    v54 = __swift_allocate_boxed_opaque_existential_1(v37);
    sub_26659D0A8(v49, v54, type metadata accessor for UpdateEventUSOIntentWrapper);

    v40 = 3;
    goto LABEL_14;
  }

  v55 = sub_2665F181C();
  if (v55)
  {
    v56 = v55;
    v57 = type metadata accessor for TaskParser(0);
    v37 = a2;
    v58 = v109;
    sub_26655358C(v109 + *(v57 + 20), __src);
    sub_26655358C(v58 + *(v57 + 28), &__src[5]);
    __src[10] = v56;
    *(a2 + 24) = &type metadata for OpenCalendarViewUSOIntentWrapper;
    *(a2 + 32) = &off_287807F80;
    v59 = swift_allocObject();
    *a2 = v59;
    memcpy((v59 + 16), __src, 0x58uLL);
    v40 = 4;
    goto LABEL_14;
  }

  v60 = sub_2665F185C();
  if (v60)
  {
    v61 = v60;
    v62 = sub_26666AF88();
    v63 = &off_28780BB90;
LABEL_21:
    v114 = v62;
    v115 = v63;
    v113 = v61;
    v66 = type metadata accessor for TaskParser(0);
    v67 = v109;
    sub_26655358C(v109 + v66[5], __src);
    sub_26655358C(v67 + v66[7], &__src[5]);
    sub_26655358C(v67 + v66[6], &__src[10]);
    sub_26657E808(&v113, &__src[15], &qword_28007DCC8, &unk_2666724D0);
    *(a2 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(a2 + 32) = &off_28780BD68;
    v68 = swift_allocObject();
    *a2 = v68;
    memcpy((v68 + 16), __src, 0xA0uLL);
    *(a2 + 40) = 1;
LABEL_22:
    sub_26656CAEC(&v113, &qword_28007DCC8, &unk_2666724D0);
    return;
  }

  v64 = sub_2665F189C();
  if (v64)
  {
    v61 = v64;
    v62 = sub_26666AC28();
    v63 = &off_28780BC08;
    goto LABEL_21;
  }

  v65 = sub_2665F18DC();
  if (v65)
  {
    v61 = v65;
    v62 = sub_26666AEA8();
    v63 = &off_28780BBE0;
    goto LABEL_21;
  }

  v69 = a2;
  v70 = sub_2665F191C();
  if (v70)
  {
    v71 = v70;
    v72 = sub_26666B0C8();
    v73 = &off_28780BBB8;
LABEL_25:
    v114 = v72;
    v115 = v73;
    v113 = v71;
LABEL_30:
    v79 = type metadata accessor for TaskParser(0);
    v80 = v109;
    sub_26655358C(v109 + v79[5], __src);
    sub_26655358C(v80 + v79[7], &__src[5]);
    sub_26655358C(v80 + v79[6], &__src[10]);
    sub_26657E808(&v113, &__src[15], &qword_28007DCC8, &unk_2666724D0);
    *(v69 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(v69 + 32) = &off_28780BD68;
    v81 = swift_allocObject();
    *v69 = v81;
    memcpy((v81 + 16), __src, 0xA0uLL);
    *(v69 + 40) = 1;
    goto LABEL_22;
  }

  v74 = sub_2665F195C();
  if (v74)
  {
    v75 = v74;
    v76 = sub_26666C148();
    v77 = sub_26666C5F8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_266549000, v76, v77, "[TaskParser] Interpreting unsupported join event request as a find event request", v78, 2u);
      MEMORY[0x266789690](v78, -1, -1);
    }

    v114 = sub_26666AC18();
    v115 = &off_28780BC80;
    v113 = v75;
    goto LABEL_30;
  }

  v82 = sub_2665F199C();
  if (v82)
  {
    v71 = v82;
    v72 = sub_26666ADE8();
    v73 = &off_28780BCA8;
    goto LABEL_25;
  }

  if (sub_2665F19DC())
  {

    v83 = type metadata accessor for TaskParser(0);
    v84 = v109;
    sub_26655358C(v109 + v83[5], __src);
    sub_26655358C(v84 + v83[7], &__src[5]);
    sub_26655358C(v84 + v83[6], &__src[10]);
    memset(&__src[15], 0, 40);
    *(v69 + 24) = &type metadata for FindEventUSOIntentWrapper;
    *(v69 + 32) = &off_28780BD68;
    v85 = swift_allocObject();
    *v69 = v85;
    memcpy((v85 + 16), __src, 0xA0uLL);
    v86 = 2;
  }

  else if (sub_2665F1A1C())
  {

    v87 = type metadata accessor for TaskParser(0);
    v88 = v109;
    sub_26655358C(v109 + v87[5], __src);
    sub_26655358C(v88 + v87[7], &v113);
    sub_26655358C(v88 + v87[6], &v112);
    v89 = v107;
    v90 = *(v107 + 16);
    v91 = v102;
    v92 = v108;
    v90(v102, v88, v108);
    v93 = v104;
    sub_26655358C(__src, v104);
    sub_26655358C(&v113, v93 + 40);
    sub_26655358C(&v112, v93 + 80);
    v94 = updated;
    v90((v93 + *(updated + 28)), v91, v92);
    *(v93 + *(v94 + 32)) = 0;
    v95 = (v93 + *(v94 + 36));
    v95[3] = &type metadata for FindEventUSOIntentWrapper;
    v95[4] = &off_28780BD68;
    v96 = swift_allocObject();
    *v95 = v96;
    sub_26655358C(__src, v96 + 16);
    sub_26655358C(&v113, v96 + 56);
    sub_26655358C(&v112, v96 + 96);
    (*(v89 + 8))(v91, v92);
    __swift_destroy_boxed_opaque_existential_1(&v112);
    __swift_destroy_boxed_opaque_existential_1(&v113);
    __swift_destroy_boxed_opaque_existential_1(__src);
    *(v96 + 168) = 0;
    *(v96 + 152) = 0u;
    *(v96 + 136) = 0u;
    *(v69 + 24) = v94;
    *(v69 + 32) = &off_28780BF78;
    v97 = __swift_allocate_boxed_opaque_existential_1(v69);
    sub_26659D0A8(v93, v97, type metadata accessor for UpdateEventUSOIntentWrapper);
    v86 = 3;
  }

  else
  {
    v98 = sub_26666C148();
    v99 = sub_26666C618();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_266549000, v98, v99, "[TaskParser] USO Task unsupported", v100, 2u);
      MEMORY[0x266789690](v100, -1, -1);
    }

    *(v69 + 32) = 0;
    *v69 = 0u;
    *(v69 + 16) = 0u;
    v86 = -1;
  }

  *(v69 + 40) = v86;
}

uint64_t sub_26659D0A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return sub_26656CAEC(v2 - 184, v0, v1);
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_26657E808(v2 - 184, v2 - 240, v0, v1);
}

void sub_26659D170()
{
  v1 = v0;
  v2 = type metadata accessor for DayEventsReadingFlow.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);

  v16 = sub_26666C148();
  v6 = sub_26666C618();

  if (os_log_type_enabled(v16, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
    swift_beginAccess();
    sub_2665A17A0(v1 + v9, v4);
    v10 = sub_2665A1520();
    v12 = v11;
    sub_2665A1748(v4, type metadata accessor for DayEventsReadingFlow.State);
    v13 = sub_2665BFC90(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_266549000, v16, v6, "[DayEventsReadingFlow] transitioned to state %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t sub_26659D39C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
  OUTLINED_FUNCTION_38(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state, v6);
  sub_2665A1D68(a1, v1 + v3);
  swift_endAccess();
  sub_26659D170();
  OUTLINED_FUNCTION_5_13();
  return sub_2665A1748(a1, v4);
}

void sub_26659D404()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v73 = v6;
  v8 = v7;
  v72 = type metadata accessor for DayEventsReadingFlow.Window(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  if (v5 >= 1 && v3 < v5)
  {
    v74 = v12;
    v14 = sub_2665C485C();
    v15 = v14;
    if (v14 % v5)
    {
      v16 = v14 % v5;
    }

    else
    {
      v16 = v5;
    }

    v1 = sub_2665A1704(0, v14, v5);
    v82 = MEMORY[0x277D84F90];
    sub_266633AE8(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      goto LABEL_155;
    }

    v70 = v16;
    v71 = v3;
    v0 = v82;
    v79 = v8 >> 62;
    v76 = v15;
    v77 = v5;
    if (v1)
    {
      v17 = 0;
      v18 = 0;
      v78 = v8 & 0xC000000000000001;
      v75 = v1;
      while (1)
      {
        if (v18 >= v15)
        {
          goto LABEL_140;
        }

        if (__OFADD__(v18, v5))
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18 + v5;
        }

        if (__OFADD__(v18, v5))
        {
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v15 >= v18 + v5)
        {
          v20 = v18 + v5;
        }

        else
        {
          v20 = v15;
        }

        if (v20 < v18)
        {
          goto LABEL_142;
        }

        v1 = v8 >> 62;
        if (v79)
        {
          v22 = sub_26666C768();
          v21 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v21 = v8 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v22 < v18)
        {
          goto LABEL_143;
        }

        if (v18 < 0)
        {
          goto LABEL_144;
        }

        if (v79)
        {
          v23 = sub_26666C768();
        }

        else
        {
          v23 = *(v21 + 16);
        }

        if (v23 < v20)
        {
          goto LABEL_145;
        }

        if (!v78 || v18 == v20)
        {

          if (!v79)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v18 >= v20)
          {
            goto LABEL_152;
          }

          sub_26656CC50();

          v24 = v18;
          do
          {
            v25 = v24 + 1;
            sub_26666C808();
            v24 = v25;
          }

          while (v20 != v25);
          if (!v79)
          {
LABEL_36:
            v26 = (2 * v20) | 1;
            v1 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
            goto LABEL_39;
          }
        }

        sub_26666C928();
        v1 = v27;
        v18 = v28;
LABEL_39:
        v29 = v26 >> 1;
        if ((v26 & 1) == 0)
        {
          v30 = v29 - v18;
          v31 = __OFSUB__(v29, v18);
          swift_unknownObjectRetain();
          if (v31)
          {
            goto LABEL_151;
          }

          if (v30)
          {
            goto LABEL_45;
          }

LABEL_57:
          swift_unknownObjectRelease();
          v32 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }

        v1 = sub_26666CAD8();
        swift_unknownObjectRetain_n();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          swift_unknownObjectRelease();
          v34 = MEMORY[0x277D84F90];
        }

        v35 = *(v34 + 16);

        v30 = v29 - v18;
        if (__OFSUB__(v29, v18))
        {
          goto LABEL_153;
        }

        if (v35 != v30)
        {
          swift_unknownObjectRelease();
          if (!v30)
          {
            goto LABEL_57;
          }

LABEL_45:
          if (v30 < 1)
          {
            v32 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
            v32 = swift_allocObject();
            _swift_stdlib_malloc_size(v32);
            OUTLINED_FUNCTION_25_4();
            v32[2] = v30;
            v32[3] = v33;
          }

          swift_unknownObjectRelease();
          if (v18 == v29)
          {
            goto LABEL_159;
          }

          sub_26656CC50();
          swift_arrayInitWithCopy();
LABEL_58:
          v15 = v76;
          v5 = v77;
LABEL_59:
          swift_unknownObjectRelease();
          goto LABEL_60;
        }

        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v15 = v76;
        v5 = v77;
        if (!v32)
        {
          v32 = MEMORY[0x277D84F90];
          goto LABEL_59;
        }

LABEL_60:
        v37 = *(v82 + 16);
        v36 = *(v82 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_266633AE8((v36 > 1), v37 + 1, 1);
        }

        ++v17;
        *(v82 + 16) = v37 + 1;
        *(v82 + 8 * v37 + 32) = v32;
        v18 = v19;
        v1 = v75;
        if (v17 == v75)
        {
          v38 = v8 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_65;
        }
      }
    }

    v19 = 0;
    v38 = v8 & 0xFFFFFFFFFFFFFF8;
    v78 = v8 & 0xC000000000000001;
LABEL_65:
    v80 = v38;
    while (1)
    {
      if (v19 >= v15)
      {
        if (v70 > v71)
        {
          v8 = v72;
          v1 = v73;
          goto LABEL_125;
        }

        v8 = v72;
        v1 = v73;
        if (*(v82 + 16) < 2uLL)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_121;
      }

      if (__OFADD__(v19, v5))
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v19 + v5;
      }

      if (__OFADD__(v19, v5))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v15 >= v19 + v5)
      {
        v40 = v19 + v5;
      }

      else
      {
        v40 = v15;
      }

      if (v40 < v19)
      {
        goto LABEL_136;
      }

      if (v79)
      {
        v41 = sub_26666C768();
        v1 = v80;
      }

      else
      {
        v1 = v80;
        v41 = *(v80 + 16);
      }

      if (v41 < v19)
      {
        goto LABEL_137;
      }

      if (v19 < 0)
      {
        goto LABEL_138;
      }

      if (v79)
      {
        v42 = sub_26666C768();
      }

      else
      {
        v42 = *(v1 + 16);
      }

      if (v42 < v40)
      {
        goto LABEL_139;
      }

      if (!v78 || v19 == v40)
      {

        if (!v79)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v19 >= v40)
        {
          goto LABEL_149;
        }

        sub_26656CC50();

        v43 = v19;
        do
        {
          v44 = v43 + 1;
          sub_26666C808();
          v43 = v44;
        }

        while (v40 != v44);
        if (!v79)
        {
LABEL_89:
          v45 = (2 * v40) | 1;
          goto LABEL_92;
        }
      }

      sub_26666C928();
      v19 = v46;
LABEL_92:
      v47 = v45 >> 1;
      if ((v45 & 1) == 0)
      {
        v48 = v47 - v19;
        v49 = __OFSUB__(v47, v19);
        swift_unknownObjectRetain();
        if (v49)
        {
          goto LABEL_148;
        }

        if (v48)
        {
          goto LABEL_98;
        }

LABEL_111:
        swift_unknownObjectRelease();
        v1 = MEMORY[0x277D84F90];
        goto LABEL_112;
      }

      sub_26666CAD8();
      swift_unknownObjectRetain_n();
      v51 = swift_dynamicCastClass();
      if (!v51)
      {
        swift_unknownObjectRelease();
        v51 = MEMORY[0x277D84F90];
      }

      v1 = *(v51 + 16);

      v48 = v47 - v19;
      if (__OFSUB__(v47, v19))
      {
        goto LABEL_150;
      }

      if (v1 != v48)
      {
        swift_unknownObjectRelease();
        if (!v48)
        {
          goto LABEL_111;
        }

LABEL_98:
        if (v48 < 1)
        {
          v1 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
          v1 = swift_allocObject();
          _swift_stdlib_malloc_size(v1);
          OUTLINED_FUNCTION_25_4();
          *(v1 + 16) = v48;
          *(v1 + 24) = v50;
        }

        swift_unknownObjectRelease();
        if (v19 == v47)
        {
          goto LABEL_158;
        }

        sub_26656CC50();
        swift_arrayInitWithCopy();
LABEL_112:
        v15 = v76;
        v5 = v77;
        goto LABEL_113;
      }

      v1 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v15 = v76;
      v5 = v77;
      if (v1)
      {
        goto LABEL_114;
      }

      v1 = MEMORY[0x277D84F90];
LABEL_113:
      swift_unknownObjectRelease();
LABEL_114:
      v53 = *(v82 + 16);
      v52 = *(v82 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_266633AE8((v52 > 1), v53 + 1, 1);
      }

      *(v82 + 16) = v53 + 1;
      *(v82 + 8 * v53 + 32) = v1;
      v19 = v39;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    sub_2665A16F0(v0);
    v0 = v69;
LABEL_121:
    v54 = *(v0 + 16);
    if (!v54)
    {
      break;
    }

    v55 = *(v0 + 32 + 8 * (v54 - 1));
    *(v0 + 16) = v54 - 1;
    if (v54 == 1)
    {
    }

    else
    {
      v56 = v54 - 2;
      v57 = *(v0 + 32 + 8 * v56);
      *(v0 + 16) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD30, &qword_2666725F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26666EED0;
      sub_2665C288C(v55);
      *(inited + 32) = v57;
      sub_2665C2C9C(inited);
    }

LABEL_125:
    v59 = *(v0 + 16);
    if (!v59)
    {
LABEL_134:

      OUTLINED_FUNCTION_27_0();
      return;
    }

    v81 = MEMORY[0x277D84F90];
    sub_266633A90(0, v59, 0);
    v60 = 0;
    v61 = *(v0 + 16);
    while (v61 != v60)
    {
      if (v60 >= *(v0 + 16))
      {
        goto LABEL_147;
      }

      v62 = *(v0 + 8 * v60 + 32);
      if (v62 >> 62)
      {
        sub_26666C768();
      }

      v63 = v74;
      sub_266669DC8();
      v64 = *(v8 + 24);
      sub_266668D38();
      OUTLINED_FUNCTION_18_2();
      (*(v65 + 16))(v74 + v64, v1);
      *(v74 + *(v8 + 20)) = v62;
      v67 = *(v81 + 16);
      v66 = *(v81 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_266633A90(v66 > 1, v67 + 1, 1);
        v63 = v74;
      }

      *(v81 + 16) = v67 + 1;
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v63, v68);
      if (v59 == ++v60)
      {
        goto LABEL_134;
      }
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
  }

  __break(1u);
LABEL_158:
  swift_unknownObjectRelease();
  __break(1u);
LABEL_159:
  swift_unknownObjectRelease();
  __break(1u);
}

void sub_26659DD78()
{
  OUTLINED_FUNCTION_28_0();
  v97 = v1;
  v98 = v0;
  v2 = sub_266669E18();
  OUTLINED_FUNCTION_3_0();
  v95 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v94 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD60, &qword_266672618);
  v8 = OUTLINED_FUNCTION_3_3(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD28, &unk_2666725E0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_7();
  v89 = v16;
  v17 = OUTLINED_FUNCTION_19_4();
  v88 = type metadata accessor for DayEventsReadingFlow.Window(v17);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_7();
  v91 = v20;
  v21 = OUTLINED_FUNCTION_19_4();
  v22 = type metadata accessor for DayEventsReadingFlow.State(v21);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19_7();
  v96 = v31;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v32 = sub_26666C168();
  v33 = __swift_project_value_buffer(v32, qword_28156D7E8);

  v92 = v33;
  v34 = sub_26666C148();
  v35 = sub_26666C618();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_21();
    v83 = v10;
    v37 = v36;
    v38 = OUTLINED_FUNCTION_13_0();
    v84 = v22;
    v39 = v38;
    v103[0] = v38;
    *v37 = 136315138;
    v40 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
    v41 = v98;
    OUTLINED_FUNCTION_23_4(v98 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state, &v99);
    OUTLINED_FUNCTION_1_16();
    v42 = v41 + v40;
    v43 = v96;
    sub_2665A17A0(v42, v96);
    v44 = sub_2665A1520();
    v82 = v15;
    v46 = v45;
    OUTLINED_FUNCTION_5_13();
    sub_2665A1748(v43, v47);
    v48 = sub_2665BFC90(v44, v46, v103);
    v15 = v82;

    *(v37 + 4) = v48;
    _os_log_impl(&dword_266549000, v34, v35, "[DayEventsReadingFlow] Got input, current state: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v22 = v84;
    OUTLINED_FUNCTION_4_1();
    v10 = v83;
    OUTLINED_FUNCTION_4_1();
  }

  v49 = v98;
  OUTLINED_FUNCTION_23_4(v98 + 24, &v102);
  sub_26655358C(v49 + 24, v103);
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);
  v50 = v97;
  v51 = sub_26661A418();
  __swift_destroy_boxed_opaque_existential_1(v103);
  if (v51)
  {
    v52 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
    v53 = v98;
    OUTLINED_FUNCTION_23_4(v98 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state, v103);
    OUTLINED_FUNCTION_1_16();
    v54 = v93;
    sub_2665A17A0(v53 + v52, v93);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_0_17();
      v55 = v91;
      sub_2665A1854(v54, v91);
      OUTLINED_FUNCTION_2_15();
      v56 = v96;
      sub_2665A17A0(v55, v96);
      swift_storeEnumTagMultiPayload();
      sub_26659D39C(v56);
      OUTLINED_FUNCTION_4_17();
      sub_2665A1748(v55, v57);
    }

    else
    {
      OUTLINED_FUNCTION_5_13();
      sub_2665A1748(v54, v69);
      OUTLINED_FUNCTION_1_16();
      v70 = v90;
      sub_2665A17A0(v98 + v52, v90);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v71 = v89;
        sub_2665A1CF8(v70, v89);
        sub_2665A17F8(v71, v15, &qword_28007DD28, &unk_2666725E0);
        v72 = 1;
        OUTLINED_FUNCTION_27_5(v15, 1, v88);
        if (!v73)
        {
          OUTLINED_FUNCTION_0_17();
          v74 = v86;
          sub_2665A1854(v15, v86);
          OUTLINED_FUNCTION_2_15();
          sub_2665A17A0(v74, v10);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_4_17();
          sub_2665A1748(v74, v75);
          v72 = 0;
        }

        __swift_storeEnumTagSinglePayload(v10, v72, 1, v22);
        OUTLINED_FUNCTION_27_5(v10, 1, v22);
        if (v73)
        {
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_27_5(v10, 1, v22);
          if (!v73)
          {
            sub_26656CAEC(v10, &qword_28007DD60, &qword_266672618);
          }
        }

        else
        {
          OUTLINED_FUNCTION_15_7();
          sub_2665A1854(v10, v28);
        }

        sub_26659D39C(v28);
        sub_26656CAEC(v89, &qword_28007DD28, &unk_2666725E0);
      }

      else
      {
        sub_2665A1748(v70, type metadata accessor for DayEventsReadingFlow.State);
        OUTLINED_FUNCTION_1_16();
        v76 = v87;
        sub_2665A17A0(v98 + v52, v87);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_2665A1748(v76, type metadata accessor for DayEventsReadingFlow.State);
        if (!EnumCaseMultiPayload)
        {
          v78 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead;
          v79 = v98;
          OUTLINED_FUNCTION_23_4(v98 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead, &v101);
          if (*(*(v79 + v78) + 16))
          {
            OUTLINED_FUNCTION_38(v98 + v78, &v100);
            v80 = v85;
            sub_2665FD334(v85);
            swift_endAccess();
          }

          else
          {
            v80 = v85;
          }

          swift_storeEnumTagMultiPayload();
          sub_26659D39C(v80);
        }
      }
    }
  }

  else
  {
    v58 = v95;
    v59 = v94;
    (*(v95 + 16))(v94, v50, v2);
    v60 = sub_26666C148();
    v61 = sub_26666C618();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v2;
      v63 = OUTLINED_FUNCTION_21();
      v64 = OUTLINED_FUNCTION_13_0();
      v103[0] = v64;
      *v63 = 136315138;
      sub_2665A18AC(&qword_28007D6D8, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
      v65 = sub_26666CAA8();
      v67 = v66;
      (*(v58 + 8))(v59, v62);
      v68 = sub_2665BFC90(v65, v67, v103);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_266549000, v60, v61, "[DayEventsReadingFlow] Skip request not found in input, Ignoring %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v58 + 8))(v59, v2);
    }
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26659E5FC()
{
  OUTLINED_FUNCTION_14();
  v1[34] = v2;
  v1[35] = v0;
  v3 = type metadata accessor for DayEventsReadingFlow.Window(0);
  v1[36] = v3;
  v4 = *(v3 - 8);
  v1[37] = v4;
  v1[38] = *(v4 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v5 = type metadata accessor for DayEventsReadingFlow.State(0);
  v1[44] = v5;
  OUTLINED_FUNCTION_3_3(v5);
  v1[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26659E71C, 0, 0);
}

uint64_t sub_26659E71C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 280);
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
  OUTLINED_FUNCTION_23_4(v2 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state, v0 + 176);
  OUTLINED_FUNCTION_1_16();
  sub_2665A17A0(v2 + v3, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v31, v32);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v33 = sub_26666C168();
      __swift_project_value_buffer(v33, qword_28156D7E8);
      v34 = sub_26666C148();
      v35 = sub_26666C618();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_20();
        *v36 = 0;
        _os_log_impl(&dword_266549000, v34, v35, "[DayEventsReadingFlow] Prompting if the user would like to hear the next window.", v36, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v37 = *(v0 + 312);
      v38 = *(v0 + 280);

      swift_beginAccess();
      v39 = __swift_project_boxed_opaque_existential_1((v38 + 24), *(v38 + 48));
      *(v0 + 40) = _s15ReadingStrategyVMa(0);
      *(v0 + 48) = &off_28780AAF8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_2665A17A0(v39, boxed_opaque_existential_1);
      sub_26655358C(v0 + 16, v0 + 56);
      v41 = swift_allocObject();
      sub_26654B7D8((v0 + 56), v41 + 16);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      swift_endAccess();
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      sub_266669B78();
      v42 = sub_2665A1998(v37, v0 + 96, v0 + 136, &unk_266672630, v41);

      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_266552F34(v0 + 96);
      *(v0 + 248) = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD78, &qword_266672638);
      sub_26655369C(&qword_28007DD80, &qword_28007DD78, &qword_266672638, MEMORY[0x277D5B670]);
      sub_266669838();

      OUTLINED_FUNCTION_4_17();
      sub_2665A1748(v37, v43);
      goto LABEL_25;
    case 2u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v19 = sub_26666C168();
      __swift_project_value_buffer(v19, qword_28156D7E8);
      v20 = sub_26666C148();
      v21 = sub_26666C5F8();
      if (OUTLINED_FUNCTION_7_2(v21))
      {
        v22 = OUTLINED_FUNCTION_20();
        *v22 = 0;
        _os_log_impl(&dword_266549000, v20, v21, "[DayEventsReadingFlow] In BargeIn state while in execute function, waiting for input.", v22, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v23 = *(v0 + 360);

      sub_266669828();
      sub_26656CAEC(v23, &qword_28007DD28, &unk_2666725E0);
      goto LABEL_26;
    case 3u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v24 = sub_26666C168();
      __swift_project_value_buffer(v24, qword_28156D7E8);

      v25 = sub_26666C148();
      v26 = sub_26666C618();
      v27 = OUTLINED_FUNCTION_7_2(v26);
      v28 = *(v0 + 280);
      if (v27)
      {
        v29 = OUTLINED_FUNCTION_21();
        *v29 = 134217984;
        v30 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead;
        OUTLINED_FUNCTION_23_4(v28 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead, v0 + 224);
        *(v29 + 4) = *(*(v28 + v30) + 16);

        _os_log_impl(&dword_266549000, v25, v26, "[DayEventsReadingFlow] running window introduction flow windows: %ld", v29, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
      }

      sub_266669B78();
      sub_266668F88();
      swift_allocObject();
      *(v0 + 264) = sub_266668F78();

      sub_266669838();

      goto LABEL_25;
    case 4u:
      sub_2666698A8();
      goto LABEL_26;
    default:
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v4, v5);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v6 = *(v0 + 336);
      v7 = *(v0 + 344);
      v8 = sub_26666C168();
      __swift_project_value_buffer(v8, qword_28156D7E8);
      sub_2665A17A0(v7, v6);
      v9 = OUTLINED_FUNCTION_34_2();
      sub_2665A17A0(v9, v10);
      v11 = sub_26666C148();
      v12 = sub_26666C618();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 328);
      v15 = *(v0 + 336);
      if (v13)
      {
        v16 = swift_slowAlloc();
        *v16 = 134218240;
        v17 = sub_2665C485C();
        sub_2665A1748(v15, type metadata accessor for DayEventsReadingFlow.Window);
        *(v16 + 4) = v17;
        *(v16 + 12) = 2048;
        v18 = sub_266669DD8();
        sub_2665A1748(v14, type metadata accessor for DayEventsReadingFlow.Window);
        *(v16 + 14) = v18;
        _os_log_impl(&dword_266549000, v11, v12, "[DayEventsReadingFlow] Reading %ld events on page %ld", v16, 0x16u);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        sub_2665A1748(*(v0 + 328), type metadata accessor for DayEventsReadingFlow.Window);
        sub_2665A1748(v15, type metadata accessor for DayEventsReadingFlow.Window);
      }

      v44 = *(v0 + 344);
      v45 = *(v0 + 320);
      v46 = *(v0 + 296);
      v47 = *(v0 + 280);

      OUTLINED_FUNCTION_2_15();
      v48 = OUTLINED_FUNCTION_25();
      sub_2665A17A0(v48, v49);
      v50 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      *(swift_allocObject() + 16) = v47;
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v45, v51 + v50);

      sub_266669B78();
      sub_266668F88();
      swift_allocObject();
      *(v0 + 256) = sub_266668F78();

      sub_266669838();

      OUTLINED_FUNCTION_4_17();
      sub_2665A1748(v44, v52);
LABEL_25:

LABEL_26:

      OUTLINED_FUNCTION_24_1();

      return v53();
  }
}

uint64_t sub_26659EF18(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  _s17DayEventGroupingsV8GroupingVMa(0);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26659EFA8, 0, 0);
}

uint64_t sub_26659EFA8()
{
  v2 = v0[14];
  v1 = v0[15];
  OUTLINED_FUNCTION_23_4(v2 + 24, (v0 + 7));
  sub_26655358C(v2 + 24, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2665A17A0(v2 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_grouping, v1);
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead;
  OUTLINED_FUNCTION_23_4(v2 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead, (v0 + 10));
  v0[16] = *(v2 + v3);
  v4 = *(v2 + 16);
  v0[17] = v4;

  v5 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[18] = v6;
  *v6 = v7;
  v6[1] = sub_26659F0F0;

  return sub_266621D64();
}

uint64_t sub_26659F0F0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v2 + 136);
  v4 = *(v2 + 120);
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v7 + 152) = v0;

  OUTLINED_FUNCTION_14_7();
  sub_2665A1748(v4, v8);
  if (v0)
  {
    v9 = sub_26659F2B8;
  }

  else
  {
    v9 = sub_26659F250;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26659F250()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_26659F2B8()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_26659F320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26659F344, 0, 0);
}

uint64_t sub_26659F344()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[11];
  OUTLINED_FUNCTION_23_4(v1 + 24, (v0 + 7));
  sub_26655358C(v1 + 24, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 16);
  v0[13] = v2;
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[14] = v4;
  *v4 = v5;
  v4[1] = sub_26659F420;

  return sub_266623844();
}

uint64_t sub_26659F420()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v2 + 104);
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_26659F598;
  }

  else
  {
    v7 = sub_26659F53C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26659F53C()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_26659F598()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_26659F5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26659F618, 0, 0);
}

uint64_t sub_26659F618()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_26659F6B4;

  return sub_266620714();
}

uint64_t sub_26659F6B4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_26659F794(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DayEventsReadingFlow(0);
  sub_2665A18AC(&qword_28007DD70, type metadata accessor for DayEventsReadingFlow, &unk_266672588);
  return sub_266669548();
}

uint64_t sub_26659F824()
{
  v1 = v0;
  type metadata accessor for DayEventsReadingFlow.State(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, qword_28156D7E8);
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v8))
  {
    v9 = OUTLINED_FUNCTION_20();
    *v9 = 0;
    _os_log_impl(&dword_266549000, v7, v8, "[DayEventsReadingFlow] Day introduction finished reading first window", v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  OUTLINED_FUNCTION_38(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead, v11);
  sub_2665FD334(v5);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  return sub_26659D39C(v5);
}

void sub_26659F968()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v74 = sub_266669768();
  OUTLINED_FUNCTION_3_0();
  v71 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v75 = type metadata accessor for DayEventsReadingFlow.Window(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD60, &qword_266672618);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v76 = type metadata accessor for DayEventsReadingFlow.State(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_10();
  v73 = v16;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD28, &unk_2666725E0);
  v21 = OUTLINED_FUNCTION_3_3(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_10();
  v72 = v22;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19_7();
  v78 = v24;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v25 = sub_26666C168();
  v26 = __swift_project_value_buffer(v25, qword_28156D7E8);
  sub_2665A17F8(v1, v81, &qword_28007DD68, &qword_266672620);
  v70 = v26;
  v27 = sub_26666C148();
  v28 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v28))
  {
    v29 = OUTLINED_FUNCTION_21();
    v69 = v19;
    v30 = v29;
    v31 = OUTLINED_FUNCTION_13_0();
    v80 = v31;
    *v30 = 136315138;
    sub_2665A17F8(v81, v79, &qword_28007DD68, &qword_266672620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD68, &qword_266672620);
    v32 = sub_26666C318();
    v68 = v6;
    v33 = v14;
    v34 = v32;
    v35 = v1;
    v36 = v10;
    v38 = v37;
    sub_26656CAEC(v81, &qword_28007DD68, &qword_266672620);
    v39 = sub_2665BFC90(v34, v38, &v80);
    v10 = v36;
    v1 = v35;

    *(v30 + 4) = v39;
    v14 = v33;
    v6 = v68;
    _os_log_impl(&dword_266549000, v27, v28, "[DayEventsReadingFlow] Handling reading Result: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_4_1();
    v19 = v69;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    sub_26656CAEC(v81, &qword_28007DD68, &qword_266672620);
  }

  v40 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead;
  v41 = v77;
  OUTLINED_FUNCTION_23_4(v77 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead, v79);
  if (*(*(v41 + v40) + 16))
  {
    OUTLINED_FUNCTION_38(v77 + v40, v81);
    sub_2665FD334(v78);
    swift_endAccess();
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = v75;
  __swift_storeEnumTagSinglePayload(v78, v42, 1, v75);
  sub_2665A17F8(v1, v81, &qword_28007DD68, &qword_266672620);
  if (v82)
  {
    v44 = v81[0];
    v80 = v81[0];
    v45 = v81[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
    if (swift_dynamicCast())
    {
      (*(v71 + 8))(v6, v74);
      v46 = v78;
      v47 = v73;
      sub_2665A17F8(v78, v73, &qword_28007DD28, &unk_2666725E0);
      swift_storeEnumTagMultiPayload();
      sub_26659D39C(v47);

      v48 = v46;
      v49 = &qword_28007DD28;
      v50 = &unk_2666725E0;
    }

    else
    {
      v58 = v44;
      v59 = sub_26666C148();
      v60 = sub_26666C5F8();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_21();
        v62 = OUTLINED_FUNCTION_13_0();
        v79[6] = v44;
        v80 = v62;
        *v61 = 136315138;
        v63 = v44;
        v64 = sub_26666C318();
        v66 = sub_2665BFC90(v64, v65, &v80);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_266549000, v59, v60, "[DayEventsReadingFlow] Unhandled error from output flow return complete %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      v67 = v73;
      swift_storeEnumTagMultiPayload();
      sub_26659D39C(v67);

      v49 = &qword_28007DD28;
      v50 = &unk_2666725E0;
      v48 = v78;
    }
  }

  else
  {
    v51 = v72;
    sub_2665A17F8(v78, v72, &qword_28007DD28, &unk_2666725E0);
    v52 = 1;
    OUTLINED_FUNCTION_27_5(v51, 1, v43);
    if (!v53)
    {
      OUTLINED_FUNCTION_0_17();
      sub_2665A1854(v51, v10);
      OUTLINED_FUNCTION_2_15();
      sub_2665A17A0(v10, v14);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_17();
      sub_2665A1748(v10, v54);
      v52 = 0;
    }

    v55 = v52;
    v56 = v76;
    __swift_storeEnumTagSinglePayload(v14, v55, 1, v76);
    OUTLINED_FUNCTION_27_5(v14, 1, v56);
    if (v53)
    {
      v57 = v76;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_27_5(v14, 1, v57);
      if (!v53)
      {
        sub_26656CAEC(v14, &qword_28007DD60, &qword_266672618);
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_7();
      sub_2665A1854(v14, v19);
    }

    sub_26659D39C(v19);
    sub_26656CAEC(v78, &qword_28007DD28, &unk_2666725E0);
    v49 = &qword_28007DD68;
    v50 = &qword_266672620;
    v48 = v81;
  }

  sub_26656CAEC(v48, v49, v50);
  OUTLINED_FUNCTION_27_0();
}

void sub_2665A0080()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v105 = sub_266669768();
  OUTLINED_FUNCTION_3_0();
  v102 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v124 = v7 - v6;
  OUTLINED_FUNCTION_19_4();
  v110 = sub_266669AF8();
  OUTLINED_FUNCTION_3_0();
  v109 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v103 = v11 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD38, &qword_2666725F8);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v12);
  v113 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  v15 = OUTLINED_FUNCTION_3_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_5();
  v112 = v17;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_7();
  v126 = v19;
  OUTLINED_FUNCTION_19_4();
  sub_266669D78();
  OUTLINED_FUNCTION_3_0();
  v119 = v21;
  v120 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v118 = v23 - v22;
  v24 = OUTLINED_FUNCTION_19_4();
  v25 = type metadata accessor for DayEventsReadingFlow.State(v24);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_10();
  v125 = v27;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19_7();
  v123 = v29;
  v30 = OUTLINED_FUNCTION_19_4();
  v101 = type metadata accessor for DayEventsReadingFlow.Window(v30);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_0();
  v122 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD48, &qword_266672608);
  OUTLINED_FUNCTION_3_0();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v100 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v100 - v43;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v45 = sub_26666C168();
  v46 = __swift_project_value_buffer(v45, qword_28156D7E8);
  v115 = *(v36 + 16);
  v116 = v3;
  v114 = v36 + 16;
  v115(v44, v3, v34);
  v111 = v46;
  v47 = sub_26666C148();
  v48 = sub_26666C618();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_21();
    v100 = v1;
    v50 = v49;
    v51 = OUTLINED_FUNCTION_13_0();
    v128 = v51;
    *v50 = 136315138;
    sub_26655369C(&qword_28007DD58, &qword_28007DD48, &qword_266672608, MEMORY[0x277D5BC48]);
    sub_26666CAA8();
    v121 = v42;
    v117 = *(v36 + 8);
    v117(v44, v34);
    v52 = OUTLINED_FUNCTION_34_2();
    v55 = sub_2665BFC90(v52, v53, v54);
    v42 = v121;

    *(v50 + 4) = v55;
    _os_log_impl(&dword_266549000, v47, v48, "[DayEventsReadingFlow] Handling continue prompt result: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_4_1();
    v1 = v100;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v117 = *(v36 + 8);
    v117(v44, v34);
  }

  v56 = OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state;
  OUTLINED_FUNCTION_23_4(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_state, &v128);
  OUTLINED_FUNCTION_1_16();
  v57 = v1 + v56;
  v58 = v123;
  sub_2665A17A0(v57, v123);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v60 = v126;
  v61 = v124;
  if (EnumCaseMultiPayload == 1)
  {
    v62 = v122;
    sub_2665A1854(v58, v122);
    v63 = v115;
    v115(v42, v116, v34);
    v64 = (*(v36 + 88))(v42, v34);
    if (v64 != *MEMORY[0x277D5BC38])
    {
      if (v64 == *MEMORY[0x277D5BC30])
      {
        v74 = v104;
        v63(v104, v42, v34);
        v75 = OUTLINED_FUNCTION_34_2();
        v76(v75);
        v127 = *v74;
        v77 = v127;
        v78 = v127;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
        v79 = v105;
        if (swift_dynamicCast())
        {
          v121 = v42;
          v123 = v34;
          (*(v102 + 8))(v61, v79);
          v80 = sub_26666C148();
          v81 = sub_26666C5F8();
          if (OUTLINED_FUNCTION_7_2(v81))
          {
            v82 = OUTLINED_FUNCTION_20();
            *v82 = 0;
            _os_log_impl(&dword_266549000, v80, v81, "[DayEventsReadingFlow] User either dismissed siri or barged in. leaving flow in prompt state for input to pick up.", v82, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          OUTLINED_FUNCTION_2_15();
          v83 = v125;
          sub_2665A17A0(v62, v125);
          __swift_storeEnumTagSinglePayload(v83, 0, 1, v101);
          swift_storeEnumTagMultiPayload();
          sub_26659D39C(v83);

          v34 = v123;
          goto LABEL_33;
        }
      }

      v91 = v125;
      swift_storeEnumTagMultiPayload();
      sub_26659D39C(v91);
LABEL_34:
      sub_2665A1748(v62, type metadata accessor for DayEventsReadingFlow.Window);
      v117(v42, v34);
      goto LABEL_35;
    }

    v116 = v25;
    v65 = v63;
    v66 = v107;
    v121 = v42;
    v65(v107, v42, v34);
    v123 = v34;
    v124 = v36;
    (*(v36 + 96))(v66, v34);
    (*(v119 + 32))(v118, v66, v120);
    sub_266669D68();
    v67 = v109;
    v68 = v112;
    v69 = v110;
    (*(v109 + 104))(v112, *MEMORY[0x277D5BED8], v110);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v69);
    v70 = *(v108 + 48);
    v71 = v113;
    sub_2665A17F8(v60, v113, &qword_28007DD40, &qword_266672600);
    sub_2665A17F8(v68, v71 + v70, &qword_28007DD40, &qword_266672600);
    OUTLINED_FUNCTION_27_5(v71, 1, v69);
    if (v85)
    {
      sub_26656CAEC(v68, &qword_28007DD40, &qword_266672600);
      v72 = v113;
      sub_26656CAEC(v60, &qword_28007DD40, &qword_266672600);
      OUTLINED_FUNCTION_27_5(v72 + v70, 1, v69);
      v62 = v122;
      if (v85)
      {
        sub_26656CAEC(v72, &qword_28007DD40, &qword_266672600);
        v34 = v123;
LABEL_29:
        v96 = sub_26666C148();
        v97 = sub_26666C618();
        if (os_log_type_enabled(v96, v97))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_35_1(&dword_266549000, v98, v99, "[DayEventsReadingFlow] Prompt to continue confirmed");
          v34 = v123;
          OUTLINED_FUNCTION_4_1();
        }

        OUTLINED_FUNCTION_2_15();
        v90 = v125;
        sub_2665A17A0(v62, v125);
LABEL_32:
        swift_storeEnumTagMultiPayload();
        sub_26659D39C(v90);
        (*(v119 + 8))(v118, v120);
LABEL_33:
        v42 = v121;
        goto LABEL_34;
      }
    }

    else
    {
      v84 = v106;
      sub_2665A17F8(v71, v106, &qword_28007DD40, &qword_266672600);
      OUTLINED_FUNCTION_27_5(v71 + v70, 1, v69);
      if (!v85)
      {
        v92 = v71 + v70;
        v93 = v103;
        (*(v67 + 32))(v103, v92, v69);
        sub_2665A18AC(&qword_28007DD50, MEMORY[0x277D5BEE0], MEMORY[0x277D5BEE8]);
        v94 = sub_26666C2E8();
        v95 = *(v67 + 8);
        v95(v93, v69);
        sub_26656CAEC(v112, &qword_28007DD40, &qword_266672600);
        sub_26656CAEC(v126, &qword_28007DD40, &qword_266672600);
        v95(v84, v69);
        sub_26656CAEC(v71, &qword_28007DD40, &qword_266672600);
        v62 = v122;
        v34 = v123;
        if (v94)
        {
          goto LABEL_29;
        }

LABEL_23:
        v86 = sub_26666C148();
        v87 = sub_26666C618();
        if (os_log_type_enabled(v86, v87))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_35_1(&dword_266549000, v88, v89, "[DayEventsReadingFlow] Prompt to continue rejected exiting day reading flow");
          v34 = v123;
          OUTLINED_FUNCTION_4_1();
        }

        v90 = v125;
        goto LABEL_32;
      }

      sub_26656CAEC(v112, &qword_28007DD40, &qword_266672600);
      v72 = v113;
      sub_26656CAEC(v126, &qword_28007DD40, &qword_266672600);
      (*(v67 + 8))(v84, v69);
      v62 = v122;
    }

    sub_26656CAEC(v72, &qword_28007DD38, &qword_2666725F8);
    v34 = v123;
    goto LABEL_23;
  }

  sub_2665A1748(v58, type metadata accessor for DayEventsReadingFlow.State);
  v73 = v125;
  swift_storeEnumTagMultiPayload();
  sub_26659D39C(v73);
LABEL_35:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665A0CBC@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for Snippet.EventGroup(0);
  OUTLINED_FUNCTION_3_0();
  v24 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for DayEventsReadingFlow.Window(0);
  (*(v6 + 16))(v10, v2 + *(v17 + 24), v4);
  sub_2665C24BC();
  if (v3)
  {
    return (*(v6 + 8))(v10, v4);
  }

  v20 = v18;
  (*(v6 + 32))(v16, v10, v4);
  *(v16 + *(v11 + 20)) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD88, &qword_266672660);
  v21 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26666EED0;
  sub_2665A17A0(v16, v22 + v21);
  v23 = sub_266669DB8();
  sub_2665A1748(v16, type metadata accessor for Snippet.EventGroup);
  *a2 = v22;
  *(a2 + 8) = v23 > 0;
  type metadata accessor for Snippet(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_2665A0F34(void **a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  sub_26655358C(a2, var48);
  v6 = v5;
  sub_2665AAA8C(v6, var48, v7, v8, v9, v10, v11, v12, v13, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
  if (v3)
  {
    *a3 = v3;
  }
}

uint64_t sub_2665A0FA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_14_7();
  sub_2665A1748(v0 + v1, v2);

  OUTLINED_FUNCTION_5_13();
  sub_2665A1748(v0 + v3, v4);
  return v0;
}

uint64_t sub_2665A1000()
{
  sub_2665A0FA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2665A1080(uint64_t a1)
{
  result = _s17DayEventGroupingsV8GroupingVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DayEventsReadingFlow.State(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_2665A11E0(uint64_t a1)
{
  sub_266669DE8();
  if (v1 <= 0x3F)
  {
    sub_2665A1398(319, &qword_28007DD00, sub_26656CC50, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_266668D38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2665A12AC(uint64_t a1)
{
  type metadata accessor for DayEventsReadingFlow.Window(319);
  if (v1 <= 0x3F)
  {
    sub_2665A1320();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2665A1320()
{
  if (!qword_28007DD18)
  {
    sub_2665A1398(0, &qword_28007DD20, type metadata accessor for DayEventsReadingFlow.Window, MEMORY[0x277D83D88]);
    if (!v1)
    {
      atomic_store(v0, &qword_28007DD18);
    }
  }
}

void sub_2665A1398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2665A1448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_26659E5FC();
}

uint64_t sub_2665A14E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DayEventsReadingFlow(0);

  return sub_266669588();
}

unint64_t sub_2665A1520()
{
  type metadata accessor for DayEventsReadingFlow.State(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_1_16();
  v4 = OUTLINED_FUNCTION_25();
  sub_2665A17A0(v4, v5);
  OUTLINED_FUNCTION_34_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6375646F72746E69;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_5_13();
      sub_2665A1748(v3, v8);
      result = 0xD000000000000013;
      break;
    case 2:
      sub_26656CAEC(v3, &qword_28007DD28, &unk_2666725E0);
      result = 0x6E496567726162;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6574656C706D6F63;
      break;
    default:
      sub_2665A1748(v3, type metadata accessor for DayEventsReadingFlow.State);
      result = 0x646E695764616572;
      break;
  }

  return result;
}

uint64_t sub_2665A168C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26666C768();
  }

  return sub_26666C828();
}

uint64_t sub_2665A1704(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2665A1748(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2665A17A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_33_2();
  v4(v3);
  OUTLINED_FUNCTION_18_2();
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return a2;
}

uint64_t sub_2665A17F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18_2();
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return a2;
}

uint64_t sub_2665A1854(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_33_2();
  v4(v3);
  OUTLINED_FUNCTION_18_2();
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return a2;
}

uint64_t sub_2665A18AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2665A18F4()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v5 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_26656C894;

  return sub_26659F5F4(v5, v3, v0 + 16);
}

uint64_t sub_2665A1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DayEventsReadingFlow.Window(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = &unk_287806408;
  v17[4] = &off_2878064B0;
  v17[0] = swift_allocObject();
  sub_266552D2C(a2, v17[0] + 16);
  sub_2665A17A0(a1, v12);
  sub_26655358C(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD90, &qword_266672668);
  v13 = swift_allocObject();
  sub_26654B7D8(v16, v13 + 16);
  *(v13 + 56) = a4;
  *(v13 + 64) = a5;
  sub_26655358C(a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD78, &qword_266672638);
  swift_allocObject();
  sub_26655369C(&qword_28007DD98, &qword_28007DD90, &qword_266672668, &unk_26667B478);

  v14 = sub_2666691D8();
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_2665A1B64()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = type metadata accessor for DayEventsReadingFlow.Window(0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_26656CD98;

  return sub_26659F320(v3, v7, v0 + v6);
}

uint64_t sub_2665A1C40()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_26656CD98;

  return sub_26659EF18(v3, v0);
}

uint64_t sub_2665A1CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD28, &unk_2666725E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665A1D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayEventsReadingFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2665A1F74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2665A1FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665A2010(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2665A2030, 0, 0);
}

uint64_t sub_2665A2030()
{
  v28 = v0;
  v1 = *(*(v0 + 88) + 8);
  if ([v1 code] == 3)
  {
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v3 = *v2;
    if (sub_266658428(*v2, v1))
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v4 = sub_26666C168();
      __swift_project_value_buffer(v4, qword_28156D7E8);
      v5 = sub_26666C148();
      v6 = sub_26666C618();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_266549000, v5, v6, "[FindEventsResponseFlow] Pushing event reading flow", v7, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      sub_266658D54(v3, v1);
      sub_266669898();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v18 = sub_26666C168();
      __swift_project_value_buffer(v18, qword_28156D7E8);
      v19 = sub_26666C148();
      v20 = sub_26666C618();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_266549000, v19, v20, "[FindEventsResponseFlow] Pushing standard event output.", v21, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v22 = *(v0 + 88);

      sub_2665A26EC(v22, v0 + 16);
      v23 = swift_allocObject();
      v24 = *(v0 + 32);
      *(v23 + 16) = *(v0 + 16);
      *(v23 + 32) = v24;
      *(v23 + 48) = *(v0 + 48);
      *(v23 + 64) = *(v0 + 64);
      sub_266669B78();
      sub_266668F88();
      swift_allocObject();
      *(v0 + 16) = sub_266668F78();
      sub_266669888();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v8 = *(v0 + 88);
    v9 = sub_26666C168();
    __swift_project_value_buffer(v9, qword_28156D7E8);
    sub_2665A26EC(v8, v0 + 16);
    v10 = sub_26666C148();
    v11 = sub_26666C5F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27[0] = v13;
      *v12 = 136315138;
      *(v0 + 72) = [*(v0 + 24) code];
      type metadata accessor for INFindEventsIntentResponseCode(0);
      v14 = sub_26666C318();
      v16 = v15;
      sub_2665A2724(v0 + 16);
      v17 = sub_2665BFC90(v14, v16, v27);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_266549000, v10, v11, "[FindEventsResponseFlow] Find event intent response code was not successful (%s) assuming error output already given", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_2665A2724(v0 + 16);
    }

    sub_2666698A8();
  }

  OUTLINED_FUNCTION_24_1();

  return v25();
}

uint64_t sub_2665A243C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2665A245C, 0, 0);
}

uint64_t sub_2665A245C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2665A2518;

  return sub_266658F50();
}

uint64_t sub_2665A2518()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_2665A25F8(uint64_t a1, uint64_t a2)
{
  sub_2665A27EC();

  return sub_266669548();
}

uint64_t sub_2665A2650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26656C894;

  return sub_2665A2010(a1);
}

uint64_t sub_2665A2754()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26656C894;

  return sub_2665A243C(v3, v0 + 16);
}

unint64_t sub_2665A27EC()
{
  result = qword_28156CA40;
  if (!qword_28156CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CA40);
  }

  return result;
}

uint64_t type metadata accessor for FindEventsCATsSimple(uint64_t a1)
{
  result = qword_28156CA78;
  if (!qword_28156CA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665A28CC(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 75) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = v7;
  *(v8 + 74) = a5;
  *(v8 + 73) = a4;
  *(v8 + 72) = a2;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665A28F4()
{
  OUTLINED_FUNCTION_14_8();
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  OUTLINED_FUNCTION_9_9(v2, xmmword_266672760);
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = MEMORY[0x277D839F8];
  }

  v5 = *(v0 + 24);
  v2[3].n128_u64[0] = v3;
  v2[4].n128_u64[1] = v4;
  v2[5].n128_u64[0] = 0x7461446F72746E69;
  v2[5].n128_u64[1] = 0xE900000000000065;
  if (v5)
  {
    sub_26666BD08();
    v6 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v2[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_19_8();
  v2[7].n128_u64[1] = v7;
  v2[8].n128_u64[0] = 0xD000000000000010;
  v2[8].n128_u64[1] = v8;
  v9 = MEMORY[0x277D839B0];
  v2[9].n128_u8[0] = v10;
  v2[10].n128_u64[1] = v9;
  strcpy(&v2[11], "isRestOfToday");
  v2[11].n128_u16[7] = -4864;
  v2[12].n128_u8[0] = v11;
  v2[13].n128_u64[1] = v9;
  v2[14].n128_u64[0] = 0x6953776F646E6977;
  v2[14].n128_u64[1] = 0xEA0000000000657ALL;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v2[15].n128_u64[1] = 0;
    v2[16].n128_u64[0] = 0;
  }

  else
  {
    v13 = *(v0 + 32);
    v14 = MEMORY[0x277D839F8];
  }

  v2[15].n128_u64[0] = v13;
  v2[16].n128_u64[1] = v14;
  OUTLINED_FUNCTION_7_11();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20_6(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_16_6(v16);

  return v19(0xD00000000000001DLL, 0x800000026667E810, v2);
}

uint64_t sub_2665A2B00()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665A2C28()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665A2C84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665A2C98()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_1_17(v2, xmmword_26666EED0);
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(v3);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_8_11();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_11_10(v4);

  return v6(v5);
}

uint64_t sub_2665A2D98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665A2DAC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_1_17(v2, xmmword_26666EED0);
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(v3);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_8_11();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_11_10(v4);

  return v6(v5);
}

uint64_t sub_2665A2EAC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665A2FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665A2FF0()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[8] = v2;
  v3 = OUTLINED_FUNCTION_1_17(v2, xmmword_266672760);
  if (v1)
  {
    type metadata accessor for CalendarEventConcept(v3);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_19_8();
  v2[4].n128_u64[1] = v8;
  v2[5].n128_u64[0] = 0xD000000000000011;
  v2[5].n128_u64[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  v2[6].n128_u64[0] = v7;
  v2[7].n128_u64[1] = v10;
  strcpy(&v2[8], "maybeInvitees");
  v2[8].n128_u16[7] = -4864;
  v2[9].n128_u64[0] = v6;
  OUTLINED_FUNCTION_19_8();
  v2[10].n128_u64[1] = v11;
  v2[11].n128_u64[0] = 0xD000000000000010;
  v2[11].n128_u64[1] = v12;
  v2[12].n128_u64[0] = v5;
  OUTLINED_FUNCTION_19_8();
  v2[13].n128_u64[1] = v13;
  v2[14].n128_u64[0] = 0xD000000000000014;
  v2[16].n128_u64[1] = v13;
  v2[14].n128_u64[1] = v14;
  v2[15].n128_u64[0] = v4;
  OUTLINED_FUNCTION_7_11();

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_2665A31D4;

  return v17(0xD00000000000001ELL, 0x800000026667E730, v2);
}

uint64_t sub_2665A31D4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665A32FC()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}